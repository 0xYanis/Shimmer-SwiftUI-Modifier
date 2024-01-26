// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShimmerEffect",
    products: [ .library(name: "ShimmerEffect", targets: ["ShimmerEffect"]) ],
    dependencies: [],
    targets: [ .target(name: "ShimmerEffect", dependencies: []) ]
)
