import SwiftUI

/// Detailed view for displaying information about a selected horoscope.
struct HoroscopeDetailView: View {
    let horoscope: Horoscope
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Load the image from Assets.xcassets using the imgPath (no folder prefix)
                Image(horoscope.imgPath)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                Text(horoscope.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TextColor"))
                
                Text("\(horoscope.minDate) - \(horoscope.maxDate)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(horoscope.desc)
                    .font(.body)
                    .padding()
                    .foregroundColor(Color("TextColor"))
            }
            .padding()
            .background(Color("BackgroundColor"))
            .navigationTitle(horoscope.name)
        }
    }
}
