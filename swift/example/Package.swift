// swift-tools-version:5.9
// A third party consuming the packaged Servirtium SwiftPM package.
//
// The dependency path is rewritten by swift/.example.ae to point at the staged
// package copy, so the consumer never sees this repo's tree.
import PackageDescription

let package = Package(
    name: "ConsumerExample",
    dependencies: [
        .package(path: "../../swift")
    ],
    targets: [
        .executableTarget(name: "ConsumerExample", dependencies: [
            .product(name: "Servirtium", package: "swift")
        ])
    ]
)
