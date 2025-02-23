// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterDevicetree",
    products: [
        .library(name: "TreeSitterDevicetree", targets: ["TreeSitterDevicetree"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterDevicetree",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterDevicetreeTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterDevicetree",
            ],
            path: "bindings/swift/TreeSitterDevicetreeTests"
        )
    ],
    cLanguageStandard: .c11
)
