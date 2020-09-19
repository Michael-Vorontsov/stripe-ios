// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StripeiOS",
    products: [
        .library(
            name: "Stripe",
            type: .static,
            targets: ["StripeiOS"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "StripeiOS",
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
