// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "StateMVP",
    platforms: [
        .iOS(.v11),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "StateMVP",
            targets: ["StateMVP"]),
    ],
    targets: [
        .target(
            name: "StateMVP",
            dependencies: [],
            path: "StateMVP/StateMVP/Classes/Architecture",
            exclude: [],
            sources: ["*.swift"],
            resources: []
        ),
    ]
)
