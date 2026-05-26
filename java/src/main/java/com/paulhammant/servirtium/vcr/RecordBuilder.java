package com.paulhammant.servirtium.vcr;

import java.lang.foreign.Arena;
import java.lang.foreign.MemorySegment;
import java.util.ArrayList;
import java.util.List;

/** Configures and starts a record VCR server. */
public final class RecordBuilder extends VcrBuilderBase<RecordBuilder> {

    private record Redaction(Field field, String pattern, String replacement) {
    }

    private record Note(String title, String body) {
    }

    private final String upstreamBase;
    private final List<Redaction> redactions = new ArrayList<>();
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
    void applyConfig(Arena arena) {
        super.applyConfig(arena);
        try {
            if (indentCodeBlocks) {
                NativeMethods.INDENT_CODE_BLOCKS.invokeExact();
            }
            if (emphasizeHttpVerbs) {
                NativeMethods.EMPHASIZE_HTTP_VERBS.invokeExact();
            }
            for (Redaction r : redactions) {
                MemorySegment res = (MemorySegment) NativeMethods.REDACT.invokeExact(
                        r.field().code(),
                        NativeMethods.cString(arena, r.pattern()),
                        NativeMethods.cString(arena, r.replacement()));
                check(res, "redact");
            }
            // NOTE: the staged note is applied *after* start_record — load_record
            // clears the tape (and the pending note) as it binds, so staging it
            // pre-start would be wiped. See start().
        } catch (Throwable t) {
            throw rethrow("applyConfig", t);
        }
    }

    public VcrServer start() {
        resetGlobalState();
        MemorySegment handle;
        try (Arena arena = Arena.ofConfined()) {
            applyConfig(arena);
            handle = (MemorySegment) NativeMethods.START_RECORD.invokeExact(
                    NativeMethods.cString(arena, label),
                    NativeMethods.cString(arena, tapePath),
                    NativeMethods.cString(arena, upstreamBase),
                    NativeMethods.cString(arena, host),
                    port);
        } catch (Throwable t) {
            throw rethrow("record start", t);
        }
        if (handle.address() == 0) {
            throw new VcrException(
                    "vcr record failed to start for tape '" + tapePath
                            + "' (upstream '" + upstreamBase + "'): " + drainStartError());
        }
        // Stage the note now (after load_record cleared the tape) so it attaches
        // to the first interaction the SUT triggers.
        if (note != null) {
            try (Arena arena = Arena.ofConfined()) {
                MemorySegment res = (MemorySegment) NativeMethods.NOTE.invokeExact(
                        NativeMethods.cString(arena, note.title()),
                        NativeMethods.cString(arena, note.body()));
                check(res, "note");
            } catch (Throwable t) {
                throw rethrow("note", t);
            }
        }
        return new VcrServer(handle, host, tapePath, true, failIfChanged);
    }
}
