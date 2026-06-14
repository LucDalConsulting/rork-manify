import Foundation

nonisolated struct Lesson: Identifiable, Codable, Hashable, Sendable {
    let id: String
    let categoryId: CategoryID
    let tier: Int
    let lessonNumber: Int
    let title: String
    let subtitle: String?
    let estimatedMinutes: Int
    let difficulty: Int
    let prerequisites: [String]
    let contentBlocks: [ContentBlock]
    let quiz: Quiz
    let flashcards: [Flashcard]
    let tags: [String]
}

nonisolated struct ContentBlock: Identifiable, Codable, Hashable, Sendable {
    let id: String
    let type: ContentBlockType
    let title: String
    let bullets: [String]
    let body: String?
    let callouts: [String]

    init(id: String, type: ContentBlockType, title: String, bullets: [String], body: String? = nil, callouts: [String] = []) {
        self.id = id
        self.type = type
        self.title = title
        self.bullets = bullets
        self.body = body
        self.callouts = callouts
    }
}

nonisolated enum ContentBlockType: String, Codable, Sendable {
    case whyMatters = "why_matters"
    case systemOverview = "system_overview"
    case componentBreakdown = "component_breakdown"
    case howItWorks = "how_it_works"
    case failureModes = "failure_modes"
    case ownerActions = "owner_actions"
    case callPro = "call_pro"
    case summary = "summary"
    case history = "history"
    // Expanded section vocabulary. Each type is a familiar "shape" (icon + color);
    // the specific wording shown to the reader comes from ContentBlock.title, so the
    // same shape can carry topic-specific headers (the who/what/where/when/why framing)
    // while staying visually consistent lesson to lesson.
    case keyTerms = "key_terms"
    case stepByStep = "step_by_step"
    case commonMistakes = "common_mistakes"
    case proTips = "pro_tips"
    case principles = "principles"
    case safety = "safety"
    case realWorld = "real_world"
    case gear = "gear"
    case context = "context"

    var icon: String {
        switch self {
        case .whyMatters: "lightbulb.fill"
        case .systemOverview: "gearshape.2.fill"
        case .componentBreakdown: "list.bullet.rectangle.fill"
        case .howItWorks: "wrench.and.screwdriver.fill"
        case .failureModes: "exclamationmark.triangle.fill"
        case .ownerActions: "checkmark.seal.fill"
        case .callPro: "phone.fill"
        case .summary: "text.alignleft"
        case .history: "clock.fill"
        case .keyTerms: "character.book.closed.fill"
        case .stepByStep: "list.number"
        case .commonMistakes: "xmark.octagon.fill"
        case .proTips: "star.fill"
        case .principles: "flag.checkered"
        case .safety: "shield.lefthalf.filled"
        case .realWorld: "globe.americas.fill"
        case .gear: "wrench.adjustable.fill"
        case .context: "map.fill"
        }
    }

    // Fallback label used only when a ContentBlock does not supply its own title.
    var displayTitle: String {
        switch self {
        case .whyMatters: "WHY THIS MATTERS"
        case .systemOverview: "SYSTEM OVERVIEW"
        case .componentBreakdown: "COMPONENT BREAKDOWN"
        case .howItWorks: "HOW IT WORKS"
        case .failureModes: "FAILURE MODES"
        case .ownerActions: "OWNER ACTIONS"
        case .callPro: "WHEN TO CALL A PRO"
        case .summary: "SUMMARY"
        case .history: "HISTORY"
        case .keyTerms: "KEY TERMS"
        case .stepByStep: "STEP BY STEP"
        case .commonMistakes: "COMMON MISTAKES"
        case .proTips: "PRO TIPS"
        case .principles: "CORE PRINCIPLES"
        case .safety: "SAFETY"
        case .realWorld: "IN THE REAL WORLD"
        case .gear: "GEAR & TOOLS"
        case .context: "CONTEXT"
        }
    }
}
