// Idiomatic TypeScript API over the in-repo core/vcr.ae libservirtium_vcr (built on
// Aether stdlib primitives), via the `aether_vcr_embed_*` C-ABI from
// `core/embed.ae`.
//
// The system-under-test talks plain HTTP to `server.baseUrl`; tape paths,
// mode, mutations, and diagnostics live in test setup/teardown.
//
//   const vcr = Vcr.playback('tapes/my_api.md').port(0).start()
//   const res = await fetch(vcr.baseUrl + '/ok')
//   expect(vcr.lastKind).toBe(VcrOutcome.Ok)
//   vcr.close()
//
// Per-listener contract (from the Aether side): N independent VCR servers can
// run concurrently, one server per port, each keyed by its own handle. A
// fixture's config / diagnostics / tape are scoped to its handle, so two
// `.start()` servers can be alive at once without bleeding into each other.
// Lifecycle is open -> configure(handle) -> start.

import * as N from './native'

/**
 * Field selector for redactions / unredactions / header removals. Values
 * mirror the FIELD_* constants in `core/vcr.ae`.
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

interface HeaderRemoval {
  field: VcrField
  name: string
}

/** Shared bind options for both builders. */
abstract class VcrBuilderBase<TSelf extends VcrBuilderBase<TSelf>> {
  protected hostValue = '127.0.0.1'
  protected portValue = 0 // 0 => OS-assigned (dynamic)
  protected labelValue = ''
  protected nativeLibValue: string | null = null
  protected readonly headerRemovals: HeaderRemoval[] = []
  protected readonly staticMounts: Array<{ mount: string; dir: string }> = []
  protected readonly untapedPaths: string[] = []
  protected tlsPair?: { cert: string; key: string }

  protected constructor(protected readonly tapePath: string) {}

  protected abstract self(): TSelf

  /**
   * Pin an explicit path to libservirtium_vcr library for this run — the
   * first-class way to say *where the `.so` is* at launch, instead of relying
   * on discovery. Wins over the bundled-`native/` default and the
   * `SERVIRTIUM_VCR_LIB` env override. Set before `.start()`.
   */
  nativeLib(path: string): TSelf {
    this.nativeLibValue = path
    return this.self()
  }

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
   * Serve a path prefix from an on-disk directory instead of the tape
   * (Servirtium step 11). Available in both playback and record mode so a
   * browser suite can be served same-origin from the VCR while recording.
   */
  staticContent(mountPath: string, fsDir: string): TSelf {
    this.staticMounts.push({ mount: mountPath, dir: fsDir })
    return this.self()
  }

  /**
   * Mark an incidental request path (e.g. `/favicon.ico`) the VCR answers 404
   * for without consuming the tape cursor — a normal interaction recorded
   * after it still matches. Available in both playback and record mode.
   */
  untaped(path: string): TSelf {
    this.untapedPaths.push(path)
    return this.self()
  }

  /** Serve `https://` using this PEM cert and key (ECDSA P-256 key). Applied at start. */
  tls(certPath: string, keyPath: string): TSelf {
    this.tlsPair = { cert: certPath, key: keyPath }
    return this.self()
  }

  /**
   * Apply this builder's accumulated config to the opened handle, before
   * serving starts. Subclasses extend this.
   */
  protected applyConfig(handle: unknown): void {
    for (const { field, name } of this.headerRemovals) {
      check(N.removeHeader(handle, field, name), 'removeHeader')
    }
    for (const { mount, dir } of this.staticMounts) {
      check(N.staticContent(handle, mount, dir), 'staticContent')
    }
    for (const path of this.untapedPaths) {
      check(N.untaped(handle, path), 'untaped')
    }
    if (this.tlsPair) check(N.setTls(handle, this.tlsPair.cert, this.tlsPair.key), 'setTls')
  }
}

/** Configures and starts a playback VCR server. */
export interface SecretRequest {
  readonly method: string; readonly path: string; readonly location: string; readonly format: string
  readonly fieldPath: string; readonly interaction: number
}
export type SecretRedactor = (key: string, request: SecretRequest) => string | null | undefined
export type SecretResolver = (token: string) => string | null | undefined
function secretStage(handle: unknown, redactor?: SecretRedactor, resolver?: SecretResolver): void {
  try {
    check(N.secretBegin(handle, resolver ? 1 : 0), 'secretBegin')
    for (;;) {
      const status = N.secretNext(handle)
      if (status === 0) break
      if (status < 0) throw new VcrError('secret iteration failed')
      const get = (part: number): string => N.takeString(N.secretGet(handle, part))
      const replacement = resolver ? resolver(get(2)) : redactor!(get(1), Object.freeze({
        method: get(3), path: get(4), location: get(5), format: get(6), fieldPath: get(7), interaction: N.secretInteraction(handle),
      }))
      if (replacement != null) {
        if (typeof replacement !== 'string') throw new TypeError('secret callbacks must synchronously return a string or null')
        check(N.secretApply(handle, replacement), 'secretApply')
      }
    }
    check(N.secretFinish(handle), 'secretFinish')
  } catch (error) { N.secretAbort(handle); N.stop(handle); throw error }
}

export class PlaybackBuilder extends VcrBuilderBase<PlaybackBuilder> {
  private secretResolverValue?: SecretResolver
  secretResolver(callback: SecretResolver): this { this.secretResolverValue = callback; return this }
  private readonly unredactions: Array<{ field: VcrField; pattern: string; replacement: string }> = []
  private readonly substitutions: Array<{ field: VcrField; pattern: string; replacement: string }> = []
  private strictHeadersOn = false
  private matchJsonBodyOn = false
  private matchMultipleOn = false
  private readonly matchHeaders: string[] = []

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
   * Opt in to matching request bodies by semantic JSON equality (key order /
   * whitespace ignored) instead of byte-for-byte. Non-JSON bodies fall back to
   * byte-exact.
   */
  matchJsonBody(on = true): PlaybackBuilder {
    this.matchJsonBodyOn = on
    return this
  }

  /**
   * Opt in to reusable, order-independent playback: matches any recorded
   * interaction (not just the next in sequence) and doesn't consume it — for
   * polling/retries or non-deterministic request order.
   */
  matchMultiple(on = true): PlaybackBuilder {
    this.matchMultipleOn = on
    return this
  }

  /**
   * Match playback on this specific request header's value (ignoring the rest
   * of the recorded header block); repeatable.
   */
  matchHeader(name: string): PlaybackBuilder {
    this.matchHeaders.push(name)
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

  /**
   * Rewrite the replayed response: regex `pattern` -> `replacement` in the
   * response body or headers (`{{baseUrl}}` is already expanded by core).
   */
  substitute(field: VcrField, pattern: string, replacement: string): PlaybackBuilder {
    this.substitutions.push({ field, pattern, replacement })
    return this
  }

  protected applyConfig(handle: unknown): void {
    super.applyConfig(handle)
    if (this.strictHeadersOn) N.setStrictHeaders(handle, 1)
    if (this.matchJsonBodyOn) N.setMatchJsonBody(handle, 1)
    if (this.matchMultipleOn) N.setMatchMultiple(handle, 1)
    for (const name of this.matchHeaders) {
      N.matchHeader(handle, name)
    }
    for (const { field, pattern, replacement } of this.unredactions) {
      check(N.unredact(handle, field, pattern, replacement), 'unredact')
    }
    for (const { field, pattern, replacement } of this.substitutions) {
      check(N.substitute(handle, field, pattern, replacement), 'substitute')
    }
  }

  start(): VcrServer {
    N.configure(this.nativeLibValue)
    const handle = N.openPlayback(this.labelValue, this.tapePath, this.hostValue, this.portValue)
    if (N.isNull(handle)) {
      throw new VcrError(`vcr playback failed to start for tape '${this.tapePath}'`)
    }
    this.applyConfig(handle)
    if (this.secretResolverValue) secretStage(handle, undefined, this.secretResolverValue)
    if (N.start(handle) < 0) {
      const err = drainStartError(handle)
      N.stop(handle)
      throw new VcrError(
        `vcr playback failed to begin serving for tape '${this.tapePath}': ${err}`,
      )
    }
    return new VcrServer(handle, this.hostValue, this.tapePath, false, false)
  }
}

/** Configures and starts a record VCR server. */
export class RecordBuilder extends VcrBuilderBase<RecordBuilder> {
  private secretRedactorValue?: SecretRedactor
  secretRedactor(callback: SecretRedactor): this { this.secretRedactorValue = callback; return this }
  private readonly redactions: Array<{ operation: typeof N.redact; field: VcrField; pattern: string; replacement: string }> = []
  private readonly wholeTapeNormalizations: Array<{ pattern: string; name: string }> = []
  private readonly wholeTapeRedactions: Array<{ pattern: string; replacement: string }> = []
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
    this.redactions.push({ operation: N.redact, field, pattern, replacement })
    return this
  }

  /** Redact a named header when emitting the tape. */
  redactHeader(name: string, replacement = '[REDACTED]', field = VcrField.RequestHeaders): RecordBuilder {
    this.redactions.push({ operation: N.redactHeader, field, pattern: name, replacement })
    return this
  }

  /** Redact a named query param when emitting the tape. */
  redactQueryParam(name: string, replacement = '[REDACTED]', field = VcrField.Path): RecordBuilder {
    this.redactions.push({ operation: N.redactQueryParam, field, pattern: name, replacement })
    return this
  }

  /** Redact a named json field when emitting the tape. */
  redactJsonField(name: string, replacement = '[REDACTED]', field = VcrField.RequestBody): RecordBuilder {
    this.redactions.push({ operation: N.redactJsonField, field, pattern: name, replacement })
    return this
  }

  /**
   * Tokenize every distinct match of `pattern` across the WHOLE tape (all
   * fields and interactions, in first-appearance order) into a stable
   * `{{name-N}}` token. Use for correlated volatiles — e.g. a server-minted id
   * that appears in a response body and then recurs in later request paths —
   * so the same value maps to the same token everywhere it occurs.
   */
  normalizeWholeTape(pattern: string, name: string): RecordBuilder {
    this.wholeTapeNormalizations.push({ pattern, name })
    return this
  }

  /**
   * Collapse every match of `pattern` across the WHOLE tape (all fields and
   * interactions) to the constant `replacement`. Use for uncorrelated
   * volatiles where each occurrence is independent — e.g. a `Date` header — so
   * they don't churn the committed tape.
   */
  redactWholeTape(pattern: string, replacement: string): RecordBuilder {
    this.wholeTapeRedactions.push({ pattern, replacement })
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

  protected applyConfig(handle: unknown): void {
    super.applyConfig(handle)
    if (this.indentCodeBlocksOn) N.indentCodeBlocks(handle)
    if (this.emphasizeHttpVerbsOn) N.emphasizeHttpVerbs(handle)
    for (const { operation, field, pattern, replacement } of this.redactions) {
      check(operation(handle, field, pattern, replacement), 'redact')
    }
    for (const { pattern, name } of this.wholeTapeNormalizations) {
      check(N.normalizeWholeTape(handle, pattern, name), 'normalizeWholeTape')
    }
    for (const { pattern, replacement } of this.wholeTapeRedactions) {
      check(N.redactWholeTape(handle, pattern, replacement), 'redactWholeTape')
    }
  }

  start(): VcrServer {
    N.configure(this.nativeLibValue)
    const handle = N.openRecord(
      this.labelValue,
      this.tapePath,
      this.upstreamBase,
      this.hostValue,
      this.portValue,
    )
    if (N.isNull(handle)) {
      throw new VcrError(
        `vcr record failed to start for tape '${this.tapePath}' (upstream '${this.upstreamBase}')`,
      )
    }
    this.applyConfig(handle)
    // Stage the note now (openRecord cleared the tape) so it attaches to the
    // first interaction the SUT triggers, before serving begins.
    if (this.pendingNote) {
      check(N.note(handle, this.pendingNote.title, this.pendingNote.body), 'note')
    }
    if (N.start(handle) < 0) {
      const err = drainStartError(handle)
      N.stop(handle)
      throw new VcrError(
        `vcr record failed to begin serving for tape '${this.tapePath}': ${err}`,
      )
    }
    return new VcrServer(handle, this.hostValue, this.tapePath, true, this.failIfChangedOn, this.secretRedactorValue)
  }
}

function drainStartError(handle: unknown): string {
  const err = N.takeString(N.lastError(handle))
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
    private readonly secretRedactorValue?: SecretRedactor,
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
    return N.tapeLength(this.requireHandle())
  }

  /** Latest retained replay diagnostic; consuming reads acknowledge without erasing. */
  get lastError(): string {
    return N.takeString(N.lastError(this.requireHandle()))
  }

  readLastError(consume = true): string {
    return N.takeString(N.lastErrorEx(this.requireHandle(), consume ? 1 : 0))
  }

  diagnosticsJson(consume = false): string {
    return N.takeString(N.diagnosticsJson(this.requireHandle(), consume ? 1 : 0))
  }

  assertNoMismatches(): void {
    check(N.assertNoMismatches(this.requireHandle()), 'assertNoMismatches')
  }

  /** TLS protocol negotiated by the listener (`TLSv1.3`), or '' when TLS is off. */
  get lastTlsProtocol(): string {
    return N.takeString(N.lastTlsProtocol(this.requireHandle()))
  }

  /** Playback: throws unless every recorded interaction was replayed. */
  assertAllConsumed(): void {
    check(N.assertAllConsumed(this.requireHandle()), 'assertAllConsumed')
  }

  /** Throws unless every redaction / unredaction / substitution rule matched at least once. */
  assertAllRedactionsUsed(): void {
    check(N.assertAllRedactionsUsed(this.requireHandle()), 'assertAllRedactionsUsed')
  }

  /** Drop all registered substitutions on the running server. */
  clearSubstitutions(): void {
    N.clearSubstitutions(this.requireHandle())
  }

  testContext(name: string, sourceFile = '', sourceLine = 0): void {
    N.testContext(this.requireHandle(), name, sourceFile, sourceLine)
  }

  /** Outcome of the most-recent dispatch. */
  get lastKind(): VcrOutcome {
    return N.lastKind(this.requireHandle()) as VcrOutcome
  }

  /** Tape index of the most-recent matched interaction, or -1. */
  get lastIndex(): number {
    return N.lastIndex(this.requireHandle())
  }

  /**
   * Stage a note (record mode) for the *next* interaction to be captured.
   * Call between requests to annotate specific interactions.
   */
  note(title: string, body: string): void {
    const err = N.takeString(N.note(this.requireHandle(), title, body))
    if (err) throw new VcrError(err)
  }

  /** Rewind the replay cursor to interaction 0 and clear last-* slots. */
  resetCursor(): void {
    N.resetCursor(this.requireHandle())
  }

  /** Clear the last-error slot between sub-cases. */
  clearLastError(): void {
    N.clearLastError(this.requireHandle())
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

    if (this.secretRedactorValue) secretStage(h, this.secretRedactorValue)
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
