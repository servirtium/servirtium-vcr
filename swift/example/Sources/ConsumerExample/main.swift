// main.swift — a third party using the packaged Swift binding.
//
// Built by SwiftPM against a RELOCATED copy of the package declared as a path
// dependency, with no reference to this repo and with SERVIRTIUM_VCR_LIB
// unset. Only the native/libservirtium_vcr.so bundled inside the package
// satisfies the link and the load, through Package.swift's -L/-rpath.
//
// Replays the canonical tape (GET /ok -> 200 text/plain "ok-body").
import Foundation
import Servirtium

func runCommand(_ args: [String]) -> String {
    let process = Process()
    process.executableURL = URL(fileURLWithPath: "/usr/bin/env")
    process.arguments = args
    let pipe = Pipe()
    process.standardOutput = pipe
    try? process.run()
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    process.waitUntilExit()
    return String(decoding: data, as: UTF8.self)
        .trimmingCharacters(in: .whitespacesAndNewlines)
}

let tape = FileManager.default.currentDirectoryPath + "/tapes/single_get.md"

do {
    try Vcr.withPlayback(tape) { vcr in
        let body = runCommand(["curl", "-s", "-S", vcr.baseUrl + "/ok"])
        guard body == "ok-body", vcr.matchedCleanly else {
            FileHandle.standardError.write("FAIL: body=\(body) lastKind=\(vcr.lastKind)\n".data(using: .utf8)!)
            exit(1)
        }
    }
} catch {
    FileHandle.standardError.write("FAIL: \(error)\n".data(using: .utf8)!)
    exit(1)
}

print("PASS[discovery]: consumer replayed the canonical tape from the installed package")
