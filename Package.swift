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
            url: "https://github.com/MicroblinkPlatform/microblink-platform-ios/releases/download/v1.8.0/MicroblinkPlatform.xcframework.zip",
            checksum: "df4110db7f558251c2f4ab441b220ea4a800ba651cdaca21b1c972a170852100"
        ),
        .binaryTarget(
            name: "BlinkIDVerifyUX",
            url:"https://github.com/BlinkID/blinkid-verify-ios/releases/download/v3.14.1/BlinkIDVerifyUX.xcframework.zip",
            checksum:"c777e59e721ac09fa6f1e22186d3639e721c5b5643d36ec9bac2ffbea93e590e"
        ),
        .binaryTarget(
            name: "BlinkIDVerify",
            url:"https://github.com/BlinkID/blinkid-verify-ios/releases/download/v3.14.1/BlinkIDVerify.xcframework.zip",
            checksum:"8ad4f400cea180a73e178dd8faefebe4219be90140e8e6ff8e72b35d152cdad9"
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
