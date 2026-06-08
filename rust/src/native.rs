//! Raw FFI surface over the native VCR library, loaded at runtime via
//! `libloading`. 1:1 with the `aether_vcr_embed_*` C-ABI exported by
//! `std/http/server/vcr/embed.ae`.
//!
//! Per-listener contract (matching the Aether side): N independent VCR
//! servers can run concurrently in one process, each keyed by its own
//! handle; every config / diagnostic / lifecycle call takes the handle.
//! Lifecycle is open -> configure(handle) -> start. Returned `char*` values
//! are caller-owned and NUL-terminated; copy them into a Rust `String` via
//! [`take_string`] which frees them per the ABI.

use std::ffi::{c_char, c_int, c_void, CStr, CString};
use std::path::PathBuf;
use std::sync::OnceLock;

use libloading::{Library, Symbol};

/// Opaque server handle from the native side. `NULL` means failure.
pub(crate) type Handle = *mut c_void;

/// Function-pointer table resolved once from the loaded library. Holding
/// the `Library` alive for the process lifetime keeps these valid.
pub(crate) struct Native {
    _lib: Library,

    pub open_playback:
        unsafe extern "C" fn(*const c_char, *const c_char, *const c_char, c_int) -> Handle,
    pub open_playback_url:
        unsafe extern "C" fn(*const c_char, *const c_char, *const c_char, c_int) -> Handle,
    pub open_record: unsafe extern "C" fn(
        *const c_char,
        *const c_char,
        *const c_char,
        *const c_char,
        c_int,
    ) -> Handle,
    pub start: unsafe extern "C" fn(Handle) -> c_int,
    pub stop: unsafe extern "C" fn(Handle),
    pub stop_and_flush: unsafe extern "C" fn(Handle, *const c_char) -> *mut c_char,
    pub stop_and_flush_fail_if_changed:
        unsafe extern "C" fn(Handle, *const c_char) -> *mut c_char,
    pub stop_and_flush_or_check:
        unsafe extern "C" fn(Handle, *const c_char) -> *mut c_char,

    pub port: unsafe extern "C" fn(Handle) -> c_int,
    pub base_url: unsafe extern "C" fn(Handle, *const c_char) -> *mut c_char,
    pub tape_length: unsafe extern "C" fn(Handle) -> c_int,
    pub reset_cursor: unsafe extern "C" fn(Handle),

    pub last_error: unsafe extern "C" fn(Handle) -> *mut c_char,
    pub last_kind: unsafe extern "C" fn(Handle) -> c_int,
    pub last_index: unsafe extern "C" fn(Handle) -> c_int,
    pub clear_last_error: unsafe extern "C" fn(Handle),

    pub redact: unsafe extern "C" fn(Handle, c_int, *const c_char, *const c_char) -> *mut c_char,
    pub normalize_whole_tape:
        unsafe extern "C" fn(Handle, *const c_char, *const c_char) -> *mut c_char,
    pub redact_whole_tape:
        unsafe extern "C" fn(Handle, *const c_char, *const c_char) -> *mut c_char,
    pub unredact: unsafe extern "C" fn(Handle, c_int, *const c_char, *const c_char) -> *mut c_char,
    pub remove_header: unsafe extern "C" fn(Handle, c_int, *const c_char) -> *mut c_char,
    pub strict_ignore_common_headers: unsafe extern "C" fn(Handle) -> *mut c_char,
    pub note: unsafe extern "C" fn(Handle, *const c_char, *const c_char) -> *mut c_char,
    pub static_content: unsafe extern "C" fn(Handle, *const c_char, *const c_char) -> *mut c_char,
    pub untaped: unsafe extern "C" fn(Handle, *const c_char) -> *mut c_char,
    pub set_strict_headers: unsafe extern "C" fn(Handle, c_int),
    pub indent_code_blocks: unsafe extern "C" fn(Handle),
    pub emphasize_http_verbs: unsafe extern "C" fn(Handle),
    pub clear_redactions: unsafe extern "C" fn(Handle),
    pub clear_unredactions: unsafe extern "C" fn(Handle),
    pub clear_header_removals: unsafe extern "C" fn(Handle),
    pub clear_static_content: unsafe extern "C" fn(Handle),
    pub clear_untaped: unsafe extern "C" fn(Handle),
    pub clear_format_options: unsafe extern "C" fn(Handle),

    pub free_string: unsafe extern "C" fn(*mut c_char),
}

// The native VCR state is process-global and the wrapper serializes all
// access through a single Mutex (see lib.rs), so sharing the table across
// threads is sound.
unsafe impl Send for Native {}
unsafe impl Sync for Native {}

static NATIVE: OnceLock<Result<Native, String>> = OnceLock::new();

/// Resolve (loading on first use) the native function table, or an error
/// describing why the library could not be loaded.
pub(crate) fn native() -> Result<&'static Native, String> {
    match NATIVE.get_or_init(load) {
        Ok(n) => Ok(n),
        Err(e) => Err(e.clone()),
    }
}

/// Candidate paths for the native library, in priority order.
fn candidate_paths() -> Vec<PathBuf> {
    let mut out = Vec::new();
    if let Ok(p) = std::env::var("SERVIRTIUM_VCR_LIB") {
        if !p.is_empty() {
            out.push(PathBuf::from(p));
        }
    }
    let file = lib_file_name();
    // native/ next to the crate manifest (dev layout)...
    out.push(PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("native").join(&file));
    // ...and the bare name, so the OS loader can resolve it.
    out.push(PathBuf::from(&file));
    out
}

fn lib_file_name() -> String {
    if cfg!(target_os = "windows") {
        "servirtium_vcr.dll".to_string()
    } else if cfg!(target_os = "macos") {
        "libservirtium_vcr.dylib".to_string()
    } else {
        "libservirtium_vcr.so".to_string()
    }
}

// Each `sym!` transmute's target type is fixed by the `Native` field it
// initializes, so the (otherwise wise) "annotate your transmutes" lint is
// just noise here.
#[allow(clippy::missing_transmute_annotations)]
fn load() -> Result<Native, String> {
    let candidates = candidate_paths();
    let mut last_err = String::new();
    let lib = candidates
        .iter()
        .find_map(|p| match unsafe { Library::new(p) } {
            Ok(lib) => Some(lib),
            Err(e) => {
                last_err = format!("{}: {}", p.display(), e);
                None
            }
        })
        .ok_or_else(|| {
            format!(
                "could not load the native VCR library (tried: {}). Last error: {}. \
                 Run ./build-native.sh or set SERVIRTIUM_VCR_LIB.",
                candidates
                    .iter()
                    .map(|p| p.display().to_string())
                    .collect::<Vec<_>>()
                    .join(", "),
                last_err
            )
        })?;

    // Resolve every symbol up front so a missing export fails loudly here
    // rather than at the first dispatch. We fetch each as a raw `*mut c_void`
    // and transmute it to the field's `extern "C" fn` type — the table's
    // field types are the single source of truth for the signatures.
    macro_rules! sym {
        ($name:literal) => {{
            let s: Symbol<*mut c_void> = unsafe { lib.get($name) }
                .map_err(|e| format!("missing symbol {}: {}", String::from_utf8_lossy($name), e))?;
            let raw: *mut c_void = *s;
            unsafe { std::mem::transmute(raw) }
        }};
    }

    Ok(Native {
        open_playback: sym!(b"aether_vcr_embed_open_playback\0"),
        open_playback_url: sym!(b"aether_vcr_embed_open_playback_url\0"),
        open_record: sym!(b"aether_vcr_embed_open_record\0"),
        start: sym!(b"aether_vcr_embed_start\0"),
        stop: sym!(b"aether_vcr_embed_stop\0"),
        stop_and_flush: sym!(b"aether_vcr_embed_stop_and_flush\0"),
        stop_and_flush_fail_if_changed: sym!(b"aether_vcr_embed_stop_and_flush_fail_if_changed\0"),
        stop_and_flush_or_check: sym!(b"aether_vcr_embed_stop_and_flush_or_check\0"),
        port: sym!(b"aether_vcr_embed_port\0"),
        base_url: sym!(b"aether_vcr_embed_base_url\0"),
        tape_length: sym!(b"aether_vcr_embed_tape_length\0"),
        reset_cursor: sym!(b"aether_vcr_embed_reset_cursor\0"),
        last_error: sym!(b"aether_vcr_embed_last_error\0"),
        last_kind: sym!(b"aether_vcr_embed_last_kind\0"),
        last_index: sym!(b"aether_vcr_embed_last_index\0"),
        clear_last_error: sym!(b"aether_vcr_embed_clear_last_error\0"),
        redact: sym!(b"aether_vcr_embed_redact\0"),
        normalize_whole_tape: sym!(b"aether_vcr_embed_normalize_whole_tape\0"),
        redact_whole_tape: sym!(b"aether_vcr_embed_redact_whole_tape\0"),
        unredact: sym!(b"aether_vcr_embed_unredact\0"),
        remove_header: sym!(b"aether_vcr_embed_remove_header\0"),
        strict_ignore_common_headers: sym!(b"aether_vcr_embed_strict_ignore_common_headers\0"),
        note: sym!(b"aether_vcr_embed_note\0"),
        static_content: sym!(b"aether_vcr_embed_static_content\0"),
        untaped: sym!(b"aether_vcr_embed_untaped\0"),
        set_strict_headers: sym!(b"aether_vcr_embed_set_strict_headers\0"),
        indent_code_blocks: sym!(b"aether_vcr_embed_indent_code_blocks\0"),
        emphasize_http_verbs: sym!(b"aether_vcr_embed_emphasize_http_verbs\0"),
        clear_redactions: sym!(b"aether_vcr_embed_clear_redactions\0"),
        clear_unredactions: sym!(b"aether_vcr_embed_clear_unredactions\0"),
        clear_header_removals: sym!(b"aether_vcr_embed_clear_header_removals\0"),
        clear_static_content: sym!(b"aether_vcr_embed_clear_static_content\0"),
        clear_untaped: sym!(b"aether_vcr_embed_clear_untaped\0"),
        clear_format_options: sym!(b"aether_vcr_embed_clear_format_options\0"),
        free_string: sym!(b"aether_vcr_embed_free_string\0"),
        _lib: lib,
    })
}

/// Marshal a caller-owned native `char*` into an owned `String` and free it
/// via `aether_vcr_embed_free_string`, per the ABI's ownership rule. Returns
/// an empty string for a NULL pointer or invalid UTF-8.
pub(crate) fn take_string(n: &Native, ptr: *mut c_char) -> String {
    if ptr.is_null() {
        return String::new();
    }
    let owned = unsafe { CStr::from_ptr(ptr) }
        .to_str()
        .map(|s| s.to_owned())
        .unwrap_or_default();
    unsafe { (n.free_string)(ptr) };
    owned
}

/// Build a `CString`, returning a wrapper error on an interior NUL.
pub(crate) fn cstr(s: &str) -> Result<CString, crate::VcrError> {
    CString::new(s).map_err(|_| crate::VcrError::new(format!("string contains a NUL byte: {s:?}")))
}
