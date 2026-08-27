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
            name: "BlinkCardUX",
            targets: ["BlinkCardUX"]
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
            url: "https://github.com/MicroblinkPlatform/microblink-platform-ios/releases/download/v1.10.2/MicroblinkPlatform.xcframework.zip",
            checksum: "9f5a730799dfb6680b005086fc739f2aa76212eab152806ba1f88950482cdf8d"
        ),
        .binaryTarget(
            name: "BlinkIDVerifyUX",
            url:"https://github.com/microblink/blinkid-verify-ios/releases/download/v3.21.1/BlinkIDVerifyUX.xcframework.zip",
            checksum:"101bd12dca38252ce30273606581718ddcea7609b90dedabec57761089276859"
        ),
        .binaryTarget(
            name: "BlinkIDVerify",
            url:"https://github.com/microblink/blinkid-verify-ios/releases/download/v3.21.1/BlinkIDVerify.xcframework.zip",
            checksum:"46c26a6b9f13964d8147e619b45dbbdc788ab619c77faee44b59c0319cf157ee"
        ),
        .binaryTarget(
            name: "BlinkCardUX",
            url:"https://github.com/microblink/blinkcard-ios/releases/download/v3000.0.1/BlinkCardUX.xcframework.zip",
            checksum:"bcd489b60fe6213aa3906333dbcbaf0fdf27464e4918a5c8f8ba635bb09430ef"
        ),
        .binaryTarget(
            name: "BlinkCard",
            url:"https://github.com/microblink/blinkcard-ios/releases/download/v3000.0.1/BlinkCard.xcframework.zip",
            checksum:"ca0505a4301b512c4024e2869bc211865fc02263452d2809b101fa1b248480d5"
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
