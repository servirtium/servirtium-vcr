// swift-tools-version:5.9
//
// WHY THIS FILE IS AT THE REPOSITORY ROOT
// SwiftPM can only consume a package from a git URL if Package.swift sits at
// the root of the repository. This repo is a monorepo with one directory per
// language binding, so this root manifest exists purely so that
//     .package(url: "https://github.com/servirtium/servirtium-vcr", from: "...")
// works. It adds nothing of its own: every target below points (via `path:`)
// into the swift/ subdirectory, where the real Swift binding lives
// (swift/Sources/..., swift/Tests/..., swift/README.md).
//
// KEEP IN STEP WITH swift/Package.swift. That one is the in-tree manifest the
// aeb leaves (swift/.tests.ae, .example.ae, .package.ae) build with, and
// SwiftPM resolves a path dependency on swift/ through it. The two are the
// same package (same name, product and targets); only the paths and the
// native-library lookup below differ. They were not merged into one file
// because the aeb leaves build inside swift/ and stage a standalone copy of it
// (without the repo root) for the consumer example, so swift/Package.swift
// must stay self-contained.
//
// THE NATIVE LIBRARY (libservirtium_vcr)
// A git-sourced checkout has an EMPTY swift/native/ (the .so is git-ignored
// and staged by aeb). So the link/rpath directory is:
//   1. $SERVIRTIUM_VCR_LIB_DIR if set: the directory where you unpacked the
//      platform library downloaded from the GitHub release page. Release
//      assets are named libservirtium_vcr-<tag>-<os>-<arch>.<ext>; rename or
//      symlink the one for your platform to libservirtium_vcr.<ext> in that
//      directory (the linker looks for -lservirtium_vcr).
//   2. otherwise this repo's own swift/native/ (in-tree development).
// The variable is read when SwiftPM evaluates this manifest, and must also be
// set for later `swift build` / `swift run` / `swift test` invocations.
//
// CAVEAT: this manifest uses unsafeFlags (-L / -rpath), and SwiftPM refuses
// unsafeFlags in a dependency resolved by VERSION from a git URL
// (`from:` / `exact:` / `.upToNextMajor`); it accepts them for a branch or
// revision dependency, a local path dependency and a root package. See
// docs/packaging.md. A binaryTarget / artifactbundle would remove both this
// limitation and the env-var step; that is the open follow-up.
import Foundation
import PackageDescription

// #filePath is this manifest, i.e. the repository root, so each copy of the
// checkout computes its own location. The path has to be absolute: a relative
// "-L" resolves against the linker's cwd, which for a dependency is the
// consumer's directory.
let repoRoot = URL(fileURLWithPath: #filePath).deletingLastPathComponent()
let envDir = ProcessInfo.processInfo.environment["SERVIRTIUM_VCR_LIB_DIR"] ?? ""
let nativeDir = envDir.isEmpty
    ? repoRoot.appendingPathComponent("swift/native").path
    : envDir

let package = Package(
    name: "Servirtium",
    products: [
        .library(name: "Servirtium", targets: ["Servirtium"])
    ],
    targets: [
        // The C ABI as a Swift-importable module (header + module map only).
        // A systemLibrary, not a .target: it has nothing to compile, and
        // Swift 6.4's default build backend (swift-build) still expects an
        // object file from a source-less C .target ("Build input file cannot be
        // found: .../CServirtiumVcr.o"). The core is linked below.
        .systemLibrary(name: "CServirtiumVcr", path: "swift/Sources/CServirtiumVcr/include"),
        // The idiomatic Swift surface. Links libservirtium_vcr from nativeDir.
        .target(
            name: "Servirtium",
            dependencies: ["CServirtiumVcr"],
            path: "swift/Sources/Servirtium",
            linkerSettings: [
                .unsafeFlags([
                    "-L", nativeDir,
                    "-lservirtium_vcr",
                    "-Xlinker", "-rpath", "-Xlinker", nativeDir,
                ])
            ]
        ),
        .testTarget(
            name: "ServirtiumTests",
            dependencies: ["Servirtium"],
            path: "swift/Tests/ServirtiumTests"
        ),
    ]
)
