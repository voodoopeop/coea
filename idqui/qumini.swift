import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Align me to the trailing edge and last baseline")
                .font(.body)
                .alignmentGuide(HorizontalAlignment.trailing) { dimension in
                    dimension[HorizontalAlignment.trailing]
                }
                .alignmentGuide(VerticalAlignment.lastTextBaseline) { dimension in
                    dimension[VerticalAlignment.lastTextBaseline]
                }
                .background(Color.yellow.opacity(0.3)) // Highlight for visualization

            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .overlay(
                    Text("Square")
                        .alignmentGuide(HorizontalAlignment.trailing) { dimension in
                            dimension[HorizontalAlignment.trailing]
                        }
                        .alignmentGuide(VerticalAlignment.lastTextBaseline) { dimension in
                            dimension[VerticalAlignment.lastTextBaseline]
                        }
                        .background(Color.red.opacity(0.3)) // Highlight for visualization
                )
        }
        .padding()
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
