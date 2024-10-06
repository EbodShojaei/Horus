import SwiftUI

/// View where the user can enter their birthdate to find the corresponding horoscope.
struct SearchView: View {
    @State private var birthdate = Date()
    @State private var selectedHoroscope: Horoscope?
    @State private var isExpanded = true // Track whether the DatePicker is expanded
    
    @StateObject var viewModel = HoroscopeViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // The arrow button remains fixed at the top while its direction is animated
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            isExpanded.toggle() // Toggle the expanded state
                        }
                    }) {
                        Image(systemName: "chevron.up")
                            .rotationEffect(.degrees(isExpanded ? 0 : 180)) // Rotate based on state
                            .animation(.easeInOut, value: isExpanded) // Animate rotation
                    }
                    Spacer()
                }
                .padding()
                
                // DatePicker expands/collapses below the arrow
                if isExpanded {
                    DatePicker("Enter your birthdate", selection: $birthdate, displayedComponents: .date)
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .frame(width: 320, height: 320) // Set a fixed height for the DatePicker
                        .padding()
                        .background(Color("BackgroundColor"))
                        .cornerRadius(10)
                        .transition(.opacity) // Smooth transition when expanding/collapsing
                }
                
                // Button to search for horoscope based on selected date
                Button(action: {
                    selectedHoroscope = viewModel.getHoroscope(for: birthdate)
                    if let horoscope = selectedHoroscope {
                        print("Horoscope found: \(horoscope.name)")
                    } else {
                        print("No horoscope found for this date.")
                    }
                }) {
                    Text("Find Horoscope")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                
                // Check if a horoscope is selected and display details
                if let horoscope = selectedHoroscope {
                    HoroscopeDetailView(horoscope: horoscope)
                        .transition(.opacity)
                        .padding(.top, 20)
                } else {
                    Text("Enter a date to find your horoscope")
                        .font(.subheadline)
                        .foregroundColor(Color("TextColor"))
                        .padding(.top, 20)
                }
            }
            .navigationTitle("Search Horoscope")
            .background(Color("BackgroundColor"))
        }
    }
}
