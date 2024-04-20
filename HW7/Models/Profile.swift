import Foundation

struct Profile : Identifiable {
    var id: String = UUID().uuidString
    var mainImage : String
    var profilePic : String
    var nameLabel : String
    var header : String
    var text : String
    
    static func mockData() -> [Profile] {
        [
            Profile(
                mainImage: "guitar",
                profilePic: "boy",
                nameLabel: "James Windleton",
                header: "Electric Guitar",
                text: "An electric guitar is a guitar that requires external amplification in order to be heard at typical performance volumes, unlike a standard acoustic guitar. It uses one or more pickups to convert the vibration of its strings into electrical signals, which ultimately are reproduced as sound by loudspeakers"),
            Profile(
                mainImage: "drums",
                profilePic: "girl",
                nameLabel: "Sarah Marrabuh",
                header: "Drum Kit",
                text: "A drum kit (also called a drum set, [a] trap set, or simply drums) is a collection of drums, cymbals, and sometimes other auxiliary percussion instruments set up to be played by one person. The drummer typically holds a pair of matching drumsticks or special wire or nylon brushes; and uses their feet to operate hi-hat and bass drum pedals")
        ]
    }
}
