// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MyApp",
    platforms: [.iOS(.v14)],
    products: [
        .executable(name: "MyApp", targets: ["MyApp"])
    ],
    targets: [
        .executableTarget(
            name: "MyApp",
            path: "Sources/MyApp"
        )
    ]
)