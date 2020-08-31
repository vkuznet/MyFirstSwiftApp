// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "MyFirstSwiftApp",
    platforms: [
        .macOS(.v10_13),
    ],
    dependencies: [
        .package(url: "https://github.com/vkuznet/MyFirstSwiftLibrary", from: "1.0.0"),
    ],
    targets: [
        .target(name: "MyFirstSwiftApp", dependencies: ["MyFirstSwiftLibrary"]),
        .testTarget(name: "MyFirstSwiftAppTests", dependencies: ["MyFirstSwiftApp"]),
    ]
)
