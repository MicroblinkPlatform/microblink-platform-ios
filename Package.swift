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
            url: "https://github.com/MicroblinkPlatform/microblink-platform-ios/releases/download/v1.1.1/MicroblinkPlatform.xcframework.zip",
            checksum: "cf5212fd8e3ea5724338560e5866bccd7ea207adcfef2d8c9973a8dc403a87dd"),
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
            name: "IDLiveFaceCamera",
            path: "Frameworks/IDLiveFaceCamera.xcframework"
        ),
        .binaryTarget(
            name: "IDLiveFaceIAD",
            path: "Frameworks/IDLiveFaceIAD.xcframework"
        )
    ]
)
