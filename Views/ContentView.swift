import SwiftUI

/// Main content view displaying a tab bar with home, search, and about sections.
struct ContentView: View {
    init() {
        AppTheme.configure()
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle.fill")
                }
        }
        .background(Color("BackgroundColor").ignoresSafeArea())
    }
}
