package com.paulhammant.servirtium.vcr;

import java.lang.foreign.Arena;
import java.lang.foreign.MemorySegment;
import java.util.ArrayList;
import java.util.List;

/** Configures and starts a record VCR server. */
public final class RecordBuilder extends VcrBuilderBase<RecordBuilder> {

    private record Redaction(Field field, String pattern, String replacement) {
    }

    private record Normalization(String pattern, String name) {
    }

    private record WholeTapeRedaction(String pattern, String replacement) {
    }

    private record Note(String title, String body) {
    }

    private final String upstreamBase;
    private final List<Redaction> redactions = new ArrayList<>();
    private final List<Normalization> normalizations = new ArrayList<>();
    private final List<WholeTapeRedaction> wholeTapeRedactions = new ArrayList<>();
    private Note note;
    private boolean indentCodeBlocks;
    private boolean emphasizeHttpVerbs;
    private boolean failIfChanged;

    RecordBuilder(String tapePath, String upstreamBase) {
        super(tapePath);
        this.upstreamBase = upstreamBase;
    }

    @Override
    RecordBuilder self() {
        return this;
    }

    /** Scrub a value out of the given field before it lands on the tape. */
    public RecordBuilder redact(Field field, String pattern, String replacement) {
        redactions.add(new Redaction(field, pattern, replacement));
        return this;
    }

    /**
     * Normalize a volatile value <em>across the whole tape</em>: every distinct
     * match of {@code pattern} (a regex), scanned over all fields and all
     * interactions in first-appearance order, is rewritten to a stable
     * {@code {{name-N}}} token. Unlike {@link #redact}, you don't supply the
     * replacement — the engine mints it — so a server-generated value that
     * recurs (a created entity's id echoed back in a later request path)
     * collapses to one token everywhere it appears. The payoff: re-recording
     * the same suite produces a byte-identical tape, so {@link #failIfChanged}
     * drift detection fires only on real upstream changes, not on fresh ids or
     * timestamps.
     *
     * @param pattern a regular expression matching the volatile value
     * @param name    the token prefix (e.g. {@code "id"} → {@code {{id-1}}})
     */
    public RecordBuilder normalizeWholeTape(String pattern, String name) {
        normalizations.add(new Normalization(pattern, name));
        return this;
    }

    /**
     * Collapse every whole-tape match of {@code pattern} (a regex) to the
     * constant {@code replacement}, across all fields and interactions. The
     * companion to {@link #normalizeWholeTape}: use it for a volatile value you
     * never correlate and whose number of distinct values can vary run to run —
     * a {@code Date} response header, a request id — where a per-value token
     * would itself not be byte-stable. Example:
     * {@code redactWholeTape("Date: .+ GMT", "Date: <DATE>")}.
     *
     * @param pattern     a regular expression matching the volatile value
     * @param replacement the literal text every match is rewritten to
     */
    public RecordBuilder redactWholeTape(String pattern, String replacement) {
        wholeTapeRedactions.add(new WholeTapeRedaction(pattern, replacement));
        return this;
    }

    /**
     * Attach a note to the next recorded interaction (Servirtium step 9). For
     * notes on later interactions, call {@link VcrServer#note(String, String)}
     * on the running server between requests.
     */
    public RecordBuilder note(String title, String body) {
        this.note = new Note(title, body);
        return this;
    }

    /** Emit code blocks as 4-space-indented text instead of fences. */
    public RecordBuilder indentCodeBlocks() {
        return indentCodeBlocks(true);
    }

    public RecordBuilder indentCodeBlocks(boolean on) {
        this.indentCodeBlocks = on;
        return this;
    }

    /** Emit the HTTP method emphasized (e.g. {@code *GET*}) in headings. */
    public RecordBuilder emphasizeHttpVerbs() {
        return emphasizeHttpVerbs(true);
    }

    public RecordBuilder emphasizeHttpVerbs(boolean on) {
        this.emphasizeHttpVerbs = on;
        return this;
    }

    /**
     * On close, still write the freshly recorded tape but throw if it differs
     * from the on-disk one — the Servirtium step-4 drift contract, so a normal
     * {@code git diff} shows the change and CI fails loudly.
     */
    public RecordBuilder failIfChanged() {
        return failIfChanged(true);
    }

    public RecordBuilder failIfChanged(boolean on) {
        this.failIfChanged = on;
        return this;
    }

    @Override
    void applyConfig(Arena arena, MemorySegment handle) {
        super.applyConfig(arena, handle);
        try {
            if (indentCodeBlocks) {
                NativeMethods.INDENT_CODE_BLOCKS.invokeExact(handle);
            }
            if (emphasizeHttpVerbs) {
                NativeMethods.EMPHASIZE_HTTP_VERBS.invokeExact(handle);
            }
            for (Redaction r : redactions) {
                MemorySegment res = (MemorySegment) NativeMethods.REDACT.invokeExact(
                        handle,
                        r.field().code(),
                        NativeMethods.cString(arena, r.pattern()),
                        NativeMethods.cString(arena, r.replacement()));
                check(res, "redact");
            }
            for (Normalization nrm : normalizations) {
                MemorySegment res = (MemorySegment) NativeMethods.NORMALIZE_WHOLE_TAPE.invokeExact(
                        handle,
                        NativeMethods.cString(arena, nrm.pattern()),
                        NativeMethods.cString(arena, nrm.name()));
                check(res, "normalizeWholeTape");
            }
            for (WholeTapeRedaction wr : wholeTapeRedactions) {
                MemorySegment res = (MemorySegment) NativeMethods.REDACT_WHOLE_TAPE.invokeExact(
                        handle,
                        NativeMethods.cString(arena, wr.pattern()),
                        NativeMethods.cString(arena, wr.replacement()));
                check(res, "redactWholeTape");
            }
        } catch (Throwable t) {
            throw rethrow("applyConfig", t);
        }
    }

    public VcrServer start() {
        NativeLoader.configure(nativeLib);
        MemorySegment handle;
        try (Arena arena = Arena.ofConfined()) {
            handle = (MemorySegment) NativeMethods.OPEN_RECORD.invokeExact(
                    NativeMethods.cString(arena, label),
                    NativeMethods.cString(arena, tapePath),
                    NativeMethods.cString(arena, upstreamBase),
                    NativeMethods.cString(arena, host),
                    port);
            if (handle.address() == 0) {
                throw new VcrException(
                        "vcr record failed to start for tape '" + tapePath
                                + "' (upstream '" + upstreamBase + "')");
            }
            applyConfig(arena, handle);
            // Stage the note now (open_record cleared the tape) so it attaches
            // to the first interaction the SUT triggers, before serving begins.
            if (note != null) {
                MemorySegment res = (MemorySegment) NativeMethods.NOTE.invokeExact(
                        handle,
                        NativeMethods.cString(arena, note.title()),
                        NativeMethods.cString(arena, note.body()));
                check(res, "note");
            }
            int rc = (int) NativeMethods.START.invokeExact(handle);
            if (rc < 0) {
                String detail = drainStartError(handle);
                NativeMethods.STOP.invokeExact(handle);
                throw new VcrException(
                        "vcr record failed to begin serving for tape '" + tapePath + "': " + detail);
            }
        } catch (Throwable t) {
            throw rethrow("record start", t);
        }
        return new VcrServer(handle, host, tapePath, true, failIfChanged);
    }
}
