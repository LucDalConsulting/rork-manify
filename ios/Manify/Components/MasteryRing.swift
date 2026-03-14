import SwiftUI

struct MasteryRing: View {
    let progress: Double
    let color: Color
    let size: CGFloat
    let lineWidth: CGFloat

    init(progress: Double, color: Color = ManifyTheme.gold, size: CGFloat = 60, lineWidth: CGFloat = 5) {
        self.progress = progress
        self.color = color
        self.size = size
        self.lineWidth = lineWidth
    }

    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.white.opacity(0.08), lineWidth: lineWidth)

            Circle()
                .trim(from: 0, to: progress)
                .stroke(color, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .animation(.spring(duration: 0.6), value: progress)

            Text("\(Int(progress * 100))%")
                .font(.system(size: size * 0.22, weight: .bold, design: .default))
                .foregroundStyle(ManifyTheme.textPrimary)
        }
        .frame(width: size, height: size)
    }
}
