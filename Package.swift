// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "MyFirstSwiftApp",
    platforms: [
        .macOS(.v10_13),
    ],
    dependencies: [
        .package(url: "https://github.com/vkuznet/MyFirstSwiftLibrary", from: "1.0.0"),
        // if you need to refer to local area please use the following
        // you may use absolute or relative path, and HASH_STRING
        // of git commit you need to refer
        // .package(url: "../MyFirstSwiftLibrary", .revision("HASH_STRING")),
    ],
    targets: [
        .target(name: "MyFirstSwiftApp", dependencies: ["MyFirstSwiftLibrary"]),
        .testTarget(name: "MyFirstSwiftAppTests", dependencies: ["MyFirstSwiftApp"]),
    ]
)
