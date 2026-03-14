import Foundation
import SwiftUI

@Observable
@MainActor
final class ProgressStore {
    private(set) var userData: UserData

    private let storageKey = "manify_user_data"

    var totalXP: Int { userData.totalXP }
    var currentRank: Rank { Rank.rank(for: userData.totalXP) }
    var currentStreak: Int { userData.streak.currentStreak }
    var longestStreak: Int { userData.streak.longestStreak }

    var completedLessonCount: Int {
        userData.lessonProgress.values.filter(\.isCompleted).count
    }

    var quizAverage: Int {
        let scores = userData.lessonProgress.values.filter { $0.bestScore > 0 }.map(\.bestScore)
        guard !scores.isEmpty else { return 0 }
        return scores.reduce(0, +) / scores.count
    }

    var flashcardsDueCount: Int {
        let now = Date()
        return userData.flashcardSchedules.values.filter { $0.nextReviewDate <= now }.count
    }

    init() {
        if let data = UserDefaults.standard.data(forKey: storageKey),
           let decoded = try? JSONDecoder().decode(UserData.self, from: data) {
            self.userData = decoded
        } else {
            self.userData = UserData()
        }
    }

    func progress(for lessonId: String) -> LessonProgress {
        userData.lessonProgress[lessonId] ?? LessonProgress()
    }

    func isLessonCompleted(_ lessonId: String) -> Bool {
        userData.lessonProgress[lessonId]?.isCompleted ?? false
    }

    func hasReadLesson(_ lessonId: String) -> Bool {
        userData.lessonProgress[lessonId]?.hasReadLesson ?? false
    }

    func markLessonRead(_ lessonId: String) {
        var prog = userData.lessonProgress[lessonId] ?? LessonProgress()
        guard !prog.hasReadLesson else { return }
        prog.hasReadLesson = true
        prog.xpEarned += 10
        userData.lessonProgress[lessonId] = prog
        userData.totalXP += 10
        userData.currentLessonId = lessonId
        updateStreak()
        save()
    }

    func submitQuizScore(lessonId: String, score: Int, totalQuestions: Int) {
        var prog = userData.lessonProgress[lessonId] ?? LessonProgress()
        let percentage = totalQuestions > 0 ? (score * 100) / totalQuestions : 0
        let isFirstAttempt = prog.attempts == 0
        prog.attempts += 1
        prog.lastAttemptDate = Date()

        if percentage > prog.bestScore {
            prog.bestScore = percentage
        }

        var xpGained = 0
        if percentage >= 80 {
            prog.isCompleted = true
            xpGained = 30
            if isFirstAttempt { xpGained += 10 }
            if percentage == 100 { xpGained += 10 }
        }

        prog.xpEarned += xpGained
        userData.lessonProgress[lessonId] = prog
        userData.totalXP += xpGained
        updateStreak()
        save()
    }

    func markFlashcardsCompleted(lessonId: String, flashcardIds: [String]) {
        userData.totalXP += 10
        for fid in flashcardIds {
            var schedule = userData.flashcardSchedules[fid] ?? FlashcardSchedule(flashcardId: fid)
            schedule.interval = min(schedule.interval * 2, 30)
            schedule.nextReviewDate = Calendar.current.date(byAdding: .day, value: schedule.interval, to: Date()) ?? Date()
            userData.flashcardSchedules[fid] = schedule
        }
        updateStreak()
        save()
    }

    func isBookmarked(_ lessonId: String) -> Bool {
        userData.bookmarkedLessons.contains(lessonId)
    }

    func toggleBookmark(_ lessonId: String) {
        if let index = userData.bookmarkedLessons.firstIndex(of: lessonId) {
            userData.bookmarkedLessons.remove(at: index)
        } else {
            userData.bookmarkedLessons.append(lessonId)
        }
        save()
    }

    func categoryMastery(for categoryId: CategoryID, lessons: [Lesson]) -> Double {
        guard !lessons.isEmpty else { return 0 }
        let completed = lessons.filter { isLessonCompleted($0.id) }.count
        return Double(completed) / Double(lessons.count)
    }

    func isTierUnlocked(tier: Int, category: CategoryID, allLessons: [Lesson]) -> Bool {
        if tier == 1 { return true }

        let previousTier = tier - 1
        let previousTierLessons = allLessons.filter { $0.tier == previousTier }
        guard !previousTierLessons.isEmpty else { return false }

        let completedCount = previousTierLessons.filter { isLessonCompleted($0.id) }.count
        let completionRatio = Double(completedCount) / Double(previousTierLessons.count)

        let scores = previousTierLessons.compactMap { lesson -> Int? in
            let prog = progress(for: lesson.id)
            return prog.bestScore > 0 ? prog.bestScore : nil
        }
        let avgScore = scores.isEmpty ? 0 : scores.reduce(0, +) / scores.count

        if tier == 2 {
            return completionRatio >= 0.8 && avgScore >= 80
        } else if tier == 3 {
            return completionRatio >= 0.9 && avgScore >= 85
        }

        return false
    }

    func tierProgress(tier: Int, category: CategoryID, allLessons: [Lesson]) -> (completed: Int, total: Int, avgScore: Int) {
        let tierLessons = allLessons.filter { $0.tier == tier }
        let completedCount = tierLessons.filter { isLessonCompleted($0.id) }.count
        let scores = tierLessons.compactMap { lesson -> Int? in
            let prog = progress(for: lesson.id)
            return prog.bestScore > 0 ? prog.bestScore : nil
        }
        let avg = scores.isEmpty ? 0 : scores.reduce(0, +) / scores.count
        return (completedCount, tierLessons.count, avg)
    }

    func disciplineIndex() -> Int {
        let streakScore = min(Double(currentStreak) / 30.0, 1.0) * 40.0
        let quizScore = (Double(quizAverage) / 100.0) * 30.0
        let weeklyDays = Double(userData.streak.weeklyActiveDays.count)
        let weeklyScore = (weeklyDays / 7.0) * 20.0
        let flashAdherence = flashcardsDueCount == 0 ? 1.0 : 0.5
        let flashScore = flashAdherence * 10.0
        return Int(streakScore + quizScore + weeklyScore + flashScore)
    }

    private func updateStreak() {
        let calendar = Calendar.current
        let today = calendar.startOfDay(for: Date())
        let weekday = calendar.component(.weekday, from: today)

        if let lastActive = userData.streak.lastActiveDate {
            let lastDay = calendar.startOfDay(for: lastActive)
            let daysDiff = calendar.dateComponents([.day], from: lastDay, to: today).day ?? 0

            if daysDiff == 1 {
                userData.streak.currentStreak += 1
            } else if daysDiff > 1 {
                userData.streak.currentStreak = 1
            }
        } else {
            userData.streak.currentStreak = 1
        }

        userData.streak.longestStreak = max(userData.streak.longestStreak, userData.streak.currentStreak)
        userData.streak.lastActiveDate = today

        if let weekStart = userData.streak.weekStartDate,
           !calendar.isDate(weekStart, equalTo: today, toGranularity: .weekOfYear) {
            userData.streak.weeklyActiveDays = [weekday]
            userData.streak.weekStartDate = today
        } else {
            if !userData.streak.weeklyActiveDays.contains(weekday) {
                userData.streak.weeklyActiveDays.append(weekday)
            }
            if userData.streak.weekStartDate == nil {
                userData.streak.weekStartDate = today
            }
        }
    }

    private func save() {
        if let data = try? JSONEncoder().encode(userData) {
            UserDefaults.standard.set(data, forKey: storageKey)
        }
    }
}
