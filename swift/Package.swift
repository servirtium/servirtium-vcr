// swift-tools-version:5.9
// Swift binding for the shared Aether VCR engine. CServirtiumVcr exposes the
// engine's flat C ABI (aether_vcr_embed_*) via a module map; Servirtium is the
// idiomatic Swift surface over it. The engine .so is found at link/run time via
// the -L/-rpath below (the .tests.ae stages native/).
import PackageDescription

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
                    "-L", "native",
                    "-lservirtium_vcr",
                    "-Xlinker", "-rpath", "-Xlinker", "native",
                ])
            ]
        ),
        .testTarget(name: "ServirtiumTests", dependencies: ["Servirtium"]),
    ]
)
