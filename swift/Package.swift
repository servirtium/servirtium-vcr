// swift-tools-version:5.9
// Swift binding for the shared Aether VCR engine. CServirtiumVcr exposes the
// engine's flat C ABI (aether_vcr_embed_*) via a module map; Servirtium is the
// idiomatic Swift surface over it. The engine .so is found at link/run time via
// the -L/-rpath below (the .tests.ae stages native/).
import Foundation
import PackageDescription

// The engine .so lives in this package's own native/ directory. The path has
// to be ABSOLUTE and computed here, at manifest-evaluation time, because a
// relative "-L native" resolves against whatever directory the LINKER runs in
// — which, as soon as this package is consumed as a dependency, is the
// CONSUMER's directory, not ours. That builds fine in-place and fails with
// `cannot find -lservirtium_vcr` for every downstream user; swift/.example.ae
// exists to catch exactly that. #filePath is this manifest, so each copy of
// the package (in-tree, staged, or installed) computes its own location.
let nativeDir = URL(fileURLWithPath: #filePath)
    .deletingLastPathComponent()
    .appendingPathComponent("native")
    .path

let package = Package(
    name: "Servirtium",
    products: [
        .library(name: "Servirtium", targets: ["Servirtium"])
    ],
    targets: [
        // The C ABI as a Swift-importable module (header + module map only).
        // This target keeps the CServirtiumVcr name — it is the C-module seam
        // mapping to the engine's flat C ABI, not the user-facing surface.
        .target(name: "CServirtiumVcr"),
        // The idiomatic Swift surface. Links the engine .so from native/.
        .target(
            name: "Servirtium",
            dependencies: ["CServirtiumVcr"],
            linkerSettings: [
                .unsafeFlags([
                    "-L", nativeDir,
                    "-lservirtium_vcr",
                    "-Xlinker", "-rpath", "-Xlinker", nativeDir,
                ])
            ]
        ),
        .testTarget(name: "ServirtiumTests", dependencies: ["Servirtium"]),
    ]
)
