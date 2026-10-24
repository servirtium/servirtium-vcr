import XCTest
import Foundation
@testable import Servirtium
final class SecretCallbacksTests: XCTestCase {
    func testNamedSecretsRoundTrip() throws {
        let directory = FileManager.default.temporaryDirectory.appendingPathComponent("vcr-secrets-" + UUID().uuidString)
        try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)
        defer { try? FileManager.default.removeItem(at: directory) }
        let tape = directory.appendingPathComponent("tape.md").path
        let fixture = URL(fileURLWithPath: #filePath).deletingLastPathComponent().deletingLastPathComponent().deletingLastPathComponent().deletingLastPathComponent().appendingPathComponent("core_tests/secret_fixture.py").path
        func run(_ action: String, _ arg: String) throws -> String {
            let process = Process(); let output = Pipe()
            process.executableURL = URL(fileURLWithPath: "/usr/bin/env")
            process.arguments = ["python3", fixture, action, arg]; process.standardOutput = output
            try process.run()
            let data = output.fileHandleForReading.readDataToEndOfFile(); process.waitUntilExit()
            XCTAssertEqual(process.terminationStatus, 0)
            return String(decoding: data, as: UTF8.self).trimmingCharacters(in: .whitespacesAndNewlines)
        }
        var count = 0
        let rec = try Vcr.record(tape, upstreamBase: run("start", directory.path)).secretRedactor { key, request in
            guard key == "password" else { return nil }
            count += 1
            return request.path.split(separator: "/")[0].uppercased() + "_PASSWORD"
        }
        do { _ = try run("drive", rec.baseUrl); XCTAssertEqual(count, 0) }
        catch { rec.close(); throw error }
        try rec.flush(); XCTAssertEqual(count, 20); _ = try run("check", tape)
        let replay = try Vcr.playback(tape, secretResolver: { token in
            "pw-" + token.replacingOccurrences(of: "_PASSWORD", with: "").lowercased() + "&secret"
        })
        defer { replay.close() }
        _ = try run("drive", replay.baseUrl); try replay.assertNoMismatches()
        _ = try run("check", tape)
    }
}
