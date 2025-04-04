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
       .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "3.8.0"),
       .package(url: "https://github.com/apple/swift-log.git", from: "1.6.3")
    ],
    targets: [
        .target(
            name: "LoggerWrapper",
            dependencies: [
		.product(name: "CocoaLumberjackSwift", package: "CocoaLumberjack"),
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack"),
                .product(name: "Logging", packge: "swift-log") 
	    ],
            path: "LoggerWrapper",
            exclude: ["Info.plist"]
        )
    ]
)

