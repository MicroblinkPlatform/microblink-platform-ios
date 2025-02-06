// swift-tools-version: 6.0

import PackageDescription

let package = Package(name: "MicroblinkPlatform",
                      platforms: [.iOS(.v16)],
                      products: [
                        .library(name: "MicroblinkPlatform", targets: ["MicroblinkPlatform"])
                      ],
//                      targets: [
//                        .target(name: "MicroblinkPlatform")
//                      ],
                      dependencies: [
                        .package(url: "https://github.com/BlinkID/blinkid-verify-ios.git", exact: "3.8.0")
                      ],
                      targets: [
                        .target(name: "MicroblinkPlatform", dependencies: ["BlinkIDVerifyUX", "BlinkIDVerify"]),
                        .binaryTarget(name: "IDLiveFaceCamera", path: "Frameworks/IDLiveFaceCamera.xcframework"),
                        .binaryTarget(name: "IDLiveFaceIAD", path: "Frameworks/IDLiveFaceIAD.xcframework")
                      ],
                      swiftLanguageModes: [.v5]
)
