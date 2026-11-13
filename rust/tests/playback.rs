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

#[test]
fn untaped_path_returns_404_without_consuming_the_tape() {
    let vcr = Vcr::playback(tape_path("single_get.md"))
        .untaped("/favicon.ico")
        .port(0)
        .start()
        .unwrap();

    let base = vcr.base_url();

    // The untaped path answers 404 without touching the tape cursor. ureq
    // surfaces a 4xx as `Error::Status`.
    match ureq::get(&format!("{base}/favicon.ico")).call() {
        Err(ureq::Error::Status(code, _)) => assert_eq!(404, code),
        other => panic!("expected a 404 status for the untaped path, got {other:?}"),
    }

    // The normal recorded interaction still replays (cursor wasn't consumed).
    let from_tape = ureq::get(&format!("{base}/ok"))
        .call()
        .unwrap()
        .into_string()
        .unwrap();
    assert_eq!("ok-body", from_tape);
    assert_eq!(Outcome::Ok, vcr.last_kind());
}


#[test]
fn retained_replay_diagnostics_support_nonconsuming_observers() {
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).parent().unwrap();
    let server = servirtium::Vcr::playback(root.join("core_tests/diagnostics/playback.md").to_str().unwrap()).start().unwrap();
    server.test_context("Rust scenario", "scenario.test", 123).unwrap();
    let output = std::process::Command::new(root.join("target/test-tools/diagnostic_fixture"))
        .arg(server.base_url()).output().unwrap();
    assert!(output.status.success(), "{}", String::from_utf8_lossy(&output.stderr));
    assert!(server.last_error_with(false).contains("owner"));
    assert!(server.last_error_with(false).contains("scenario.test:123"));
    assert!(!server.diagnostics_json(false).contains("\"retrieved\":1"));
    assert!(server.last_error().contains("owner"));
    let events = server.diagnostics_json(false);
    assert!(events.contains("\"retrieved\":0") && events.contains("\"retrieved\":1"));
    let failure = server.assert_no_mismatches().unwrap_err().to_string();
    assert!(failure.contains("admin") && failure.contains("owner"));
    server.test_context("next test", "next.test", 5).unwrap();
    server.assert_no_mismatches().unwrap();
    assert_eq!(server.diagnostics_json(false), "[]");
}

#[test]
fn substitute_fills_base_url_and_assert_all_consumed_tracks_replay() {
    let vcr = Vcr::playback(tape_path("base_url.md"))
        .substitute(Field::ResponseBody, "@@HOST@@", "http://sub.example")
        .port(0)
        .start()
        .unwrap();

    assert!(vcr.assert_all_consumed().is_err(), "nothing replayed yet");
    let body = ureq::get(&format!("{}/where", vcr.base_url())).call().unwrap().into_string().unwrap();
    assert_eq!("at http://sub.example/x", body.trim_end());
    vcr.assert_all_consumed().expect("every interaction replayed");
    vcr.assert_all_redactions_used().expect("substitution matched");
    assert_eq!("", vcr.last_tls_protocol());
}

/// The shared shop-journey tape (core_tests/tapes/playback_range.tape): 0 GET /login ...
/// 7 GET /logout.
fn range_tape() -> String {
    format!("{}/../core_tests/tapes/playback_range.tape", env!("CARGO_MANIFEST_DIR"))
}

fn get_with_cookie(base: &str, path: &str) -> String {
    raw_get(base, path, &[("Cookie", "sid=live-session")])
}

#[test]
fn playback_range_replays_only_the_chosen_interactions() {
    let vcr = Vcr::playback(range_tape())
        .redact_credentials()
        .playback_range(7, 7)
        .port(0)
        .start()
        .unwrap();
    assert_eq!(Some((7, 7)), vcr.playback_range());
    let base = vcr.base_url();
    // The test brings its own cookie and skips the whole journey: interaction 7 is served first.
    assert_eq!("bye", get_with_cookie(&base, "/logout").trim());
    assert_eq!(7, vcr.last_index());
    // A skipped interaction is never served, and is named as outside the range.
    assert_ne!("login-form", get_with_cookie(&base, "/login").trim());
    assert!(vcr.last_error().contains("outside the playback range"), "{}", vcr.last_error());
    vcr.clear_playback_range();
    assert_eq!(None, vcr.playback_range());
}

#[test]
fn a_bad_playback_range_is_refused_at_start() {
    let err = Vcr::playback(range_tape()).playback_range(9, -1).port(0).start().err().unwrap();
    assert!(err.message().contains("set_playback_range"), "{err}");
}

#[test]
fn a_missing_tape_reports_its_reason_through_open_error() {
    let err = match Vcr::playback(tape_path("no_such_tape.md")).port(0).start() {
        Ok(_) => panic!("a missing tape must not start"),
        Err(e) => e,
    };
    assert!(err.to_string().contains("no_such_tape.md"), "got: {err}");
}

#[test]
fn opens_starts_and_finishes_many_times() {
    for _ in 0..50 {
        let vcr = Vcr::playback(tape_path("single_get.md")).port(0).start().unwrap();
        assert_eq!(1, vcr.tape_length());
        vcr.finish().unwrap(); // finish stops + destroys; the Drop that follows is a no-op
    }
}

// ---- volatile values (docs/volatile-values.md) ----

fn volatile_root() -> std::path::PathBuf {
    std::path::Path::new(env!("CARGO_MANIFEST_DIR")).parent().unwrap().to_path_buf()
}

fn volatile_tape(name: &str) -> String {
    volatile_root().join("core_tests/volatile").join(name).to_str().unwrap().to_string()
}

fn volatile_driver(mode: &str, base: &str) {
    let output = std::process::Command::new(volatile_root().join("target/test-tools/volatile_fixture"))
        .arg(mode)
        .arg(base)
        .output()
        .unwrap();
    assert!(
        output.status.success(),
        "volatile_fixture {mode}: {}{}",
        String::from_utf8_lossy(&output.stdout),
        String::from_utf8_lossy(&output.stderr)
    );
}

#[test]
fn volatile_tape_block_drives_wcf_playback_and_reports_bindings() {
    let vcr = Vcr::playback(volatile_tape("wcf.md")).pretty_xml(2).start().unwrap();
    volatile_driver("wcf", &vcr.base_url());
    assert!(vcr.volatile_report().contains("binding: {{messageId-1}} = "));
}

#[test]
fn volatile_profile_file_drives_wcf_playback() {
    let vcr = Vcr::playback(volatile_tape("wcf_plain.md"))
        .pretty_xml(2)
        .volatile_profile(volatile_tape("profile.md"))
        .start()
        .unwrap();
    volatile_driver("wcf", &vcr.base_url());
}

#[test]
fn volatile_rules_in_code_drive_wcf_playback() {
    let vcr = Vcr::playback(volatile_tape("wcf_plain.md"))
        .pretty_xml(2)
        .volatile_rule("request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>")
        .volatile_rule("request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/")
        .volatile_rule("request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;")
        .volatile_rule("response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>")
        .start()
        .unwrap();
    volatile_driver("wcf", &vcr.base_url());
}

#[test]
fn volatile_markers_dollar_curly() {
    let vcr = Vcr::playback(volatile_tape("wcf_dollar.md"))
        .pretty_xml(2)
        .volatile_markers(servirtium::VolatileMarkers::DollarCurly)
        .start()
        .unwrap();
    volatile_driver("wcf", &vcr.base_url());
    let msg = Vcr::playback(volatile_tape("wcf_dollar.md")).pretty_xml(2).start().err().expect("start must fail").to_string();
    assert!(msg.contains("DollarCurly"), "{msg}");
}

#[test]
fn volatile_cases_bind_then_mismatch_reports_token() {
    let vcr = Vcr::playback(volatile_tape("cases.md")).start().unwrap();
    volatile_driver("cases", &vcr.base_url());
    vcr.reset_cursor();
    volatile_driver("cases-mismatch", &vcr.base_url());
    assert!(vcr.last_error_with(false).contains("{{caseId-1}} = 42"));
    let _ = vcr.last_error(); // consuming read: nothing unretrieved at close
}

#[test]
fn volatile_bind_supplies_a_recorded_value() {
    let msg = Vcr::playback(volatile_tape("cases_recorded.md")).start().err().expect("start must fail").to_string();
    assert!(msg.contains("caseId"), "{msg}");
    let vcr = Vcr::playback(volatile_tape("cases_recorded.md")).bind("caseId", "42").start().unwrap();
    volatile_driver("cases", &vcr.base_url());
}

#[test]
fn volatile_config_errors_fail_start_with_the_core_message() {
    let msg = Vcr::playback(volatile_tape("cases.md"))
        .volatile_rule("request body", "no placeholder")
        .start()
        .err()
        .expect("start must fail")
        .to_string();
    assert!(msg.contains("needs at least one placeholder"), "{msg}");

    let msg = Vcr::playback(volatile_tape("cases.md"))
        .volatile_rule("response body", "\"caseId\":\"{{id}}\"")
        .start()
        .err()
        .expect("start must fail")
        .to_string();
    assert!(msg.contains("conflicts with") && msg.contains("(tape)"), "{msg}");

    assert!(Vcr::playback(volatile_tape("cases.md"))
        .volatile_rule_kind("x", "a {{b}}", "regex")
        .start()
        .is_err());
}
