import Foundation

nonisolated struct LessonProgress: Codable, Sendable {
    var isCompleted: Bool = false
    var bestScore: Int = 0
    var attempts: Int = 0
    var lastAttemptDate: Date?
    var xpEarned: Int = 0
    var hasReadLesson: Bool = false
}

nonisolated struct FlashcardSchedule: Codable, Sendable {
    let flashcardId: String
    var nextReviewDate: Date
    var interval: Int
    var easeFactor: Double

    init(flashcardId: String) {
        self.flashcardId = flashcardId
        self.nextReviewDate = Date()
        self.interval = 1
        self.easeFactor = 2.5
    }
}

nonisolated struct StreakData: Codable, Sendable {
    var currentStreak: Int = 0
    var longestStreak: Int = 0
    var lastActiveDate: Date?
    var weeklyActiveDays: [Int] = []
    var weekStartDate: Date?
}

nonisolated struct UserData: Codable, Sendable {
    var lessonProgress: [String: LessonProgress] = [:]
    var flashcardSchedules: [String: FlashcardSchedule] = [:]
    var streak: StreakData = StreakData()
    var totalXP: Int = 0
    var bookmarkedLessons: [String] = []
    var currentLessonId: String?
}
