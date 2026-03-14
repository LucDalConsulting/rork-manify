import Foundation

@Observable
@MainActor
final class LessonStore {
    private(set) var lessonsByCategory: [CategoryID: [Lesson]] = [:]

    init() {
        lessonsByCategory[.constitution] = ConstitutionLessons.all
        lessonsByCategory[.firearms] = FirearmsLessons.all
        lessonsByCategory[.home] = HomeLessons.all
        lessonsByCategory[.cars] = CarsLessons.all
        lessonsByCategory[.grilling] = GrillingLessons.all
        lessonsByCategory[.sharks] = SharksLessons.all
    }

    func lessons(for category: CategoryID) -> [Lesson] {
        lessonsByCategory[category] ?? []
    }

    func lessons(for category: CategoryID, tier: Int) -> [Lesson] {
        lessons(for: category).filter { $0.tier == tier }
    }

    func lesson(by id: String) -> Lesson? {
        for lessons in lessonsByCategory.values {
            if let found = lessons.first(where: { $0.id == id }) {
                return found
            }
        }
        return nil
    }

    func nextLesson(after lessonId: String, in category: CategoryID) -> Lesson? {
        let all = lessons(for: category)
        guard let currentIndex = all.firstIndex(where: { $0.id == lessonId }),
              currentIndex + 1 < all.count else { return nil }
        return all[currentIndex + 1]
    }
}
