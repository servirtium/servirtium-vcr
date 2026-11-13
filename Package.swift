// swift-tools-version:5.9
//
// WHY THIS FILE IS AT THE REPOSITORY ROOT
// SwiftPM can only consume a package from a git URL if Package.swift sits at
// the root of the repository. This repo is a monorepo with one directory per
// language binding, so this root manifest exists so that
//     .package(url: "https://github.com/servirtium/servirtium-vcr", from: "2.0.0-alpha.14")
// works. Every source target below points (via `path:`) into swift/, where the
// real Swift binding lives (swift/Sources/..., swift/Tests/..., swift/README.md).
//
// KEEP IN STEP WITH swift/Package.swift. That one is the in-tree manifest the
// aeb leaves (swift/.tests.ae, .example.ae, .package.ae) build with, against a
// locally built libservirtium_vcr staged in swift/native/. The two are the same
// package (same name, product and targets); only where the native core comes
// from differs. swift/Package.swift must stay self-contained because
// swift/.example.ae stages swift/ on its own, without the repo root.
//
// WHERE THE NATIVE CORE COMES FROM
// 1. Released form (the default once a release has published the bundle):
//    a binaryTarget downloading servirtium-vcr-swift-<tag>.artifactbundle.zip
//    from this tag's GitHub release, verified against `binaryChecksum`. The
//    bundle holds libservirtium_vcr as a STATIC library per platform:
//    macOS arm64 + x86_64, Linux glibc x86_64 + arm64 (release/swift-bundle.sh).
//    No unsafeFlags, so SwiftPM accepts it in a dependency resolved by VERSION
//    (`from:` / `exact:`), and no environment variable or download step.
// 2. Source form, when `binaryChecksum` is empty or SERVIRTIUM_VCR_LIB_DIR is
//    set: a systemLibrary over the in-tree header plus -L/-rpath (unsafeFlags)
//    to $SERVIRTIUM_VCR_LIB_DIR, else to swift/native/. SwiftPM accepts
//    unsafeFlags only for a root package, a path dependency or a `branch:` /
//    `revision:` dependency. This is the route for platforms the bundle lacks
//    (Windows, FreeBSD, Linux musl) and for main between releases.
//
// WHY A STATIC-LIBRARY ARTIFACT BUNDLE
// An XCFramework would serve Apple platforms only. An artifact bundle of type
// "staticLibrary" (SE-0482, Swift 6.2+) serves Linux, and SwiftPM honours it
// on macOS too (verified with Swift 6.4), so one bundle and one manifest cover
// both. Artifact bundles cannot carry dynamic libraries (SE-0482 future
// direction), hence .a archives. Each archive holds the Aether runtime too, so
// it needs only libc, libm, libpthread and libdl, linked by name below (safe
// settings, no flags). Consumers need Swift 6.2 or newer.
//
// THE CHICKEN AND EGG: the checksum of an asset that is built after tagging
// The bundle is not bit-reproducible (its archives carry build paths), so its
// checksum exists only after the release workflow builds it. Therefore:
// - `SVCR_RELEASE_SET=<tag> aeb release/.version.ae` (release preparation)
//   sets `binaryTag` to the new tag and EMPTIES `binaryChecksum`. The commit
//   tagged v<version> therefore has the source form: a version-resolved
//   consumer reaching it gets SwiftPM's "unsafe build flags" error, never a
//   binary from another release.
// - The release workflow publishes the bundle, then writes its checksum here
//   (SVCR_RELEASE_TAG=<tag> SVCR_SWIFT_CHECKSUM=<sha256> aeb release/.version.ae)
//   in a commit on top of the v<version> commit and tags THAT commit with the
//   bare semver tag (2.0.0-alpha.14, no "v"). SwiftPM reads both tags as the
//   same version and, by design, prefers the tag without the "v"
//   (SourceControlPackageContainer: "favor the one without a v prefix"). No
//   tag is moved and nothing is force-pushed. It then applies the same change
//   to main, so `branch: "main"` gets the released binary as well.
// So: at a bare tag this manifest always carries the binary of that same tag.
// Never edit the two lines below by hand.
import Foundation
import PackageDescription

let binaryTag = "v2.0.0-alpha.17"
let binaryChecksum = "e478fc4ed08a7bc9a70d609659f361cc77ababa3b91f63fb1168671a30f994bc"

let envDir = ProcessInfo.processInfo.environment["SERVIRTIUM_VCR_LIB_DIR"] ?? ""
let useBinary = envDir.isEmpty && !binaryChecksum.isEmpty

// Source form only: #filePath is this manifest, i.e. the repository root, so
// each checkout computes its own location. The path has to be absolute: a
// relative "-L" resolves against the linker's cwd, which for a dependency is
// the consumer's directory.
let nativeDir = envDir.isEmpty
    ? URL(fileURLWithPath: #filePath).deletingLastPathComponent().appendingPathComponent("swift/native").path
    : envDir

let core: Target = useBinary
    ? .binaryTarget(
        name: "CServirtiumVcr",
        url: "https://github.com/servirtium/servirtium-vcr/releases/download/\(binaryTag)/servirtium-vcr-swift-\(binaryTag).artifactbundle.zip",
        checksum: binaryChecksum)
    // A systemLibrary, not a .target: it has nothing to compile, and Swift
    // 6.4's default build backend (swift-build) still expects an object file
    // from a source-less C .target ("Build input file cannot be found").
    : .systemLibrary(name: "CServirtiumVcr", path: "swift/Sources/CServirtiumVcr/include")

let coreLinking: [LinkerSetting] = useBinary
    ? [
        // What the static core needs from the system on Linux (all part of
        // libSystem on macOS). Since glibc 2.34 pthread and dl are in libc and
        // these names are empty stubs; older glibc needs them.
        .linkedLibrary("m", .when(platforms: [.linux])),
        .linkedLibrary("pthread", .when(platforms: [.linux])),
        .linkedLibrary("dl", .when(platforms: [.linux])),
    ]
    : [
        .unsafeFlags([
            "-L", nativeDir,
            "-lservirtium_vcr",
            "-Xlinker", "-rpath", "-Xlinker", nativeDir,
        ])
    ]

let package = Package(
    name: "Servirtium",
    // The core is cross-built with a macOS 13 deployment target.
    platforms: [.macOS(.v13)],
    products: [
        .library(name: "Servirtium", targets: ["Servirtium"])
    ],
    targets: [
        // The C ABI (aether_vcr_embed_*) as the Swift module CServirtiumVcr.
        core,
        // The idiomatic Swift surface.
        .target(
            name: "Servirtium",
            dependencies: ["CServirtiumVcr"],
            path: "swift/Sources/Servirtium",
            linkerSettings: coreLinking
        ),
        .testTarget(
            name: "ServirtiumTests",
            dependencies: ["Servirtium"],
            path: "swift/Tests/ServirtiumTests"
        ),
    ]
)
