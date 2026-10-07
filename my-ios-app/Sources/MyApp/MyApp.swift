import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}

struct HomeView: View {
    let apps = ["Калькулятор", "Заметки", "Погода", "Часы"]

    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            VStack(spacing: 30) {
                Text("Мой телефон")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(apps, id: \.self) { app in
                        AppIcon(name: app)
                    }
                }
                .padding()
            }
        }
    }
}

struct AppIcon: View {
    let name: String

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white.opacity(0.2))
                .frame(width: 80, height: 80)
                .overlay(
                    Image(systemName: "app.fill")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
            Text(name)
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}