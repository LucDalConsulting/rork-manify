import SwiftUI

struct RankBadge: View {
    let rank: Rank
    let totalXP: Int
    let compact: Bool

    init(rank: Rank, totalXP: Int, compact: Bool = false) {
        self.rank = rank
        self.totalXP = totalXP
        self.compact = compact
    }

    private var xpProgress: Double {
        guard let next = rank.nextRank else { return 1.0 }
        let current = totalXP - rank.xpThreshold
        let needed = next.xpThreshold - rank.xpThreshold
        return min(Double(current) / Double(needed), 1.0)
    }

    var body: some View {
        if compact {
            compactView
        } else {
            fullView
        }
    }

    private var compactView: some View {
        HStack(spacing: 8) {
            Image(systemName: rank.icon)
                .font(.subheadline)
                .foregroundStyle(ManifyTheme.gold)

            Text(rank.displayName)
                .font(.subheadline.weight(.semibold))
                .foregroundStyle(ManifyTheme.textPrimary)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background(ManifyTheme.gold.opacity(0.12))
        .clipShape(Capsule())
    }

    private var fullView: some View {
        VStack(spacing: 12) {
            Image(systemName: rank.icon)
                .font(.system(size: 32))
                .foregroundStyle(ManifyTheme.gold)

            Text(rank.displayName.uppercased())
                .font(.headline.weight(.bold))
                .foregroundStyle(ManifyTheme.gold)
                .tracking(2)

            Text("\(totalXP) XP")
                .font(.caption)
                .foregroundStyle(ManifyTheme.textSecondary)

            if rank.nextRank != nil {
                VStack(spacing: 6) {
                    GeometryReader { geo in
                        ZStack(alignment: .leading) {
                            Capsule()
                                .fill(Color.white.opacity(0.08))
                                .frame(height: 6)

                            Capsule()
                                .fill(ManifyTheme.goldGradient)
                                .frame(width: geo.size.width * xpProgress, height: 6)
                        }
                    }
                    .frame(height: 6)

                    if let next = rank.nextRank {
                        Text("Next: \(next.displayName) at \(next.xpThreshold) XP")
                            .font(.caption2)
                            .foregroundStyle(ManifyTheme.textSecondary)
                    }
                }
            }
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(ManifyTheme.panel)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(ManifyTheme.gold.opacity(0.2), lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: 16))
    }
}
