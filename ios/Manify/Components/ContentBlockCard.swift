import SwiftUI

struct ContentBlockCard: View {
    let block: ContentBlock
    let index: Int
    @Binding var isExpanded: Bool
    let isRead: Bool

    private var accentColor: Color {
        switch block.type {
        case .whyMatters: ManifyTheme.gold
        case .systemOverview: .blue
        case .componentBreakdown: .purple
        case .howItWorks: ManifyTheme.success
        case .failureModes: ManifyTheme.danger
        case .ownerActions: .teal
        case .callPro: ManifyTheme.warning
        case .summary: ManifyTheme.textSecondary
        case .history: .indigo
        case .keyTerms: .cyan
        case .stepByStep: .mint
        case .commonMistakes: .orange
        case .proTips: .yellow
        case .principles: .blue
        case .safety: ManifyTheme.danger
        case .realWorld: .green
        case .gear: .brown
        case .context: .teal
        }
    }

    // The reader-facing header: the block's own topic-specific title when present
    // (e.g. "The Four-Stroke Cycle"), otherwise the generic type label as a fallback.
    private var headerText: String {
        block.title.isEmpty ? block.type.displayTitle : block.title
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Button {
                withAnimation(.snappy(duration: 0.3)) {
                    isExpanded.toggle()
                }
            } label: {
                HStack(spacing: 12) {
                    ZStack {
                        Circle()
                            .fill(accentColor.opacity(isExpanded ? 0.2 : 0.1))
                            .frame(width: 34, height: 34)

                        Image(systemName: block.type.icon)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(accentColor)
                    }

                    VStack(alignment: .leading, spacing: 2) {
                        Text(headerText)
                            .font(.caption.weight(.bold))
                            .textCase(.uppercase)
                            .foregroundStyle(isExpanded ? accentColor : ManifyTheme.textSecondary)
                            .tracking(0.8)
                            .lineLimit(2)
                            .fixedSize(horizontal: false, vertical: true)

                        if !isExpanded && block.bullets.count > 0 {
                            Text(block.bullets[0])
                                .font(.caption2)
                                .foregroundStyle(ManifyTheme.textSecondary.opacity(0.7))
                                .lineLimit(1)
                        }
                    }

                    Spacer()

                    HStack(spacing: 8) {
                        if isRead && !isExpanded {
                            Image(systemName: "checkmark.circle.fill")
                                .font(.caption)
                                .foregroundStyle(ManifyTheme.success.opacity(0.7))
                        }

                        Image(systemName: "chevron.right")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundStyle(ManifyTheme.textSecondary.opacity(0.5))
                            .rotationEffect(.degrees(isExpanded ? 90 : 0))
                    }
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 14)
                .contentShape(Rectangle())
            }
            .buttonStyle(.plain)
            .sensoryFeedback(.selection, trigger: isExpanded)

            if isExpanded {
                VStack(alignment: .leading, spacing: 12) {
                    Rectangle()
                        .fill(accentColor.opacity(0.15))
                        .frame(height: 1)
                        .padding(.horizontal, 16)

                    VStack(alignment: .leading, spacing: 8) {
                        ForEach(Array(block.bullets.enumerated()), id: \.offset) { bulletIndex, bullet in
                            HStack(alignment: .top, spacing: 10) {
                                RoundedRectangle(cornerRadius: 1)
                                    .fill(accentColor.opacity(0.5))
                                    .frame(width: 3, height: 3)
                                    .padding(.top, 8)

                                Text(bullet)
                                    .font(.subheadline)
                                    .foregroundStyle(ManifyTheme.textPrimary)
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            .opacity(1)
                            .offset(y: 0)
                        }
                    }
                    .padding(.horizontal, 16)

                    if let body = block.body {
                        Text(body)
                            .font(.subheadline)
                            .foregroundStyle(ManifyTheme.textSecondary)
                            .padding(.horizontal, 16)
                    }

                    if !block.callouts.isEmpty {
                        VStack(spacing: 6) {
                            ForEach(block.callouts, id: \.self) { callout in
                                HStack(spacing: 8) {
                                    Image(systemName: "exclamationmark.circle.fill")
                                        .foregroundStyle(ManifyTheme.warning)
                                        .font(.caption)
                                    Text(callout)
                                        .font(.caption)
                                        .foregroundStyle(ManifyTheme.warning)
                                }
                                .padding(10)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(ManifyTheme.warning.opacity(0.08))
                                .clipShape(.rect(cornerRadius: 8))
                            }
                        }
                        .padding(.horizontal, 16)
                    }
                }
                .padding(.bottom, 16)
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .background(ManifyTheme.panel)
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(isExpanded ? accentColor.opacity(0.2) : Color.white.opacity(0.04), lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: 14))
    }
}
