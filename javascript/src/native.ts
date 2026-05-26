// Centralized koffi binding to the native VCR library.
//
// 1:1 with the `aether_vcr_embed_*` C-ABI exported by
// `std/http/server/vcr/embed.ae` (Aether). The opaque server handle is a
// `void*` pointer; NULL means failure. Every `char*` returned by the ABI is
// caller-owned and NUL-terminated — `takeString` decodes it into a JS string
// and then frees it via `aether_vcr_embed_free_string`, per the ABI's
// ownership rule.
//
// v1 contract (matching the Aether side): ONE active VCR server per process —
// the tape / cursor / mutation state is process-global, so the diagnostics,
// tape-length, and mutation calls take no handle.

import * as fs from 'fs'
import * as path from 'path'
import * as koffi from 'koffi'

const LIB_BASE = 'servirtium_vcr'

/** Platform-specific file name for the native library. */
function fileName(): string {
  switch (process.platform) {
    case 'win32':
      return `${LIB_BASE}.dll`
    case 'darwin':
      return `lib${LIB_BASE}.dylib`
    default:
      return `lib${LIB_BASE}.so`
  }
}

// Resolve the native library across the layouts it can ship in, in order:
//   1. SERVIRTIUM_VCR_LIB (explicit path — point it at a fresh
//      `ae build --emit=lib` artifact during development);
//   2. the `native/` directory next to the package;
//   3. the bare name (let the OS loader try LD_LIBRARY_PATH / system paths).
function resolveLibraryPath(): string {
  const override = process.env.SERVIRTIUM_VCR_LIB
  if (override && fs.existsSync(override)) {
    return override
  }

  // dist/native.js -> ../native ; src/native.ts -> ../native
  const nativeDir = path.resolve(__dirname, '..', 'native', fileName())
  if (fs.existsSync(nativeDir)) {
    return nativeDir
  }

  return fileName()
}

const lib = koffi.load(resolveLibraryPath())

// An opaque, owned C string pointer. We decode it to a JS string then free it.
type CharPtr = unknown

// ---- lifecycle ------------------------------------------------------------

export const startPlayback = lib.func(
  'void* aether_vcr_embed_start_playback(const char* label, const char* tape_path, const char* host, int port)',
)

export const startRecord = lib.func(
  'void* aether_vcr_embed_start_record(const char* label, const char* tape_path, const char* upstream_base, const char* host, int port)',
)

export const stop = lib.func('void aether_vcr_embed_stop(void* server)')

// v1 has no per-handle tape-path store, so the path is passed at flush.
export const stopAndFlush = lib.func(
  'void* aether_vcr_embed_stop_and_flush(void* server, const char* tape_path)',
)

export const stopAndFlushFailIfChanged = lib.func(
  'void* aether_vcr_embed_stop_and_flush_fail_if_changed(void* server, const char* tape_path)',
)

// ---- introspection --------------------------------------------------------

export const port = lib.func('int aether_vcr_embed_port(void* server)')

// base_url builds "http://<host>:<port>"; the server doesn't store the host.
export const baseUrl = lib.func(
  'void* aether_vcr_embed_base_url(void* server, const char* host)',
)

export const tapeLength = lib.func('int aether_vcr_embed_tape_length()')

export const resetCursor = lib.func('void aether_vcr_embed_reset_cursor()')

// ---- diagnostics (process-global, no handle) ------------------------------

export const lastError = lib.func('void* aether_vcr_embed_last_error()')

export const lastKind = lib.func('int aether_vcr_embed_last_kind()')

export const lastIndex = lib.func('int aether_vcr_embed_last_index()')

export const clearLastError = lib.func('void aether_vcr_embed_clear_last_error()')

// ---- mutations / config (call BEFORE start; return "" or an error) --------

export const redact = lib.func(
  'void* aether_vcr_embed_redact(int field, const char* pattern, const char* replacement)',
)

export const unredact = lib.func(
  'void* aether_vcr_embed_unredact(int field, const char* pattern, const char* replacement)',
)

export const removeHeader = lib.func(
  'void* aether_vcr_embed_remove_header(int field, const char* name)',
)

export const note = lib.func(
  'void* aether_vcr_embed_note(const char* title, const char* body)',
)

export const staticContent = lib.func(
  'void* aether_vcr_embed_static_content(const char* mount_path, const char* fs_dir)',
)

export const setStrictHeaders = lib.func(
  'void aether_vcr_embed_set_strict_headers(int on)',
)

export const indentCodeBlocks = lib.func('void aether_vcr_embed_indent_code_blocks()')

export const emphasizeHttpVerbs = lib.func(
  'void aether_vcr_embed_emphasize_http_verbs()',
)

export const clearRedactions = lib.func('void aether_vcr_embed_clear_redactions()')

export const clearUnredactions = lib.func('void aether_vcr_embed_clear_unredactions()')

export const clearHeaderRemovals = lib.func(
  'void aether_vcr_embed_clear_header_removals()',
)

export const clearStaticContent = lib.func(
  'void aether_vcr_embed_clear_static_content()',
)

export const clearFormatOptions = lib.func('void aether_vcr_embed_clear_format_options()')

// ---- string ownership -----------------------------------------------------

const freeString = lib.func('void aether_vcr_embed_free_string(void* s)')

/**
 * Decode a caller-owned native `char*` into a JS string and free it via
 * `aether_vcr_embed_free_string`, per the ABI's ownership rule. Returns the
 * empty string for a NULL pointer.
 *
 * NOTE: we declare the return type of the producing functions as `void*` (a
 * pointer) — NOT koffi's `str` (which copies and you cannot then free, a leak).
 * We `koffi.decode` the pointer into a string, then free the original pointer.
 */
export function takeString(ptr: CharPtr): string {
  if (!ptr || koffi.address(ptr as koffi.IKoffiCType) === 0n) {
    return ''
  }
  try {
    return koffi.decode(ptr, 'char', -1) as string
  } finally {
    freeString(ptr)
  }
}

/** True when a handle pointer is NULL (start failed). */
export function isNull(ptr: CharPtr): boolean {
  return !ptr || koffi.address(ptr as koffi.IKoffiCType) === 0n
}
