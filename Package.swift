// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "StateMVP",
    platforms: [
        .iOS(.v12),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "StateMVP",
            targets: ["StateMVP"]
        ),
    ],
    targets: [
        .target(name: "StateMVP"),
    ]
)
