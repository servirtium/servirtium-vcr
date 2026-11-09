package dev.servirtium.vcr;

import java.lang.foreign.Arena;
import java.lang.foreign.MemorySegment;
import java.util.ArrayList;
import java.util.List;

/** Configures and starts a record VCR server. */
public final class RecordBuilder extends VcrBuilderBase<RecordBuilder> {

    private record Redaction(java.lang.invoke.MethodHandle operation, Field field, String pattern, String replacement) {
    }

    private record Normalization(String pattern, String name) {
    }

    private record WholeTapeRedaction(String pattern, String replacement) {
    }

    private record Note(String title, String body) {
    }

    private java.util.function.BiFunction<String, SecretRequest, String> secretRedactor;
    private final String upstreamBase;
    private final List<Redaction> redactions = new ArrayList<>();
    private final List<Normalization> normalizations = new ArrayList<>();
    private final List<WholeTapeRedaction> wholeTapeRedactions = new ArrayList<>();
    private Note note;
    private boolean indentCodeBlocks;
    private boolean emphasizeHttpVerbs;
    private int prettyXml;
    private int prettyJson;
    private String licenseNotice;
    private String upstreamCafile;
    private boolean sortJsonKeys;
    private boolean sortResponseHeaders;
    private final List<String[]> sortJsonArrays = new ArrayList<>(); // {request or null, path, by}
    private final List<String> sortHeaderValues = new ArrayList<>();
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
    /** Choose a token name during emission, or null to leave the field unchanged. */
    public RecordBuilder secretRedactor(java.util.function.BiFunction<String, SecretRequest, String> callback) {
        secretRedactor = callback;
        return this;
    }

    public RecordBuilder redact(Field field, String pattern, String replacement) {
        redactions.add(new Redaction(NativeMethods.REDACT, field, pattern, replacement));
        return this;
    }

    /** Redact a named header in the request, using [REDACTED]. */
    public RecordBuilder redactHeader(String name) {
        return redactHeader(name, "[REDACTED]", Field.REQUEST_HEADERS);
    }

    /** Configure the replacement and explicit field scope. */
    public RecordBuilder redactHeader(String name, String replacement, Field field) {
        redactions.add(new Redaction(NativeMethods.REDACT_HEADER, field, name, replacement));
        return this;
    }

    /** Redact a named query param in the request, using [REDACTED]. */
    public RecordBuilder redactQueryParam(String name) {
        return redactQueryParam(name, "[REDACTED]", Field.PATH);
    }

    /** Configure the replacement and explicit field scope. */
    public RecordBuilder redactQueryParam(String name, String replacement, Field field) {
        redactions.add(new Redaction(NativeMethods.REDACT_QUERY_PARAM, field, name, replacement));
        return this;
    }

    /** Redact a named json field in the request, using [REDACTED]. */
    public RecordBuilder redactJsonField(String name) {
        return redactJsonField(name, "[REDACTED]", Field.REQUEST_BODY);
    }

    /** Configure the replacement and explicit field scope. */
    public RecordBuilder redactJsonField(String name, String replacement, Field field) {
        redactions.add(new Redaction(NativeMethods.REDACT_JSON_FIELD, field, name, replacement));
        return this;
    }

    /**
     * Normalize a volatile value <em>across the whole tape</em>: every distinct
     * match of {@code pattern} (a regex), scanned over all fields and all
     * interactions in first-appearance order, is rewritten to a stable
     * {@code {{name-N}}} token. Unlike {@link #redact}, you don't supply the
     * replacement — libservirtium_vcr mints it — so a server-generated value that
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

    /** Pretty-print recorded XML response bodies (indent 1..16; 0 = off); request bodies are never changed. Falls back to byte-exact if the body isn't well-formed XML. */
    public RecordBuilder prettyXml() {
        return prettyXml(2);
    }

    public RecordBuilder prettyXml(int indent) {
        this.prettyXml = indent;
        return this;
    }

    /** Pretty-print recorded JSON response bodies (indent 1..16; 0 = off); request bodies are never changed. Falls back to byte-exact if the body isn't valid JSON. */
    public RecordBuilder prettyJson() {
        return prettyJson(2);
    }

    public RecordBuilder prettyJson(int indent) {
        this.prettyJson = indent;
        return this;
    }

    /**
     * Write {@code text} under a {@code ## LICENSE NOTICE} heading at the top
     * of every tape this recording produces. Playback ignores it.
     */
    public RecordBuilder addLicenseNotice(String text) {
        this.licenseNotice = text;
        return this;
    }

    /**
     * Verify an https upstream against this PEM CA file instead of the system
     * trust store. Record mode only.
     */
    public RecordBuilder upstreamCafile(String path) {
        this.upstreamCafile = path;
        return this;
    }

    /**
     * Opt-in stable order: write JSON response bodies' object keys sorted at
     * every depth. Sorted JSON is only written pretty-printed: without
     * {@link #prettyJson()} the tape is refused when it is written ({@code
     * close()} throws a {@link VcrException}, "sort_json_keys needs
     * pretty_json ...").
     */
    public RecordBuilder sortJsonKeys() {
        return sortJsonKeys(true);
    }

    public RecordBuilder sortJsonKeys(boolean on) {
        this.sortJsonKeys = on;
        return this;
    }

    /**
     * Sort the JSON response arrays {@code path} selects (a JSON pointer from
     * the root, {@code *} for one segment, {@code ""} the root array, or a bare
     * member name) by member {@code by} (a name, a pointer, or several
     * comma-separated; {@code ""} sorts by each element's canonical JSON).
     * Replay serves the sorted order. Needs {@link #prettyJson()}. A rule the
     * core refuses fails {@code start()}.
     */
    public RecordBuilder sortJsonArray(String path, String by) {
        sortJsonArrays.add(new String[] {null, path, by});
        return this;
    }

    /**
     * Like {@link #sortJsonArray}, only for interactions whose request path
     * (query included) matches the regex {@code requestRegex}.
     */
    public RecordBuilder sortJsonArrayAt(String requestRegex, String path, String by) {
        sortJsonArrays.add(new String[] {requestRegex, path, by});
        return this;
    }

    /** Write response header lines sorted by name (case-insensitive); a repeated header's lines keep their order. */
    public RecordBuilder sortResponseHeaders() {
        return sortResponseHeaders(true);
    }

    public RecordBuilder sortResponseHeaders(boolean on) {
        this.sortResponseHeaders = on;
        return this;
    }

    /** Sort one response header's comma-separated items ({@code Allow}). */
    public RecordBuilder sortHeaderValue(String name) {
        sortHeaderValues.add(name);
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
            if (prettyXml > 0) {
                NativeMethods.SET_PRETTY_XML.invokeExact(handle, prettyXml);
            }
            if (prettyJson > 0) {
                NativeMethods.SET_PRETTY_JSON.invokeExact(handle, prettyJson);
            }
            if (licenseNotice != null) {
                MemorySegment res = (MemorySegment) NativeMethods.ADD_LICENSE_NOTICE.invokeExact(
                        handle, NativeMethods.cString(arena, licenseNotice));
                check(res, "addLicenseNotice");
            }
            if (upstreamCafile != null) {
                MemorySegment res = (MemorySegment) NativeMethods.SET_UPSTREAM_CAFILE.invokeExact(
                        handle, NativeMethods.cString(arena, upstreamCafile));
                check(res, "upstreamCafile");
            }
            if (sortJsonKeys) {
                NativeMethods.SET_SORT_JSON_KEYS.invokeExact(handle, 1);
            }
            for (String[] rule : sortJsonArrays) {
                if (rule[0] == null) {
                    MemorySegment res = (MemorySegment) NativeMethods.SORT_JSON_ARRAY.invokeExact(
                            handle, NativeMethods.cString(arena, rule[1]), NativeMethods.cString(arena, rule[2]));
                    check(res, "sortJsonArray");
                } else {
                    MemorySegment res = (MemorySegment) NativeMethods.SORT_JSON_ARRAY_AT.invokeExact(
                            handle, NativeMethods.cString(arena, rule[0]),
                            NativeMethods.cString(arena, rule[1]), NativeMethods.cString(arena, rule[2]));
                    check(res, "sortJsonArrayAt");
                }
            }
            if (sortResponseHeaders) {
                NativeMethods.SET_SORT_RESPONSE_HEADERS.invokeExact(handle, 1);
            }
            for (String name : sortHeaderValues) {
                MemorySegment res = (MemorySegment) NativeMethods.SORT_HEADER_VALUE.invokeExact(
                        handle, NativeMethods.cString(arena, name));
                check(res, "sortHeaderValue");
            }
            for (Redaction r : redactions) {
                MemorySegment res = (MemorySegment) r.operation().invokeExact(
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
        MemorySegment handle = null;
        boolean ok = false;
        try (Arena arena = Arena.ofConfined()) {
            handle = (MemorySegment) NativeMethods.OPEN_RECORD.invokeExact(
                    NativeMethods.cString(arena, label),
                    NativeMethods.cString(arena, tapePath),
                    NativeMethods.cString(arena, upstreamBase),
                    NativeMethods.cString(arena, host),
                    port);
            String openErr = openError(handle);
            if (!openErr.isEmpty()) {
                throw new VcrException(
                        "vcr record failed to start for tape '" + tapePath
                                + "' (upstream '" + upstreamBase + "'): " + openErr);
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
                throw new VcrException(
                        "vcr record failed to begin serving for tape '" + tapePath + "': " + detail);
            }
            ok = true;
        } catch (Throwable t) {
            throw rethrow("record start", t);
        } finally {
            if (!ok && handle != null) destroy(handle);
        }
        var server = new VcrServer(handle, host, tapePath, true, failIfChanged);
        server.secretRedactor = secretRedactor;
        return server;
    }
}
