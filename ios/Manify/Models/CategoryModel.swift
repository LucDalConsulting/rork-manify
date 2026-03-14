import SwiftUI

nonisolated enum CategoryID: String, Codable, CaseIterable, Identifiable, Sendable, Hashable {
    case constitution, firearms, home, cars, grilling, sharks

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .constitution: "Constitution"
        case .firearms: "Firearms"
        case .home: "Home"
        case .cars: "Cars"
        case .grilling: "Grilling"
        case .sharks: "Sharks"
        }
    }

    var icon: String {
        switch self {
        case .constitution: "building.columns.fill"
        case .firearms: "scope"
        case .home: "house.fill"
        case .cars: "car.fill"
        case .grilling: "flame.fill"
        case .sharks: "water.waves"
        }
    }

    var subtitle: String {
        switch self {
        case .constitution: "Power structure literacy"
        case .firearms: "Responsibility & force literacy"
        case .home: "Ownership competence"
        case .cars: "Mechanical autonomy"
        case .grilling: "Fire, meat, method, confidence"
        case .sharks: "Apex predator energy"
        }
    }

    var totalTiers: Int {
        switch self {
        case .sharks: 2
        default: 3
        }
    }

    var accentColor: Color {
        switch self {
        case .constitution: Color(red: 70/255, green: 130/255, blue: 200/255)
        case .firearms: Color(red: 180/255, green: 80/255, blue: 80/255)
        case .home: Color(red: 80/255, green: 160/255, blue: 120/255)
        case .cars: Color(red: 200/255, green: 140/255, blue: 60/255)
        case .grilling: Color(red: 220/255, green: 100/255, blue: 50/255)
        case .sharks: Color(red: 60/255, green: 140/255, blue: 180/255)
        }
    }
}
