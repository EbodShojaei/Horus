import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HoroscopeViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.horoscopes) { horoscope in
                NavigationLink(destination: HoroscopeDetailView(horoscope: horoscope)) {
                    HStack {
                        Image(horoscope.imgPath)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        Text(horoscope.name)
                            .font(.headline)
                    }
                }
            }
            .navigationTitle("Horoscopes")
            .onAppear {
                viewModel.loadHoroscopes() // Load horoscopes when the view appears
            }
        }
    }
}
