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
            name: "BlinkCard",
            targets: ["BlinkCard"]
        ),
        .library(
            name: "IDLiveFaceCamera",
            targets: ["IDLiveFaceCamera"]
        ),
        .library(
            name: "IDLiveFaceDetection",
            targets: ["IDLiveFaceDetection"]
        ),
        .library(
            name: "IDLiveFaceIAD",
            targets: ["IDLiveFaceIAD"]
        )
        
    ],
    targets: [
        .binaryTarget(
            name: "MicroblinkPlatform",
            url: "https://github.com/MicroblinkPlatform/microblink-platform-ios/releases/download/v1.9.0/MicroblinkPlatform.xcframework.zip",
            checksum: "26d912ab72bb0f87326c1aa0e8ebb9dc5316bce7a82d0a51988ba4bd8c0a2fea"
        ),
        .binaryTarget(
            name: "BlinkIDVerifyUX",
            url:"https://github.com/BlinkID/blinkid-verify-ios/releases/download/v3.14.2/BlinkIDVerifyUX.xcframework.zip",
            checksum:"ac0b466c9c2b80b5839037bb89a9991678498913cc19a983bf77a1ea852be802"
        ),
        .binaryTarget(
            name: "BlinkIDVerify",
            url:"https://github.com/BlinkID/blinkid-verify-ios/releases/download/v3.14.2/BlinkIDVerify.xcframework.zip",
            checksum:"ce41d355a15610676809f933bf98de550e6fe3daf2aa2853c84accc45a221692"
        ),
        .binaryTarget(
            name: "BlinkCard",
            url:"https://github.com/blinkcard/blinkcard-ios/releases/download/v2.12.0/BlinkCard.xcframework.zip",
            checksum:"accc56a3b24019643739d2bc183b8fd36379e8b6a6e283458cfffbb991f4a22b"
        ),
        .binaryTarget(
            name: "IDLiveFaceCamera",
            path: "Frameworks/IDLiveFaceCamera.xcframework"
        ),
        .binaryTarget(
            name: "IDLiveFaceDetection",
            path: "Frameworks/IDLiveFaceDetection.xcframework"
        ),
        .binaryTarget(
            name: "IDLiveFaceIAD",
            path: "Frameworks/IDLiveFaceIAD.xcframework"
        )
    ]
)
