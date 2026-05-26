/// Idiomatic Dart record/replay fixtures over the Aether VCR core.
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
/// v1 contract (from the Aether side): ONE active VCR server per process. The
/// mutation/diagnostic state is process-global, so [PlaybackBuilder.start] /
/// [RecordBuilder.start] reset it to a clean slate before applying this
/// fixture's config — a redaction/note/strict setting from a previous test
/// never leaks forward. Run tests serially (one server per process at a time;
/// set `concurrency: 1`).
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'native.dart';

/// Field selector for redactions / unredactions / header removals. Values
/// mirror the `FIELD_*` constants in `std/http/server/vcr/module.ae`.
enum VcrField {
  path(1),
  responseBody(2),
  requestHeaders(3),
  requestBody(4),
  responseHeaders(5);

  const VcrField(this.value);

  /// The native field integer.
  final int value;
}

/// Per-dispatch outcome. Values mirror the `VCR_KIND_*` constants in the
/// Aether core. Read after a request to assert what the dispatcher decided.
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

/// Wipe all process-global mutation/format/strict state so a previous
/// fixture's settings can't leak into this one (v1 has no per-handle state).
void _resetGlobalState() {
  Native.clearRedactions();
  Native.clearUnredactions();
  Native.clearHeaderRemovals();
  Native.clearStaticContent();
  Native.clearUntaped();
  Native.clearFormatOptions();
  Native.setStrictHeaders(0);
  Native.clearLastError();
  // A staged-but-unconsumed note is reset core-side when start_* (re)loads
  // the tape, so there's nothing to clear here.
}

String _drainStartError() {
  final err = takeString(Native.lastError());
  return err.isNotEmpty ? err : '(no detail; check tape path and port availability)';
}

/// Entry point for record/replay fixtures backed by the Aether VCR core.
abstract final class Vcr {
  /// Replay a Servirtium markdown tape from disk.
  static PlaybackBuilder playback(String tapePath) => PlaybackBuilder._(tapePath);

  /// Record live interactions: forward to [upstreamBase], return the real
  /// response to the SUT, and capture the exchange. The tape is written to
  /// [tapePath] when the server is closed.
  static RecordBuilder record(String tapePath, String upstreamBase) =>
      RecordBuilder._(tapePath, upstreamBase);
}

/// Shared bind options for both builders.
abstract class _BuilderBase<T extends _BuilderBase<T>> {
  _BuilderBase(this._tapePath);

  final String _tapePath;
  String _host = '127.0.0.1';
  int _port = 0; // 0 => OS-assigned (dynamic)
  String _label = '';
  final List<(VcrField, String)> _headerRemovals = [];

  T get _self;

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

  /// Apply accumulated config after the reset and before start. Subclasses
  /// extend this.
  void _applyConfig() {
    for (final (field, name) in _headerRemovals) {
      withUtf8(name, (n) => _check(Native.removeHeader(field.value, n), 'removeHeader'));
    }
  }
}

/// Configures and starts a playback VCR server.
class PlaybackBuilder extends _BuilderBase<PlaybackBuilder> {
  PlaybackBuilder._(super.tapePath);

  final List<(VcrField, String, String)> _unredactions = [];
  final List<(String, String)> _staticContent = [];
  final List<String> _untaped = [];
  bool _strictHeaders = false;

  @override
  PlaybackBuilder get _self => this;

  /// Compare the SUT's request headers against the recorded block on every
  /// interaction, surfacing mismatches via [VcrServer.lastError].
  PlaybackBuilder strictHeaders([bool on = true]) {
    _strictHeaders = on;
    return this;
  }

  /// Replace a redacted placeholder in the recorded expectation with the real
  /// value the live SUT sends, so a scrubbed tape still matches.
  PlaybackBuilder unredact(VcrField field, String pattern, String replacement) {
    _unredactions.add((field, pattern, replacement));
    return this;
  }

  /// Serve a path prefix from an on-disk directory instead of the tape.
  PlaybackBuilder staticContent(String mountPath, String fsDir) {
    _staticContent.add((mountPath, fsDir));
    return this;
  }

  /// Mark an incidental request path (e.g. `/favicon.ico`) the VCR answers 404
  /// for without consuming the tape cursor — a normal interaction recorded
  /// after it still matches.
  PlaybackBuilder untaped(String path) {
    _untaped.add(path);
    return this;
  }

  @override
  void _applyConfig() {
    super._applyConfig();
    if (_strictHeaders) Native.setStrictHeaders(1);
    for (final (field, pattern, replacement) in _unredactions) {
      withUtf8(pattern, (p) => withUtf8(replacement,
          (r) => _check(Native.unredact(field.value, p, r), 'unredact')));
    }
    for (final (mount, dir) in _staticContent) {
      withUtf8(mount,
          (m) => withUtf8(dir, (d) => _check(Native.staticContent(m, d), 'staticContent')));
    }
    for (final path in _untaped) {
      withUtf8(path, (p) => _check(Native.untaped(p), 'untaped'));
    }
  }

  /// Reset process-global state, apply this fixture's config, and start the
  /// playback server. Throws [VcrException] if it fails to bind/load.
  VcrServer start() {
    _resetGlobalState();
    _applyConfig();
    final handle = withUtf8(
        _label,
        (l) => withUtf8(
            _tapePath,
            (t) => withUtf8(
                _host, (h) => Native.startPlayback(l, t, h, _port))));
    if (handle == nullptr) {
      throw VcrException(
          "vcr playback failed to start for tape '$_tapePath': ${_drainStartError()}");
    }
    return VcrServer._(handle, _host, _tapePath, recordMode: false, failIfChanged: false);
  }
}

/// Configures and starts a record VCR server.
class RecordBuilder extends _BuilderBase<RecordBuilder> {
  RecordBuilder._(super.tapePath, this._upstreamBase);

  final String _upstreamBase;
  final List<(VcrField, String, String)> _redactions = [];
  (String, String)? _note;
  bool _indentCodeBlocks = false;
  bool _emphasizeHttpVerbs = false;
  bool _failIfChanged = false;

  @override
  RecordBuilder get _self => this;

  /// Scrub a value out of the given field before it lands on the tape.
  RecordBuilder redact(VcrField field, String pattern, String replacement) {
    _redactions.add((field, pattern, replacement));
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

  /// On close, still write the freshly recorded tape but throw if it differs
  /// from the on-disk one (the drift contract).
  RecordBuilder failIfChanged([bool on = true]) {
    _failIfChanged = on;
    return this;
  }

  @override
  void _applyConfig() {
    super._applyConfig();
    if (_indentCodeBlocks) Native.indentCodeBlocks();
    if (_emphasizeHttpVerbs) Native.emphasizeHttpVerbs();
    for (final (field, pattern, replacement) in _redactions) {
      withUtf8(pattern, (p) => withUtf8(replacement,
          (r) => _check(Native.redact(field.value, p, r), 'redact')));
    }
    // NOTE: the staged note is applied *after* start_record — load_record
    // clears the tape (and the pending note) as it binds, so staging it
    // pre-start would be wiped. See start().
  }

  /// Reset process-global state, apply this fixture's config, and start the
  /// record server. Throws [VcrException] if it fails to bind.
  VcrServer start() {
    _resetGlobalState();
    _applyConfig();
    final handle = withUtf8(
        _label,
        (l) => withUtf8(
            _tapePath,
            (t) => withUtf8(
                _upstreamBase,
                (u) => withUtf8(
                    _host, (h) => Native.startRecord(l, t, u, h, _port)))));
    if (handle == nullptr) {
      throw VcrException(
          "vcr record failed to start for tape '$_tapePath' "
          "(upstream '$_upstreamBase'): ${_drainStartError()}");
    }
    // Stage the note now (after load_record cleared the tape) so it attaches
    // to the first interaction the SUT triggers.
    final n = _note;
    if (n != null) {
      withUtf8(n.$1,
          (t) => withUtf8(n.$2, (b) => _check(Native.note(t, b), 'note')));
    }
    return VcrServer._(handle, _host, _tapePath,
        recordMode: true, failIfChanged: _failIfChanged);
  }
}

/// A running VCR server. Call [close] to stop it; in record mode [close] also
/// flushes the captured tape to disk (and throws on drift if `failIfChanged`).
class VcrServer {
  VcrServer._(this._handle, this._host, this._tapePath,
      {required bool recordMode, required bool failIfChanged})
      : _recordMode = recordMode,
        _failIfChanged = failIfChanged;

  Pointer<Void> _handle;
  final String _host;
  final String _tapePath;
  final bool _recordMode;
  final bool _failIfChanged;
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
  int get tapeLength => Native.tapeLength();

  /// Most-recent dispatch diagnostic; empty when none flagged.
  String get lastError => takeString(Native.lastError());

  /// Outcome of the most-recent dispatch.
  VcrOutcome get lastKind => VcrOutcome.fromValue(Native.lastKind());

  /// Tape index of the most-recent matched interaction, or -1.
  int get lastIndex => Native.lastIndex();

  /// Stage a note (record mode) for the *next* interaction to be captured.
  void note(String title, String body) {
    withUtf8(title, (t) => withUtf8(body, (b) => _check(Native.note(t, b), 'note')));
  }

  /// Rewind the replay cursor to interaction 0 and clear last-* slots.
  void resetCursor() => Native.resetCursor();

  /// Clear the last-error slot between sub-cases.
  void clearLastError() => Native.clearLastError();

  /// Stop the server; flush the tape if recording. Throws [VcrException] on a
  /// record-mode flush error or drift (when `failIfChanged` was set).
  void close() {
    if (_handle == nullptr) return;
    final h = _handle;
    _handle = nullptr;

    if (!_recordMode) {
      Native.stop(h);
      return;
    }

    final resultPtr = withUtf8(
        _tapePath,
        (t) => _failIfChanged
            ? Native.stopAndFlushFailIfChanged(h, t)
            : Native.stopAndFlush(h, t));
    final err = takeString(resultPtr);
    if (err.isNotEmpty) {
      throw VcrException(err);
    }
  }
}
