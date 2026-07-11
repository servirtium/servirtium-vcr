## Raw FFI surface over the native VCR engine. 1:1 with the
## `aether_vcr_embed_*` C-ABI exported by `core/embed.ae` (shipped as
## `core/native/libservirtium_vcr.so`). The whole record/replay machinery —
## markdown parse/emit, the HTTP server, request matching, redactions, notes,
## drift detection, static bypass, gzip/chunked handling — lives in the
## in-repo pure-Aether `core/vcr.ae` engine; this module only binds it.
##
## Per-listener contract: N independent VCR servers can run concurrently in
## one process, each keyed by its own opaque handle; every config / diagnostic
## / lifecycle call takes the handle. Lifecycle is open -> configure(handle)
## -> start. Returned `cstring` values are caller-owned and NUL-terminated;
## copy them into a Nim `string` via `takeString`, which frees them per the
## ABI's ownership rule.

import std/os
export os  # currentSourcePath/`/`/dirname are only used in one compile-time `when` branch

# Link the shared engine at the absolute path of core/native, resolved at
# compile time. Honor SERVIRTIUM_VCR_LIB (a path to the .so) if set, else fall
# back to core/native next to this source tree. An -rpath is baked in so the
# OS loader finds it at run time without LD_LIBRARY_PATH.
const envLib = staticExec("printf %s \"$SERVIRTIUM_VCR_LIB\"")
# Bundled copy shipped INSIDE the package at <pkg>/native (nim/.package.ae stages
# the .so there). A third-party consumer with no repo `core/` still links and
# self-locates the engine via this dir's baked -rpath. -L/-rpath to a missing
# dir is harmless, so we always pass both the monorepo core/native and the
# bundled native dir.
const bundledDir = currentSourcePath().parentDir().parentDir().parentDir() / "native"
when envLib.len > 0:
  # Strip the trailing /libservirtium_vcr.so to get the directory to -L.
  const libDir = staticExec("dirname \"" & envLib & "\"")
else:
  const libDir = currentSourcePath().parentDir().parentDir().parentDir().parentDir() / "core" / "native"

{.passL: "-L" & libDir & " -L" & bundledDir &
  " -lservirtium_vcr -Wl,-rpath," & libDir & " -Wl,-rpath," & bundledDir.}

## Opaque server handle from the native side. `nil` means failure.
type Handle* = pointer

# --- lifecycle ---
proc open_playback*(label, tape_path, host: cstring, port: cint): Handle
  {.importc: "aether_vcr_embed_open_playback", cdecl.}
proc open_playback_url*(label, tape_url, host: cstring, port: cint): Handle
  {.importc: "aether_vcr_embed_open_playback_url", cdecl.}
proc open_record*(label, tape_path, upstream_base, host: cstring, port: cint): Handle
  {.importc: "aether_vcr_embed_open_record", cdecl.}
proc start*(h: Handle): cint
  {.importc: "aether_vcr_embed_start", cdecl.}
proc stop*(h: Handle)
  {.importc: "aether_vcr_embed_stop", cdecl.}
proc stop_and_flush*(h: Handle, tape_path: cstring): cstring
  {.importc: "aether_vcr_embed_stop_and_flush", cdecl.}
proc stop_and_flush_fail_if_changed*(h: Handle, tape_path: cstring): cstring
  {.importc: "aether_vcr_embed_stop_and_flush_fail_if_changed", cdecl.}
proc stop_and_flush_or_check*(h: Handle, tape_path: cstring): cstring
  {.importc: "aether_vcr_embed_stop_and_flush_or_check", cdecl.}

# --- introspection ---
proc port*(h: Handle): cint
  {.importc: "aether_vcr_embed_port", cdecl.}
proc base_url*(h: Handle, host: cstring): cstring
  {.importc: "aether_vcr_embed_base_url", cdecl.}
proc tape_length*(h: Handle): cint
  {.importc: "aether_vcr_embed_tape_length", cdecl.}
proc reset_cursor*(h: Handle)
  {.importc: "aether_vcr_embed_reset_cursor", cdecl.}

# --- diagnostics ---
proc last_error*(h: Handle): cstring
  {.importc: "aether_vcr_embed_last_error", cdecl.}
proc last_kind*(h: Handle): cint
  {.importc: "aether_vcr_embed_last_kind", cdecl.}
proc last_index*(h: Handle): cint
  {.importc: "aether_vcr_embed_last_index", cdecl.}
proc clear_last_error*(h: Handle)
  {.importc: "aether_vcr_embed_clear_last_error", cdecl.}

# --- mutations / config ---
proc redact*(h: Handle, field: cint, pattern, replacement: cstring): cstring
  {.importc: "aether_vcr_embed_redact", cdecl.}
proc unredact*(h: Handle, field: cint, pattern, replacement: cstring): cstring
  {.importc: "aether_vcr_embed_unredact", cdecl.}
proc remove_header*(h: Handle, field: cint, name: cstring): cstring
  {.importc: "aether_vcr_embed_remove_header", cdecl.}
proc normalize_whole_tape*(h: Handle, pattern, name: cstring): cstring
  {.importc: "aether_vcr_embed_normalize_whole_tape", cdecl.}
proc redact_whole_tape*(h: Handle, pattern, replacement: cstring): cstring
  {.importc: "aether_vcr_embed_redact_whole_tape", cdecl.}
proc strict_ignore_common_headers*(h: Handle): cstring
  {.importc: "aether_vcr_embed_strict_ignore_common_headers", cdecl.}
proc note*(h: Handle, title, body: cstring): cstring
  {.importc: "aether_vcr_embed_note", cdecl.}
proc static_content*(h: Handle, mount_path, fs_dir: cstring): cstring
  {.importc: "aether_vcr_embed_static_content", cdecl.}
proc untaped*(h: Handle, path: cstring): cstring
  {.importc: "aether_vcr_embed_untaped", cdecl.}
proc set_strict_headers*(h: Handle, on: cint)
  {.importc: "aether_vcr_embed_set_strict_headers", cdecl.}
proc indent_code_blocks*(h: Handle)
  {.importc: "aether_vcr_embed_indent_code_blocks", cdecl.}
proc emphasize_http_verbs*(h: Handle)
  {.importc: "aether_vcr_embed_emphasize_http_verbs", cdecl.}
proc clear_redactions*(h: Handle)
  {.importc: "aether_vcr_embed_clear_redactions", cdecl.}
proc clear_unredactions*(h: Handle)
  {.importc: "aether_vcr_embed_clear_unredactions", cdecl.}
proc clear_header_removals*(h: Handle)
  {.importc: "aether_vcr_embed_clear_header_removals", cdecl.}
proc clear_static_content*(h: Handle)
  {.importc: "aether_vcr_embed_clear_static_content", cdecl.}
proc clear_untaped*(h: Handle)
  {.importc: "aether_vcr_embed_clear_untaped", cdecl.}
proc clear_format_options*(h: Handle)
  {.importc: "aether_vcr_embed_clear_format_options", cdecl.}

# --- string ownership bridge ---
proc free_string*(s: cstring)
  {.importc: "aether_vcr_embed_free_string", cdecl.}
