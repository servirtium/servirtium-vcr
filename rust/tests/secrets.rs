use servirtium::Vcr;
use std::{process::Command, sync::{Arc, atomic::{AtomicUsize, Ordering}}};
fn run(args: &[&str]) -> String {
    let fixture = format!("{}/../core_tests/secret_fixture.py", env!("CARGO_MANIFEST_DIR"));
    let output = Command::new("python3").arg(fixture).args(args).output().unwrap();
    assert!(output.status.success(), "{}{}", String::from_utf8_lossy(&output.stdout), String::from_utf8_lossy(&output.stderr));
    String::from_utf8(output.stdout).unwrap().trim().into()
}
#[test]
fn named_secrets_round_trip_on_calling_thread() {
    let dir = std::env::temp_dir().join(format!("vcr-secrets-rust-{}", std::process::id()));
    std::fs::create_dir_all(&dir).unwrap();
    let tape = dir.join("tape.md").to_string_lossy().into_owned();
    let upstream = run(&["start", dir.to_str().unwrap()]);
    let count = Arc::new(AtomicUsize::new(0)); let seen = count.clone();
    let thread = std::thread::current().id();
    let rec = Vcr::record(&tape, &upstream).secret_redactor(move |key, request| {
        assert_eq!(thread, std::thread::current().id());
        if key != "password" { return None; }
        seen.fetch_add(1, Ordering::SeqCst);
        Some(request.path.split('/').nth(1).unwrap().to_uppercase()+"_PASSWORD")
    }).start().unwrap();
    run(&["drive", &rec.base_url()]); assert_eq!(0, count.load(Ordering::SeqCst));
    rec.finish().unwrap(); assert_eq!(20, count.load(Ordering::SeqCst)); run(&["check", &tape]);
    assert!(Vcr::playback(&tape).start().is_err());
    let replay = Vcr::playback(&tape).secret_resolver(move |token| {
        assert_eq!(thread, std::thread::current().id());
        Some(format!("pw-{}&secret", token.trim_end_matches("_PASSWORD").to_lowercase()))
    }).start().unwrap();
    run(&["drive", &replay.base_url()]); replay.assert_no_mismatches().unwrap();
    replay.finish().unwrap(); run(&["check", &tape]);
    std::fs::remove_dir_all(&dir).unwrap();
}
