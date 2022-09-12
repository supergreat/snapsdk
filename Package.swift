// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SnapSDK",
    products: [
        // SnapSDK is a wrapper library which imports both SCSDKCoreKit and SCSDKCreativeKit
        .library(
            name: "SnapSDK",
            targets: ["SnapSDK"]),
    ],
    dependencies: [

    ],
    targets: [
        .binaryTarget(name: "SCSDKCoreKit", path: "SnapSDK/SCSDKCoreKit.xcframework"),
        .binaryTarget(name: "SCSDKCreativeKit", path: "SnapSDK/SCSDKCreativeKit.xcframework"),
        .target(name: "SnapSDK",
                dependencies: ["SCSDKCoreKit", "SCSDKCreativeKit"])
    ]
)
