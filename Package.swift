// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BGame",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v12),
        .tvOS(.v11)
    ],
    products: [
        .library(
            name: "BGame",
            targets: ["BGame"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.6.0"),
         .package(url: "https://github.com/Alamofire/AlamofireImage.git", from: "4.0.0"),
         .package(url: "https://github.com/Swinject/Swinject.git", from: "2.8.0"),
    ],
    targets: [
        .binaryTarget(
            name: "BGame",
            path: "./Sources/BGame.xcframework")
    ]
)
