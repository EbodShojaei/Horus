import Foundation

/// Provides static horoscope data.
struct Horoscopes {
    static let horoscopes: [Horoscope] = [
        Horoscope(name: "Aries", desc: "Courageous and energetic, Aries are known for their fiery nature and leadership qualities.", minDate: "March 21", maxDate: "April 19", imgPath: "aries"),
        Horoscope(name: "Taurus", desc: "Reliable, patient, and practical, Taurus individuals value stability and loyalty.", minDate: "April 20", maxDate: "May 20", imgPath: "taurus"),
        Horoscope(name: "Gemini", desc: "Adaptable and outgoing, Geminis are known for their versatility and lively communication.", minDate: "May 21", maxDate: "June 20", imgPath: "gemini"),
        Horoscope(name: "Cancer", desc: "Emotional and nurturing, Cancer individuals are deeply connected to their family and home.", minDate: "June 21", maxDate: "July 22", imgPath: "cancer"),
        Horoscope(name: "Leo", desc: "Confident and charismatic, Leos thrive in the spotlight and are known for their warm personalities.", minDate: "July 23", maxDate: "August 22", imgPath: "leo"),
        Horoscope(name: "Virgo", desc: "Analytical and practical, Virgos are perfectionists who value attention to detail.", minDate: "August 23", maxDate: "September 22", imgPath: "virgo"),
        Horoscope(name: "Libra", desc: "Balanced and diplomatic, Libras are peacemakers who seek harmony in all aspects of life.", minDate: "September 23", maxDate: "October 22", imgPath: "libra"),
        Horoscope(name: "Scorpio", desc: "Passionate and resourceful, Scorpios are known for their intensity and strong-willed nature.", minDate: "October 23", maxDate: "November 21", imgPath: "scorpio"),
        Horoscope(name: "Sagittarius", desc: "Adventurous and optimistic, Sagittarians are known for their free spirit and love for exploration.", minDate: "November 22", maxDate: "December 21", imgPath: "sagittarius"),
        Horoscope(name: "Capricorn", desc: "Disciplined and responsible, Capricorns are ambitious individuals who value hard work.", minDate: "December 22", maxDate: "January 19", imgPath: "capricorn"),
        Horoscope(name: "Aquarius", desc: "Innovative and independent, Aquarians are forward-thinking and value their individuality.", minDate: "January 20", maxDate: "February 18", imgPath: "aquarius"),
        Horoscope(name: "Pisces", desc: "Compassionate and intuitive, Pisces are dreamers known for their creativity and empathy.", minDate: "February 19", maxDate: "March 20", imgPath: "pisces")
    ]
}

