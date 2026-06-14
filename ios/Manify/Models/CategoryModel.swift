import SwiftUI

nonisolated enum CategoryID: String, Codable, CaseIterable, Identifiable, Sendable, Hashable {
    case constitution, firearms, home, cars, grilling, sharks
    case finance, fitness, firstAid, selfDefense, negotiation

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .constitution: "Constitution"
        case .firearms: "Firearms"
        case .home: "Home"
        case .cars: "Cars"
        case .grilling: "Grilling"
        case .sharks: "Sharks"
        case .finance: "Money"
        case .fitness: "Fitness"
        case .firstAid: "First Aid"
        case .selfDefense: "Self-Defense"
        case .negotiation: "Negotiation"
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
        case .finance: "dollarsign.circle.fill"
        case .fitness: "figure.strengthtraining.traditional"
        case .firstAid: "cross.case.fill"
        case .selfDefense: "figure.martial.arts"
        case .negotiation: "briefcase.fill"
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
        case .finance: "Build and keep wealth"
        case .fitness: "Strength, conditioning, longevity"
        case .firstAid: "Emergency medical readiness"
        case .selfDefense: "Protect yourself and others"
        case .negotiation: "Deals, salary, and influence"
        }
    }

    var totalTiers: Int {
        switch self {
        case .constitution: 4
        case .firearms: 4
        case .home: 4
        case .cars: 4
        case .grilling: 3
        case .sharks: 3
        case .finance: 4
        case .fitness: 4
        case .firstAid: 4
        case .selfDefense: 3
        case .negotiation: 3
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
        case .finance: Color(red: 60/255, green: 170/255, blue: 90/255)
        case .fitness: Color(red: 210/255, green: 90/255, blue: 70/255)
        case .firstAid: Color(red: 210/255, green: 60/255, blue: 80/255)
        case .selfDefense: Color(red: 130/255, green: 110/255, blue: 190/255)
        case .negotiation: Color(red: 60/255, green: 150/255, blue: 160/255)
        }
    }
}
