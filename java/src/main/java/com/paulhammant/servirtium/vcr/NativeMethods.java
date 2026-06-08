package com.paulhammant.servirtium.vcr;

import java.lang.foreign.Arena;
import java.lang.foreign.FunctionDescriptor;
import java.lang.foreign.Linker;
import java.lang.foreign.MemorySegment;
import java.lang.foreign.SymbolLookup;
import java.lang.foreign.ValueLayout;
import java.lang.invoke.MethodHandle;

/**
 * Raw FFM (java.lang.foreign) downcall surface over the native VCR library.
 * 1:1 with the {@code aether_vcr_embed_*} C-ABI exported by
 * {@code std/http/server/vcr/embed.ae}.
 *
 * <p>Per-listener contract (matching the Aether side): N independent VCR
 * servers can run concurrently in one process, each keyed by its own handle;
 * every config / diagnostic / lifecycle call takes the handle. Returned {@code char*} values
 * are caller-owned and NUL-terminated; copy them into a Java String and free
 * them via {@link #freeString} (see {@link #takeString}).
 *
 * <p>An opaque server handle is a {@code void*} carried as a {@link MemorySegment}
 * address; {@link MemorySegment#NULL} signals failure.
 */
final class NativeMethods {

    private static final Linker LINKER = Linker.nativeLinker();
    private static final SymbolLookup LOOKUP = NativeLoader.load();

    private static final ValueLayout.OfInt C_INT = ValueLayout.JAVA_INT;
    private static final java.lang.foreign.AddressLayout C_PTR = ValueLayout.ADDRESS;
    // char* return values are pointers to NUL-terminated strings of unknown
    // length; reinterpret them before reading.
    private static final java.lang.foreign.AddressLayout C_STR =
            ValueLayout.ADDRESS.withTargetLayout(
                    java.lang.foreign.MemoryLayout.sequenceLayout(Long.MAX_VALUE, ValueLayout.JAVA_BYTE));

    // ---- lifecycle ---------------------------------------------------------

    static final MethodHandle OPEN_PLAYBACK = down(
            "aether_vcr_embed_open_playback",
            FunctionDescriptor.of(C_PTR, C_PTR, C_PTR, C_PTR, C_INT));

    static final MethodHandle OPEN_PLAYBACK_URL = down(
            "aether_vcr_embed_open_playback_url",
            FunctionDescriptor.of(C_PTR, C_PTR, C_PTR, C_PTR, C_INT));

    static final MethodHandle OPEN_RECORD = down(
            "aether_vcr_embed_open_record",
            FunctionDescriptor.of(C_PTR, C_PTR, C_PTR, C_PTR, C_PTR, C_INT));

    static final MethodHandle START = down(
            "aether_vcr_embed_start",
            FunctionDescriptor.of(C_INT, C_PTR));

    static final MethodHandle STOP = down(
            "aether_vcr_embed_stop",
            FunctionDescriptor.ofVoid(C_PTR));

    static final MethodHandle STOP_AND_FLUSH = down(
            "aether_vcr_embed_stop_and_flush",
            FunctionDescriptor.of(C_STR, C_PTR, C_PTR));

    static final MethodHandle STOP_AND_FLUSH_FAIL_IF_CHANGED = down(
            "aether_vcr_embed_stop_and_flush_fail_if_changed",
            FunctionDescriptor.of(C_STR, C_PTR, C_PTR));

    static final MethodHandle STOP_AND_FLUSH_OR_CHECK = down(
            "aether_vcr_embed_stop_and_flush_or_check",
            FunctionDescriptor.of(C_STR, C_PTR, C_PTR));

    // ---- introspection -----------------------------------------------------

    static final MethodHandle PORT = down(
            "aether_vcr_embed_port",
            FunctionDescriptor.of(C_INT, C_PTR));

    static final MethodHandle BASE_URL = down(
            "aether_vcr_embed_base_url",
            FunctionDescriptor.of(C_STR, C_PTR, C_PTR));

    static final MethodHandle TAPE_LENGTH = down(
            "aether_vcr_embed_tape_length",
            FunctionDescriptor.of(C_INT, C_PTR));

    static final MethodHandle RESET_CURSOR = down(
            "aether_vcr_embed_reset_cursor",
            FunctionDescriptor.ofVoid(C_PTR));

    // ---- diagnostics (handle-based) ----------------------------------------

    static final MethodHandle LAST_ERROR = down(
            "aether_vcr_embed_last_error",
            FunctionDescriptor.of(C_STR, C_PTR));

    static final MethodHandle LAST_KIND = down(
            "aether_vcr_embed_last_kind",
            FunctionDescriptor.of(C_INT, C_PTR));

    static final MethodHandle LAST_INDEX = down(
            "aether_vcr_embed_last_index",
            FunctionDescriptor.of(C_INT, C_PTR));

    static final MethodHandle CLEAR_LAST_ERROR = down(
            "aether_vcr_embed_clear_last_error",
            FunctionDescriptor.ofVoid(C_PTR));

    // ---- mutations / config (call BEFORE start; return "" or an error) -----

    static final MethodHandle REDACT = down(
            "aether_vcr_embed_redact",
            FunctionDescriptor.of(C_STR, C_PTR, C_INT, C_PTR, C_PTR));

    static final MethodHandle UNREDACT = down(
            "aether_vcr_embed_unredact",
            FunctionDescriptor.of(C_STR, C_PTR, C_INT, C_PTR, C_PTR));

    static final MethodHandle REMOVE_HEADER = down(
            "aether_vcr_embed_remove_header",
            FunctionDescriptor.of(C_STR, C_PTR, C_INT, C_PTR));

    static final MethodHandle NORMALIZE_WHOLE_TAPE = down(
            "aether_vcr_embed_normalize_whole_tape",
            FunctionDescriptor.of(C_STR, C_PTR, C_PTR, C_PTR));

    static final MethodHandle REDACT_WHOLE_TAPE = down(
            "aether_vcr_embed_redact_whole_tape",
            FunctionDescriptor.of(C_STR, C_PTR, C_PTR, C_PTR));

    static final MethodHandle STRICT_IGNORE_COMMON_HEADERS = down(
            "aether_vcr_embed_strict_ignore_common_headers",
            FunctionDescriptor.of(C_STR, C_PTR));

    static final MethodHandle NOTE = down(
            "aether_vcr_embed_note",
            FunctionDescriptor.of(C_STR, C_PTR, C_PTR, C_PTR));

    static final MethodHandle STATIC_CONTENT = down(
            "aether_vcr_embed_static_content",
            FunctionDescriptor.of(C_STR, C_PTR, C_PTR, C_PTR));

    static final MethodHandle UNTAPED = down(
            "aether_vcr_embed_untaped",
            FunctionDescriptor.of(C_STR, C_PTR, C_PTR));

    static final MethodHandle SET_STRICT_HEADERS = down(
            "aether_vcr_embed_set_strict_headers",
            FunctionDescriptor.ofVoid(C_PTR, C_INT));

    static final MethodHandle INDENT_CODE_BLOCKS = down(
            "aether_vcr_embed_indent_code_blocks",
            FunctionDescriptor.ofVoid(C_PTR));

    static final MethodHandle EMPHASIZE_HTTP_VERBS = down(
            "aether_vcr_embed_emphasize_http_verbs",
            FunctionDescriptor.ofVoid(C_PTR));

    static final MethodHandle CLEAR_REDACTIONS = down(
            "aether_vcr_embed_clear_redactions",
            FunctionDescriptor.ofVoid(C_PTR));

    static final MethodHandle CLEAR_UNREDACTIONS = down(
            "aether_vcr_embed_clear_unredactions",
            FunctionDescriptor.ofVoid(C_PTR));

    static final MethodHandle CLEAR_HEADER_REMOVALS = down(
            "aether_vcr_embed_clear_header_removals",
            FunctionDescriptor.ofVoid(C_PTR));

    static final MethodHandle CLEAR_STATIC_CONTENT = down(
            "aether_vcr_embed_clear_static_content",
            FunctionDescriptor.ofVoid(C_PTR));

    static final MethodHandle CLEAR_UNTAPED = down(
            "aether_vcr_embed_clear_untaped",
            FunctionDescriptor.ofVoid(C_PTR));

    static final MethodHandle CLEAR_FORMAT_OPTIONS = down(
            "aether_vcr_embed_clear_format_options",
            FunctionDescriptor.ofVoid(C_PTR));

    // ---- string ownership --------------------------------------------------

    static final MethodHandle FREE_STRING = down(
            "aether_vcr_embed_free_string",
            FunctionDescriptor.ofVoid(C_PTR));

    private NativeMethods() {
    }

    private static MethodHandle down(String symbol, FunctionDescriptor descriptor) {
        MemorySegment addr = LOOKUP.find(symbol)
                .orElseThrow(() -> new VcrException("native symbol not found: " + symbol));
        return LINKER.downcallHandle(addr, descriptor);
    }

    /** Allocate a NUL-terminated C string for {@code value} in {@code arena}. */
    static MemorySegment cString(Arena arena, String value) {
        return arena.allocateFrom(value == null ? "" : value);
    }

    /**
     * Copy a caller-owned native {@code char*} (returned as a {@link MemorySegment})
     * into a Java String, then free it via {@code aether_vcr_embed_free_string}
     * per the ABI's ownership rule. Returns {@code ""} for a NULL pointer.
     */
    static String takeString(MemorySegment ptr) {
        if (ptr == null || ptr.address() == 0) {
            return "";
        }
        try {
            // The lookup already gives a target layout, so the segment is sized;
            // read up to the NUL.
            return ptr.getString(0);
        } finally {
            try {
                FREE_STRING.invokeExact(MemorySegment.ofAddress(ptr.address()));
            } catch (Throwable t) {
                throw new VcrException("aether_vcr_embed_free_string failed: " + t.getMessage());
            }
        }
    }
}
