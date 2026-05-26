//! Shared test helpers: a throwaway HTTP upstream for record-mode tests and
//! tape-path resolution.

use std::collections::HashMap;
use std::io::{Read, Write};
use std::net::{TcpListener, TcpStream};
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::{Arc, Mutex};
use std::thread::JoinHandle;

/// Absolute path to a tape under `tests/tapes/`.
pub fn tape_path(name: &str) -> String {
    format!("{}/tests/tapes/{}", env!("CARGO_MANIFEST_DIR"), name)
}

/// A unique temp tape path that is removed on drop.
pub struct TempTape(pub String);

impl TempTape {
    pub fn new() -> TempTape {
        let nanos = std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)
            .unwrap()
            .as_nanos();
        let p = std::env::temp_dir().join(format!("vcr_rust_{nanos}_{:p}.md", &nanos as *const _));
        TempTape(p.to_string_lossy().into_owned())
    }
    pub fn read(&self) -> String {
        std::fs::read_to_string(&self.0).unwrap_or_default()
    }
}

impl Drop for TempTape {
    fn drop(&mut self) {
        let _ = std::fs::remove_file(&self.0);
    }
}

/// State a test can tweak/observe on the fake upstream.
#[derive(Clone)]
pub struct UpstreamState {
    pub response_body: String,
    pub content_type: String,
    pub extra_headers: HashMap<String, String>,
    pub last_method: Option<String>,
    pub last_body: Option<String>,
}

impl Default for UpstreamState {
    fn default() -> Self {
        UpstreamState {
            response_body: "upstream-body".to_string(),
            content_type: "text/plain".to_string(),
            extra_headers: HashMap::new(),
            last_method: None,
            last_body: None,
        }
    }
}

/// A throwaway HTTP/1.1 upstream on an OS-assigned port. Always sends a
/// `Content-Length` (no chunking) and closes the connection per request, so
/// the Aether record client sees a clean, framed response.
pub struct FakeUpstream {
    pub base_url: String,
    pub state: Arc<Mutex<UpstreamState>>,
    stop: Arc<AtomicBool>,
    handle: Option<JoinHandle<()>>,
}

impl FakeUpstream {
    pub fn new() -> FakeUpstream {
        let listener = TcpListener::bind("127.0.0.1:0").unwrap();
        let port = listener.local_addr().unwrap().port();
        let base_url = format!("http://127.0.0.1:{port}");
        let state = Arc::new(Mutex::new(UpstreamState::default()));
        let stop = Arc::new(AtomicBool::new(false));

        let st = state.clone();
        let sp = stop.clone();
        listener.set_nonblocking(false).unwrap();
        let handle = std::thread::spawn(move || {
            // A short accept timeout lets the loop notice `stop`.
            listener
                .set_nonblocking(true)
                .expect("nonblocking listener");
            loop {
                if sp.load(Ordering::SeqCst) {
                    return;
                }
                match listener.accept() {
                    Ok((stream, _)) => handle_conn(stream, &st),
                    Err(ref e) if e.kind() == std::io::ErrorKind::WouldBlock => {
                        std::thread::sleep(std::time::Duration::from_millis(5));
                    }
                    Err(_) => return,
                }
            }
        });

        FakeUpstream {
            base_url,
            state,
            stop,
            handle: Some(handle),
        }
    }

    pub fn set_body(&self, body: &str) {
        self.state.lock().unwrap().response_body = body.to_string();
    }

    pub fn set_header(&self, name: &str, value: &str) {
        self.state
            .lock()
            .unwrap()
            .extra_headers
            .insert(name.to_string(), value.to_string());
    }

    pub fn last_method(&self) -> Option<String> {
        self.state.lock().unwrap().last_method.clone()
    }
}

impl Drop for FakeUpstream {
    fn drop(&mut self) {
        self.stop.store(true, Ordering::SeqCst);
        if let Some(h) = self.handle.take() {
            let _ = h.join();
        }
    }
}

fn handle_conn(mut stream: TcpStream, state: &Arc<Mutex<UpstreamState>>) {
    stream
        .set_read_timeout(Some(std::time::Duration::from_secs(2)))
        .ok();

    // Read until end of headers, then any declared body.
    let mut buf = Vec::new();
    let mut tmp = [0u8; 4096];
    let header_end;
    loop {
        match stream.read(&mut tmp) {
            Ok(0) => return,
            Ok(n) => {
                buf.extend_from_slice(&tmp[..n]);
                if let Some(pos) = find_subseq(&buf, b"\r\n\r\n") {
                    header_end = pos + 4;
                    break;
                }
            }
            Err(_) => return,
        }
    }

    let head = String::from_utf8_lossy(&buf[..header_end]).to_string();
    let method = head
        .lines()
        .next()
        .and_then(|l| l.split_whitespace().next())
        .unwrap_or("")
        .to_string();
    let content_length = head
        .lines()
        .find_map(|l| {
            let l = l.to_ascii_lowercase();
            l.strip_prefix("content-length:")
                .map(|v| v.trim().parse::<usize>().unwrap_or(0))
        })
        .unwrap_or(0);

    // Read the rest of the body if needed.
    let mut body = buf[header_end..].to_vec();
    while body.len() < content_length {
        match stream.read(&mut tmp) {
            Ok(0) => break,
            Ok(n) => body.extend_from_slice(&tmp[..n]),
            Err(_) => break,
        }
    }

    let (response_body, content_type, extra) = {
        let mut s = state.lock().unwrap();
        s.last_method = Some(method);
        s.last_body = Some(String::from_utf8_lossy(&body).into_owned());
        (s.response_body.clone(), s.content_type.clone(), s.extra_headers.clone())
    };

    let mut resp = format!(
        "HTTP/1.1 200 OK\r\nContent-Type: {}\r\nContent-Length: {}\r\nConnection: close\r\n",
        content_type,
        response_body.len()
    );
    for (k, v) in &extra {
        resp.push_str(&format!("{k}: {v}\r\n"));
    }
    resp.push_str("\r\n");
    resp.push_str(&response_body);

    let _ = stream.write_all(resp.as_bytes());
    let _ = stream.flush();
}

fn find_subseq(haystack: &[u8], needle: &[u8]) -> Option<usize> {
    haystack
        .windows(needle.len())
        .position(|w| w == needle)
}

/// Send a GET with a *precise* header set (only what's listed plus the
/// mandatory Host) and return the response body. Used by strict-matching
/// tests where an HTTP client's incidental headers (Accept, User-Agent,
/// Accept-Encoding, …) would otherwise be flagged as "unexpected".
pub fn raw_get(base_url: &str, path: &str, headers: &[(&str, &str)]) -> String {
    let addr = base_url.trim_start_matches("http://");
    let host = addr.to_string();
    let mut stream = TcpStream::connect(addr).expect("connect to vcr");
    stream
        .set_read_timeout(Some(std::time::Duration::from_secs(3)))
        .ok();

    let mut req = format!("GET {path} HTTP/1.1\r\nHost: {host}\r\n");
    for (k, v) in headers {
        req.push_str(&format!("{k}: {v}\r\n"));
    }
    req.push_str("Connection: close\r\n\r\n");
    stream.write_all(req.as_bytes()).unwrap();
    stream.flush().unwrap();

    let mut raw = Vec::new();
    stream.read_to_end(&mut raw).ok();
    let split = find_subseq(&raw, b"\r\n\r\n").map(|p| p + 4).unwrap_or(raw.len());
    String::from_utf8_lossy(&raw[split..]).into_owned()
}
