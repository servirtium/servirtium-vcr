/// Idiomatic Dart record/replay fixtures over the in-repo `core/vcr.ae` libservirtium_vcr.
///
/// The system-under-test talks plain HTTP to [VcrServer.baseUrl]; tape paths,
/// mode, mutations, and diagnostics live in test setup/teardown.
///
/// ```dart
/// import 'package:servirtium/servirtium.dart';
///
/// final vcr = Vcr.playback('tapes/my_api.md').port(0).start();
/// try {
///   // point the SUT at vcr.baseUrl, drive it ...
///   assert(vcr.lastKind == VcrOutcome.ok);
/// } finally {
///   vcr.close();
/// }
/// ```
///
/// Handle-based contract: N independent VCR servers can run concurrently, one
/// server per port, each keyed by its own handle (lifecycle open ->
/// configure(handle) -> start). [PlaybackBuilder.start] / [RecordBuilder.start]
/// open a fresh handle before applying this fixture's config — a
/// redaction/note/strict setting from a previous test never leaks forward.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'native.dart';

/// Field selector for redactions / unredactions / header removals. Values
/// mirror the `FIELD_*` constants in `core/vcr.ae`.
enum VcrField {
  path(1),
  responseBody(2),
  requestHeaders(3),
  requestBody(4),
  responseHeaders(5),

  /// Substitution-only: response body AND headers in one rule.
  response(6);

  const VcrField(this.value);

  /// The native field integer.
  final int value;
}

/// Per-dispatch outcome. Values mirror the `VCR_KIND_*` constants in the
/// in-repo `core/vcr.ae` libservirtium_vcr. Read after a request to assert what the
/// dispatcher decided.
enum VcrOutcome {
  ok(0),
  pathOrMethodDiff(1),
  headerMissing(2),
  headerValueDiff(3),
  headerUnexpected(4),
  tapeExhausted(5),
  bodyDiff(6),
  recordError(7);

  const VcrOutcome(this.value);

  /// The native kind integer.
  final int value;

  /// Map a native kind integer to its enum, defaulting to [recordError].
  static VcrOutcome fromValue(int value) {
    for (final o in VcrOutcome.values) {
      if (o.value == value) return o;
    }
    return VcrOutcome.recordError;
  }
}

/// Thrown when the VCR fails to start, a mutation is rejected, or a
/// record-mode flush detects drift.
class VcrException implements Exception {
  VcrException(this.message);

  final String message;

  @override
  String toString() => 'VcrException: $message';
}

/// Raise if a mutation call returned a non-empty error string (`""` = ok).
void _check(Pointer<Utf8> resultPtr, String op) {
  final err = takeString(resultPtr);
  if (err.isNotEmpty) {
    throw VcrException('vcr $op failed: $err');
  }
}

/// Every open returns a non-NULL handle (NULL only when out of memory); a failed
/// open returns a dead handle carrying its reason. Read the reason, destroy the
/// dead handle, and throw.
Pointer<Void> _adoptOpen(Pointer<Void> handle, String what) {
  if (handle == nullptr) throw VcrException('$what: out of memory');
  final reason = takeString(Native.openError(handle));
  if (reason.isNotEmpty) {
    Native.destroy(handle);
    throw VcrException('$what: $reason');
  }
  return handle;
}

/// Run [body] on an opened handle; if it throws, stop and destroy the handle so
/// it never leaks.
T _releaseOnFailure<T>(Pointer<Void> handle, T Function() body) {
  try {
    return body();
  } catch (_) {
    Native.stop(handle);
    Native.destroy(handle);
    rethrow;
  }
}

String _drainStartError(Pointer<Void> handle) {
  final err = takeString(Native.lastError(handle));
  return err.isNotEmpty ? err : '(no detail; check tape path and port availability)';
}

/// Entry point for record/replay fixtures backed by the in-repo `core/vcr.ae` libservirtium_vcr.
final class SecretRequest {
  const SecretRequest(this.method, this.path, this.location, this.format, this.fieldPath, this.interaction);
  final String method, path, location, format, fieldPath;
  final int interaction;
}
typedef SecretRedactor = String? Function(String key, SecretRequest request);
typedef SecretResolver = String? Function(String token);

void _secretStage(Pointer<Void> handle, {SecretRedactor? redactor, SecretResolver? resolver}) {
  String get(int part) => takeString(Native.secretGet(handle, part));
  try {
    _check(Native.secretBegin(handle, resolver != null ? 1 : 0), 'secretBegin');
    int next;
    while ((next = Native.secretNext(handle)) > 0) {
      final value = resolver != null ? resolver(get(2)) : redactor!(get(1), SecretRequest(
          get(3), get(4), get(5), get(6), get(7), Native.secretInteraction(handle)));
      if (value != null) { withUtf8(value, (v) => _check(Native.secretApply(handle, v), 'secretApply')); }
    }
    if (next < 0) throw VcrException('Secret staging aborted');
    _check(Native.secretFinish(handle), 'secretFinish');
  } catch (_) {
    Native.secretAbort(handle);
    rethrow;
  }
}

abstract final class Vcr {
  /// Replay a Servirtium markdown tape from disk. [nativeLib] optionally pins
  /// `libservirtium_vcr.so` path explicitly (see `BuilderBase.nativeLib`); by default
  /// the bundled library is discovered.
  static PlaybackBuilder playback(String tapePath, {String? nativeLib}) {
    final b = PlaybackBuilder._(tapePath);
    if (nativeLib != null) b.nativeLib(nativeLib);
    return b;
  }

  /// Record live interactions: forward to [upstreamBase], return the real
  /// response to the SUT, and capture the exchange. The tape is written to
  /// [tapePath] when the server is closed. [nativeLib] optionally pins the
  /// `libservirtium_vcr.so` path explicitly.
  static RecordBuilder record(String tapePath, String upstreamBase,
      {String? nativeLib}) {
    final b = RecordBuilder._(tapePath, upstreamBase);
    if (nativeLib != null) b.nativeLib(nativeLib);
    return b;
  }
}

/// Shared bind options for both builders.
abstract class _BuilderBase<T extends _BuilderBase<T>> {
  _BuilderBase(this._tapePath);

  final String _tapePath;
  String _host = '127.0.0.1';
  int _port = 0; // 0 => OS-assigned (dynamic)
  String _label = '';
  String? _nativeLib;
  final List<(VcrField, String)> _headerRemovals = [];
  bool _ignoreVolatileHeaders = false;
  bool _removeTransportHeaders = false;
  final List<String> _cloudVendors = [];
  bool _redactCredentials = false;
  final List<String> _credentialHeaders = [];
  final List<(String, String)> _staticContent = [];
  final List<String> _untaped = [];
  (String, String)? _tls;
  (String, String)? _tlsPem;

  T get _self;

  /// Pin an explicit path to libservirtium_vcr library for this run — the
  /// first-class way to say *where the `.so` is* at launch, instead of relying
  /// on discovery. Wins over the bundled-`lib/native/` default and the
  /// `SERVIRTIUM_VCR_LIB` env override. Set before `.start()`.
  T nativeLib(String path) {
    _nativeLib = path;
    return _self;
  }

  /// Bind host. Defaults to 127.0.0.1.
  T host(String host) {
    _host = host;
    return _self;
  }

  /// Bind port. 0 (the default) asks the OS for a free port.
  T port(int port) {
    _port = port;
    return _self;
  }

  /// Human-facing label for logs/diagnostics (not a state key).
  T label(String label) {
    _label = label;
    return _self;
  }

  /// Remove a header by name from the given block (case-insensitive).
  T removeHeader(VcrField field, String name) {
    _headerRemovals.add((field, name));
    return _self;
  }

  /// Drop the per-request volatile headers modern clients inject on every call
  /// — distributed-tracing / correlation ids (`traceparent`, `tracestate`,
  /// `Request-Id`, `X-Request-Id`, `X-Correlation-Id`, `baggage`) — from BOTH
  /// the recorded expectation and the live request before matching. The
  /// companion to removing the stock client identity headers. Works in both
  /// playback and record mode.
  T ignoreVolatileHeaders([bool on = true]) {
    _ignoreVolatileHeaders = on;
    return _self;
  }

  /// Leave the connection-describing headers (Host, Connection, Content-Length
  /// and the other hop-by-hop headers, Accept-Encoding) out of the recording.
  /// Works in both playback and record mode.
  T removeTransportHeaders([bool on = true]) {
    _removeTransportHeaders = on;
    return _self;
  }

  /// Drop a cloud vendor's per-request headers. [vendor] is one of `aws`,
  /// `azure`, `cloudflare`, `fastly`, `gcp`; call again for more vendors. Works
  /// in both playback and record mode.
  T removeCloudHeaders(String vendor) {
    _cloudVendors.add(vendor);
    return _self;
  }

  /// Redact the common credential headers (Authorization, Cookie, Set-Cookie,
  /// X-Api-Key, X-Auth-Token, ...) as numbered tokens. Register on the playback
  /// builder too, as with every rule.
  T redactCredentials([bool on = true]) {
    _redactCredentials = on;
    return _self;
  }

  /// One more credential header with the same treatment as [redactCredentials].
  T redactCredentialHeader(String name) {
    _credentialHeaders.add(name);
    return _self;
  }

  /// Serve a path prefix from an on-disk directory instead of the tape.
  ///
  /// Works in both playback and record mode (recording a browser suite is
  /// cleaner served same-origin from the VCR — no CORS preflights).
  T staticContent(String mountPath, String fsDir) {
    _staticContent.add((mountPath, fsDir));
    return _self;
  }

  /// Mark an incidental request path (e.g. `/favicon.ico`) the VCR answers 404
  /// for without consuming the tape cursor on playback (and without forwarding
  /// or recording anything in record mode).
  T untaped(String path) {
    _untaped.add(path);
    return _self;
  }

  /// Serve `https://` using this PEM cert and key (PEM cert + key: ECDSA P-256/P-384/P-521, Ed25519, or RSA 2048-16384). Applied at start.
  T tls(String certPath, String keyPath) {
    _tls = (certPath, keyPath);
    return _self;
  }

  /// Like [tls], but the PEM certificate and key are passed in memory (not file paths), so no private key is written to disk.
  T tlsFromPem(String certPem, String keyPem) {
    _tlsPem = (certPem, keyPem);
    return _self;
  }

  /// Apply accumulated config to the opened handle, before serving starts.
  /// Subclasses extend this.
  void _applyConfig(Pointer<Void> handle) {
    for (final (field, name) in _headerRemovals) {
      withUtf8(name, (n) => _check(Native.removeHeader(handle, field.value, n), 'removeHeader'));
    }
    if (_ignoreVolatileHeaders) {
      _check(Native.ignoreVolatileHeaders(handle), 'ignoreVolatileHeaders');
    }
    if (_removeTransportHeaders) {
      _check(Native.removeTransportHeaders(handle), 'removeTransportHeaders');
    }
    for (final vendor in _cloudVendors) {
      withUtf8(vendor, (v) => _check(Native.removeCloudHeaders(handle, v), 'removeCloudHeaders'));
    }
    if (_redactCredentials) {
      _check(Native.redactCredentials(handle), 'redactCredentials');
    }
    for (final name in _credentialHeaders) {
      withUtf8(name, (n) => _check(Native.redactCredentialHeader(handle, n), 'redactCredentialHeader'));
    }
    for (final (mount, dir) in _staticContent) {
      withUtf8(mount,
          (m) => withUtf8(dir, (d) => _check(Native.staticContent(handle, m, d), 'staticContent')));
    }
    for (final path in _untaped) {
      withUtf8(path, (p) => _check(Native.untaped(handle, p), 'untaped'));
    }
    final tls = _tls;
    if (tls != null) {
      withUtf8(tls.$1, (c) => withUtf8(tls.$2, (k) => _check(Native.setTls(handle, c, k), 'tls')));
    }
    final tlsPem = _tlsPem;
    if (tlsPem != null) {
      withUtf8(tlsPem.$1, (c) => withUtf8(tlsPem.$2, (k) => _check(Native.setTlsPem(handle, c, k), 'tlsFromPem')));
    }
  }
}

/// Configures and starts a playback VCR server.
class PlaybackBuilder extends _BuilderBase<PlaybackBuilder> {
  SecretResolver? _secretResolver;
  PlaybackBuilder secretResolver(SecretResolver callback) { _secretResolver = callback; return this; }

  PlaybackBuilder._(super.tapePath);

  final List<(VcrField, String, String)> _unredactions = [];
  final List<(VcrField, String, String, bool)> _substitutions = [];
  bool _strictHeaders = false;
  bool _matchJsonBody = false;
  bool _matchXmlBody = false;
  bool _matchMultiple = false;
  (int, int)? _playbackRange;
  final List<String> _matchHeaders = [];

  @override
  PlaybackBuilder get _self => this;

  /// Compare the SUT's request headers against the recorded block on every
  /// interaction, surfacing mismatches via [VcrServer.lastError].
  PlaybackBuilder strictHeaders([bool on = true]) {
    _strictHeaders = on;
    return this;
  }

  /// Opt in to matching request bodies by semantic JSON equality (key order /
  /// whitespace ignored) instead of byte-for-byte. Non-JSON bodies fall back to
  /// byte-exact.
  PlaybackBuilder matchJsonBody([bool on = true]) {
    _matchJsonBody = on;
    return this;
  }

  /// Opt in to matching request bodies by semantic XML equality (attribute
  /// order / insignificant whitespace ignored; element order significant)
  /// instead of byte-for-byte — the SOAP/XML twin of [matchJsonBody]. Non-XML
  /// bodies fall back to byte-exact.
  PlaybackBuilder matchXmlBody([bool on = true]) {
    _matchXmlBody = on;
    return this;
  }

  /// Opt in to reusable, order-independent playback: matches any recorded
  /// interaction (not just the next in sequence) and doesn't consume it — for
  /// polling/retries or non-deterministic request order.
  PlaybackBuilder matchMultiple([bool on = true]) {
    _matchMultiple = on;
    return this;
  }

  /// Replay only interactions [from]..[to] of the tape: the numbers of its
  /// `## Interaction N` headings, 0-based and inclusive; [to] < 0 means through
  /// the last. Selection is by number only. A bad range (from < 0, to before
  /// from, past the tape's end) makes `start()` throw [VcrException].
  PlaybackBuilder playbackRange(int from, [int to = -1]) {
    _playbackRange = (from, to);
    return this;
  }

  /// Match playback on this specific request header's value (ignoring the rest
  /// of the recorded header block); repeatable.
  PlaybackBuilder matchHeader(String name) {
    _matchHeaders.add(name);
    return this;
  }

  /// Replace a redacted placeholder in the recorded expectation with the real
  /// value the live SUT sends, so a scrubbed tape still matches.
  PlaybackBuilder unredact(VcrField field, String pattern, String replacement) {
    _unredactions.add((field, pattern, replacement));
    return this;
  }

  /// Rewrite the replayed response: regex [pattern] -> [replacement] in the
  /// response body or headers (`{{baseUrl}}` is already expanded by core).
  ///
  /// [required] false exempts an unused rule from `assertAllRedactionsUsed`.
  PlaybackBuilder substitute(VcrField field, String pattern, String replacement,
      {bool required = true}) {
    _substitutions.add((field, pattern, replacement, required));
    return this;
  }

  /// Like [substitute], but an unused rule is not reported.
  PlaybackBuilder substituteOptional(VcrField field, String pattern, String replacement) =>
      substitute(field, pattern, replacement, required: false);

  @override
  void _applyConfig(Pointer<Void> handle) {
    super._applyConfig(handle);
    if (_strictHeaders) Native.setStrictHeaders(handle, 1);
    if (_matchJsonBody) Native.setMatchJsonBody(handle, 1);
    if (_matchXmlBody) Native.setMatchXmlBody(handle, 1);
    if (_matchMultiple) Native.setMatchMultiple(handle, 1);
    final range = _playbackRange;
    if (range != null) {
      _check(Native.setPlaybackRange(handle, range.$1, range.$2), 'playbackRange');
    }
    for (final name in _matchHeaders) {
      withUtf8(name, (n) => Native.matchHeader(handle, n));
    }
    for (final (field, pattern, replacement) in _unredactions) {
      withUtf8(pattern, (p) => withUtf8(replacement,
          (r) => _check(Native.unredact(handle, field.value, p, r), 'unredact')));
    }
    for (final (field, pattern, replacement, required) in _substitutions) {
      withUtf8(pattern, (p) => withUtf8(replacement,
          (r) => _check(Native.substitute(handle, field.value, p, r, required ? 1 : 0), 'substitute')));
    }
  }

  /// Open the playback server, apply this fixture's config to its handle,
  /// then begin serving. Throws [VcrException] if it fails to bind/load.
  VcrServer start() {
    Native.configure(_nativeLib);
    final handle = _adoptOpen(
        withUtf8(
            _label,
            (l) => withUtf8(
                _tapePath,
                (t) => withUtf8(
                    _host, (h) => Native.openPlayback(l, t, h, _port)))),
        "vcr playback failed to start for tape '$_tapePath'");
    return _releaseOnFailure(handle, () {
      _applyConfig(handle);
      if (_secretResolver != null) { _secretStage(handle, resolver: _secretResolver); }
      if (Native.start(handle) < 0) {
        final err = _drainStartError(handle);
        throw VcrException(
            "vcr playback failed to begin serving for tape '$_tapePath': $err");
      }
      return VcrServer._(handle, _host, _tapePath, recordMode: false, failIfChanged: false);
    });
  }
}

/// Configures and starts a record VCR server.
class RecordBuilder extends _BuilderBase<RecordBuilder> {
  SecretRedactor? _secretRedactor;
  RecordBuilder secretRedactor(SecretRedactor callback) { _secretRedactor = callback; return this; }

  RecordBuilder._(super.tapePath, this._upstreamBase);

  final String _upstreamBase;
  final List<(String, VcrField, String, String)> _redactions = [];
  final List<(String, String)> _normalizeWholeTape = [];
  final List<(String, String)> _redactWholeTape = [];
  (String, String)? _note;
  bool _indentCodeBlocks = false;
  bool _emphasizeHttpVerbs = false;
  int _prettyXml = 0;
  int _prettyJson = 0;
  String? _upstreamCafile;
  String? _licenseNotice;
  bool _sortJsonKeys = false;
  final List<(String, String, String)> _sortJsonArrays = []; // request regex ('' = every request), path, by
  bool _sortResponseHeaders = false;
  final List<String> _sortHeaderValues = [];
  bool _failIfChanged = false;

  @override
  RecordBuilder get _self => this;

  /// Scrub a value out of the given field before it lands on the tape.
  RecordBuilder redact(VcrField field, String pattern, String replacement) {
    _redactions.add(('redact', field, pattern, replacement));
    return this;
  }

  RecordBuilder redactHeader(String name, {String replacement = '[REDACTED]', VcrField field = VcrField.requestHeaders}) {
    _redactions.add(('header', field, name, replacement));
    return this;
  }

  RecordBuilder redactQueryParam(String name, {String replacement = '[REDACTED]', VcrField field = VcrField.path}) {
    _redactions.add(('query_param', field, name, replacement));
    return this;
  }

  RecordBuilder redactJsonField(String name, {String replacement = '[REDACTED]', VcrField field = VcrField.requestBody}) {
    _redactions.add(('json_field', field, name, replacement));
    return this;
  }

  /// Tokenize every distinct match of [pattern] across the WHOLE tape (all
  /// fields and interactions, in first-appearance order) into a stable
  /// `{{name-N}}` placeholder. Use for correlated volatiles — an id minted in
  /// one response that recurs in later request paths keeps the same token.
  RecordBuilder normalizeWholeTape(String pattern, String name) {
    _normalizeWholeTape.add((pattern, name));
    return this;
  }

  /// Collapse every match of [pattern] across the WHOLE tape to the constant
  /// [replacement]. Use for uncorrelated volatiles (e.g. a `Date` header) where
  /// each occurrence is independent and a single fixed value suffices.
  RecordBuilder redactWholeTape(String pattern, String replacement) {
    _redactWholeTape.add((pattern, replacement));
    return this;
  }

  /// Attach a note to the next recorded interaction. For notes on later
  /// interactions, call [VcrServer.note] on the running server.
  RecordBuilder note(String title, String body) {
    _note = (title, body);
    return this;
  }

  /// Emit code blocks as 4-space-indented text instead of fences.
  RecordBuilder indentCodeBlocks([bool on = true]) {
    _indentCodeBlocks = on;
    return this;
  }

  /// Emit the HTTP method emphasized (e.g. `*GET*`) in headings.
  RecordBuilder emphasizeHttpVerbs([bool on = true]) {
    _emphasizeHttpVerbs = on;
    return this;
  }

  /// Pretty-print recorded XML response bodies (indent 1..16; 0 = off); request bodies are never changed. Falls back to byte-exact if the body isn't well-formed XML.
  RecordBuilder prettyXml([int indent = 2]) {
    _prettyXml = indent;
    return this;
  }

  /// Pretty-print recorded JSON response bodies (indent 1..16; 0 = off), keeping key order and number spellings; request bodies are never changed.
  RecordBuilder prettyJson([int indent = 2]) {
    _prettyJson = indent;
    return this;
  }

  /// Verify an `https://` upstream against this PEM CA file.
  RecordBuilder upstreamCafile(String path) {
    _upstreamCafile = path;
    return this;
  }

  /// Put [text] under `## LICENSE NOTICE` at the top of each tape; playback
  /// ignores it.
  RecordBuilder addLicenseNotice(String text) {
    _licenseNotice = text;
    return this;
  }

  /// Opt-in stable order: sort JSON object keys at every depth in recorded JSON
  /// response bodies. Sorted JSON is only written pretty-printed: without
  /// [prettyJson], `close()` throws [VcrException] "sort_json_keys needs
  /// pretty_json: ..." and writes nothing.
  RecordBuilder sortJsonKeys([bool on = true]) {
    _sortJsonKeys = on;
    return this;
  }

  /// Sort the JSON response arrays [path] selects (JSON pointer from the root,
  /// `*` for one segment, `""` the root array, or a bare member name) by member
  /// [by] (`""` = each element's canonical JSON). A refused rule makes
  /// `start()` throw; needs [prettyJson] like [sortJsonKeys].
  RecordBuilder sortJsonArray(String path, [String by = '']) {
    _sortJsonArrays.add(('', path, by));
    return this;
  }

  /// As [sortJsonArray], only for interactions whose request path (query
  /// included) matches the regex [request].
  RecordBuilder sortJsonArrayAt(String request, String path, [String by = '']) {
    _sortJsonArrays.add((request, path, by));
    return this;
  }

  /// Opt-in stable order: response header lines sorted by name
  /// (case-insensitive); a repeated header's lines keep their order.
  RecordBuilder sortResponseHeaders([bool on = true]) {
    _sortResponseHeaders = on;
    return this;
  }

  /// Opt-in stable order: one response header's comma-separated items sorted
  /// (`Allow`); repeatable.
  RecordBuilder sortHeaderValue(String name) {
    _sortHeaderValues.add(name);
    return this;
  }

  /// On close, still write the freshly recorded tape but throw if it differs
  /// from the on-disk one (the drift contract).
  RecordBuilder failIfChanged([bool on = true]) {
    _failIfChanged = on;
    return this;
  }

  @override
  void _applyConfig(Pointer<Void> handle) {
    super._applyConfig(handle);
    if (_indentCodeBlocks) Native.indentCodeBlocks(handle);
    if (_emphasizeHttpVerbs) Native.emphasizeHttpVerbs(handle);
    if (_prettyXml > 0) Native.setPrettyXml(handle, _prettyXml);
    if (_prettyJson > 0) Native.setPrettyJson(handle, _prettyJson);
    final cafile = _upstreamCafile;
    if (cafile != null) {
      withUtf8(cafile, (c) => _check(Native.setUpstreamCafile(handle, c), 'upstreamCafile'));
    }
    final notice = _licenseNotice;
    if (notice != null) {
      withUtf8(notice, (t) => _check(Native.addLicenseNotice(handle, t), 'addLicenseNotice'));
    }
    if (_sortJsonKeys) Native.setSortJsonKeys(handle, 1);
    for (final (request, path, by) in _sortJsonArrays) {
      withUtf8(path, (p) => withUtf8(by, (b) {
            if (request.isEmpty) {
              _check(Native.sortJsonArray(handle, p, b), 'sortJsonArray');
            } else {
              withUtf8(request, (r) => _check(Native.sortJsonArrayAt(handle, r, p, b), 'sortJsonArrayAt'));
            }
          }));
    }
    if (_sortResponseHeaders) Native.setSortResponseHeaders(handle, 1);
    for (final name in _sortHeaderValues) {
      withUtf8(name, (n) => _check(Native.sortHeaderValue(handle, n), 'sortHeaderValue'));
    }
    for (final (operation, field, pattern, replacement) in _redactions) {
      final call = switch (operation) {
        'header' => Native.redactHeader,
        'query_param' => Native.redactQueryParam,
        'json_field' => Native.redactJsonField,
        _ => Native.redact,
      };
      withUtf8(pattern, (p) => withUtf8(replacement,
          (r) => _check(call(handle, field.value, p, r), 'redact')));
    }
    for (final (pattern, name) in _normalizeWholeTape) {
      withUtf8(pattern, (p) => withUtf8(name,
          (n) => _check(Native.normalizeWholeTape(handle, p, n), 'normalizeWholeTape')));
    }
    for (final (pattern, replacement) in _redactWholeTape) {
      withUtf8(pattern, (p) => withUtf8(replacement,
          (r) => _check(Native.redactWholeTape(handle, p, r), 'redactWholeTape')));
    }
  }

  /// Open the record server, apply this fixture's config to its handle, then
  /// begin serving. Throws [VcrException] if it fails to bind.
  VcrServer start() {
    Native.configure(_nativeLib);
    final handle = _adoptOpen(
        withUtf8(
            _label,
            (l) => withUtf8(
                _tapePath,
                (t) => withUtf8(
                    _upstreamBase,
                    (u) => withUtf8(
                        _host, (h) => Native.openRecord(l, t, u, h, _port))))),
        "vcr record failed to start for tape '$_tapePath' "
        "(upstream '$_upstreamBase')");
    return _releaseOnFailure(handle, () {
      _applyConfig(handle);
      // Stage the note now (openRecord cleared the tape) so it attaches to the
      // first interaction the SUT triggers, before serving begins.
      final n = _note;
      if (n != null) {
        withUtf8(n.$1,
            (t) => withUtf8(n.$2, (b) => _check(Native.note(handle, t, b), 'note')));
      }
      if (Native.start(handle) < 0) {
        final err = _drainStartError(handle);
        throw VcrException(
            "vcr record failed to begin serving for tape '$_tapePath': $err");
      }
      return VcrServer._(handle, _host, _tapePath,
          recordMode: true, failIfChanged: _failIfChanged, secretRedactor: _secretRedactor);
    });
  }
}

/// A running VCR server. Call [close] to stop it; in record mode [close] also
/// flushes the captured tape to disk (and throws on drift if `failIfChanged`).
class VcrServer {
  VcrServer._(this._handle, this._host, this._tapePath,
      {required bool recordMode, required bool failIfChanged, SecretRedactor? secretRedactor})
      : _recordMode = recordMode,
        _failIfChanged = failIfChanged,
        _secretRedactor = secretRedactor;

  Pointer<Void> _handle;
  final String _host;
  final String _tapePath;
  final bool _recordMode;
  final bool _failIfChanged;
  final SecretRedactor? _secretRedactor;
  String? _baseUrl;

  Pointer<Void> get _requireHandle {
    if (_handle == nullptr) throw VcrException('VcrServer is closed');
    return _handle;
  }

  /// The OS-resolved port the server is listening on.
  int get port => Native.port(_requireHandle);

  /// Base URL the SUT should target, e.g. `http://127.0.0.1:54213`.
  String get baseUrl => _baseUrl ??=
      withUtf8(_host, (h) => takeString(Native.baseUrl(_requireHandle, h)))!;

  /// Tape entry count (playback), or interactions captured so far (record).
  int get tapeLength => Native.tapeLength(_requireHandle);

  /// Latest retained replay diagnostic; consuming reads acknowledge without erasing.
  String get lastError => takeString(Native.lastError(_requireHandle));

  /// Read the latest retained diagnostic; false observes without acknowledging.
  String readLastError({bool consume = true}) => takeString(Native.lastErrorEx(_requireHandle, consume ? 1 : 0));
  String diagnosticsJson({bool consume = false}) => takeString(Native.diagnosticsJson(_requireHandle, consume ? 1 : 0));
  void assertNoMismatches() => _check(Native.assertNoMismatches(_requireHandle), 'assertNoMismatches');

  /// TLS protocol negotiated by the listener (`TLSv1.3`), or '' when TLS is off.
  String get lastTlsProtocol => takeString(Native.lastTlsProtocol(_requireHandle));

  /// Playback: throws [VcrException] unless every recorded interaction was replayed.
  void assertAllConsumed() => _check(Native.assertAllConsumed(_requireHandle), 'assertAllConsumed');

  /// Throws unless every redaction / unredaction / substitution rule matched at least once.
  void assertAllRedactionsUsed() =>
      _check(Native.assertAllRedactionsUsed(_requireHandle), 'assertAllRedactionsUsed');

  /// Throws if any unfilled placeholder remains in a replayed response.
  void assertNoUnfilledPlaceholders() =>
      _check(Native.assertNoUnfilledPlaceholders(_requireHandle), 'assertNoUnfilledPlaceholders');

  /// Drop all registered substitutions on the running server.
  void clearSubstitutions() => Native.clearSubstitutions(_requireHandle);

  void testContext(String name, {String sourceFile = '', int sourceLine = 0}) {
    withUtf8(name, (n) => withUtf8(sourceFile, (f) => Native.testContext(_requireHandle, n, f, sourceLine)));
  }

  /// Outcome of the most-recent dispatch.
  VcrOutcome get lastKind => VcrOutcome.fromValue(Native.lastKind(_requireHandle));

  /// Tape index of the most-recent matched interaction, or -1.
  int get lastIndex => Native.lastIndex(_requireHandle);

  /// Stage a note (record mode) for the *next* interaction to be captured.
  void note(String title, String body) {
    final h = _requireHandle;
    withUtf8(title, (t) => withUtf8(body, (b) => _check(Native.note(h, t, b), 'note')));
  }

  /// Whether recorded JSON object keys are sorted (the `sortJsonKeys` opt-in).
  bool get sortJsonKeys => Native.getSortJsonKeys(_requireHandle) != 0;

  /// Whether recorded response header lines are sorted (the `sortResponseHeaders` opt-in).
  bool get sortResponseHeaders => Native.getSortResponseHeaders(_requireHandle) != 0;

  /// Turn every stable-order rule off.
  void clearStableOrder() => Native.clearStableOrder(_requireHandle);

  /// Playback only: replay just interactions [from]..[to] ([to] < 0 = through
  /// the last). Prefer [PlaybackBuilder.playbackRange]; this is the same call on
  /// a running server, before traffic. Throws [VcrException] on a record server
  /// (a recording always captures the whole conversation) or a bad range.
  void setPlaybackRange(int from, [int to = -1]) =>
      _check(Native.setPlaybackRange(_requireHandle, from, to), 'setPlaybackRange');

  /// Replay the whole tape again.
  void clearPlaybackRange() => Native.clearPlaybackRange(_requireHandle);

  /// The playback range as `(from, to)`, or null when the whole tape is replayed.
  (int, int)? get playbackRange {
    final from = Native.getPlaybackRangeFrom(_requireHandle);
    if (from < 0) return null;
    return (from, Native.getPlaybackRangeTo(_requireHandle));
  }

  /// Rewind the replay cursor to interaction 0 and clear last-* slots.
  void resetCursor() => Native.resetCursor(_requireHandle);

  /// Clear the last-error slot between sub-cases.
  void clearLastError() => Native.clearLastError(_requireHandle);

  /// Record mode: stop the server and DROP the captured recording WITHOUT
  /// writing a tape. Call this on a test's failure path so a failed run never
  /// mints a tape that later replays as the truth. Safe to call before [close]
  /// — once discarded, close writes nothing. No-op outside record mode.
  void discard() {
    if (_handle == nullptr) return;
    final h = _handle;
    _handle = nullptr;
    try {
      if (!_recordMode) {
        Native.stop(h);
        return;
      }
      withUtf8(_tapePath, (t) => takeString(Native.discard(h, t)));
    } finally {
      Native.destroy(h);
    }
  }

  /// Stop the server; flush the tape if recording. Throws [VcrException] on a
  /// record-mode flush error or drift (when `failIfChanged` was set).
  void close() {
    if (_handle == nullptr) return;
    final h = _handle;
    _handle = nullptr;

    try {
      if (!_recordMode) {
        Native.stop(h);
        return;
      }

      if (_secretRedactor != null) { _secretStage(h, redactor: _secretRedactor); }
      final resultPtr = withUtf8(
          _tapePath,
          (t) => _failIfChanged
              ? Native.stopAndFlushFailIfChanged(h, t)
              : Native.stopAndFlush(h, t));
      final err = takeString(resultPtr);
      if (err.isNotEmpty) {
        throw VcrException(err);
      }
    } finally {
      Native.destroy(h); // stops first if secret staging failed
    }
  }
}
