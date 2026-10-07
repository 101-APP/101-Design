import importlib.util
import pathlib
import tempfile
import unittest

spec = importlib.util.spec_from_file_location('validator', pathlib.Path(__file__).with_name('validate_design_assets.py'))
validator = importlib.util.module_from_spec(spec)
spec.loader.exec_module(validator)


class ResourceValidationTest(unittest.TestCase):
    def test_invalid_svg_is_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            icon = pathlib.Path(directory) / 'broken.svg'
            icon.write_text('<svg><path></svg>')
            with self.assertRaises(ValueError):
                validator.validate_xml(icon, 'svg')

    def test_invalid_color_is_rejected(self):
        with self.assertRaises(ValueError):
            validator.validate_tokens({'variables': {'accent': {'$type': 'color', 'modes': {'light': 'oops'}}}})

    def test_alias_and_font_settings_are_valid(self):
        validator.validate_tokens({'variables': {'accent': {'$type': 'color', 'modes': {'light': '#ABCDEF80'}}}, 'styles': {'text': {'ios': {'body': {'$type': 'textStyle', 'value': {'fontSize': 17, 'fontWeight': 400}}}}}})

    def test_missing_ios_pdf_is_rejected(self):
        with tempfile.TemporaryDirectory() as directory:
            contents = pathlib.Path(directory) / 'Contents.json'
            contents.write_text('{"images":[{"filename":"missing.pdf"}]}')
            with self.assertRaises(ValueError):
                validator.validate_imageset(contents)


if __name__ == '__main__':
    unittest.main()
