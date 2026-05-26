//! TodoBackend browser integration test — RECORD phase (manual, on-demand).
//!
//! VCR in record mode, forwarding to the live Kotlin/http4k SUT
//! (TODOBACKEND_UPSTREAM). The Mocha spec runs in headless Chrome (Rust
//! thirtyfour) against the VCR; every CRUD call is forwarded upstream and
//! recorded, then flushed to the tape on finish. The suite must pass for the
//! recording to be considered good.
//!
//! Driven by .rust_record.ae, which brings the SUT up in a container (started
//! with its baseUrl set to the VCR origin, so the todo URLs it returns point
//! back at the VCR) and tears it down afterward. Built as a `--bin` (not a
//! test) so a normal `cargo test` — the playback leaf — never starts a SUT.

use todobackend_rust_integration::{run_suite, suite_dir, tape_path, VCR_PORT};

use servirtium::Vcr;

#[tokio::main(flavor = "multi_thread")]
async fn main() -> std::process::ExitCode {
    let upstream = match std::env::var("TODOBACKEND_UPSTREAM") {
        Ok(u) if !u.is_empty() => u,
        _ => {
            eprintln!("record: set TODOBACKEND_UPSTREAM (e.g. http://127.0.0.1:54321)");
            return std::process::ExitCode::from(2);
        }
    };

    let vcr = Vcr::record(tape_path(), upstream)
        .static_content("/suite", suite_dir())
        .untaped("/favicon.ico")
        .port(VCR_PORT)
        .start()
        .expect("record VCR should start on the fixed port");

    let base_url = vcr.base_url();
    let (passes, failures, msgs) = run_suite(&base_url, None, 120).await;
    println!("mocha (record): {passes} passed, {failures} failed");
    for m in &msgs {
        println!("  FAIL: {m}");
    }

    let suite_ok = failures == 0 && passes > 0;
    if !suite_ok {
        // Drop the VCR without flushing-to-success expectations; bail.
        eprintln!("record: suite did not pass against the live SUT; tape NOT trustworthy");
        drop(vcr);
        return std::process::ExitCode::FAILURE;
    }

    // finish() flushes the tape to disk and surfaces any flush error.
    match vcr.finish() {
        Ok(()) => {
            println!("record: wrote {}", tape_path());
            std::process::ExitCode::SUCCESS
        }
        Err(e) => {
            eprintln!("record: tape flush failed: {e}");
            std::process::ExitCode::FAILURE
        }
    }
}
