// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PodVersionTest",
    platforms: [
        // Allow use prior to supported version iOS 13
        .iOS(.v11),
        .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PodVersionTest",
            targets: ["PodVersionTest"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PodVersionTest"),
        .testTarget(
            name: "PodVersionTestTests",
            dependencies: ["PodVersionTest"]),
    ]
)
