// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "realm-watchos",
    platforms: [
        .macOS(.v10_14),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS("7.4")
    ],
    products: [
        .library(
            name: "realm-watchos",
            targets: ["realm-watchos"]),
    ],
    dependencies:
        [
            .package(url: "https://github.com/realm/realm-swift.git", from: "10.0.0"),
        ],
    targets: [
            .target(
                name: "realm-watchos",
                dependencies: [
                    .product(name: "RealmSwift", package: "realm-swift")
                ]),
        ]
)
