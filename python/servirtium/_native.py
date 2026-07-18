"""Raw ctypes surface over the native VCR library.

1:1 with the ``aether_vcr_embed_*`` C-ABI exported by the in-repo
``core/embed.ae`` (built on the ``core/vcr.ae`` engine). This module owns
library location/loading, prototype declarations, and the string-ownership
helper.

Handle-based contract (matching the engine side): N independent VCR servers
can run concurrently, ONE PER PORT, each keyed by its own handle — so the
lifecycle, introspection, diagnostics, and mutation calls all take that handle
to scope their tape / cursor / state.

Returned ``char*`` values are caller-owned and NUL-terminated; copy them to a
Python ``str`` and free them with ``aether_vcr_embed_free_string`` (see
:func:`take_string`).

Loading is LAZY: the shared library is opened on first native use, not at
import. That lets a caller pin an explicit path FIRST — via the first-class
``native_lib=`` argument on :func:`servirtium.playback` / :func:`servirtium.record`
(which calls :func:`configure` here) — and have it win over discovery. If no
explicit path is set, discovery is the convenience default: the package's own
bundled ``native/`` directory (how an installed wheel finds its shipped ``.so``),
with ``SERVIRTIUM_VCR_LIB`` as an env override for development.
"""

from __future__ import annotations

import ctypes
import ctypes.util
import os
import sys

# Native library base name (no "lib" prefix / extension).
_LIB = "servirtium_vcr"

# An explicit path pinned by the caller (native_lib= / configure()). Wins over
# discovery. Only meaningful before the library is first loaded.
_explicit_path: str | None = None
_lib: ctypes.CDLL | None = None
_loaded = False


def configure(path: str | None) -> None:
    """Pin an explicit path to the native library, to be used at first load.

    This backs the first-class ``native_lib=`` argument. It is a no-op once the
    library has already been loaded (the deterministic thing already happened);
    set it before the first :meth:`start`. ``None`` leaves discovery in charge.
    """
    global _explicit_path
    if path:
        _explicit_path = path


def _file_name() -> str:
    if sys.platform == "win32":
        return f"{_LIB}.dll"
    if sys.platform == "darwin":
        return f"lib{_LIB}.dylib"
    return f"lib{_LIB}.so"


def _candidate_paths():
    """Yield candidate paths, in resolution order.

    1. an explicit path pinned via ``native_lib=`` / :func:`configure`;
    2. ``SERVIRTIUM_VCR_LIB`` (env override — point it at a fresh
       ``ae build --emit=lib`` artifact during development);
    3. the package's bundled ``native/`` directory (a shipped wheel's ``.so``);
    4. the bare file name (let the OS loader / ``find_library`` try).
    """
    if _explicit_path:
        yield _explicit_path

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
        f"./build-native.sh, pass native_lib=<path>, or set SERVIRTIUM_VCR_LIB."
        + (f" (last error: {last_err})" if last_err else "")
    )


def _decl(name, restype, argtypes):
    fn = getattr(_lib, name)
    fn.restype = restype
    fn.argtypes = argtypes
    return fn


# char*-returning functions use c_void_p (NOT c_char_p, which auto-converts to
# bytes and drops the pointer we must free).
_CSTR = ctypes.c_void_p
_HANDLE = ctypes.c_void_p


def _ensure_loaded() -> None:
    """Open the shared library (once) and bind every prototype into this module.

    Idempotent. Triggered lazily by :func:`__getattr__` on first access to any
    native symbol, so an explicit ``native_lib=`` pinned via :func:`configure`
    beforehand takes effect.
    """
    global _lib, _loaded
    if _loaded:
        return
    _lib = _load_library()
    g = globals()

    # ---- lifecycle: open (create + bind, NOT serving) -> start ----
    g["open_playback"] = _decl(
        "aether_vcr_embed_open_playback", _HANDLE,
        [ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_int],
    )
    g["open_playback_url"] = _decl(
        "aether_vcr_embed_open_playback_url", _HANDLE,
        [ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_int],
    )
    g["open_record"] = _decl(
        "aether_vcr_embed_open_record", _HANDLE,
        [ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_char_p, ctypes.c_int],
    )
    g["start"] = _decl("aether_vcr_embed_start", ctypes.c_int, [_HANDLE])
    g["stop"] = _decl("aether_vcr_embed_stop", None, [_HANDLE])
    g["stop_and_flush"] = _decl("aether_vcr_embed_stop_and_flush", _CSTR, [_HANDLE, ctypes.c_char_p])
    g["stop_and_flush_fail_if_changed"] = _decl(
        "aether_vcr_embed_stop_and_flush_fail_if_changed", _CSTR, [_HANDLE, ctypes.c_char_p]
    )
    g["stop_and_flush_or_check"] = _decl(
        "aether_vcr_embed_stop_and_flush_or_check", _CSTR, [_HANDLE, ctypes.c_char_p]
    )

    # ---- introspection (handle-based) ----
    g["port"] = _decl("aether_vcr_embed_port", ctypes.c_int, [_HANDLE])
    g["base_url"] = _decl("aether_vcr_embed_base_url", _CSTR, [_HANDLE, ctypes.c_char_p])
    g["tape_length"] = _decl("aether_vcr_embed_tape_length", ctypes.c_int, [_HANDLE])
    g["reset_cursor"] = _decl("aether_vcr_embed_reset_cursor", None, [_HANDLE])

    # ---- diagnostics (handle-based) ----
    g["last_error"] = _decl("aether_vcr_embed_last_error", _CSTR, [_HANDLE])
    g["last_kind"] = _decl("aether_vcr_embed_last_kind", ctypes.c_int, [_HANDLE])
    g["last_index"] = _decl("aether_vcr_embed_last_index", ctypes.c_int, [_HANDLE])
    g["clear_last_error"] = _decl("aether_vcr_embed_clear_last_error", None, [_HANDLE])

    # ---- mutations / config (handle 1st arg; call BEFORE start) ----
    g["redact"] = _decl("aether_vcr_embed_redact", _CSTR, [_HANDLE, ctypes.c_int, ctypes.c_char_p, ctypes.c_char_p])
    g["normalize_whole_tape"] = _decl(
        "aether_vcr_embed_normalize_whole_tape", _CSTR, [_HANDLE, ctypes.c_char_p, ctypes.c_char_p]
    )
    g["redact_whole_tape"] = _decl(
        "aether_vcr_embed_redact_whole_tape", _CSTR, [_HANDLE, ctypes.c_char_p, ctypes.c_char_p]
    )
    g["unredact"] = _decl("aether_vcr_embed_unredact", _CSTR, [_HANDLE, ctypes.c_int, ctypes.c_char_p, ctypes.c_char_p])
    g["remove_header"] = _decl("aether_vcr_embed_remove_header", _CSTR, [_HANDLE, ctypes.c_int, ctypes.c_char_p])
    g["strict_ignore_common_headers"] = _decl(
        "aether_vcr_embed_strict_ignore_common_headers", _CSTR, [_HANDLE]
    )
    g["note"] = _decl("aether_vcr_embed_note", _CSTR, [_HANDLE, ctypes.c_char_p, ctypes.c_char_p])
    g["static_content"] = _decl("aether_vcr_embed_static_content", _CSTR, [_HANDLE, ctypes.c_char_p, ctypes.c_char_p])
    g["untaped"] = _decl("aether_vcr_embed_untaped", _CSTR, [_HANDLE, ctypes.c_char_p])
    g["set_strict_headers"] = _decl("aether_vcr_embed_set_strict_headers", None, [_HANDLE, ctypes.c_int])
    g["set_match_json_body"] = _decl("aether_vcr_embed_set_match_json_body", None, [_HANDLE, ctypes.c_int])
    g["set_match_multiple"] = _decl("aether_vcr_embed_set_match_multiple", None, [_HANDLE, ctypes.c_int])
    g["match_header"] = _decl("aether_vcr_embed_match_header", None, [_HANDLE, ctypes.c_char_p])
    g["clear_match_headers"] = _decl("aether_vcr_embed_clear_match_headers", None, [_HANDLE])
    g["indent_code_blocks"] = _decl("aether_vcr_embed_indent_code_blocks", None, [_HANDLE])
    g["emphasize_http_verbs"] = _decl("aether_vcr_embed_emphasize_http_verbs", None, [_HANDLE])
    g["clear_redactions"] = _decl("aether_vcr_embed_clear_redactions", None, [_HANDLE])
    g["clear_unredactions"] = _decl("aether_vcr_embed_clear_unredactions", None, [_HANDLE])
    g["clear_header_removals"] = _decl("aether_vcr_embed_clear_header_removals", None, [_HANDLE])
    g["clear_static_content"] = _decl("aether_vcr_embed_clear_static_content", None, [_HANDLE])
    g["clear_untaped"] = _decl("aether_vcr_embed_clear_untaped", None, [_HANDLE])
    g["clear_format_options"] = _decl("aether_vcr_embed_clear_format_options", None, [_HANDLE])

    # ---- string ownership ----
    g["free_string"] = _decl("aether_vcr_embed_free_string", None, [ctypes.c_void_p])

    _loaded = True


def __getattr__(name: str):
    """PEP 562 lazy hook: first access to a native symbol loads the library."""
    if not _loaded and not name.startswith("_"):
        _ensure_loaded()
        if name in globals():
            return globals()[name]
    raise AttributeError(f"module {__name__!r} has no attribute {name!r}")


def take_string(ptr) -> str:
    """Copy a caller-owned native ``char*`` into a Python ``str`` and free it.

    Returns ``""`` for a NULL pointer.
    """
    if not ptr:
        return ""
    _ensure_loaded()  # free_string is bound lazily; a live ptr implies a load already, but be safe
    try:
        return ctypes.string_at(ptr).decode("utf-8")
    finally:
        free_string(ctypes.c_void_p(ptr))


def encode(value: str) -> bytes:
    """Encode a Python str to UTF-8 bytes for a ``c_char_p`` argument."""
    return value.encode("utf-8")
