enum Rank: Int {
    case ace = 3
    case two = 5, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king = 16
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "hhhace"
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

print(ace.simpleDescription())

if let convertedRank = Rank(rawValue: 16) {
    let threeDescription = convertedRank.simpleDescription()
	print("wwww \(threeDescription)")
}
