import Foundation

struct DateUtility {
    /// Converts a string date (e.g., "March 21") into a Date object for the specified year.
    static func normalizedDate(from string: String, for year: Int) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd"
        
        // Parse the month and day, then manually set the year
        if let baseDate = dateFormatter.date(from: string) {
            var dateComponents = Calendar.current.dateComponents([.month, .day], from: baseDate)
            dateComponents.year = year // Set the current year
            return Calendar.current.date(from: dateComponents)
        }
        return nil
    }
}
