import Foundation

struct ProfileCell : Identifiable {
    var id: String = UUID().uuidString
    var mainImage : String
    var profilePic : String
    var nameLabel : String
    var header : String
    var text : String
    
    static func mockData() -> [ProfileCell] {
        [
            ProfileCell(
                mainImage: "guitar",
                profilePic: "boy",
                nameLabel: "James Windleton",
                header: "The Electric Guitar",
                text: "An electric guitar is a guitar that requires external amplification in order to be heard at typical performance volumes, unlike a standard acoustic guitar. It uses one or more pickups to convert the vibration of its strings into electrical signals, which ultimately are reproduced as sound by loudspeakers. The sound is sometimes shaped or electronically altered to achieve different timbres or tonal qualities from that of an acoustic guitar via amplifier settings or knobs on the guitar"),
            ProfileCell(
                mainImage: "drums",
                profilePic: "girl",
                nameLabel: "Sarah Marrabuh",
                header: "The Drums",
                text: "A drum kit (also called a drum set, [a] trap set, or simply drums) is a collection of drums, cymbals, and sometimes other auxiliary percussion instruments set up to be played by one person. The drummer typically holds a pair of matching drumsticks or special wire or nylon brushes; and uses their feet to operate hi-hat and bass drum pedals")
        ]
    }
}
