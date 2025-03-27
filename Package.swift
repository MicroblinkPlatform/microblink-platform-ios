// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "MicroblinkPlatform",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "MicroblinkPlatform",
            targets: ["MicroblinkPlatform"]
        ),
        .library(
            name: "IDLiveFaceCamera",
            targets: ["IDLiveFaceCamera"]
        ),
        .library(
            name: "IDLiveFaceIAD",
            targets: ["IDLiveFaceIAD"]
        ),
        .library(
            name: "BlinkIDVerifyWrapper",
            targets: ["BlinkIDVerifyWrapper"]
        )

    ],
    dependencies: [
        .package(url: "https://github.com/BlinkID/blinkid-verify-ios", exact: "3.8.1")
    ],
    targets: [
        .binaryTarget(
            name: "MicroblinkPlatform",
            path: "Frameworks/MicroblinkPlatform.xcframework"
        ),
        //        .binaryTarget(
        //            name: "MicroblinkPlatform",
        //            url: "https://github.com/MicroblinkPlatform/microblink-platform-ios/releases/download/v1.0.0/MicroblinkPlatform.xcframework.zip",
        //            checksum: ""),
        .binaryTarget(
            name: "IDLiveFaceCamera",
            path: "Frameworks/IDLiveFaceCamera.xcframework"
        ),
        .binaryTarget(
            name: "IDLiveFaceIAD",
            path: "Frameworks/IDLiveFaceIAD.xcframework"
        ),
        .target(
            name: "BlinkIDVerifyWrapper",
            dependencies: [
                .product(name: "BlinkIDVerifyUX", package: "blinkid-verify-ios")
            ],
            path: "Sources/BlinkIDVerifyWrapper"
        )
    ]
)
