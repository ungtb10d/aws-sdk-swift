// swift-tools-version:5.3
import PackageDescription
import class Foundation.ProcessInfo

let package = Package(
    name: "AWSSwiftSDK",
    platforms: [
	.macOS(.v10_15),
	.iOS(.v13)
    ],
    products: [
        .library(name: "AWSClientRuntime", targets: ["AWSClientRuntime"]),
        .library(name: "Lambda", targets: ["Lambda"]),
        .library(name: "Dynamodb", targets: ["Dynamodb"]),
        .library(name: "Cognitoidentityprovider", targets: ["Cognitoidentityprovider"]),
        .library(name: "Cognitoidentity", targets: ["Cognitoidentity"])
    ],
    targets: [
        .target(
            name: "AWSClientRuntime",
            dependencies: [
                .product(name: "ClientRuntime", package: "ClientRuntime"),
                .product(name: "AwsCommonRuntimeKit", package: "AwsCrt")
            ],
            path: "./AWSClientRuntime/Sources"
        ),
        .target(
            name: "Lambda",
            dependencies: [
                .product(
                    name: "ClientRuntime",
                    package: "ClientRuntime"
                ),
                "AWSClientRuntime"
            ],
            path: "./AlphaSwiftSDK/Lambda"
        ),
        .target(
            name: "Dynamodb",
            dependencies: [
                .product(
                    name: "ClientRuntime",
                    package: "ClientRuntime"
                ),
                "AWSClientRuntime"
            ],
            path: "./AlphaSwiftSDK/Dynamodb"
        ),
        .target(
              name: "Cognitoidentityprovider",
              dependencies: [
                  .product(
                      name: "ClientRuntime",
                      package: "ClientRuntime"
                  ),
                  "AWSClientRuntime"
              ],
              path: "./AlphaSwiftSDK/Cognitoidentityprovider"
          ),
          .target(
              name: "Cognitoidentity",
              dependencies: [
                  .product(
                      name: "ClientRuntime",
                      package: "ClientRuntime"
                  ),
                  "AWSClientRuntime"
              ],
              path: "./AlphaSwiftSDK/Cognitoidentity"
          ),
        .testTarget(
            name: "AWSClientRuntimeTests",
            dependencies: [
                "AWSClientRuntime",
                .product(name: "SmithyTestUtil", package: "ClientRuntime"),
                .product(name: "ClientRuntime", package: "ClientRuntime")
            ],
            path: "./AWSClientRuntime/Tests"
        )
    ]
)

let relatedDependenciesBranch = "master"

if ProcessInfo.processInfo.environment["SWIFTSDK_DEPS_USE_LOCAL_PATHS"] == nil {
    package.dependencies += [
        .package(name: "AwsCrt", url: "https://github.com/awslabs/aws-crt-swift", .branch(relatedDependenciesBranch)),
        .package(name: "ClientRuntime", url: "https://github.com/awslabs/smithy-swift", .branch(relatedDependenciesBranch))
    ]
} else {
    package.dependencies += [
        .package(name: "AwsCrt", url: "https://github.com/awslabs/aws-crt-swift", .branch(relatedDependenciesBranch)),
        .package(name: "ClientRuntime", path: "~/Projects/Amplify/SwiftSDK/smithy-swift")
    ]
}
