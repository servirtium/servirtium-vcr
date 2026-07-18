<?php

declare(strict_types=1);

namespace Servirtium;

use FFI;
use FFI\CData;

/**
 * Raw PHP-FFI surface over the native VCR library.
 *
 * 1:1 with the `aether_vcr_embed_*` C-ABI exported by
 * `core/embed.ae` (Aether). This class owns library
 * location/loading, the C signature declarations, and the string-ownership
 * helper.
 *
 * Per-listener contract (matching the Aether side): N independent VCR servers
 * can run concurrently in one process, each keyed by its own handle; every
 * config / diagnostic / lifecycle call takes the handle. Lifecycle is
 * open -> configure(handle) -> start.
 *
 * Returned `char*` values are caller-owned and NUL-terminated; copy them to a
 * PHP string with `FFI::string()` and free them with
 * `aether_vcr_embed_free_string` (see {@see Native::takeString()}). PHP strings
 * passed as arguments marshal to `const char*` directly.
 */
final class Native
{
    /** The C header describing every symbol we call. */
    private const HEADER = <<<'C'
        void*  aether_vcr_embed_open_playback(const char* label, const char* tape_path, const char* host, int port);
        void*  aether_vcr_embed_open_playback_url(const char* label, const char* tape_url, const char* host, int port);
        void*  aether_vcr_embed_open_record(const char* label, const char* tape_path, const char* upstream_base, const char* host, int port);
        int    aether_vcr_embed_start(void* server);
        void   aether_vcr_embed_stop(void* server);
        char*  aether_vcr_embed_stop_and_flush(void* server, const char* tape_path);
        char*  aether_vcr_embed_stop_and_flush_fail_if_changed(void* server, const char* tape_path);
        char*  aether_vcr_embed_stop_and_flush_or_check(void* server, const char* tape_path);
        int    aether_vcr_embed_port(void* server);
        char*  aether_vcr_embed_base_url(void* server, const char* host);
        int    aether_vcr_embed_tape_length(void* server);
        void   aether_vcr_embed_reset_cursor(void* server);
        char*  aether_vcr_embed_last_error(void* server);
        int    aether_vcr_embed_last_kind(void* server);
        int    aether_vcr_embed_last_index(void* server);
        void   aether_vcr_embed_clear_last_error(void* server);
        char*  aether_vcr_embed_redact(void* server, int field, const char* pattern, const char* replacement);
        char*  aether_vcr_embed_normalize_whole_tape(void* server, const char* pattern, const char* name);
        char*  aether_vcr_embed_redact_whole_tape(void* server, const char* pattern, const char* replacement);
        char*  aether_vcr_embed_unredact(void* server, int field, const char* pattern, const char* replacement);
        char*  aether_vcr_embed_remove_header(void* server, int field, const char* name);
        void   aether_vcr_embed_match_header(void* server, const char* name);
        char*  aether_vcr_embed_strict_ignore_common_headers(void* server);
        char*  aether_vcr_embed_note(void* server, const char* title, const char* body);
        char*  aether_vcr_embed_static_content(void* server, const char* mount_path, const char* fs_dir);
        char*  aether_vcr_embed_untaped(void* server, const char* path);
        void   aether_vcr_embed_set_strict_headers(void* server, int on);
        void   aether_vcr_embed_set_match_json_body(void* server, int on);
        void   aether_vcr_embed_set_match_multiple(void* server, int on);
        void   aether_vcr_embed_indent_code_blocks(void* server);
        void   aether_vcr_embed_emphasize_http_verbs(void* server);
        void   aether_vcr_embed_clear_redactions(void* server);
        void   aether_vcr_embed_clear_unredactions(void* server);
        void   aether_vcr_embed_clear_header_removals(void* server);
        void   aether_vcr_embed_clear_match_headers(void* server);
        void   aether_vcr_embed_clear_static_content(void* server);
        void   aether_vcr_embed_clear_untaped(void* server);
        void   aether_vcr_embed_clear_format_options(void* server);
        void   aether_vcr_embed_free_string(char* s);
        C;

    private static ?FFI $ffi = null;
    private static ?string $explicitPath = null;

    private function __construct()
    {
    }

    /**
     * Pin an explicit path to the native library, used at first load. Backs the
     * first-class `nativeLib()` builder argument; wins over the bundled
     * `native/` default and the `SERVIRTIUM_VCR_LIB` env override. No-op once
     * the library has already been loaded (set it before the first `start()`).
     */
    public static function configure(?string $path): void
    {
        if ($path !== null && $path !== '' && self::$ffi === null) {
            self::$explicitPath = $path;
        }
    }

    /** Lazily `FFI::cdef()` the native library and cache the binding. */
    public static function lib(): FFI
    {
        if (self::$ffi === null) {
            self::$ffi = FFI::cdef(self::HEADER, self::resolveLibraryPath());
        }

        return self::$ffi;
    }

    /**
     * Resolve the absolute path of the native shared library.
     *
     * Resolution order:
     *   1. `SERVIRTIUM_VCR_LIB` (explicit path — point it at a fresh
     *      `ae build --emit=lib` artifact during development);
     *   2. the repo's bundled `native/` directory.
     */
    private static function resolveLibraryPath(): string
    {
        if (self::$explicitPath !== null && self::$explicitPath !== '') {
            if (!is_file(self::$explicitPath)) {
                throw new VcrException(
                    'nativeLib() points at a missing file: ' . self::$explicitPath
                );
            }

            return self::$explicitPath;
        }

        $override = getenv('SERVIRTIUM_VCR_LIB');
        if (is_string($override) && $override !== '') {
            if (!is_file($override)) {
                throw new VcrException(
                    "SERVIRTIUM_VCR_LIB points at a missing file: {$override}"
                );
            }

            return $override;
        }

        $bundled = dirname(__DIR__) . '/native/' . self::fileName();
        if (is_file($bundled)) {
            return $bundled;
        }

        throw new VcrException(
            "could not find native VCR library '" . self::fileName() . "'. "
            . "Build it with ./build-native.sh or set SERVIRTIUM_VCR_LIB to its path."
        );
    }

    /** Platform-specific native library file name (no path). */
    private static function fileName(): string
    {
        return match (PHP_OS_FAMILY) {
            'Windows' => 'servirtium_vcr.dll',
            'Darwin' => 'libservirtium_vcr.dylib',
            default => 'libservirtium_vcr.so',
        };
    }

    /**
     * Copy a caller-owned native `char*` into a PHP string and free it.
     *
     * Returns `""` for a NULL pointer. The native contract is that every
     * `char*` returned by `aether_vcr_embed_*` is caller-owned, so after
     * copying with FFI::string we hand the pointer back to
     * `aether_vcr_embed_free_string`.
     */
    public static function takeString(?CData $ptr): string
    {
        if ($ptr === null || FFI::isNull($ptr)) {
            return '';
        }

        $value = FFI::string($ptr);
        self::lib()->aether_vcr_embed_free_string($ptr);

        return $value;
    }
}
