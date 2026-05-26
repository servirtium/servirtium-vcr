//! End-to-end proof of the FFI chain: Rust fixture → native VCR
//! (aether_vcr_embed_*) → embedded Aether HTTP server. Replays a Servirtium
//! markdown tape and asserts the SUT-visible response and diagnostics.

mod common;

use common::{raw_get, tape_path};
use servirtium::{Field, Outcome, Vcr};

#[test]
fn replays_a_recorded_get_on_a_dynamic_port() {
    let vcr = Vcr::playback(tape_path("single_get.md"))
        .label("replays a recorded GET")
        .port(0)
        .start()
        .expect("playback should start");

    assert!(vcr.port() > 0, "expected an OS-assigned port");
    assert_eq!(1, vcr.tape_length());

    let body = ureq::get(&format!("{}/ok", vcr.base_url()))
        .call()
        .expect("request should succeed")
        .into_string()
        .unwrap();

    assert_eq!("ok-body", body);
    assert_eq!(Outcome::Ok, vcr.last_kind());
    assert_eq!("", vcr.last_error());
}

#[test]
fn flags_a_path_mismatch_via_diagnostics() {
    let vcr = Vcr::playback(tape_path("single_get.md")).port(0).start().unwrap();

    // 599-style mismatch; ureq surfaces it as an error status — ignore the
    // body, assert on the diagnostics.
    let _ = ureq::get(&format!("{}/nope", vcr.base_url())).call();

    assert_ne!(Outcome::Ok, vcr.last_kind());
    assert!(!vcr.last_error().is_empty(), "expected a mismatch diagnostic");
}

#[test]
fn unredaction_lets_a_scrubbed_tape_match_the_real_request() {
    let vcr = Vcr::playback(tape_path("secure_get.md"))
        .strict_headers()
        .unredact(Field::RequestHeaders, "Bearer REDACTED", "Bearer real-token")
        .port(0)
        .start()
        .unwrap();

    // A precise request (only Host + Authorization) so strict matching has
    // exactly the recorded header set to compare against.
    let body = raw_get(&vcr.base_url(), "/secure", &[("Authorization", "Bearer real-token")]);

    assert_eq!("secret-ok", body);
    assert_eq!(Outcome::Ok, vcr.last_kind());
}

#[test]
fn strict_matching_flags_a_missing_request_header() {
    let vcr = Vcr::playback(tape_path("secure_get.md"))
        .strict_headers()
        .unredact(Field::RequestHeaders, "Bearer REDACTED", "Bearer real-token")
        .port(0)
        .start()
        .unwrap();

    // No Authorization header at all → mismatch.
    let _ = raw_get(&vcr.base_url(), "/secure", &[]);

    assert_ne!(Outcome::Ok, vcr.last_kind());
    assert!(!vcr.last_error().is_empty());
}

#[test]
fn static_content_is_served_from_disk_not_the_tape() {
    let dir = std::env::temp_dir().join(format!(
        "vcr_static_{}",
        std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)
            .unwrap()
            .as_nanos()
    ));
    std::fs::create_dir_all(&dir).unwrap();
    std::fs::write(dir.join("asset.txt"), "static-asset").unwrap();

    let vcr = Vcr::playback(tape_path("single_get.md"))
        .static_content("/files", dir.to_string_lossy().to_string())
        .port(0)
        .start()
        .unwrap();

    let base = vcr.base_url();
    let from_disk = ureq::get(&format!("{base}/files/asset.txt"))
        .call()
        .unwrap()
        .into_string()
        .unwrap();
    let from_tape = ureq::get(&format!("{base}/ok"))
        .call()
        .unwrap()
        .into_string()
        .unwrap();

    assert_eq!("static-asset", from_disk);
    assert_eq!("ok-body", from_tape);

    std::fs::remove_dir_all(&dir).ok();
}
