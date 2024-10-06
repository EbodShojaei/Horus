import SwiftUI

/// Utility to handle dark and light mode configurations for the app.
struct AppTheme {
    static func configure() {
        let appearance = UINavigationBarAppearance()
        
        if let navBarBackgroundColor = UIColor(named: "NavBarBackgroundColor") {
            appearance.backgroundColor = navBarBackgroundColor
        }
        
        if let navBarTextColor = UIColor(named: "NavBarTextColor") {
            appearance.titleTextAttributes = [.foregroundColor: navBarTextColor]
        }
        
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
    }
}
