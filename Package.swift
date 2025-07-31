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
            url: "https://github.com/MicroblinkPlatform/microblink-platform-ios/releases/download/v1.4.0/MicroblinkPlatform.xcframework.zip",
            checksum: "d85b894228004fa41509b6c59e3b5b7c30cc2b7675efabe69918859bd34360f1"
        ),
        .binaryTarget(
            name: "BlinkIDVerifyUX",
            url:"https://github.com/BlinkID/blinkid-verify-ios/releases/download/v3.9.1/BlinkIDVerifyUX.xcframework.zip",
            checksum:"4e0e207ceb53601613e96de0323ff7991e5e0fae7e073e0d4eaf003c83e002d6"
        ),
        .binaryTarget(
            name: "BlinkIDVerify",
            url:"https://github.com/BlinkID/blinkid-verify-ios/releases/download/v3.9.1/BlinkIDVerify.xcframework.zip",
            checksum:"5f234c7927e0b2f538e1f266254de3b787a22b75ac4203aac6a250218e6d698e"
        ),
        .binaryTarget(
            name: "BlinkCard",
            url:"https://github.com/blinkcard/blinkcard-ios/releases/download/v2.11.1/BlinkCard.xcframework.zip",
            checksum:"19b5b14e7205a7a3ebc5365ad3d2eabbb5edfc930031047b64dbc680110ab6de"
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
