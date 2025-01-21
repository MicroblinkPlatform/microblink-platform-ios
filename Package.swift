// swift-tools-version: 6.0

import PackageDescription

let package = Package(name: "IdentityVerification",
                      platforms: [.iOS(.v16)],
                      products: [
                        .library(name: "IdentityVerification", targets: ["IdentityVerification"])
                      ],
                      targets: [
                        .target(name: "IdentityVerification")
                      ],
                      dependencies: [
                        .package(url: "https://github.com/DocumentVerification/blinkid-verify-ios.git", exact: "3.8.0"),
                        .package(name: "IDLiveFaceCamera", path: "Frameworks/IDLiveFaceCamera.xcframework"),
                        .package(name: "IDLiveFaceIAD", path: "Frameworks/IDLiveFaceIAD.xcframework")
                      ],
                      swiftLanguageModes: [.v5]
//                      targets: [.binaryTarget(name: "DocumentVerificationUX",
//                                              url: "https://github.com/BlinkID/blinkid-verify-ios/releases/v3.8.0/DocumentVerificationUX.xcframework.zip",
//                                              checksum: ""),
//                                .binaryTarget(name: "IDLiveFaceCamera",
//                                              path: "Frameworks/IDLiveFaceCamera.xcframework"),
//                                .binaryTarget(name: "IDLiveFaceIAD",
//                                              path: "Frameworks/IDLiveFaceIAD.xcframework")
//                                ]
)
