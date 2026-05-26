<?php

declare(strict_types=1);

namespace Servirtium;

use FFI;
use FFI\CData;

/**
 * Raw PHP-FFI surface over the native VCR library.
 *
 * 1:1 with the `aether_vcr_embed_*` C-ABI exported by
 * `std/http/server/vcr/embed.ae` (Aether). This class owns library
 * location/loading, the C signature declarations, and the string-ownership
 * helper.
 *
 * v1 contract (matching the Aether side): ONE active VCR server per process —
 * the tape / cursor / mutation state is process-global, so the diagnostics,
 * tape-length, and mutation calls take no handle.
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
        void*  aether_vcr_embed_start_playback(const char* label, const char* tape_path, const char* host, int port);
        void*  aether_vcr_embed_start_record(const char* label, const char* tape_path, const char* upstream_base, const char* host, int port);
        void   aether_vcr_embed_stop(void* server);
        char*  aether_vcr_embed_stop_and_flush(void* server, const char* tape_path);
        char*  aether_vcr_embed_stop_and_flush_fail_if_changed(void* server, const char* tape_path);
        int    aether_vcr_embed_port(void* server);
        char*  aether_vcr_embed_base_url(void* server, const char* host);
        int    aether_vcr_embed_tape_length(void);
        void   aether_vcr_embed_reset_cursor(void);
        char*  aether_vcr_embed_last_error(void);
        int    aether_vcr_embed_last_kind(void);
        int    aether_vcr_embed_last_index(void);
        void   aether_vcr_embed_clear_last_error(void);
        char*  aether_vcr_embed_redact(int field, const char* pattern, const char* replacement);
        char*  aether_vcr_embed_unredact(int field, const char* pattern, const char* replacement);
        char*  aether_vcr_embed_remove_header(int field, const char* name);
        char*  aether_vcr_embed_note(const char* title, const char* body);
        char*  aether_vcr_embed_static_content(const char* mount_path, const char* fs_dir);
        void   aether_vcr_embed_set_strict_headers(int on);
        void   aether_vcr_embed_indent_code_blocks(void);
        void   aether_vcr_embed_emphasize_http_verbs(void);
        void   aether_vcr_embed_clear_redactions(void);
        void   aether_vcr_embed_clear_unredactions(void);
        void   aether_vcr_embed_clear_header_removals(void);
        void   aether_vcr_embed_clear_static_content(void);
        void   aether_vcr_embed_clear_format_options(void);
        void   aether_vcr_embed_free_string(char* s);
        C;

    private static ?FFI $ffi = null;

    private function __construct()
    {
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
