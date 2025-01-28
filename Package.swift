// swift-tools-version: 6.0

import PackageDescription

let package = Package(name: "IdentityVerification",
                      platforms: [.iOS(.v16)],
                      products: [
                        .library(name: "IdentityVerification", targets: ["IdentityVerification"])
                      ],
//                      targets: [
//                        .target(name: "IdentityVerification")
//                      ],
                      dependencies: [
                        .package(url: "https://github.com/BlinkID/blinkid-verify-ios.git", exact: "3.8.0")
                      ],
                      targets: [
                        .target(name: "IdentityVerification", dependencies: ["BlinkIDVerifyUX", "BlinkIDVerify"]),
                        .binaryTarget(name: "IDLiveFaceCamera", path: "Frameworks/IDLiveFaceCamera.xcframework"),
                        .binaryTarget(name: "IDLiveFaceIAD", path: "Frameworks/IDLiveFaceIAD.xcframework")
                      ],
                      swiftLanguageModes: [.v5]
)
