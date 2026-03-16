import SwiftUI

struct SettingsScreen: View {
    @Environment(MembershipService.self) private var membership
    @Environment(NotificationService.self) private var notifications
    @Environment(ProgressStore.self) private var progressStore
    @State private var showPaywall: Bool = false

    var body: some View {
        List {
            membershipSection
            notificationSection
            accountSection
        }
        .scrollContentBackground(.hidden)
        .background(ManifyTheme.bg.ignoresSafeArea())
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .sheet(isPresented: $showPaywall) {
            PaywallScreen()
        }
    }

    private var membershipSection: some View {
        Section {
            if membership.isPremium {
                HStack(spacing: 12) {
                    Image(systemName: "shield.checkered")
                        .font(.title2)
                        .foregroundStyle(ManifyTheme.gold)

                    VStack(alignment: .leading, spacing: 2) {
                        Text("Manly Membership")
                            .font(.subheadline.weight(.semibold))
                            .foregroundStyle(ManifyTheme.textPrimary)
                        Text("Active — Lifetime Access")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.success)
                    }
                }
                .listRowBackground(ManifyTheme.panel)
            } else {
                Button {
                    showPaywall = true
                } label: {
                    HStack(spacing: 12) {
                        Image(systemName: "shield.checkered")
                            .font(.title2)
                            .foregroundStyle(ManifyTheme.gold)

                        VStack(alignment: .leading, spacing: 2) {
                            Text("Upgrade to Manly Membership")
                                .font(.subheadline.weight(.semibold))
                                .foregroundStyle(ManifyTheme.textPrimary)
                            Text("Unlock full access — $10 one-time")
                                .font(.caption)
                                .foregroundStyle(ManifyTheme.textSecondary)
                        }

                        Spacer()

                        Image(systemName: "chevron.right")
                            .font(.caption)
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }
                .listRowBackground(ManifyTheme.panel)
            }

            Button {
                Task { await membership.restorePurchases() }
            } label: {
                HStack {
                    Label("Restore Purchases", systemImage: "arrow.clockwise")
                        .font(.subheadline)
                        .foregroundStyle(ManifyTheme.textPrimary)

                    Spacer()

                    if membership.isLoading {
                        ProgressView()
                            .tint(ManifyTheme.textSecondary)
                    }
                }
            }
            .listRowBackground(ManifyTheme.panel)
        } header: {
            Text("Membership")
                .foregroundStyle(ManifyTheme.textSecondary)
        }
    }

    @ViewBuilder
    private var notificationSection: some View {
        Section {
            Toggle(isOn: Binding(
                get: { notifications.notificationsEnabled },
                set: { notifications.notificationsEnabled = $0 }
            )) {
                Label("Streak Reminders", systemImage: "bell.fill")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textPrimary)
            }
            .tint(ManifyTheme.gold)
            .listRowBackground(ManifyTheme.panel)

            if notifications.notificationsEnabled {
                Picker(selection: Binding(
                    get: { notifications.reminderWindow },
                    set: { notifications.reminderWindow = $0 }
                )) {
                    ForEach(ReminderWindow.allCases, id: \.self) { window in
                        Text(window.rawValue).tag(window)
                    }
                } label: {
                    Label("Reminder Window", systemImage: "clock.fill")
                        .font(.subheadline)
                        .foregroundStyle(ManifyTheme.textPrimary)
                }
                .listRowBackground(ManifyTheme.panel)
            }
        } header: {
            Text("Notifications")
                .foregroundStyle(ManifyTheme.textSecondary)
        }
    }

    private var accountSection: some View {
        Section {
            HStack {
                Label("Current Rank", systemImage: progressStore.currentRank.icon)
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textPrimary)
                Spacer()
                Text(progressStore.currentRank.displayName)
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(ManifyTheme.gold)
            }
            .listRowBackground(ManifyTheme.panel)

            HStack {
                Label("Total XP", systemImage: "star.fill")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textPrimary)
                Spacer()
                Text("\(progressStore.totalXP)")
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(ManifyTheme.textPrimary)
            }
            .listRowBackground(ManifyTheme.panel)

            HStack {
                Label("Current Streak", systemImage: "flame.fill")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textPrimary)
                Spacer()
                Text("\(progressStore.currentStreak) days")
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(ManifyTheme.warning)
            }
            .listRowBackground(ManifyTheme.panel)
        } header: {
            Text("Stats")
                .foregroundStyle(ManifyTheme.textSecondary)
        }
    }
}
