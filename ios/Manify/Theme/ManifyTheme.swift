import SwiftUI

enum ManifyTheme {
    static let bg = Color(red: 15/255, green: 17/255, blue: 21/255)
    static let panel = Color(red: 23/255, green: 26/255, blue: 32/255)
    static let panelLight = Color(red: 30/255, green: 34/255, blue: 42/255)
    static let navy = Color(red: 15/255, green: 20/255, blue: 32/255)
    static let gold = Color(red: 201/255, green: 165/255, blue: 91/255)
    static let goldLight = Color(red: 221/255, green: 190/255, blue: 125/255)
    static let goldDark = Color(red: 160/255, green: 130/255, blue: 65/255)
    static let textPrimary = Color(red: 230/255, green: 230/255, blue: 230/255)
    static let textSecondary = Color(red: 163/255, green: 167/255, blue: 174/255)
    static let success = Color(red: 63/255, green: 175/255, blue: 123/255)
    static let warning = Color(red: 227/255, green: 162/255, blue: 59/255)
    static let danger = Color(red: 208/255, green: 91/255, blue: 91/255)
    static let border = Color.white.opacity(0.06)

    static let goldGradient = LinearGradient(
        colors: [goldLight, gold, goldDark],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )

    static let panelGradient = LinearGradient(
        colors: [panelLight, panel],
        startPoint: .top,
        endPoint: .bottom
    )
}
