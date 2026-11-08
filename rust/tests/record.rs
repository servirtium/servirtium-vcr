//! Record mode end-to-end and record-side breadth: forward to a live
//! upstream, return the real response to the SUT, capture, flush a Servirtium
//! markdown tape on drop, then replay it; plus redaction, header removal,
//! notes, drift detection, POST bodies, and per-fixture state isolation.

mod common;

use common::{FakeUpstream, TempTape};
use servirtium::{Field, Outcome, Vcr};

#[test]
fn record_accepts_license_notice_pretty_json_and_presets() {
    let upstream = FakeUpstream::new();
    let tape = TempTape::new();
    let rec = Vcr::record(&tape.0, &upstream.base_url)
        .add_license_notice("test notice")
        .pretty_json(2)
        .remove_transport_headers()
        .remove_cloud_headers("aws")
        .redact_credentials()
        .redact_credential_header("X-Vault-Token")
        .port(0)
        .start()
        .unwrap();
    rec.finish().unwrap();
    assert!(std::fs::read_to_string(&tape.0).unwrap().contains("## LICENSE NOTICE"));
    assert!(Vcr::record(&tape.0, &upstream.base_url)
        .remove_cloud_headers("nosuchvendor")
        .port(0)
        .start()
        .is_err());
}

const UNSORTED: &str = r#"{"zebra":1,"apple":{"mango":2,"banana":3}}"#;
const SORTED: &str = "{\n  \"apple\": {\n    \"banana\": 3,\n    \"mango\": 2\n  },\n  \"zebra\": 1\n}";

#[test]
fn sort_json_keys_with_pretty_json_writes_sorted_pretty_json() {
    let upstream = FakeUpstream::new();
    upstream.set_body(UNSORTED);
    upstream.set_content_type("application/json");
    let tape = TempTape::new();
    let rec = Vcr::record(&tape.0, &upstream.base_url)
        .pretty_json(2)
        .sort_json_keys()
        .sort_json_array("/list", "")
        .sort_json_array_at("/data", "/list", "id")
        .sort_response_headers()
        .sort_header_value("Allow")
        .port(0)
        .start()
        .unwrap();
    assert!(rec.sort_json_keys());
    assert!(rec.sort_response_headers());
    let _ = ureq::get(&format!("{}/data", rec.base_url())).call().unwrap();
    rec.finish().unwrap();
    assert!(tape.read().contains(SORTED), "sorted, pretty JSON expected in:\n{}", tape.read());
}

#[test]
fn sort_json_keys_without_pretty_json_is_refused() {
    let upstream = FakeUpstream::new();
    upstream.set_body(UNSORTED);
    upstream.set_content_type("application/json");
    let tape = TempTape::new();
    let rec = Vcr::record(&tape.0, &upstream.base_url).sort_json_keys().port(0).start().unwrap();
    let _ = ureq::get(&format!("{}/data", rec.base_url())).call().unwrap();
    let err = rec.finish().unwrap_err();
    assert!(err.message().contains("sort_json_keys needs pretty_json"), "{err}");
    assert!(!std::path::Path::new(&tape.0).exists(), "a refused tape is not written");
    assert!(Vcr::record(&tape.0, &upstream.base_url).sort_json_array("a/b", "").port(0).start().is_err());
}

#[test]
fn a_record_server_refuses_a_playback_range() {
    let upstream = FakeUpstream::new();
    let tape = TempTape::new();
    let rec = Vcr::record(&tape.0, &upstream.base_url).port(0).start().unwrap();
    assert!(rec.set_playback_range(0, 1).is_err());
    assert_eq!(None, rec.playback_range());
    rec.discard();
}

#[test]
fn records_then_replays_the_same_interaction() {
    let upstream = FakeUpstream::new();
    upstream.set_body("hello-from-upstream");
    let tape = TempTape::new();

    // ---- record ----
    {
        let rec = Vcr::record(&tape.0, &upstream.base_url).port(0).start().unwrap();
        let body = ureq::get(&format!("{}/greeting", rec.base_url()))
            .call()
            .unwrap()
            .into_string()
            .unwrap();
        assert_eq!("hello-from-upstream", body);
        rec.finish().unwrap(); // flush the tape
    }

    assert!(std::path::Path::new(&tape.0).exists(), "record should write the tape");

    // ---- replay (offline) ----
    let play = Vcr::playback(&tape.0).port(0).start().unwrap();
    let replayed = ureq::get(&format!("{}/greeting", play.base_url()))
        .call()
        .unwrap()
        .into_string()
        .unwrap();

    assert_eq!("hello-from-upstream", replayed);
    assert_eq!(Outcome::Ok, play.last_kind());
}

#[test]
fn redacts_response_body_before_it_lands_on_the_tape() {
    let upstream = FakeUpstream::new();
    upstream.set_body("value=secret-token");
    let tape = TempTape::new();

    {
        let rec = Vcr::record(&tape.0, &upstream.base_url)
            .redact(Field::ResponseBody, "secret-token", "REDACTED")
            .port(0)
            .start()
            .unwrap();
        let _ = ureq::get(&format!("{}/x", rec.base_url())).call().unwrap();
        rec.finish().unwrap();
    }

    let content = tape.read();
    assert!(content.contains("REDACTED"), "expected redacted placeholder");
    assert!(!content.contains("secret-token"), "secret must not appear");
}

#[test]
fn attaches_a_note_to_the_recorded_interaction() {
    let upstream = FakeUpstream::new();
    let tape = TempTape::new();

    {
        let rec = Vcr::record(&tape.0, &upstream.base_url)
            .note("Why this exists", "documents the call")
            .port(0)
            .start()
            .unwrap();
        let _ = ureq::get(&format!("{}/x", rec.base_url())).call().unwrap();
        rec.finish().unwrap();
    }

    assert!(tape.read().contains("## [Note] Why this exists:"));
}

#[test]
fn removes_a_named_response_header_from_the_tape() {
    let upstream = FakeUpstream::new();
    upstream.set_header("X-Trace-Id", "abc123");
    let tape1 = TempTape::new();
    let tape2 = TempTape::new();

    // Phase 1: without removal, the header is captured.
    {
        let rec = Vcr::record(&tape1.0, &upstream.base_url).port(0).start().unwrap();
        let _ = ureq::get(&format!("{}/x", rec.base_url())).call().unwrap();
        rec.finish().unwrap();
    }
    assert!(tape1.read().contains("X-Trace-Id"));

    // Phase 2: with removal, it's gone.
    {
        let rec = Vcr::record(&tape2.0, &upstream.base_url)
            .remove_header(Field::ResponseHeaders, "X-Trace-Id")
            .port(0)
            .start()
            .unwrap();
        let _ = ureq::get(&format!("{}/x", rec.base_url())).call().unwrap();
        rec.finish().unwrap();
    }
    assert!(!tape2.read().contains("X-Trace-Id"));
}

#[test]
fn mutation_state_does_not_leak_between_fixtures() {
    let upstream = FakeUpstream::new();
    upstream.set_body("leak");
    let tape1 = TempTape::new();
    let tape2 = TempTape::new();

    // Fixture A registers a redaction for "leak".
    {
        let a = Vcr::record(&tape1.0, &upstream.base_url)
            .redact(Field::ResponseBody, "leak", "SCRUBBED")
            .port(0)
            .start()
            .unwrap();
        let _ = ureq::get(&format!("{}/x", a.base_url())).call().unwrap();
        a.finish().unwrap();
    }
    assert!(tape1.read().contains("SCRUBBED"));

    // Fixture B registers NO redaction; A's must not leak in.
    {
        let b = Vcr::record(&tape2.0, &upstream.base_url).port(0).start().unwrap();
        let _ = ureq::get(&format!("{}/x", b.base_url())).call().unwrap();
        b.finish().unwrap();
    }
    let c = tape2.read();
    assert!(c.contains("leak"));
    assert!(!c.contains("SCRUBBED"));
}

#[test]
fn fail_if_changed_errors_when_a_re_record_drifts() {
    let upstream = FakeUpstream::new();
    let tape = TempTape::new();

    // First record creates the tape — no drift.
    upstream.set_body("v1");
    {
        let first = Vcr::record(&tape.0, &upstream.base_url)
            .fail_if_changed()
            .port(0)
            .start()
            .unwrap();
        let _ = ureq::get(&format!("{}/x", first.base_url())).call().unwrap();
        first.finish().unwrap();
    }
    assert!(std::path::Path::new(&tape.0).exists());

    // Re-record with a changed upstream — finish() must error, while still
    // writing the new tape for `git diff`.
    upstream.set_body("v2-changed");
    let second = Vcr::record(&tape.0, &upstream.base_url)
        .fail_if_changed()
        .port(0)
        .start()
        .unwrap();
    let _ = ureq::get(&format!("{}/x", second.base_url())).call().unwrap();
    let result = second.finish();

    assert!(result.is_err(), "expected a drift error");
    assert!(tape.read().contains("v2-changed"));
}

#[test]
fn records_and_replays_a_post_with_a_body() {
    let upstream = FakeUpstream::new();
    upstream.set_body("created");
    let tape = TempTape::new();

    {
        let rec = Vcr::record(&tape.0, &upstream.base_url).port(0).start().unwrap();
        let resp = ureq::post(&format!("{}/submit", rec.base_url()))
            .send_string("ping")
            .unwrap()
            .into_string()
            .unwrap();
        assert_eq!("created", resp);
        assert_eq!(Some("POST".to_string()), upstream.last_method());
        rec.finish().unwrap();
    }

    // Replay the same POST offline.
    let play = Vcr::playback(&tape.0).port(0).start().unwrap();
    let replayed = ureq::post(&format!("{}/submit", play.base_url()))
        .send_string("ping")
        .unwrap()
        .into_string()
        .unwrap();
    assert_eq!("created", replayed);
    assert_eq!(Outcome::Ok, play.last_kind());
}


#[test]
fn structured_redaction_helpers_preserve_upstream_credentials() {
    use std::process::Command;
    let root = std::path::Path::new(env!("CARGO_MANIFEST_DIR"));
    let directory = std::env::temp_dir().join(format!("vcr-helpers-rust-{}-{}", std::process::id(), std::time::SystemTime::now().duration_since(std::time::UNIX_EPOCH).unwrap().as_nanos()));
    std::fs::create_dir(&directory).unwrap();
    let run = |args: &[&str]| {
        let output = Command::new(root.join("../target/test-tools/redaction_fixture"))
            .args(args).output().unwrap();
        assert!(output.status.success(), "{}", String::from_utf8_lossy(&output.stderr));
        String::from_utf8(output.stdout).unwrap().trim().to_owned()
    };
    let dir = directory.to_str().unwrap();
    let upstream = run(&["start", dir]);
    let rec = servirtium::Vcr::record(directory.join("tape.md").to_str().unwrap(), upstream)
        .redact_header("Authorization").redact_query_param("password").redact_json_field("secretKey")
        .start().unwrap();
    run(&["drive", dir, &rec.base_url()]);
    assert_eq!(rec.last_kind(), servirtium::Outcome::Ok);
    drop(rec);
    run(&["check", dir]);
    std::fs::remove_dir_all(directory).unwrap();
}
