// Shell.swift - run a test fixture and capture its output.
//
// The fixtures' `start` action forks a daemon upstream and returns once it has
// printed its URL. Foundation's Process on Linux (swift-corelibs-foundation)
// does not return from waitUntilExit() until that daemon exits (45 s later,
// when the fixture's own timeout fires), so a record test's upstream is gone
// before the test drives it. popen/pclose reap only the direct child, which is
// what the test means by "the command finished".
import Foundation
#if canImport(Glibc)
import Glibc
#elseif canImport(Darwin)
import Darwin
#endif

/// Run `args` (argv[0] a path or a command found on PATH) with stderr folded
/// into stdout. Returns the exit status and the output, trimmed.
func runFixture(_ args: [String]) -> (status: Int32, output: String) {
#if canImport(Darwin)
    // popen/pclose are marked unavailable in Swift on Apple platforms, and the
    // Linux problem above does not occur there: Foundation's Process returns
    // when the fixture's `start` process exits, daemon or not.
    let process = Process()
    process.executableURL = URL(fileURLWithPath: args[0].contains("/") ? args[0] : "/usr/bin/env")
    process.arguments = args[0].contains("/") ? Array(args.dropFirst()) : args
    let pipe = Pipe()
    process.standardOutput = pipe
    process.standardError = pipe
    do { try process.run() } catch { return (-1, "launch failed: \(args): \(error)") }
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    process.waitUntilExit()
    return (process.terminationStatus, String(decoding: data, as: UTF8.self).trimmingCharacters(in: .whitespacesAndNewlines))
#else
    func quote(_ s: String) -> String { "'" + s.replacingOccurrences(of: "'", with: "'\\''") + "'" }
    let command = args.map(quote).joined(separator: " ") + " 2>&1"
    guard let pipe = popen(command, "r") else { return (-1, "popen failed: \(command)") }
    var bytes = [UInt8]()
    var chunk = [UInt8](repeating: 0, count: 4096)
    while true {
        let n = fread(&chunk, 1, chunk.count, pipe)
        if n <= 0 { break }
        bytes.append(contentsOf: chunk[0..<n])
    }
    let raw = pclose(pipe)
    let status: Int32 = raw == -1 ? -1 : (raw & 0x7f) == 0 ? (raw >> 8) & 0xff : 128 + (raw & 0x7f)
    return (status, String(decoding: bytes, as: UTF8.self).trimmingCharacters(in: .whitespacesAndNewlines))
#endif
}
