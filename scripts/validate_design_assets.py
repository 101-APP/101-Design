import json
import math
import pathlib
import re
import sys
import xml.etree.ElementTree as ET


def validate_xml(filename, expected_root=None):
    try:
        root = ET.parse(filename).getroot()
    except (ET.ParseError, OSError) as error:
        raise ValueError(f'{filename}: {error}') from error
    if expected_root and root.tag.rsplit('}', 1)[-1] != expected_root:
        raise ValueError(f'{filename}: expected {expected_root}')
    return root


def validate_tokens(source):
    def visit(node, name):
        if not isinstance(node, dict):
            return
        if node.get('$type') == 'color':
            modes = node.get('modes', {})
            if not modes:
                raise ValueError(f'{name}: missing color modes')
            for value in modes.values():
                if not isinstance(value, str) or not re.fullmatch(r'#[0-9a-fA-F]{6}(?:[0-9a-fA-F]{2})?|\{[^{}]+\}', value):
                    raise ValueError(f'{name}: invalid color')
        if node.get('$type') == 'textStyle':
            size = node.get('value', {}).get('fontSize')
            if not isinstance(size, (int, float)) or not math.isfinite(size) or size <= 0:
                raise ValueError(f'{name}: invalid font size')
        for key, value in node.items():
            visit(value, f'{name}/{key}')
    visit(source, 'tokens')


def validate_imageset(filename):
    images = json.loads(filename.read_text()).get('images', [])
    for image in images:
        name = image.get('filename')
        if not name:
            continue
        if pathlib.Path(name).name != name:
            raise ValueError(f'{filename}: invalid image filename')
        resource = filename.parent / name
        if not resource.is_file():
            raise ValueError(f'{filename}: missing {name}')
        if resource.suffix == '.pdf' and not resource.read_bytes().startswith(b'%PDF'):
            raise ValueError(f'{resource}: invalid PDF')


def validate_repository(root):
    required = ['tokens.json', 'web/tokens.css', 'web/icons', 'Package.swift', 'ios/Icons.swift', 'ios/Colors.swift', 'ios/Fonts.swift', 'ios/Icons.xcassets', 'android/build.gradle.kts', 'android/AndroidManifest.xml', 'android/res/values/colors.xml', 'android/res/values/fonts.xml', 'android/res/values-night/colors.xml']
    for name in required:
        if not (root / name).exists():
            raise ValueError(f'missing {name}')
    validate_tokens(json.loads((root / 'tokens.json').read_text()))
    icons = list((root / 'web/icons').glob('*/*.svg'))
    if not icons:
        raise ValueError('missing SVG icons')
    for icon in icons + list((root / 'sources/icons').glob('*/*.svg')):
        validate_xml(icon, 'svg')
    for filename in (root / 'android/res').rglob('*.xml'):
        validate_xml(filename)
    validate_xml(root / 'android/AndroidManifest.xml', 'manifest')
    for filename in (root / 'ios/Icons.xcassets').rglob('Contents.json'):
        validate_imageset(filename)
    ios_enum = (root / 'ios/Icons.swift').read_text()
    for name in re.findall(r'case\s+\w+\s*=\s*"([^"]+)"', ios_enum):
        if not (root / 'ios/Icons.xcassets' / f'{name}.imageset' / 'Contents.json').is_file():
            raise ValueError(f'ios/Icons.swift: missing asset {name}')
    print(f'Validated {len(icons)} SVG icons, tokens, iOS assets and Android XML')


if __name__ == '__main__':
    try:
        validate_repository(pathlib.Path(__file__).resolve().parents[1])
    except (ValueError, OSError) as error:
        print(str(error), file=sys.stderr)
        sys.exit(1)
