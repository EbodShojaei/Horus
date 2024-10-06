import Foundation

class HoroscopeViewModel: ObservableObject {
    @Published var horoscopes: [Horoscope] = []
    
    init() {
        loadHoroscopes()
    }
    
    /// Loads the horoscopes from the static data.
    func loadHoroscopes() {
        self.horoscopes = Horoscopes.horoscopes
    }
    
    /// Finds the horoscope based on the selected birthdate.
    func getHoroscope(for date: Date) -> Horoscope? {
        let calendar = Calendar.current
        let currentYear = calendar.component(.year, from: date)
        
        for horoscope in horoscopes {
            guard let minDate = DateUtility.normalizedDate(from: horoscope.minDate, for: currentYear),
                  let maxDate = DateUtility.normalizedDate(from: horoscope.maxDate, for: currentYear) else {
                continue
            }
            
            // Check if the sign spans across two years (like Capricorn)
            if minDate > maxDate {
                // Special handling for signs that span two years (e.g., Capricorn)
                if calendar.compare(date, to: minDate, toGranularity: .day) != .orderedAscending ||
                    calendar.compare(date, to: maxDate, toGranularity: .day) != .orderedDescending {
                    return horoscope
                }
            } else {
                // Standard case: Zodiac signs that do not span two years
                if date >= minDate && date <= maxDate {
                    return horoscope
                }
            }
        }
        return nil
    }
}
