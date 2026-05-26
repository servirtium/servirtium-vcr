//! Run the vendored TodoBackend Mocha spec in real headless Chrome against a
//! Servirtium VCR, and report the result. Mirrors the Python browser.py, but
//! drives Chrome with Rust's own WebDriver client (thirtyfour, async/tokio)
//! connecting to a chromedriver we start ourselves on an ephemeral port.
//!
//! Shared by both phases:
//!   * src/record.rs   — VCR in record mode, forwarding to the live Kotlin SUT
//!   * tests/playback.rs — VCR replaying the committed tape, no SUT
//!
//! The suite is served *same-origin* from the VCR's own static-content mount
//! (`/suite`), so the browser's API calls to the VCR root are same-origin — no
//! CORS, no preflight OPTIONS cluttering the tape. /favicon.ico is marked
//! untaped.
//!
//! Fixed port: the recorded responses embed absolute todo URLs
//! (`http://127.0.0.1:<PORT>/<uuid>`) that the spec follows, and the VCR
//! replays response bodies verbatim — so playback MUST bind the same port the
//! tape was recorded against. Hence a fixed VCR_PORT for both phases.

use std::net::TcpListener;
use std::path::PathBuf;
use std::process::{Child, Command, Stdio};
use std::time::Duration;

use thirtyfour::prelude::*;

/// Both phases bind here (see the module docs on why it can't be dynamic).
pub const VCR_PORT: u16 = 51080;

/// `integration/todobackend` — suite/ and tapes/ are shared one level up.
fn base_dir() -> PathBuf {
    // CARGO_MANIFEST_DIR = integration/todobackend/rust
    PathBuf::from(env!("CARGO_MANIFEST_DIR")).parent().unwrap().to_path_buf()
}

/// Absolute path to the shared suite directory served at `/suite`.
pub fn suite_dir() -> String {
    base_dir().join("suite").to_string_lossy().into_owned()
}

/// Absolute path to the committed CRUD tape.
pub fn tape_path() -> String {
    base_dir().join("tapes").join("todobackend_crud.md").to_string_lossy().into_owned()
}

/// The cached chromedriver binary (CHROMEDRIVER, else the Selenium cache).
fn chromedriver_bin() -> String {
    if let Ok(p) = std::env::var("CHROMEDRIVER") {
        if !p.is_empty() {
            return p;
        }
    }
    "chromedriver".to_string()
}

fn free_port() -> u16 {
    TcpListener::bind("127.0.0.1:0").unwrap().local_addr().unwrap().port()
}

/// A chromedriver child process; killed on drop.
struct Chromedriver {
    child: Child,
    port: u16,
}

impl Chromedriver {
    async fn start() -> Chromedriver {
        let port = free_port();
        let child = Command::new(chromedriver_bin())
            .arg(format!("--port={port}"))
            .stdout(Stdio::null())
            .stderr(Stdio::null())
            .spawn()
            .expect("failed to start chromedriver");
        // Wait until the driver is accepting connections.
        for _ in 0..50 {
            if TcpListener::bind(("127.0.0.1", port)).is_err() {
                // Port is taken => chromedriver bound it.
                break;
            }
            tokio::time::sleep(Duration::from_millis(100)).await;
        }
        tokio::time::sleep(Duration::from_millis(300)).await;
        Chromedriver { child, port }
    }

    fn url(&self) -> String {
        format!("http://localhost:{}", self.port)
    }
}

impl Drop for Chromedriver {
    fn drop(&mut self) {
        let _ = self.child.kill();
        let _ = self.child.wait();
    }
}

/// Drive `runner.html?<api_root>` in headless Chrome until Mocha finishes.
///
/// Returns `(passes, failures, fail_messages)`. `api_root` defaults to the VCR
/// root (same origin as the served suite).
pub async fn run_suite(
    vcr_base_url: &str,
    api_root: Option<&str>,
    timeout_secs: u64,
) -> (i64, i64, Vec<String>) {
    let api_root = api_root.unwrap_or(vcr_base_url);
    let url = format!("{vcr_base_url}/suite/runner.html?{api_root}");

    let driver = Chromedriver::start().await;

    let mut caps = DesiredCapabilities::chrome();
    for a in ["--headless=new", "--no-sandbox", "--disable-dev-shm-usage", "--disable-gpu"] {
        caps.add_arg(a).expect("add chrome arg");
    }
    let wd = WebDriver::new(&driver.url(), caps).await.expect("connect to chromedriver");

    let result = run_inner(&wd, &url, timeout_secs).await;
    let _ = wd.quit().await;
    // `driver` (chromedriver child) is killed here on drop.
    result
}

async fn run_inner(wd: &WebDriver, url: &str, timeout_secs: u64) -> (i64, i64, Vec<String>) {
    wd.goto(url).await.expect("navigate to runner.html");

    // Poll window.__mochaDone === true.
    let deadline = std::time::Instant::now() + Duration::from_secs(timeout_secs);
    loop {
        let done = wd
            .execute("return window.__mochaDone === true", vec![])
            .await
            .ok()
            .and_then(|r| r.json().as_bool())
            .unwrap_or(false);
        if done {
            break;
        }
        if std::time::Instant::now() >= deadline {
            return (-1, -1, vec!["timed out waiting for window.__mochaDone".to_string()]);
        }
        tokio::time::sleep(Duration::from_millis(200)).await;
    }

    let passes = wd
        .execute("return window.__mochaPasses", vec![])
        .await
        .ok()
        .and_then(|r| r.json().as_i64())
        .unwrap_or(-1);
    let failures = wd
        .execute("return window.__mochaFailures", vec![])
        .await
        .ok()
        .and_then(|r| r.json().as_i64())
        .unwrap_or(-1);
    let msgs = wd
        .execute("return window.__mochaFailMsgs", vec![])
        .await
        .ok()
        .map(|r| {
            r.json()
                .as_array()
                .map(|a| a.iter().filter_map(|v| v.as_str().map(String::from)).collect())
                .unwrap_or_default()
        })
        .unwrap_or_default();

    (passes, failures, msgs)
}
