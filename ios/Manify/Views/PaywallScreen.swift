import SwiftUI

struct PaywallScreen: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(MembershipService.self) private var membership
    @State private var showSuccess: Bool = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 32) {
                    Spacer().frame(height: 12)
                    heroSection
                    benefitsList
                    comparisonSection
                    ctaSection
                    Spacer().frame(height: 20)
                }
                .padding(.horizontal, 24)
            }
            .background(
                LinearGradient(
                    colors: [
                        Color(red: 12/255, green: 14/255, blue: 18/255),
                        Color(red: 18/255, green: 20/255, blue: 26/255),
                        Color(red: 12/255, green: 14/255, blue: 18/255)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
            )
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.subheadline.weight(.medium))
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
            .overlay {
                if showSuccess {
                    successOverlay
                }
            }
            .onChange(of: membership.isPremium) { _, isPremium in
                if isPremium {
                    showSuccess = true
                    Task {
                        try? await Task.sleep(for: .seconds(2))
                        dismiss()
                    }
                }
            }
        }
    }

    private var heroSection: some View {
        VStack(spacing: 16) {
            Image(systemName: "shield.checkered")
                .font(.system(size: 52))
                .foregroundStyle(ManifyTheme.goldGradient)

            VStack(spacing: 6) {
                Text("MANLY MEMBERSHIP")
                    .font(.caption.weight(.bold))
                    .foregroundStyle(ManifyTheme.gold)
                    .tracking(3)

                Text("Unlock Full Manify")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundStyle(ManifyTheme.textPrimary)

                Text("Become a Man")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textSecondary)
            }
        }
    }

    private var benefitsList: some View {
        VStack(alignment: .leading, spacing: 14) {
            benefitRow(icon: "infinity", text: "Unlimited lessons every day")
            benefitRow(icon: "lock.open.fill", text: "Unlock Tier 3 and above")
            benefitRow(icon: "books.vertical.fill", text: "Access all premium courses")
            benefitRow(icon: "figure.walk", text: "Train at your own pace")
            benefitRow(icon: "bolt.shield.fill", text: "No daily limits")

            HStack(spacing: 10) {
                Image(systemName: "checkmark.seal.fill")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.gold)
                    .frame(width: 28)

                Text("One-time payment. Lifetime access.")
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(ManifyTheme.gold)
            }
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(ManifyTheme.panel)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(ManifyTheme.gold.opacity(0.2), lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: 16))
    }

    private func benefitRow(icon: String, text: String) -> some View {
        HStack(spacing: 10) {
            Image(systemName: icon)
                .font(.subheadline)
                .foregroundStyle(ManifyTheme.gold.opacity(0.8))
                .frame(width: 28)

            Text(text)
                .font(.subheadline)
                .foregroundStyle(ManifyTheme.textPrimary)
        }
    }

    private var comparisonSection: some View {
        HStack(alignment: .top, spacing: 12) {
            VStack(alignment: .leading, spacing: 10) {
                Text("FREE")
                    .font(.caption.weight(.bold))
                    .foregroundStyle(ManifyTheme.textSecondary)
                    .tracking(1.5)

                comparisonItem("1 lesson/course/day", dimmed: true)
                comparisonItem("Tier 1 & 2 access", dimmed: true)
                comparisonItem("Streaks & reminders", dimmed: true)
                comparisonItem("Limited progression", dimmed: true)
            }
            .padding(14)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(ManifyTheme.panel.opacity(0.6))
            .clipShape(.rect(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 10) {
                Text("MEMBERSHIP")
                    .font(.caption.weight(.bold))
                    .foregroundStyle(ManifyTheme.gold)
                    .tracking(1.5)

                comparisonItem("Unlimited lessons", dimmed: false)
                comparisonItem("All tiers unlocked", dimmed: false)
                comparisonItem("All courses unlocked", dimmed: false)
                comparisonItem("Premium future content", dimmed: false)
            }
            .padding(14)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(ManifyTheme.gold.opacity(0.06))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(ManifyTheme.gold.opacity(0.2), lineWidth: 1)
            )
            .clipShape(.rect(cornerRadius: 12))
        }
    }

    private func comparisonItem(_ text: String, dimmed: Bool) -> some View {
        HStack(spacing: 6) {
            Image(systemName: dimmed ? "minus" : "checkmark")
                .font(.caption2.weight(.bold))
                .foregroundStyle(dimmed ? ManifyTheme.textSecondary.opacity(0.5) : ManifyTheme.gold)

            Text(text)
                .font(.caption)
                .foregroundStyle(dimmed ? ManifyTheme.textSecondary.opacity(0.7) : ManifyTheme.textPrimary)
        }
    }

    private var ctaSection: some View {
        VStack(spacing: 12) {
            Button {
                Task { await membership.purchase() }
            } label: {
                HStack {
                    if membership.isPurchasing {
                        ProgressView()
                            .tint(ManifyTheme.bg)
                    } else {
                        Text("Unlock for \(membership.priceString ?? "$9.99")")
                            .font(.headline.weight(.bold))
                    }
                }
                .foregroundStyle(ManifyTheme.bg)
                .frame(maxWidth: .infinity)
                .padding(18)
                .background(ManifyTheme.goldGradient)
                .clipShape(.rect(cornerRadius: 14))
            }
            .disabled(membership.isPurchasing || membership.isLoading)
            .sensoryFeedback(.impact(weight: .heavy), trigger: membership.isPremium)

            Text("One-time payment. No subscription.")
                .font(.caption)
                .foregroundStyle(ManifyTheme.textSecondary)

            Button {
                Task { await membership.restorePurchases() }
            } label: {
                Text("Restore Purchases")
                    .font(.caption.weight(.medium))
                    .foregroundStyle(ManifyTheme.textSecondary)
            }

            if let error = membership.purchaseError {
                Text(error)
                    .font(.caption)
                    .foregroundStyle(ManifyTheme.danger)
                    .multilineTextAlignment(.center)
            }

            if membership.isPremium && !showSuccess {
                HStack(spacing: 6) {
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundStyle(ManifyTheme.success)
                    Text("Membership Active")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(ManifyTheme.success)
                }
                .padding(.top, 8)
            }
        }
    }

    private var successOverlay: some View {
        ZStack {
            Color.black.opacity(0.85)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Image(systemName: "shield.checkered")
                    .font(.system(size: 56))
                    .foregroundStyle(ManifyTheme.goldGradient)

                Text("Manly Membership Unlocked")
                    .font(.title3.weight(.bold))
                    .foregroundStyle(ManifyTheme.textPrimary)

                Text("You now have full access.\nTrain without limits.")
                    .font(.subheadline)
                    .foregroundStyle(ManifyTheme.textSecondary)
                    .multilineTextAlignment(.center)
            }
        }
        .transition(.opacity)
    }
}
