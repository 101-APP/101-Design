#if canImport(UIKit)
import SwiftUI
import UIKit

public enum Colors: String, CaseIterable, Equatable {
    case accentBlue = "color-accent-blue"
    case accentDefault = "color-accent-default"
    case amountNegative = "color-amount-negative"
    case amountPositive = "color-amount-positive"
    case borderPrimary = "color-border-primary"
    case borderSecondary = "color-border-secondary"
    case eventAgentFee = "color-event-agent-fee"
    case eventDividends = "color-event-dividends"
    case eventEstimate = "color-event-estimate"
    case eventEstimateMuted = "color-event-estimate-muted"
    case eventExpense = "color-event-expense"
    case eventExpenseMuted = "color-event-expense-muted"
    case eventIncome = "color-event-income"
    case eventMarkup = "color-event-markup"
    case eventPaymentOwn = "color-event-payment-own"
    case eventPaymentWorking = "color-event-payment-working"
    case focusRing = "color-focus-ring"
    case highlightCalendar = "color-highlight-calendar"
    case highlightText = "color-highlight-text"
    case highlighter = "color-highlighter"
    case onAccentPrimary = "color-on-accent-primary"
    case onAccentSecondary = "color-on-accent-secondary"
    case onAccentTertiary = "color-on-accent-tertiary"
    case overlay = "color-overlay"
    case shadowBase = "color-shadow-base"
    case shadowStroke = "color-shadow-stroke"
    case shadowStrokeLight = "color-shadow-stroke-light"
    case stateDisabled = "color-state-disabled"
    case stateHover = "color-state-hover"
    case stateOnAccentHover = "color-state-on-accent-hover"
    case stateOnAccentPressed = "color-state-on-accent-pressed"
    case statePressed = "color-state-pressed"
    case stateSelected = "color-state-selected"
    case staticBlack = "color-static-black"
    case staticWhite = "color-static-white"
    case statusError = "color-status-error"
    case statusSuccess = "color-status-success"
    case statusWarning = "color-status-warning"
    case surface0 = "color-surface-0"
    case surface1 = "color-surface-1"
    case surface2 = "color-surface-2"
    case surface3 = "color-surface-3"
    case surfaceInverse = "color-surface-inverse"
    case textPrimary = "color-text-primary"
    case textQuaternary = "color-text-quaternary"
    case textSecondary = "color-text-secondary"
    case textTertiary = "color-text-tertiary"
    case toast = "color-toast"

    public var colorName: String {
        rawValue
    }

    public var uiColor: UIColor {
        switch self {
        case .accentBlue:
            return Self.dynamicColor(light: "#0088FF", dark: "#0091FF")
        case .accentDefault:
            return Self.dynamicColor(light: "#0E0E0F", dark: "#FFFFFF")
        case .amountNegative:
            return Self.dynamicColor(light: "#F40017", dark: "#F40017")
        case .amountPositive:
            return Self.dynamicColor(light: "#00A530", dark: "#00A530")
        case .borderPrimary:
            return Self.dynamicColor(light: "#E8E8E8", dark: "#343438")
        case .borderSecondary:
            return Self.dynamicColor(light: "#E8E8E8", dark: "#202022")
        case .eventAgentFee:
            return Self.dynamicColor(light: "#2B91A0", dark: "#2B91A0")
        case .eventDividends:
            return Self.dynamicColor(light: "#2D9CCF", dark: "#32ADE6")
        case .eventEstimate:
            return Self.dynamicColor(light: "#6D43F6", dark: "#6D43F6")
        case .eventEstimateMuted:
            return Self.dynamicColor(light: "#A9A2EF", dark: "#666290")
        case .eventExpense:
            return Self.dynamicColor(light: "#C4317A", dark: "#C4317A")
        case .eventExpenseMuted:
            return Self.dynamicColor(light: "#D796C0", dark: "#8E637F")
        case .eventIncome:
            return Self.dynamicColor(light: "#6E8D44", dark: "#6E8D44")
        case .eventMarkup:
            return Self.dynamicColor(light: "#CC7F08", dark: "#E58F09")
        case .eventPaymentOwn:
            return Self.dynamicColor(light: "#A65959", dark: "#A65959")
        case .eventPaymentWorking:
            return Self.dynamicColor(light: "#C19810", dark: "#C19810")
        case .focusRing:
            return Self.dynamicColor(light: "#0088FF", dark: "#0091FF")
        case .highlightCalendar:
            return Self.dynamicColor(light: "#F75951", dark: "#F75951")
        case .highlightText:
            return Self.dynamicColor(light: "#3CD3FE61", dark: "#3CD3FE78")
        case .highlighter:
            return Self.dynamicColor(light: "#3CD3FE61", dark: "#3CD3FE4F")
        case .onAccentPrimary:
            return Self.dynamicColor(light: "#ECECF1", dark: "#1C1C1D")
        case .onAccentSecondary:
            return Self.dynamicColor(light: "#9F9FA5", dark: "#8A8A8E")
        case .onAccentTertiary:
            return Self.dynamicColor(light: "#5A5A5F", dark: "#BBBBC1")
        case .overlay:
            return Self.dynamicColor(light: "#0000009E", dark: "#00000061")
        case .shadowBase:
            return Self.dynamicColor(light: "#00000029", dark: "#00000029")
        case .shadowStroke:
            return Self.dynamicColor(light: "#00000029", dark: "#FFFFFF21")
        case .shadowStrokeLight:
            return Self.dynamicColor(light: "#0000000D", dark: "#FFFFFF05")
        case .stateDisabled:
            return Self.dynamicColor(light: "#7878809E", dark: "#78788080")
        case .stateHover:
            return Self.dynamicColor(light: "#0000000A", dark: "#FFFFFF14")
        case .stateOnAccentHover:
            return Self.dynamicColor(light: "#FFFFFF3D", dark: "#00000029")
        case .stateOnAccentPressed:
            return Self.dynamicColor(light: "#FFFFFF61", dark: "#0000003D")
        case .statePressed:
            return Self.dynamicColor(light: "#00000014", dark: "#FFFFFF1F")
        case .stateSelected:
            return Self.dynamicColor(light: "#0000000F", dark: "#FFFFFF1A")
        case .staticBlack:
            return Self.dynamicColor(light: "#0E0E0F", dark: "#0E0E0F")
        case .staticWhite:
            return Self.dynamicColor(light: "#FFFFFF", dark: "#FFFFFF")
        case .statusError:
            return Self.dynamicColor(light: "#F75951", dark: "#F75951")
        case .statusSuccess:
            return Self.dynamicColor(light: "#2FB350", dark: "#34C759")
        case .statusWarning:
            return Self.dynamicColor(light: "#CC7F08", dark: "#E58F09")
        case .surface0:
            return Self.dynamicColor(light: "#EFEFEF", dark: "#101010")
        case .surface1:
            return Self.dynamicColor(light: "#F9F9F9", dark: "#191919")
        case .surface2:
            return Self.dynamicColor(light: "#FFFFFF", dark: "#222222")
        case .surface3:
            return Self.dynamicColor(light: "#FFFFFF", dark: "#323232")
        case .surfaceInverse:
            return Self.dynamicColor(light: "#000000CC", dark: "#FFFFFFCC")
        case .textPrimary:
            return Self.dynamicColor(light: "#2A2A2C", dark: "#ECECF1")
        case .textQuaternary:
            return Self.dynamicColor(light: "#DEDEE5", dark: "#303034")
        case .textSecondary:
            return Self.dynamicColor(light: "#76767A", dark: "#9F9FA5")
        case .textTertiary:
            return Self.dynamicColor(light: "#BBBBC1", dark: "#5A5A5F")
        case .toast:
            return Self.dynamicColor(light: "#000000CC", dark: "#000000CC")
        }
    }

    public var color: Color {
        Color(uiColor)
    }

    private static func dynamicColor(light: String, dark: String) -> UIColor {
        if #available(iOS 13.0, *) {
            return UIColor { traits in
                traits.userInterfaceStyle == .dark ? Self.color(hex: dark) : Self.color(hex: light)
            }
        }
        return Self.color(hex: light)
    }

    private static func color(hex: String) -> UIColor {
        let normalized = hex.trimmingCharacters(in: CharacterSet(charactersIn: "#"))
        let scanner = Scanner(string: normalized)
        var value: UInt64 = 0
        guard scanner.scanHexInt64(&value) else {
            return UIColor(white: 0, alpha: 1)
        }

        switch normalized.count {
        case 6:
            return UIColor(
                red: CGFloat((value & 0xFF0000) >> 16) / 255.0,
                green: CGFloat((value & 0x00FF00) >> 8) / 255.0,
                blue: CGFloat(value & 0x0000FF) / 255.0,
                alpha: 1.0
            )
        case 8:
            return UIColor(
                red: CGFloat((value & 0xFF000000) >> 24) / 255.0,
                green: CGFloat((value & 0x00FF0000) >> 16) / 255.0,
                blue: CGFloat((value & 0x0000FF00) >> 8) / 255.0,
                alpha: CGFloat(value & 0x000000FF) / 255.0
            )
        default:
            return UIColor(white: 0, alpha: 1)
        }
    }
}

public extension UIColor {
    @nonobjc final class var grpAccentBlue: UIColor {
        Colors.accentBlue.uiColor
    }

    @nonobjc final class var grpAccentDefault: UIColor {
        Colors.accentDefault.uiColor
    }

    @nonobjc final class var grpAmountNegative: UIColor {
        Colors.amountNegative.uiColor
    }

    @nonobjc final class var grpAmountPositive: UIColor {
        Colors.amountPositive.uiColor
    }

    @nonobjc final class var grpBorderPrimary: UIColor {
        Colors.borderPrimary.uiColor
    }

    @nonobjc final class var grpBorderSecondary: UIColor {
        Colors.borderSecondary.uiColor
    }

    @nonobjc final class var grpEventAgentFee: UIColor {
        Colors.eventAgentFee.uiColor
    }

    @nonobjc final class var grpEventDividends: UIColor {
        Colors.eventDividends.uiColor
    }

    @nonobjc final class var grpEventEstimate: UIColor {
        Colors.eventEstimate.uiColor
    }

    @nonobjc final class var grpEventEstimateMuted: UIColor {
        Colors.eventEstimateMuted.uiColor
    }

    @nonobjc final class var grpEventExpense: UIColor {
        Colors.eventExpense.uiColor
    }

    @nonobjc final class var grpEventExpenseMuted: UIColor {
        Colors.eventExpenseMuted.uiColor
    }

    @nonobjc final class var grpEventIncome: UIColor {
        Colors.eventIncome.uiColor
    }

    @nonobjc final class var grpEventMarkup: UIColor {
        Colors.eventMarkup.uiColor
    }

    @nonobjc final class var grpEventPaymentOwn: UIColor {
        Colors.eventPaymentOwn.uiColor
    }

    @nonobjc final class var grpEventPaymentWorking: UIColor {
        Colors.eventPaymentWorking.uiColor
    }

    @nonobjc final class var grpFocusRing: UIColor {
        Colors.focusRing.uiColor
    }

    @nonobjc final class var grpHighlightCalendar: UIColor {
        Colors.highlightCalendar.uiColor
    }

    @nonobjc final class var grpHighlightText: UIColor {
        Colors.highlightText.uiColor
    }

    @nonobjc final class var grpHighlighter: UIColor {
        Colors.highlighter.uiColor
    }

    @nonobjc final class var grpOnAccentPrimary: UIColor {
        Colors.onAccentPrimary.uiColor
    }

    @nonobjc final class var grpOnAccentSecondary: UIColor {
        Colors.onAccentSecondary.uiColor
    }

    @nonobjc final class var grpOnAccentTertiary: UIColor {
        Colors.onAccentTertiary.uiColor
    }

    @nonobjc final class var grpOverlay: UIColor {
        Colors.overlay.uiColor
    }

    @nonobjc final class var grpShadowBase: UIColor {
        Colors.shadowBase.uiColor
    }

    @nonobjc final class var grpShadowStroke: UIColor {
        Colors.shadowStroke.uiColor
    }

    @nonobjc final class var grpShadowStrokeLight: UIColor {
        Colors.shadowStrokeLight.uiColor
    }

    @nonobjc final class var grpStateDisabled: UIColor {
        Colors.stateDisabled.uiColor
    }

    @nonobjc final class var grpStateHover: UIColor {
        Colors.stateHover.uiColor
    }

    @nonobjc final class var grpStateOnAccentHover: UIColor {
        Colors.stateOnAccentHover.uiColor
    }

    @nonobjc final class var grpStateOnAccentPressed: UIColor {
        Colors.stateOnAccentPressed.uiColor
    }

    @nonobjc final class var grpStatePressed: UIColor {
        Colors.statePressed.uiColor
    }

    @nonobjc final class var grpStateSelected: UIColor {
        Colors.stateSelected.uiColor
    }

    @nonobjc final class var grpStaticBlack: UIColor {
        Colors.staticBlack.uiColor
    }

    @nonobjc final class var grpStaticWhite: UIColor {
        Colors.staticWhite.uiColor
    }

    @nonobjc final class var grpStatusError: UIColor {
        Colors.statusError.uiColor
    }

    @nonobjc final class var grpStatusSuccess: UIColor {
        Colors.statusSuccess.uiColor
    }

    @nonobjc final class var grpStatusWarning: UIColor {
        Colors.statusWarning.uiColor
    }

    @nonobjc final class var grpSurface0: UIColor {
        Colors.surface0.uiColor
    }

    @nonobjc final class var grpSurface1: UIColor {
        Colors.surface1.uiColor
    }

    @nonobjc final class var grpSurface2: UIColor {
        Colors.surface2.uiColor
    }

    @nonobjc final class var grpSurface3: UIColor {
        Colors.surface3.uiColor
    }

    @nonobjc final class var grpSurfaceInverse: UIColor {
        Colors.surfaceInverse.uiColor
    }

    @nonobjc final class var grpTextPrimary: UIColor {
        Colors.textPrimary.uiColor
    }

    @nonobjc final class var grpTextQuaternary: UIColor {
        Colors.textQuaternary.uiColor
    }

    @nonobjc final class var grpTextSecondary: UIColor {
        Colors.textSecondary.uiColor
    }

    @nonobjc final class var grpTextTertiary: UIColor {
        Colors.textTertiary.uiColor
    }

    @nonobjc final class var grpToast: UIColor {
        Colors.toast.uiColor
    }
}
#endif
