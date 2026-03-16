import Foundation

nonisolated enum QuestionType: String, Codable, Sendable {
    case multipleChoice
    case scenario
    case fillBlank
    case multiSelect
    case matching
}

nonisolated struct Quiz: Identifiable, Codable, Hashable, Sendable {
    let id: String
    let passPercent: Int
    let questions: [Question]
}

nonisolated struct Question: Identifiable, Codable, Hashable, Sendable {
    let id: String
    let type: QuestionType
    let prompt: String
    let choices: [String]
    let correctIndex: Int
    let correctIndices: [Int]
    let matchingPairs: [MatchingPair]
    let acceptedAnswers: [String]
    let explanation: String
    let tags: [String]

    init(id: String, type: QuestionType = .multipleChoice, prompt: String, choices: [String], correctIndex: Int, explanation: String, tags: [String] = []) {
        self.id = id
        self.type = type
        self.prompt = prompt
        self.choices = choices
        self.correctIndex = correctIndex
        self.correctIndices = [correctIndex]
        self.matchingPairs = []
        self.acceptedAnswers = []
        self.explanation = explanation
        self.tags = tags
    }

    init(id: String, type: QuestionType = .multiSelect, prompt: String, choices: [String], correctIndices: [Int], explanation: String, tags: [String] = []) {
        self.id = id
        self.type = type
        self.prompt = prompt
        self.choices = choices
        self.correctIndex = correctIndices.first ?? 0
        self.correctIndices = correctIndices
        self.matchingPairs = []
        self.acceptedAnswers = []
        self.explanation = explanation
        self.tags = tags
    }

    init(id: String, prompt: String, acceptedAnswers: [String], explanation: String, tags: [String] = []) {
        self.id = id
        self.type = .fillBlank
        self.prompt = prompt
        self.choices = []
        self.correctIndex = 0
        self.correctIndices = []
        self.matchingPairs = []
        self.acceptedAnswers = acceptedAnswers
        self.explanation = explanation
        self.tags = tags
    }

    init(id: String, prompt: String, matchingPairs: [MatchingPair], explanation: String, tags: [String] = []) {
        self.id = id
        self.type = .matching
        self.prompt = prompt
        self.choices = []
        self.correctIndex = 0
        self.correctIndices = []
        self.matchingPairs = matchingPairs
        self.acceptedAnswers = []
        self.explanation = explanation
        self.tags = tags
    }
}

nonisolated struct MatchingPair: Codable, Hashable, Sendable {
    let left: String
    let right: String
}

nonisolated struct Flashcard: Identifiable, Codable, Hashable, Sendable {
    let id: String
    let front: String
    let back: String
    let tags: [String]

    init(id: String, front: String, back: String, tags: [String] = []) {
        self.id = id
        self.front = front
        self.back = back
        self.tags = tags
    }
}
