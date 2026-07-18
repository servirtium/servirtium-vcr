// Centralized koffi binding to the native VCR library.
//
// 1:1 with the `aether_vcr_embed_*` C-ABI exported by the in-repo
// `core/embed.ae` (the engine itself is `core/vcr.ae`). The opaque server
// handle is a `void*` pointer; NULL means failure. Every `char*` returned by
// the ABI is caller-owned and NUL-terminated — `takeString` decodes it into a
// JS string and then frees it via `aether_vcr_embed_free_string`, per the
// ABI's ownership rule.
//
// Per-listener contract (matching the Aether side): N independent VCR servers
// can run concurrently, one server per port, each keyed by its own handle;
// every config / diagnostic / lifecycle call takes the handle. Lifecycle is
// open -> configure(handle) -> start.

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
let explicitPath: string | null = null
let loadedLib: ReturnType<typeof koffi.load> | null = null

/**
 * Pin an explicit path to the native library, used at first load. Backs the
 * first-class `.nativeLib(path)` builder argument: it wins over the bundled
 * `native/` default and the `SERVIRTIUM_VCR_LIB` env override. No-op once the
 * library has already been loaded (set it before the first `.start()`).
 */
export function configure(nativeLib: string | null | undefined): void {
  if (nativeLib && !loadedLib) explicitPath = nativeLib
}

function resolveLibraryPath(): string {
  // 1. explicit path pinned via `.nativeLib()` / configure()
  if (explicitPath && fs.existsSync(explicitPath)) {
    return explicitPath
  }
  // 2. SERVIRTIUM_VCR_LIB env override (development)
  const override = process.env.SERVIRTIUM_VCR_LIB
  if (override && fs.existsSync(override)) {
    return override
  }
  // 3. the package's bundled native/ dir (a shipped npm tarball's .so)
  //    dist/native.js -> ../native ; src/native.ts -> ../native
  const nativeDir = path.resolve(__dirname, '..', 'native', fileName())
  if (fs.existsSync(nativeDir)) {
    return nativeDir
  }
  // 4. bare name (OS loader: LD_LIBRARY_PATH / system paths)
  return fileName()
}

/**
 * The koffi library handle, opened lazily on first native use so an explicit
 * `.nativeLib()` (via configure()) can win over discovery.
 */
function lib(): ReturnType<typeof koffi.load> {
  if (!loadedLib) loadedLib = koffi.load(resolveLibraryPath())
  return loadedLib
}

/**
 * Lazily bind a native function: koffi.load is deferred to the first call, so
 * a pinned explicit path takes effect. Mirrors `lazy(sig)` 1:1.
 */
function lazy(signature: string): (...args: any[]) => any {
  let f: ((...a: any[]) => any) | null = null
  return (...args: any[]) => {
    if (!f) f = lib().func(signature) as (...a: any[]) => any
    return f(...args)
  }
}

// An opaque, owned C string pointer. We decode it to a JS string then free it.
type CharPtr = unknown

// ---- lifecycle ------------------------------------------------------------

export const openPlayback = lazy(
  'void* aether_vcr_embed_open_playback(const char* label, const char* tape_path, const char* host, int port)',
)

export const openPlaybackUrl = lazy(
  'void* aether_vcr_embed_open_playback_url(const char* label, const char* tape_url, const char* host, int port)',
)

export const openRecord = lazy(
  'void* aether_vcr_embed_open_record(const char* label, const char* tape_path, const char* upstream_base, const char* host, int port)',
)

export const start = lazy('int aether_vcr_embed_start(void* server)')

export const stop = lazy('void aether_vcr_embed_stop(void* server)')

export const stopAndFlush = lazy(
  'void* aether_vcr_embed_stop_and_flush(void* server, const char* tape_path)',
)

export const stopAndFlushFailIfChanged = lazy(
  'void* aether_vcr_embed_stop_and_flush_fail_if_changed(void* server, const char* tape_path)',
)

export const stopAndFlushOrCheck = lazy(
  'void* aether_vcr_embed_stop_and_flush_or_check(void* server, const char* tape_path)',
)

// ---- introspection --------------------------------------------------------

export const port = lazy('int aether_vcr_embed_port(void* server)')

// base_url builds "http://<host>:<port>"; the server doesn't store the host.
export const baseUrl = lazy(
  'void* aether_vcr_embed_base_url(void* server, const char* host)',
)

export const tapeLength = lazy('int aether_vcr_embed_tape_length(void* server)')

export const resetCursor = lazy('void aether_vcr_embed_reset_cursor(void* server)')

// ---- diagnostics (handle-based) -------------------------------------------

export const lastError = lazy('void* aether_vcr_embed_last_error(void* server)')

export const lastKind = lazy('int aether_vcr_embed_last_kind(void* server)')

export const lastIndex = lazy('int aether_vcr_embed_last_index(void* server)')

export const clearLastError = lazy('void aether_vcr_embed_clear_last_error(void* server)')

// ---- mutations / config (call BEFORE start; return "" or an error) --------

export const redact = lazy(
  'void* aether_vcr_embed_redact(void* server, int field, const char* pattern, const char* replacement)',
)

export const normalizeWholeTape = lazy(
  'void* aether_vcr_embed_normalize_whole_tape(void* server, const char* pattern, const char* name)',
)

export const redactWholeTape = lazy(
  'void* aether_vcr_embed_redact_whole_tape(void* server, const char* pattern, const char* replacement)',
)

export const unredact = lazy(
  'void* aether_vcr_embed_unredact(void* server, int field, const char* pattern, const char* replacement)',
)

export const removeHeader = lazy(
  'void* aether_vcr_embed_remove_header(void* server, int field, const char* name)',
)

export const matchHeader = lazy(
  'void aether_vcr_embed_match_header(void* server, const char* name)',
)

export const strictIgnoreCommonHeaders = lazy(
  'void* aether_vcr_embed_strict_ignore_common_headers(void* server)',
)

export const note = lazy(
  'void* aether_vcr_embed_note(void* server, const char* title, const char* body)',
)

export const staticContent = lazy(
  'void* aether_vcr_embed_static_content(void* server, const char* mount_path, const char* fs_dir)',
)

export const untaped = lazy(
  'void* aether_vcr_embed_untaped(void* server, const char* path)',
)

export const setStrictHeaders = lazy(
  'void aether_vcr_embed_set_strict_headers(void* server, int on)',
)

export const setMatchJsonBody = lazy(
  'void aether_vcr_embed_set_match_json_body(void* server, int on)',
)

export const setMatchMultiple = lazy(
  'void aether_vcr_embed_set_match_multiple(void* server, int on)',
)

export const indentCodeBlocks = lazy('void aether_vcr_embed_indent_code_blocks(void* server)')

export const emphasizeHttpVerbs = lazy(
  'void aether_vcr_embed_emphasize_http_verbs(void* server)',
)

export const clearRedactions = lazy('void aether_vcr_embed_clear_redactions(void* server)')

export const clearUnredactions = lazy('void aether_vcr_embed_clear_unredactions(void* server)')

export const clearHeaderRemovals = lazy(
  'void aether_vcr_embed_clear_header_removals(void* server)',
)

export const clearMatchHeaders = lazy(
  'void aether_vcr_embed_clear_match_headers(void* server)',
)

export const clearStaticContent = lazy(
  'void aether_vcr_embed_clear_static_content(void* server)',
)

export const clearUntaped = lazy(
  'void aether_vcr_embed_clear_untaped(void* server)',
)

export const clearFormatOptions = lazy('void aether_vcr_embed_clear_format_options(void* server)')

// ---- string ownership -----------------------------------------------------

const freeString = lazy('void aether_vcr_embed_free_string(void* s)')

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
