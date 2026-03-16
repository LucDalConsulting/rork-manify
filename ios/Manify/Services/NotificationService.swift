import UserNotifications
import SwiftUI

@Observable
@MainActor
final class NotificationService {
    private(set) var isAuthorized: Bool = false

    private let notificationsEnabledKey = "manify_notifications_enabled"
    private let reminderWindowKey = "manify_reminder_window"

    var notificationsEnabled: Bool {
        get { UserDefaults.standard.bool(forKey: notificationsEnabledKey) }
        set {
            UserDefaults.standard.set(newValue, forKey: notificationsEnabledKey)
            if newValue {
                Task { await requestPermission() }
            } else {
                cancelAllReminders()
            }
        }
    }

    var reminderWindow: ReminderWindow {
        get {
            let raw = UserDefaults.standard.string(forKey: reminderWindowKey) ?? ReminderWindow.allDay.rawValue
            return ReminderWindow(rawValue: raw) ?? .allDay
        }
        set {
            UserDefaults.standard.set(newValue.rawValue, forKey: reminderWindowKey)
            scheduleReminders()
        }
    }

    init() {
        Task { await checkAuthorization() }
    }

    func requestPermission() async {
        let center = UNUserNotificationCenter.current()
        do {
            let granted = try await center.requestAuthorization(options: [.alert, .sound, .badge])
            isAuthorized = granted
            if granted {
                UserDefaults.standard.set(true, forKey: notificationsEnabledKey)
                scheduleReminders()
            }
        } catch {
            isAuthorized = false
        }
    }

    func checkAuthorization() async {
        let settings = await UNUserNotificationCenter.current().notificationSettings()
        isAuthorized = settings.authorizationStatus == .authorized
    }

    func scheduleReminders() {
        cancelAllReminders()
        guard notificationsEnabled else { return }

        let messages = [
            "Don't lose your streak. One lesson. Right now.",
            "Manify is waiting. Train today.",
            "Stay on your path. Complete your lesson.",
            "Your streak is alive. Keep it that way.",
            "Five minutes now beats regret tonight.",
            "Real discipline is daily.",
            "A man trains even when he doesn't feel like it.",
            "Login. Learn. Hold the line.",
            "Miss today and the streak dies.",
            "One lesson keeps momentum alive.",
        ]

        let windows: [(hour: Int, minute: Int)] = switch reminderWindow {
        case .morning:
            [(10, 30)]
        case .afternoon:
            [(15, 0)]
        case .evening:
            [(20, 0)]
        case .allDay:
            [(10, 30), (15, 0), (20, 0)]
        }

        let center = UNUserNotificationCenter.current()

        for (i, window) in windows.enumerated() {
            let content = UNMutableNotificationContent()
            content.title = "Manify"
            content.body = messages[i % messages.count]
            content.sound = .default

            var dateComponents = DateComponents()
            dateComponents.hour = window.hour
            dateComponents.minute = window.minute

            let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
            let request = UNNotificationRequest(
                identifier: "manify_streak_reminder_\(i)",
                content: content,
                trigger: trigger
            )

            center.add(request)
        }
    }

    func cancelAllReminders() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
    }

    func cancelTodayReminders() {
        let identifiers = (0..<3).map { "manify_streak_reminder_\($0)" }
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: identifiers)
    }
}

nonisolated enum ReminderWindow: String, CaseIterable, Sendable {
    case morning = "Morning"
    case afternoon = "Afternoon"
    case evening = "Evening"
    case allDay = "All Day"
}
