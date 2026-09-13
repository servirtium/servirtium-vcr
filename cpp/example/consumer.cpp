// consumer.cpp — a third party using the packaged header-only C++ client.
//
// Compiled against the UNPACKED tarball prefix (via its pkg-config file, which
// pulls in the C client through `Requires: servirtium`) with no reference to
// this repo, and run with SERVIRTIUM_VCR_LIB and LD_LIBRARY_PATH unset.
//
// Replays the canonical tape (GET /ok -> 200 text/plain "ok-body").
#include <servirtium.hpp>

#include <array>
#include <cstdio>
#include <iostream>
#include <memory>
#include <string>

namespace {
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
}  // namespace

int main() {
    try {
        auto vcr = servirtium::Vcr::playback("tapes/single_get.md");
        const std::string body = run_cmd("curl -s -S '" + vcr.base_url() + "/ok'");
        if (body != "ok-body" || !vcr.matched_cleanly()) {
            std::cerr << "FAIL: body=" << body << "\n";
            return 1;
        }
    } catch (const servirtium::Error& e) {
        std::cerr << "FAIL: " << e.what() << "\n";
        return 1;
    }
    std::cout << "PASS[discovery]: consumer replayed the canonical tape from the installed prefix\n";
    return 0;
}
