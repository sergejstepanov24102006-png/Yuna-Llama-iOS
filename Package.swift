// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "YunaLlamaIOS",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "LlamaSwift",
            targets: ["LlamaSwift", "llama-cpp"]
        )
    ],
    targets: [
       .binaryTarget(
    name: "llama-cpp",
    path: "Frameworks/llama.xcframework"
),
.target(
    name: "LlamaSwift",
    dependencies: ["llama-cpp"],
    path: "Sources/LlamaSwift"
)
    ]
)
