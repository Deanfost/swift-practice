/* ENUMERATIONS AND STRUCTURES */
// https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html#ID465

// Use 'enum' to create Enumerations
// Enum values are assigned in order, but can be ovewritten with an explicit one
// Note that if you want a rawValue, you must specify it in the declaraiton of
// enum.
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king // King is 13
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
print(aceRawValue)
print(Rank.queen.rawValue)
// Create an enumeration instance from raw values, get the description
if let convertedRank = Rank(rawValue: 12) {
  print(convertedRank.simpleDescription())
}

// Enums without 'meaningful' values
enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
// Get the description the 'traditional' way
let hearts = Suit.hearts
print(hearts.simpleDescription())
