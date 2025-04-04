// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "LoggerWrapper",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "LoggerWrapper", targets: ["LoggerWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "3.8.0")
    ],
    targets: [
        .target(
            name: "LoggerWrapper",
            dependencies: [
                .product(name: "CocoaLumberjackSwift", package: "CocoaLumberjack")
            ],
            path: "LoggerWrapper/LoggerWrapper",
            exclude: ["Info.plist"]
        )
    ]
)

