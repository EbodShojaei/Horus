import SwiftUI

/// Displays information about the developers.
struct AboutView: View {
    var body: some View {
        VStack {
            Text("Developers")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)
            
            Text("Ebod Shojaei - BCIT ID A0XXXXXXX")
        }
        .padding()
        .navigationTitle("About")
    }
}
