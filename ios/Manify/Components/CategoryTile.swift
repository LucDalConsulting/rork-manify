import SwiftUI

struct CategoryTile: View {
    let category: CategoryID
    let mastery: Double
    let lessonsAvailable: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: category.icon)
                    .font(.title2)
                    .foregroundStyle(category.accentColor)

                Spacer()

                if mastery > 0 {
                    Text("\(Int(mastery * 100))%")
                        .font(.caption.weight(.bold))
                        .foregroundStyle(ManifyTheme.gold)
                }
            }

            VStack(alignment: .leading, spacing: 4) {
                Text(category.displayName)
                    .font(.headline)
                    .foregroundStyle(ManifyTheme.textPrimary)

                Text(category.subtitle)
                    .font(.caption)
                    .foregroundStyle(ManifyTheme.textSecondary)
                    .lineLimit(2)
            }

            if mastery > 0 {
                GeometryReader { geo in
                    ZStack(alignment: .leading) {
                        Capsule()
                            .fill(Color.white.opacity(0.08))
                            .frame(height: 4)

                        Capsule()
                            .fill(category.accentColor)
                            .frame(width: geo.size.width * mastery, height: 4)
                    }
                }
                .frame(height: 4)
            }

            Text("\(lessonsAvailable) lessons")
                .font(.caption2)
                .foregroundStyle(ManifyTheme.textSecondary)
        }
        .padding(14)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(ManifyTheme.panel)
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(Color.white.opacity(0.06), lineWidth: 1)
        )
        .clipShape(.rect(cornerRadius: 14))
    }
}
