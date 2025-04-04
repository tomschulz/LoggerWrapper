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
    ],
    targets: [
        .target(
            name: "LoggerWrapper",
            dependencies: [],
            path: "LoggerWrapper",
            exclude: ["Info.plist"]
        )
    ]
)

