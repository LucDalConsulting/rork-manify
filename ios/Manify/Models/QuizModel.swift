import Foundation

nonisolated enum QuestionType: String, Codable, Sendable {
    case multipleChoice
    case scenario
    case fillBlank
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
    let explanation: String
    let tags: [String]

    init(id: String, type: QuestionType = .multipleChoice, prompt: String, choices: [String], correctIndex: Int, explanation: String, tags: [String] = []) {
        self.id = id
        self.type = type
        self.prompt = prompt
        self.choices = choices
        self.correctIndex = correctIndex
        self.explanation = explanation
        self.tags = tags
    }
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
