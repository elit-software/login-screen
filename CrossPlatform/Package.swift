// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "LoginExample",
    products: [
        .library(name: "LoginExample", targets: ["LoginExample"])
    ],
    targets: [
        .target(
            name: "LoginExample",
            dependencies: [])
    ]
)
