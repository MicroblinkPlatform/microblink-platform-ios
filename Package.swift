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
            url: "https://github.com/MicroblinkPlatform/microblink-platform-ios/releases/download/v1.10.0/MicroblinkPlatform.xcframework.zip",
            checksum: "c74bd12b7fbbb2cf6deb1fc35b499868717abd78e52bf8d4f852615b4fdca2b8"
        ),
        .binaryTarget(
            name: "BlinkIDVerifyUX",
            url:"https://github.com/microblink/blinkid-verify-ios/releases/download/v3.21.0/BlinkIDVerifyUX.xcframework.zip",
            checksum:"6195ace9ba2b5a5eec418ef69a5be56ba141303ca9718959153fdcd40864ec5c"
        ),
        .binaryTarget(
            name: "BlinkIDVerify",
            url:"https://github.com/microblink/blinkid-verify-ios/releases/download/v3.21.0/BlinkIDVerify.xcframework.zip",
            checksum:"a14f8ec7f77c156293d176b774b7d0fa3c4a13813d0fe9a4d69f86095e3ef6f9"
        ),
        .binaryTarget(
            name: "BlinkCard",
            url:"https://github.com/blinkcard/blinkcard-ios/releases/download/v3000.0.1/BlinkCard.xcframework.zip",
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
