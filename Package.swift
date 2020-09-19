// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Stripe",
    products: [
        .library(
            name: "Stripe",
            type: .static,
            targets: ["Stripe"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Stripe",
            path: "./Stripe",
            exclude: ["./Payments"],
            publicHeadersPath: "./PublicHeaders",
            cSettings: [
               .headerSearchPath("./PublicHeaders"),
               .headerSearchPath("./Payments"),
               .headerSearchPath("./")
            ],
            cxxSettings: [
               .headerSearchPath("./PublicHeaders"),
               .headerSearchPath("./Payments"),
               .headerSearchPath("./")
            ]
        )
    ]
)
