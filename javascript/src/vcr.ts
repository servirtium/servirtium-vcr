// Idiomatic TypeScript API over the Aether VCR core (the
// `aether_vcr_embed_*` C-ABI from `std/http/server/vcr/embed.ae`).
//
// The system-under-test talks plain HTTP to `server.baseUrl`; tape paths,
// mode, mutations, and diagnostics live in test setup/teardown.
//
//   const vcr = Vcr.playback('tapes/my_api.md').port(0).start()
//   const res = await fetch(vcr.baseUrl + '/ok')
//   expect(vcr.lastKind).toBe(VcrOutcome.Ok)
//   vcr.close()
//
// v1 contract (from the Aether side): ONE active VCR server per process. The
// mutation/diagnostic state is process-global, so `.start()` resets it to a
// clean slate before applying this fixture's config — a redaction / note /
// strict setting from a previous test never leaks forward. Run tests serially
// (one server per process at a time).

import * as N from './native'

/**
 * Field selector for redactions / unredactions / header removals. Values
 * mirror the FIELD_* constants in `std/http/server/vcr/module.ae`.
 */
export enum VcrField {
  Path = 1,
  ResponseBody = 2,
  RequestHeaders = 3,
  RequestBody = 4,
  ResponseHeaders = 5,
}

/**
 * Per-dispatch outcome. Values mirror the VCR_KIND_* constants in the Aether
 * core. Read after a request to assert what the dispatcher decided.
 */
export enum VcrOutcome {
  Ok = 0,
  PathOrMethodDiff = 1,
  HeaderMissing = 2,
  HeaderValueDiff = 3,
  HeaderUnexpected = 4,
  TapeExhausted = 5,
  BodyDiff = 6,
  RecordError = 7,
}

/** Thrown when the VCR fails to start, a mutation fails, or a record-mode flush detects drift. */
export class VcrError extends Error {
  constructor(message: string) {
    super(message)
    this.name = 'VcrError'
  }
}

/** Throw if a mutation call returned a non-empty error string ("" = success). */
function check(resultPtr: unknown, op: string): void {
  const err = N.takeString(resultPtr)
  if (err) {
    throw new VcrError(`vcr ${op} failed: ${err}`)
  }
}

/**
 * Wipe all process-global mutation / format / strict state so a previous
 * fixture's settings can't leak into this one (v1 one-server-per-process has
 * no per-handle state). Called first by every `.start()`.
 *
 * A staged-but-unconsumed note is reset core-side when `start_*` (re)loads the
 * tape, so there's nothing to clear here.
 */
function resetGlobalState(): void {
  N.clearRedactions()
  N.clearUnredactions()
  N.clearHeaderRemovals()
  N.clearStaticContent()
  N.clearFormatOptions()
  N.setStrictHeaders(0)
  N.clearLastError()
}

interface HeaderRemoval {
  field: VcrField
  name: string
}

/** Shared bind options for both builders. */
abstract class VcrBuilderBase<TSelf extends VcrBuilderBase<TSelf>> {
  protected hostValue = '127.0.0.1'
  protected portValue = 0 // 0 => OS-assigned (dynamic)
  protected labelValue = ''
  protected readonly headerRemovals: HeaderRemoval[] = []

  protected constructor(protected readonly tapePath: string) {}

  protected abstract self(): TSelf

  /** Bind host. Defaults to 127.0.0.1. */
  host(host: string): TSelf {
    this.hostValue = host
    return this.self()
  }

  /** Bind port. 0 (the default) asks the OS for a free port. */
  port(port: number): TSelf {
    this.portValue = port
    return this.self()
  }

  /** Human-facing label for logs/diagnostics (not a state key). */
  label(label: string): TSelf {
    this.labelValue = label
    return this.self()
  }

  /** Remove a header by name from the given block (case-insensitive). */
  removeHeader(field: VcrField, name: string): TSelf {
    this.headerRemovals.push({ field, name })
    return this.self()
  }

  /**
   * Apply this builder's accumulated config after the reset and before the
   * server starts (mutations like static-content and unredactions must be
   * registered before the tape loads). Subclasses extend this.
   */
  protected applyConfig(): void {
    for (const { field, name } of this.headerRemovals) {
      check(N.removeHeader(field, name), 'removeHeader')
    }
  }
}

/** Configures and starts a playback VCR server. */
export class PlaybackBuilder extends VcrBuilderBase<PlaybackBuilder> {
  private readonly unredactions: Array<{ field: VcrField; pattern: string; replacement: string }> = []
  private readonly staticMounts: Array<{ mount: string; dir: string }> = []
  private strictHeadersOn = false

  constructor(tapePath: string) {
    super(tapePath)
  }

  protected self(): PlaybackBuilder {
    return this
  }

  /**
   * Compare the SUT's request headers against the recorded block on every
   * interaction (Servirtium step 10), surfacing mismatches via `lastError`.
   */
  strictHeaders(on = true): PlaybackBuilder {
    this.strictHeadersOn = on
    return this
  }

  /**
   * Replace a redacted placeholder in the recorded expectation with the real
   * value the live SUT sends, so a committed (scrubbed) tape still matches.
   */
  unredact(field: VcrField, pattern: string, replacement: string): PlaybackBuilder {
    this.unredactions.push({ field, pattern, replacement })
    return this
  }

  /** Serve a path prefix from an on-disk directory instead of the tape (Servirtium step 11). */
  staticContent(mountPath: string, fsDir: string): PlaybackBuilder {
    this.staticMounts.push({ mount: mountPath, dir: fsDir })
    return this
  }

  protected applyConfig(): void {
    super.applyConfig()
    if (this.strictHeadersOn) N.setStrictHeaders(1)
    for (const { field, pattern, replacement } of this.unredactions) {
      check(N.unredact(field, pattern, replacement), 'unredact')
    }
    for (const { mount, dir } of this.staticMounts) {
      check(N.staticContent(mount, dir), 'staticContent')
    }
  }

  start(): VcrServer {
    resetGlobalState()
    this.applyConfig()
    const handle = N.startPlayback(this.labelValue, this.tapePath, this.hostValue, this.portValue)
    if (N.isNull(handle)) {
      throw new VcrError(
        `vcr playback failed to start for tape '${this.tapePath}': ${drainStartError()}`,
      )
    }
    return new VcrServer(handle, this.hostValue, this.tapePath, false, false)
  }
}

/** Configures and starts a record VCR server. */
export class RecordBuilder extends VcrBuilderBase<RecordBuilder> {
  private readonly redactions: Array<{ field: VcrField; pattern: string; replacement: string }> = []
  private pendingNote: { title: string; body: string } | null = null
  private indentCodeBlocksOn = false
  private emphasizeHttpVerbsOn = false
  private failIfChangedOn = false

  constructor(tapePath: string, private readonly upstreamBase: string) {
    super(tapePath)
  }

  protected self(): RecordBuilder {
    return this
  }

  /** Scrub a value out of the given field before it lands on the tape. */
  redact(field: VcrField, pattern: string, replacement: string): RecordBuilder {
    this.redactions.push({ field, pattern, replacement })
    return this
  }

  /**
   * Attach a note to the next recorded interaction (Servirtium step 9). For
   * notes on later interactions, call `note(...)` on the running server.
   */
  note(title: string, body: string): RecordBuilder {
    this.pendingNote = { title, body }
    return this
  }

  /** Emit code blocks as 4-space-indented text instead of fences. */
  indentCodeBlocks(on = true): RecordBuilder {
    this.indentCodeBlocksOn = on
    return this
  }

  /** Emit the HTTP method emphasized (e.g. *GET*) in headings. */
  emphasizeHttpVerbs(on = true): RecordBuilder {
    this.emphasizeHttpVerbsOn = on
    return this
  }

  /**
   * On close, still write the freshly recorded tape but throw if it differs
   * from the on-disk one — the Servirtium step-4 drift contract, so a normal
   * `git diff` shows the change and CI fails loudly.
   */
  failIfChanged(on = true): RecordBuilder {
    this.failIfChangedOn = on
    return this
  }

  protected applyConfig(): void {
    super.applyConfig()
    if (this.indentCodeBlocksOn) N.indentCodeBlocks()
    if (this.emphasizeHttpVerbsOn) N.emphasizeHttpVerbs()
    for (const { field, pattern, replacement } of this.redactions) {
      check(N.redact(field, pattern, replacement), 'redact')
    }
    // NOTE: the staged note is applied *after* start_record — load_record
    // clears the tape (and the pending note) as it binds, so staging it
    // pre-start would be wiped. See start().
  }

  start(): VcrServer {
    resetGlobalState()
    this.applyConfig()
    const handle = N.startRecord(
      this.labelValue,
      this.tapePath,
      this.upstreamBase,
      this.hostValue,
      this.portValue,
    )
    if (N.isNull(handle)) {
      throw new VcrError(
        `vcr record failed to start for tape '${this.tapePath}' (upstream '${this.upstreamBase}'): ${drainStartError()}`,
      )
    }
    // Stage the note now (after load_record cleared the tape) so it attaches
    // to the first interaction the SUT triggers.
    if (this.pendingNote) {
      check(N.note(this.pendingNote.title, this.pendingNote.body), 'note')
    }
    return new VcrServer(handle, this.hostValue, this.tapePath, true, this.failIfChangedOn)
  }
}

function drainStartError(): string {
  const err = N.takeString(N.lastError())
  return err || '(no detail; check tape path and port availability)'
}

/**
 * A running VCR server. Call `close()` to stop it; in record mode `close()`
 * also flushes the captured tape to disk.
 */
export class VcrServer {
  private handle: unknown
  private cachedBaseUrl: string | null = null

  /** @internal */
  constructor(
    handle: unknown,
    private readonly hostValue: string,
    private readonly tapePath: string,
    private readonly recordMode: boolean,
    private readonly failIfChangedOn: boolean,
  ) {
    this.handle = handle
  }

  private requireHandle(): unknown {
    if (N.isNull(this.handle)) {
      throw new VcrError('VcrServer has been closed')
    }
    return this.handle
  }

  /** The OS-resolved port the server is listening on. */
  get port(): number {
    return N.port(this.requireHandle())
  }

  /** Base URL the SUT should target, e.g. `http://127.0.0.1:54213`. */
  get baseUrl(): string {
    if (this.cachedBaseUrl === null) {
      this.cachedBaseUrl = N.takeString(N.baseUrl(this.requireHandle(), this.hostValue))
    }
    return this.cachedBaseUrl
  }

  /** Tape entry count (playback), or interactions captured so far (record). */
  get tapeLength(): number {
    return N.tapeLength()
  }

  /** Most-recent dispatch diagnostic; empty when none flagged. */
  get lastError(): string {
    return N.takeString(N.lastError())
  }

  /** Outcome of the most-recent dispatch. */
  get lastKind(): VcrOutcome {
    return N.lastKind() as VcrOutcome
  }

  /** Tape index of the most-recent matched interaction, or -1. */
  get lastIndex(): number {
    return N.lastIndex()
  }

  /**
   * Stage a note (record mode) for the *next* interaction to be captured.
   * Call between requests to annotate specific interactions.
   */
  note(title: string, body: string): void {
    const err = N.takeString(N.note(title, body))
    if (err) throw new VcrError(err)
  }

  /** Rewind the replay cursor to interaction 0 and clear last-* slots. */
  resetCursor(): void {
    N.resetCursor()
  }

  /** Clear the last-error slot between sub-cases. */
  clearLastError(): void {
    N.clearLastError()
  }

  /** Stop the server; in record mode, flush the tape (and check drift if failIfChanged). */
  close(): void {
    if (N.isNull(this.handle)) return
    const h = this.handle
    this.handle = null

    if (!this.recordMode) {
      N.stop(h)
      return
    }

    const resultPtr = this.failIfChangedOn
      ? N.stopAndFlushFailIfChanged(h, this.tapePath)
      : N.stopAndFlush(h, this.tapePath)
    const err = N.takeString(resultPtr)
    if (err) {
      throw new VcrError(err)
    }
  }
}

/**
 * Entry point for record/replay fixtures backed by the Aether VCR core.
 */
export const Vcr = {
  /** Replay a Servirtium markdown tape from disk. */
  playback(tapePath: string): PlaybackBuilder {
    return new PlaybackBuilder(tapePath)
  },

  /**
   * Record live interactions: forward to `upstreamBase`, return the real
   * response to the SUT, and capture the exchange. The tape is written to
   * `tapePath` when the server is closed.
   */
  record(tapePath: string, upstreamBase: string): RecordBuilder {
    return new RecordBuilder(tapePath, upstreamBase)
  },
}
