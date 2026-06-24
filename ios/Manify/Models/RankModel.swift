import Foundation

nonisolated enum Rank: String, Codable, CaseIterable, Sendable {
    case beta = "Cub"
    case alpha = "Lion"
    case sigma = "Sigma"
    case chad = "Chad"
    case omega = "Omega"
    case titan = "Titan"
    case sovereign = "Sovereign"

    var xpThreshold: Int {
        switch self {
        case .beta: 0
        case .alpha: 200
        case .sigma: 500
        case .chad: 1000
        case .omega: 2000
        case .titan: 4000
        case .sovereign: 8000
        }
    }

    var icon: String {
        switch self {
        case .beta: "shield"
        case .alpha: "bolt.shield.fill"
        case .sigma: "person.fill"
        case .chad: "figure.strengthtraining.traditional"
        case .omega: "brain.head.profile.fill"
        case .titan: "mountain.2.fill"
        case .sovereign: "crown.fill"
        }
    }

    var description: String {
        switch self {
        case .beta: "Learning the fundamentals."
        case .alpha: "Understanding systems."
        case .sigma: "Independent competence."
        case .chad: "Advanced mastery."
        case .omega: "Strategic understanding."
        case .titan: "Elite domain knowledge."
        case .sovereign: "Complete mastery across domains."
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
        return .beta
    }

    var nextRank: Rank? {
        guard let index = Rank.allCases.firstIndex(of: self),
              index + 1 < Rank.allCases.count else { return nil }
        return Rank.allCases[index + 1]
    }
}
