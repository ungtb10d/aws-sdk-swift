// swift-tools-version:5.3.0

import PackageDescription
import class Foundation.ProcessInfo
import class Foundation.FileManager
let package = Package(
    name: "Lambda",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    products: [
        .library(name: "Lambda", targets: ["Lambda"])
    ],
    targets: [
        .target(
            name: "Lambda",
            dependencies: [
                .product(
                    name: "ClientRuntime",
                    package: "ClientRuntime"
                ),
                .product(
                    name: "AWSClientRuntime",
                    package: "AWSClientRuntime"
                ),
            ],
            path: "./Lambda"
        ),
    ]
)
let isUsingSPMLocal: Bool = FileManager.default.fileExists(atPath: "/Users/nickik/Projects/Amplify/SwiftSDK/smithy-swift/Package.swift")
if isUsingSPMLocal {
    package.dependencies += [
        .package(name: "ClientRuntime", path: "/Users/nickik/Projects/Amplify/SwiftSDK/smithy-swift/Packages"),
        .package(name: "AWSClientRuntime", path: "/Users/nickik/Projects/Amplify/SwiftSDK/aws-sdk-swift/AWSClientRuntime"),
    ]
}
else {
    package.dependencies += [
        .package(
            name: "ClientRuntime",
            url: "https://github.com/awslabs/smithy-swift",
            .branch("master")
        ),
        .package(
            name: "AWSClientRuntime",
            url: "https://github.com/awslabs/aws-sdk-swift",
            .branch("master")
        ),
    ]
}
