import Foundation

/// The Horoscope struct defines the attributes of each zodiac sign.
struct Horoscope: Identifiable, Equatable {
    var id: UUID { UUID() }  // Automatically generate an ID for each entry
    let name: String
    let desc: String
    let minDate: String
    let maxDate: String
    let imgPath: String
    
    static func ==(lhs: Horoscope, rhs: Horoscope) -> Bool {
        return lhs.name == rhs.name &&
        lhs.desc == rhs.desc &&
        lhs.minDate == rhs.minDate &&
        lhs.maxDate == rhs.maxDate &&
        lhs.imgPath == rhs.imgPath
    }
}
