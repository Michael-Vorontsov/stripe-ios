// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Stripe",
    products: [
        .library(
            name: "Stripe",
            targets: ["Stripe"]
        ),.library(
            name: "StripeStatic",
            type: .static,
            targets: ["Stripe"]
        ),
        .library(
            name: "StripeDynamic",
            type: .dynamic,
            targets: ["Stripe"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Stripe",
            path: "./Stripe",
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
