"""Raw ctypes surface over the native VCR library.

1:1 with the ``aether_vcr_embed_*`` C-ABI exported by
``std/http/server/vcr/embed.ae`` (Aether). This module owns library
location/loading, prototype declarations, and the string-ownership helper.

v1 contract (matching the Aether side): ONE active VCR server per process —
the tape / cursor / mutation state is process-global, so the diagnostics,
tape-length, and mutation calls take no handle.

Returned ``char*`` values are caller-owned and NUL-terminated; copy them to a
Python ``str`` and free them with ``aether_vcr_embed_free_string`` (see
:func:`take_string`).
"""

from __future__ import annotations

import ctypes
import ctypes.util
import os
import sys

# Native library base name (no "lib" prefix / extension).
_LIB = "servirtium_vcr"


def _file_name() -> str:
    if sys.platform == "win32":
        return f"{_LIB}.dll"
    if sys.platform == "darwin":
        return f"lib{_LIB}.dylib"
    return f"lib{_LIB}.so"


def _candidate_paths():
    """Yield candidate paths, in resolution order.

    1. ``SERVIRTIUM_VCR_LIB`` (explicit path — point it at a fresh
       ``ae build --emit=lib`` artifact during development);
    2. the package's bundled ``native/`` directory;
    3. the bare file name (let the OS loader / ``find_library`` try).
    """
    override = os.environ.get("SERVIRTIUM_VCR_LIB")
    if override:
        yield override

    here = os.path.dirname(os.path.abspath(__file__))
    yield os.path.join(here, "native", _file_name())


def _load_library() -> ctypes.CDLL:
    last_err: OSError | None = None
    for candidate in _candidate_paths():
        if candidate and os.path.isfile(candidate):
            try:
                return ctypes.CDLL(candidate)
            except OSError as exc:  # pragma: no cover - platform specific
                last_err = exc

    # Fall back to the OS loader: bare name, then find_library.
    for name in (_file_name(), ctypes.util.find_library(_LIB)):
        if not name:
            continue
        try:
            return ctypes.CDLL(name)
        except OSError as exc:  # pragma: no cover - platform specific
            last_err = exc

    raise OSError(
        f"could not load native VCR library '{_file_name()}'. Build it with "
        f"./build-native.sh or set SERVIRTIUM_VCR_LIB to its path."
        + (f" (last error: {last_err})" if last_err else "")
    )


_lib = _load_library()


def _decl(name, restype, argtypes):
    fn = getattr(_lib, name)
    fn.restype = restype
    fn.argtypes = argtypes
    return fn


# char*-returning functions use c_void_p (NOT c_char_p, which auto-converts to
# bytes and drops the pointer we must free).
_CSTR = ctypes.c_void_p
_HANDLE = ctypes.c_void_p

# ---- lifecycle ------------------------------------------------------------
start_playback = _decl(
    "aether_vcr_embed_start_playback",
    _HANDLE,
    [ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_int],
)
start_record = _decl(
    "aether_vcr_embed_start_record",
    _HANDLE,
    [ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_int],
)
stop = _decl("aether_vcr_embed_stop", None, [_HANDLE])
stop_and_flush = _decl("aether_vcr_embed_stop_and_flush", _CSTR, [_HANDLE, ctypes.c_char_p])
stop_and_flush_fail_if_changed = _decl(
    "aether_vcr_embed_stop_and_flush_fail_if_changed", _CSTR, [_HANDLE, ctypes.c_char_p]
)

# ---- introspection --------------------------------------------------------
port = _decl("aether_vcr_embed_port", ctypes.c_int, [_HANDLE])
base_url = _decl("aether_vcr_embed_base_url", _CSTR, [_HANDLE, ctypes.c_char_p])
tape_length = _decl("aether_vcr_embed_tape_length", ctypes.c_int, [])
reset_cursor = _decl("aether_vcr_embed_reset_cursor", None, [])

# ---- diagnostics (process-global, no handle) ------------------------------
last_error = _decl("aether_vcr_embed_last_error", _CSTR, [])
last_kind = _decl("aether_vcr_embed_last_kind", ctypes.c_int, [])
last_index = _decl("aether_vcr_embed_last_index", ctypes.c_int, [])
clear_last_error = _decl("aether_vcr_embed_clear_last_error", None, [])

# ---- mutations / config (call BEFORE start; return "" or an error) --------
redact = _decl("aether_vcr_embed_redact", _CSTR, [ctypes.c_int, ctypes.c_char_p, ctypes.c_char_p])
unredact = _decl("aether_vcr_embed_unredact", _CSTR, [ctypes.c_int, ctypes.c_char_p, ctypes.c_char_p])
remove_header = _decl("aether_vcr_embed_remove_header", _CSTR, [ctypes.c_int, ctypes.c_char_p])
note = _decl("aether_vcr_embed_note", _CSTR, [ctypes.c_char_p, ctypes.c_char_p])
static_content = _decl("aether_vcr_embed_static_content", _CSTR, [ctypes.c_char_p, ctypes.c_char_p])
set_strict_headers = _decl("aether_vcr_embed_set_strict_headers", None, [ctypes.c_int])
indent_code_blocks = _decl("aether_vcr_embed_indent_code_blocks", None, [])
emphasize_http_verbs = _decl("aether_vcr_embed_emphasize_http_verbs", None, [])
clear_redactions = _decl("aether_vcr_embed_clear_redactions", None, [])
clear_unredactions = _decl("aether_vcr_embed_clear_unredactions", None, [])
clear_header_removals = _decl("aether_vcr_embed_clear_header_removals", None, [])
clear_static_content = _decl("aether_vcr_embed_clear_static_content", None, [])
clear_format_options = _decl("aether_vcr_embed_clear_format_options", None, [])

# ---- string ownership -----------------------------------------------------
free_string = _decl("aether_vcr_embed_free_string", None, [ctypes.c_void_p])


def take_string(ptr) -> str:
    """Copy a caller-owned native ``char*`` into a Python ``str`` and free it.

    Returns ``""`` for a NULL pointer.
    """
    if not ptr:
        return ""
    try:
        return ctypes.string_at(ptr).decode("utf-8")
    finally:
        free_string(ctypes.c_void_p(ptr))


def encode(value: str) -> bytes:
    """Encode a Python str to UTF-8 bytes for a ``c_char_p`` argument."""
    return value.encode("utf-8")
