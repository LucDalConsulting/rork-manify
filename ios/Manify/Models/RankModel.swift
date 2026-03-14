import Foundation

nonisolated enum Rank: String, Codable, CaseIterable, Sendable {
    case initiate = "Initiate"
    case builder = "Builder"
    case protector = "Protector"
    case provider = "Provider"
    case operatorRank = "Operator"
    case strategist = "Strategist"
    case sovereign = "Sovereign"

    var xpThreshold: Int {
        switch self {
        case .initiate: 0
        case .builder: 200
        case .protector: 500
        case .provider: 1000
        case .operatorRank: 2000
        case .strategist: 4000
        case .sovereign: 8000
        }
    }

    var icon: String {
        switch self {
        case .initiate: "shield"
        case .builder: "hammer.fill"
        case .protector: "shield.checkered"
        case .provider: "house.lodge.fill"
        case .operatorRank: "wrench.and.screwdriver.fill"
        case .strategist: "brain.head.profile.fill"
        case .sovereign: "crown.fill"
        }
    }

    var displayName: String { rawValue }

    static func rank(for xp: Int) -> Rank {
        let sorted = allCases.reversed()
        for rank in sorted {
            if xp >= rank.xpThreshold {
                return rank
            }
        }
        return .initiate
    }

    var nextRank: Rank? {
        guard let index = Rank.allCases.firstIndex(of: self),
              index + 1 < Rank.allCases.count else { return nil }
        return Rank.allCases[index + 1]
    }
}
