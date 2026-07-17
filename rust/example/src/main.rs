//! Third-party consumer example: drives the `servirtium` crate (consumed as a
//! Cargo dependency) to replay the canonical tape. The engine .so is located
//! either explicitly (first-class `.native_lib()`) or by discovery (the crate
//! self-locates its bundled native/ .so) — with no SERVIRTIUM_VCR_LIB.
//!
//!   cargo run -- explicit <path-to-.so>
//!   cargo run -- discovery

use servirtium::{Field, Outcome, Vcr};

fn fail(msg: &str) -> ! {
    eprintln!("FAIL: {msg}");
    std::process::exit(1);
}

/// Volatile request headers ureq injects, and volatile response headers a live
/// upstream adds; both stripped at record time so the recorded tape matches the
/// canonical golden (empty request headers, response headers = just
/// Content-Type). Removing a header that was not present is a no-op.
const REQ_STRIP: &[&str] = &[
    "Host", "User-Agent", "Accept", "Accept-Encoding",
    "Accept-Language", "Connection", "Content-Length", "Content-Type",
];
const RESP_STRIP: &[&str] = &["Content-Length", "Connection", "Date", "Server", "Transfer-Encoding"];

/// A tiny raw-socket HTTP upstream that answers any request with
/// `200 text/plain` / `ok-body`. Deliberately NOT a second VCR server — the
/// crate serializes VCR servers process-wide (a second `start()` blocks until
/// the first is dropped), so recording against a *playback* server would
/// deadlock. A raw socket sidesteps that: only the record server is a VCR.
fn spawn_raw_upstream() -> u16 {
    use std::io::{Read, Write};
    let listener = std::net::TcpListener::bind("127.0.0.1:0").expect("bind upstream");
    let port = listener.local_addr().unwrap().port();
    std::thread::spawn(move || {
        for stream in listener.incoming() {
            let Ok(mut s) = stream else { return };
            let mut buf = [0u8; 4096];
            let _ = s.read(&mut buf);
            let _ = s.write_all(
                b"HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\nContent-Length: 7\r\nConnection: close\r\n\r\nok-body",
            );
        }
    });
    port
}

/// Prove the crate's *recorder* emits a byte-identical canonical tape. We record
/// against a tiny live HTTP upstream (discovering the bundled .so), strip the
/// volatile request/response headers, and assert the fresh tape is byte-for-byte
/// the golden — then, with the record server already stopped, replay the
/// recording to prove recorder and player round-trip.
fn record_and_compare(tape: &str) {
    let out = std::env::temp_dir().join("servirtium-consumer-recorded.md");
    let out = out.to_str().unwrap().to_string();

    let up_port = spawn_raw_upstream();

    let mut rec = Vcr::record(&out, format!("http://127.0.0.1:{up_port}"));
    for h in REQ_STRIP {
        rec = rec.remove_header(Field::RequestHeaders, *h);
    }
    for h in RESP_STRIP {
        rec = rec.remove_header(Field::ResponseHeaders, *h);
    }
    let vcr = rec
        .port(0)
        .start()
        .unwrap_or_else(|e| fail(&format!("record: recorder failed to start: {e}")));

    let got = ureq::get(&format!("{}/ok", vcr.base_url()))
        .call()
        .unwrap_or_else(|e| fail(&format!("record: GET /ok failed: {e}")))
        .into_string()
        .unwrap_or_else(|e| fail(&format!("record: reading body failed: {e}")));
    if got != "ok-body" {
        fail(&format!("record: upstream round-trip returned {got:?}"));
    }
    vcr.finish()
        .unwrap_or_else(|e| fail(&format!("record: flush failed: {e}")));

    let golden = std::fs::read(tape).unwrap_or_else(|e| fail(&format!("read golden: {e}")));
    let recorded = std::fs::read(&out).unwrap_or_else(|e| fail(&format!("read recorded: {e}")));
    if recorded != golden {
        fail(&format!(
            "recorded tape is NOT byte-identical to the canonical golden:\n  golden  : {:?}\n  recorded: {:?}",
            String::from_utf8_lossy(&golden),
            String::from_utf8_lossy(&recorded),
        ));
    }
    println!(
        "ok: recorder emitted a byte-identical canonical tape ({} bytes)",
        recorded.len()
    );

    let v2 = Vcr::playback(&out)
        .port(0)
        .start()
        .unwrap_or_else(|e| fail(&format!("record: round-trip playback failed: {e}")));
    let body = ureq::get(&format!("{}/ok", v2.base_url()))
        .call()
        .unwrap_or_else(|e| fail(&format!("record: round-trip GET failed: {e}")))
        .into_string()
        .unwrap_or_else(|e| fail(&format!("record: round-trip read failed: {e}")));
    if body != "ok-body" || v2.last_kind() != Outcome::Ok {
        fail(&format!(
            "record: round-trip replay failed ({body:?}, {:?})",
            v2.last_kind()
        ));
    }
    println!("ok: recorder/player round-trip (recorded tape replays to ok-body)");
    println!("PASS[record]: servirtium crate recorded a byte-identical canonical tape");
}

fn main() {
    // A real consumer sets nothing.
    std::env::remove_var("SERVIRTIUM_VCR_LIB");

    let mode = std::env::args().nth(1).unwrap_or_else(|| "discovery".to_string());
    let tape = format!("{}/tapes/single_get.md", env!("CARGO_MANIFEST_DIR"));

    if mode == "record" {
        record_and_compare(&tape);
        return;
    }

    let vcr = match mode.as_str() {
        "explicit" => {
            let so = std::env::args()
                .nth(2)
                .unwrap_or_else(|| fail("explicit mode needs the bundled .so path as arg 2"));
            Vcr::playback(&tape).native_lib(so).port(0).start()
        }
        "discovery" => Vcr::playback(&tape).port(0).start(),
        other => fail(&format!(
            "unknown mode '{other}'; expected 'explicit', 'discovery' or 'record'"
        )),
    }
    .unwrap_or_else(|e| fail(&format!("playback failed to start: {e}")));

    let body = ureq::get(&format!("{}/ok", vcr.base_url()))
        .call()
        .unwrap_or_else(|e| fail(&format!("GET /ok failed: {e}")))
        .into_string()
        .unwrap_or_else(|e| fail(&format!("reading body failed: {e}")));

    if body != "ok-body" {
        fail(&format!("expected body 'ok-body', got {body:?}"));
    }
    if vcr.last_kind() != Outcome::Ok {
        fail(&format!("expected Outcome::Ok, got {:?}", vcr.last_kind()));
    }

    println!("PASS[{mode}]: consumer replayed the canonical tape from the servirtium crate");
}
