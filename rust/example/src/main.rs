//! Third-party consumer example: drives the `servirtium` crate (consumed as a
//! Cargo dependency) to replay the canonical tape. The engine .so is located
//! either explicitly (first-class `.native_lib()`) or by discovery (the crate
//! self-locates its bundled native/ .so) — with no SERVIRTIUM_VCR_LIB.
//!
//!   cargo run -- explicit <path-to-.so>
//!   cargo run -- discovery

use servirtium::{Outcome, Vcr};

fn fail(msg: &str) -> ! {
    eprintln!("FAIL: {msg}");
    std::process::exit(1);
}

fn main() {
    // A real consumer sets nothing.
    std::env::remove_var("SERVIRTIUM_VCR_LIB");

    let mode = std::env::args().nth(1).unwrap_or_else(|| "discovery".to_string());
    let tape = format!("{}/tapes/single_get.md", env!("CARGO_MANIFEST_DIR"));

    let vcr = match mode.as_str() {
        "explicit" => {
            let so = std::env::args()
                .nth(2)
                .unwrap_or_else(|| fail("explicit mode needs the bundled .so path as arg 2"));
            Vcr::playback(&tape).native_lib(so).port(0).start()
        }
        "discovery" => Vcr::playback(&tape).port(0).start(),
        other => fail(&format!("unknown mode '{other}'; expected 'explicit' or 'discovery'")),
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
