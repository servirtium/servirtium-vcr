// playback_test.cpp — playback facts for the C++ client.
//
// Replays the canonical one-interaction tape (GET /ok -> 200 text/plain
// "ok-body") — the same tape every other binding in this repo replays
// byte-for-byte — and asserts the body, a clean match, the diagnostics, and
// the things C++ specifically adds: RAII shutdown, move semantics, std::string
// in/out (no sv_free in user code), and exceptions instead of NULL returns.
//
// No test framework: a plain main() returning 0 on success. The tape path
// arrives as argv[1] (cpp/.tests.ae passes the absolute path, so the binary's
// working directory doesn't matter); it falls back to the repo-relative
// default for a by-hand run from cpp/.
#include <servirtium.hpp>

#include <array>
#include <cstdio>
#include <iostream>
#include <memory>
#include <string>

namespace {

int failures = 0;

void ck(const std::string& label, bool cond) {
    if (cond) {
        std::cout << "  ok: " << label << "\n";
    } else {
        std::cout << "FAIL: " << label << "\n";
        ++failures;
    }
}

// Run a shell command and return its stdout, trailing newline trimmed.
std::string run_cmd(const std::string& cmd) {
    std::unique_ptr<FILE, int (*)(FILE*)> pipe(popen(cmd.c_str(), "r"), pclose);
    if (!pipe) return {};
    std::string out;
    std::array<char, 4096> buf{};
    while (std::fgets(buf.data(), static_cast<int>(buf.size()), pipe.get()) != nullptr) {
        out += buf.data();
    }
    while (!out.empty() && (out.back() == '\n' || out.back() == '\r')) out.pop_back();
    return out;
}

// GET a URL with curl, returning the body.
std::string http_get(const std::string& url) {
    return run_cmd("curl -s -S '" + url + "'");
}

// The HTTP status curl reports for a URL, as a string ("200", "404", ...).
std::string http_status(const std::string& url) {
    return run_cmd("curl -s -o /dev/null -w '%{http_code}' '" + url + "'");
}

}  // namespace

int main(int argc, char** argv) {
    const std::string tape =
        (argc > 1 && argv[1][0] != '\0') ? argv[1] : "tapes/single_get.md";

    // ---- a failed open throws, rather than returning a null handle ----
    try {
        auto bad = servirtium::Vcr::playback(tape + ".nonexistent");
        ck("missing tape throws", false);
        (void)bad;
    } catch (const servirtium::Error& e) {
        ck("missing tape throws servirtium::Error", true);
        ck("the exception explains why", std::string(e.what()).find("open failed") !=
                                             std::string::npos);
    }

    // ---- playback of the canonical tape ----
    {
        auto vcr = servirtium::Vcr::playback(tape);

        const std::string base = vcr.base_url();
        std::cout << "base_url = " << base << "\n";
        ck("base_url is a std::string with no manual free", !base.empty());
        ck("base_url is loopback http", base.rfind("http://127.0.0.1:", 0) == 0);
        ck("port is bound", vcr.port() > 0);
        ck("tape_length is 1", vcr.tape_length() == 1);

        ck("body is ok-body", http_get(base + "/ok") == "ok-body");
        ck("last_kind is Ok", vcr.last_kind() == servirtium::Outcome::Ok);
        ck("matched_cleanly agrees", vcr.matched_cleanly());
        ck("last_index is 0", vcr.last_index() == 0);
        ck("last_error is empty on a clean match", vcr.last_error().empty());

        // ---- cursor reset replays the same tape again ----
        vcr.reset_cursor();
        ck("replays again after reset_cursor", http_get(base + "/ok") == "ok-body");
        ck("last_kind still Ok after reset", vcr.last_kind() == servirtium::Outcome::Ok);

        // ---- an off-tape path is flagged, not served ----
        ck("off-tape path is not 200", http_status(base + "/nope") != "200");
        ck("off-tape path flags a non-Ok outcome",
           vcr.last_kind() != servirtium::Outcome::Ok);
    }
    // <- destructor ran here; the port is released

    // ---- RAII: the scope above freed the listener, so a fresh one binds ----
    {
        auto vcr = servirtium::Vcr::playback(tape);
        ck("a new server binds after the previous scope exited", vcr.port() > 0);
    }

    // ---- move semantics: one owner, destructor runs once ----
    {
        auto first = servirtium::Vcr::playback(tape);
        const int p = first.port();
        auto second = std::move(first);
        ck("moved-to Vcr keeps the handle", second.port() == p);
        ck("moved-to Vcr still serves", http_get(second.base_url() + "/ok") == "ok-body");
        // `first` is empty; its destructor must be a no-op (no double-stop).
    }
    ck("move left no double-free", true);

    // ---- explicit close is idempotent ----
    {
        auto vcr = servirtium::Vcr::playback(tape);
        vcr.close();
        vcr.close();
        ck("close is idempotent", true);
    }

    if (failures == 0) {
        std::cout << "PASS: cpp servirtium playback\n";
        return 0;
    }
    std::cout << "FAILED: " << failures << " cpp test(s)\n";
    return 1;
}
