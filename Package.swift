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
            name: "BlinkIDVerifyUX",
            targets: ["BlinkIDVerifyUX"]
        ),
        .library(
            name: "BlinkIDVerify",
            targets: ["BlinkIDVerify"]
        ),
        .library(
            name: "IDLiveFaceCamera",
            targets: ["IDLiveFaceCamera"]
        ),
        .library(
            name: "IDLiveFaceIAD",
            targets: ["IDLiveFaceIAD"]
        )
        
    ],
    targets: [
        .binaryTarget(
            name: "MicroblinkPlatform",
            url: "https://github.com/MicroblinkPlatform/microblink-platform-ios/releases/download/v1.0.0/MicroblinkPlatform.xcframework.zip",
            checksum: "e2fa4d962c6a99ff1701da18a4ff703edafb537c8fa0ddb2e6a2015fe47a5438"),
        .binaryTarget(
            name: "BlinkIDVerifyUX",
            url:"https://github.com/BlinkID/blinkid-verify-ios/releases/download/v3.9.0/BlinkIDVerifyUX.xcframework.zip",
            checksum:"a97fdc2c269372ccb8a326dba7f02703ff446b02832e2e177ab862f463f9ae47"
        ),
        .binaryTarget(
            name: "BlinkIDVerify",
            url:"https://github.com/BlinkID/blinkid-verify-ios/releases/download/v3.9.0/BlinkIDVerify.xcframework.zip",
            checksum:"5024b6ac6a6b116ed51ba636f7f07402cdd8d89e65db7a870a1ee9054e91a854"
        ),
        .binaryTarget(
            name: "IDLiveFaceCamera",
            path: "Frameworks/IDLiveFaceCamera.xcframework"
        ),
        .binaryTarget(
            name: "IDLiveFaceIAD",
            path: "Frameworks/IDLiveFaceIAD.xcframework"
        )
    ]
)
