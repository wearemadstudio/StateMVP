// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

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
            targets: ["StateMVP"]),
    ],
    targets: [
        .target(
            name: "StateMVP"),
    ]
)
