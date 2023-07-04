// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DogBreedsComponent",
    products: [
        .library(
            name: "DogBreedsComponent",
            targets: ["DogBreedsComponent"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture.git",
            from: "0.54.0"
        ),
        .package(
            url: "https://github.com/onevcat/Kingfisher",
            from: "7.8.1"
        )
    ],
    targets: [
        .target(
            name: "DogBreedsComponent",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "Kingfisher", package: "Kingfisher")
            ]
        ),
        .testTarget(
            name: "DogBreedsComponentTests",
            dependencies: [
                "DogBreedsComponent",
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture")
                          ]
        ),
    ]
)
