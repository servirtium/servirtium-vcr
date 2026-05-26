//! TodoBackend browser integration test — PLAYBACK phase (the CI artifact).
//!
//! Replays the committed CRUD tape through a Servirtium VCR and runs the real
//! TodoBackend Mocha spec against it in headless Chrome (Rust thirtyfour). No
//! SUT, no network — the whole CRUD conversation comes off the tape. This is
//! the offline test wired into aeb (.rust_playback.ae); record regenerates it.
//!
//! Run via the .rust_playback.ae node, or directly:
//!   SERVIRTIUM_VCR_LIB=../../../core/native/libservirtium_vcr.so \
//!   CHROMEDRIVER=<path> cargo test --test playback

use todobackend_rust_integration::{run_suite, suite_dir, tape_path, VCR_PORT};

use servirtium::Vcr;

#[tokio::test(flavor = "multi_thread")]
async fn replays_the_committed_tape_through_the_mocha_suite() {
    let vcr = Vcr::playback(tape_path())
        .static_content("/suite", suite_dir())
        .untaped("/favicon.ico")
        .port(VCR_PORT)
        .start()
        .expect("playback VCR should start on the fixed port");

    let base_url = vcr.base_url();
    let (passes, failures, msgs) = run_suite(&base_url, None, 120).await;

    println!("mocha (playback): {passes} passed, {failures} failed");
    for m in &msgs {
        println!("  FAIL: {m}");
    }

    // `vcr` stops on drop.
    assert!(passes > 0, "expected the Mocha suite to run some passing specs");
    assert_eq!(0, failures, "Mocha spec had failures on playback: {msgs:?}");
}
