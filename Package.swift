// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "DigioEsignSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "DigioEsignSDK",
            targets: ["DigioEsignSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "DigioEsignSDK",
            url: "https://github.com/digio-tech/digio-ios-sdk/releases/download/1.0.12/DigioEsignSDK.xcframework.zip",
            checksum: "2e016e213acbb6d0e79666304ab92c0d0ecea700ffd23e15f2e6fffca87ae866"
        )
    ]
)
