// PlaybackTests.swift — playback facts for the Swift binding.
//
// Proves Swift drives libservirtium_vcr's flat C ABI directly (through the
// CServirtiumVcr module map) against the canonical one-interaction tape
// (GET /ok -> 200 text/plain "ok-body") — the same tape every other binding in
// this repo replays byte-for-byte. Needs only the libservirtium_vcr.so (staged into
// native/ by the .tests.ae leaf). XCTest, no browser, no network.
import XCTest

@testable import Servirtium

final class PlaybackTests: XCTestCase {
    /// The tape by absolute path, derived from this source file's location, so
    /// the facts don't depend on the working directory `swift test` ran from.
    private var tape: String {
        URL(fileURLWithPath: #filePath)          // .../Tests/ServirtiumTests/PlaybackTests.swift
            .deletingLastPathComponent()         // .../Tests/ServirtiumTests
            .deletingLastPathComponent()         // .../Tests
            .deletingLastPathComponent()         // .../swift
            .appendingPathComponent("tapes/single_get.md")
            .path
    }

    /// GET a URL with curl; the body, trailing newline trimmed. curl (rather
    /// than URLSession) keeps the test synchronous and dependency-free.
    private func httpGet(_ url: String) throws -> String {
        try runCommand(["curl", "-s", "-S", url])
    }

    /// The HTTP status curl reports, as a string ("200", "404", ...).
    private func httpStatus(_ url: String) throws -> String {
        try runCommand(["curl", "-s", "-o", "/dev/null", "-w", "%{http_code}", url])
    }

    private func runCommand(_ args: [String]) throws -> String {
        let process = Process()
        process.executableURL = URL(fileURLWithPath: "/usr/bin/env")
        process.arguments = args
        let pipe = Pipe()
        process.standardOutput = pipe
        try process.run()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        process.waitUntilExit()
        return String(decoding: data, as: UTF8.self)
            .trimmingCharacters(in: .whitespacesAndNewlines)
    }


    func testStructuredRedactionHelpers() throws {
        let directory = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)
        defer { try? FileManager.default.removeItem(at: directory) }
        let fixture = URL(fileURLWithPath: #filePath).deletingLastPathComponent()
            .deletingLastPathComponent().deletingLastPathComponent().deletingLastPathComponent()
            .appendingPathComponent("target/test-tools/redaction_fixture").path
        func run(_ args: [String]) throws -> String {
            let (status, text) = runFixture([fixture] + args)
            XCTAssertEqual(status, 0, text)
            return text
        }
        let upstream = try run(["start", directory.path])
        try Vcr.withRecord(directory.appendingPathComponent("tape.md").path, upstreamBase: upstream) { rec in
            try rec.redactHeader("Authorization")
            try rec.redactQueryParam("password")
            try rec.redactJsonField("secretKey")
            _ = try run(["drive", directory.path, rec.baseUrl])
            XCTAssertEqual(rec.lastKind, .ok)
        }
        _ = try run(["check", directory.path])
    }

    private var repoRoot: URL {
        URL(fileURLWithPath: #filePath).deletingLastPathComponent().deletingLastPathComponent()
            .deletingLastPathComponent().deletingLastPathComponent()
    }

    private func recordedTape(configure: (Vcr) throws -> Void, flushPath: String) throws -> String? {
        let upstream = repoRoot.appendingPathComponent("core_tests/tapes/stable_order_upstream.tape").path
        try Vcr.withPlayback(upstream) { up in
            let rec = try Vcr.record(flushPath, upstreamBase: up.baseUrl)
            try configure(rec)
            _ = try httpGet(rec.baseUrl + "/data")
            try rec.flush()
        }
        return try? String(contentsOfFile: flushPath, encoding: .utf8)
    }

    func testSortJsonKeysWithPrettyJsonWritesSortedPrettyJson() throws {
        let path = FileManager.default.temporaryDirectory.appendingPathComponent("\(UUID().uuidString).md").path
        defer { try? FileManager.default.removeItem(atPath: path) }
        let text = try recordedTape(configure: { rec in
            rec.prettyJson(2)
            rec.setSortJsonKeys()
            XCTAssertTrue(rec.sortJsonKeys)
            try rec.sortJsonArray("/list")
            try rec.sortJsonArray(at: "/data", "/list", by: "id")
            rec.setSortResponseHeaders()
            XCTAssertTrue(rec.sortResponseHeaders)
            try rec.sortHeaderValue("Allow")
            XCTAssertThrowsError(try rec.sortJsonArray("a/b"))
        }, flushPath: path)
        XCTAssertTrue(text?.contains("{\n  \"apple\": {\n    \"banana\": 3,\n    \"mango\": 2\n  },\n  \"zebra\": 1\n}") ?? false, text ?? "no tape")
    }

    func testSortJsonKeysWithoutPrettyJsonIsRefused() throws {
        let path = FileManager.default.temporaryDirectory.appendingPathComponent("\(UUID().uuidString).md").path
        defer { try? FileManager.default.removeItem(atPath: path) }
        XCTAssertThrowsError(try recordedTape(configure: { $0.setSortJsonKeys() }, flushPath: path)) { error in
            XCTAssertTrue("\(error)".contains("sort_json_keys needs pretty_json"), "\(error)")
        }
        XCTAssertFalse(FileManager.default.fileExists(atPath: path))
    }

    func testPlaybackRangeReplaysOnlyTheChosenInteractions() throws {
        let tape = repoRoot.appendingPathComponent("core_tests/tapes/playback_range.tape").path
        try Vcr.withPlayback(tape) { vcr in
            XCTAssertEqual(vcr.playbackRangeFrom, -1)
            try vcr.redactCredentials()
            vcr.strictIgnoreCommonHeaders()
            try vcr.setPlaybackRange(from: 7, to: 7)
            XCTAssertEqual(vcr.playbackRangeFrom, 7)
            XCTAssertEqual(vcr.playbackRangeTo, 7)
            let cookie = ["curl", "-s", "-S", "-H", "Cookie: sid=live-session"]
            // The test brings its own cookie and skips the whole journey.
            XCTAssertEqual(try runCommand(cookie + [vcr.baseUrl + "/logout"]), "bye")
            XCTAssertEqual(vcr.lastIndex, 7)
            XCTAssertNotEqual(try runCommand(cookie + [vcr.baseUrl + "/login"]), "login-form")
            XCTAssertTrue(vcr.lastError.contains("outside the playback range"), vcr.lastError)
            XCTAssertThrowsError(try vcr.setPlaybackRange(from: 9))
            vcr.clearPlaybackRange()
            XCTAssertEqual(vcr.playbackRangeFrom, -1)
        }
    }

    func testARecordHandleRefusesAPlaybackRange() throws {
        let upstream = repoRoot.appendingPathComponent("core_tests/tapes/stable_order_upstream.tape").path
        try Vcr.withPlayback(upstream) { up in
            let rec = try Vcr.record(FileManager.default.temporaryDirectory.appendingPathComponent("\(UUID().uuidString).md").path,
                                     upstreamBase: up.baseUrl)
            defer { rec.discard() }
            XCTAssertThrowsError(try rec.setPlaybackRange(from: 0, to: 1))
            XCTAssertEqual(rec.playbackRangeFrom, -1)
        }
    }

    func testRetainedReplayDiagnostics() throws {
        let root = URL(fileURLWithPath: #filePath).deletingLastPathComponent().deletingLastPathComponent()
            .deletingLastPathComponent().deletingLastPathComponent()
        try Vcr.withPlayback(root.appendingPathComponent("core_tests/diagnostics/playback.md").path) { server in
            server.testContext("Swift scenario", sourceFile: "scenario.test", sourceLine: 123)
            let (status, _) = runFixture([root.appendingPathComponent("target/test-tools/diagnostic_fixture").path, server.baseUrl])
            XCTAssertEqual(status, 0)
            XCTAssertTrue(server.readLastError(consume: false).contains("owner"))
            XCTAssertTrue(server.readLastError(consume: false).contains("scenario.test:123"))
            XCTAssertFalse(server.diagnosticsJson().contains("\"retrieved\":1"))
            XCTAssertTrue(server.lastError.contains("owner"))
            XCTAssertTrue(server.diagnosticsJson().contains("\"retrieved\":0"))
            XCTAssertTrue(server.diagnosticsJson().contains("\"retrieved\":1"))
            XCTAssertThrowsError(try server.assertNoMismatches())
            server.testContext("next test")
            try server.assertNoMismatches()
            XCTAssertEqual(server.diagnosticsJson(), "[]")
        }
    }

    func testReplaysTheCanonicalTapeBody() throws {
        try Vcr.withPlayback(tape) { vcr in
            XCTAssertEqual(try httpGet(vcr.baseUrl + "/ok"), "ok-body")
        }
    }

    func testReportsACleanMatch() throws {
        try Vcr.withPlayback(tape) { vcr in
            _ = try httpGet(vcr.baseUrl + "/ok")
            XCTAssertEqual(vcr.lastKind, .ok)
            XCTAssertTrue(vcr.matchedCleanly)
            XCTAssertEqual(vcr.lastIndex, 0)
            XCTAssertEqual(vcr.lastError, "")
        }
    }

    func testExposesTapeLengthAndABoundPort() throws {
        try Vcr.withPlayback(tape) { vcr in
            XCTAssertEqual(vcr.tapeLength, 1)
            try vcr.addLicenseNotice("test notice")  // playback ignores it
            vcr.prettyJson(2)
            XCTAssertEqual(vcr.prettyJsonIndent, 2)
            vcr.prettyJson(0)
            XCTAssertGreaterThan(vcr.port, 0)
            XCTAssertTrue(vcr.baseUrl.hasPrefix("http://127.0.0.1:"))
        }
    }

    func testFlagsAPathThatIsNotOnTheTape() throws {
        try Vcr.withPlayback(tape) { vcr in
            XCTAssertNotEqual(try httpStatus(vcr.baseUrl + "/nope"), "200")
            XCTAssertNotEqual(vcr.lastKind, .ok)
        }
    }

    func testReplaysAgainAfterResetCursor() throws {
        try Vcr.withPlayback(tape) { vcr in
            let url = vcr.baseUrl + "/ok"
            XCTAssertEqual(try httpGet(url), "ok-body")
            vcr.resetCursor()
            XCTAssertEqual(try httpGet(url), "ok-body")
            XCTAssertEqual(vcr.lastKind, .ok)
        }
    }

    func testThrowsWhenTheTapeIsMissing() {
        XCTAssertThrowsError(try Vcr.playback(tape + ".nonexistent")) { error in
            XCTAssertTrue("\(error)".contains("open failed"), "got: \(error)")
        }
    }

    func testScopedFormClosesTheServer() throws {
        // The port is bound inside the scope and released on the way out, so a
        // second scope over the same tape must succeed independently.
        let first = try Vcr.withPlayback(tape) { $0.port }
        let second = try Vcr.withPlayback(tape) { $0.port }
        XCTAssertGreaterThan(first, 0)
        XCTAssertGreaterThan(second, 0)
    }

    func testCloseIsIdempotent() throws {
        let vcr = try Vcr.playback(tape)
        vcr.close()
        vcr.close()
    }

    func testTwoServersRunConcurrentlyOnePerHandle() throws {
        let a = try Vcr.playback(tape)
        let b = try Vcr.playback(tape)
        defer {
            a.close()
            b.close()
        }
        XCTAssertNotEqual(a.port, b.port)
        XCTAssertEqual(try httpGet(a.baseUrl + "/ok"), "ok-body")
        XCTAssertEqual(try httpGet(b.baseUrl + "/ok"), "ok-body")
    }

    func testEnumsMirrorTheEngineConstants() {
        XCTAssertEqual(Outcome.ok.rawValue, 0)
        XCTAssertEqual(Outcome.bodyDiff.rawValue, 6)
        XCTAssertEqual(Field.requestHeaders.rawValue, 3)
        XCTAssertEqual(Field.responseBody.rawValue, 2)
    }
}
