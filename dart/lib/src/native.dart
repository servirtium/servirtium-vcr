/// Raw `dart:ffi` surface over the native VCR library.
///
/// 1:1 with the `aether_vcr_embed_*` C-ABI exported by
/// `std/http/server/vcr/embed.ae` (Aether). This file owns library
/// location/loading, the typedef/lookup declarations, and the
/// string-ownership helpers.
///
/// Per-listener contract (matching the Aether side): N independent VCR
/// servers can run concurrently in one process, each keyed by its own handle;
/// every config / diagnostic / lifecycle call takes the handle. Lifecycle is
/// open -> configure(handle) -> start.
///
/// Returned `char*` values are caller-owned and NUL-terminated; copy them to a
/// Dart [String] and free them with `aether_vcr_embed_free_string` (see
/// [takeString]).
library;

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

/// Native library base name (no `lib` prefix / extension).
const String _libBase = 'servirtium_vcr';

String _fileName() {
  if (Platform.isWindows) return '$_libBase.dll';
  if (Platform.isMacOS) return 'lib$_libBase.dylib';
  return 'lib$_libBase.so';
}

/// Yields candidate library paths in resolution order:
/// 1. `SERVIRTIUM_VCR_LIB` (explicit path — point it at a fresh
///    `ae build --emit=lib` artifact during development);
/// 2. the package's bundled `native/` directory (resolved relative to this
///    source file's parent-parent — i.e. the package root);
/// 3. the bare file name (let the OS loader try).
Iterable<String> _candidatePaths() sync* {
  final override = Platform.environment['SERVIRTIUM_VCR_LIB'];
  if (override != null && override.isNotEmpty) yield override;

  final file = _fileName();

  // Resolve the package root from this library's URI: .../lib/src/native.dart
  // -> package root is two directories up from `lib/src`.
  final self = Platform.script; // not always this file; use a robust fallback.
  // Best effort: walk up from the current script and the CWD looking for
  // native/<file>. The reliable anchor in tests is the package root CWD.
  final roots = <String>{
    Directory.current.path,
    if (self.scheme == 'file') File.fromUri(self).parent.path,
  };
  for (final root in roots) {
    yield '$root/native/$file';
    yield '$root/../native/$file';
  }

  yield file;
}

DynamicLibrary _openLibrary() {
  Object? lastErr;
  for (final candidate in _candidatePaths()) {
    if (candidate.isEmpty) continue;
    final isBareName = !candidate.contains('/') && !candidate.contains('\\');
    if (!isBareName && !File(candidate).existsSync()) continue;
    try {
      return DynamicLibrary.open(candidate);
    } catch (e) {
      lastErr = e;
    }
  }
  // Last resort: bare name via OS loader.
  try {
    return DynamicLibrary.open(_fileName());
  } catch (e) {
    lastErr = e;
  }
  throw StateError(
    "could not load native VCR library '${_fileName()}'. Build it with "
    './build-native.sh or set SERVIRTIUM_VCR_LIB to its path.'
    '${lastErr != null ? ' (last error: $lastErr)' : ''}',
  );
}

final DynamicLibrary _lib = _openLibrary();

// ---- C function typedefs --------------------------------------------------
// Handle and returned strings are Pointer<Void> / Pointer<Utf8>.

typedef _StartPlaybackC = Pointer<Void> Function(
    Pointer<Utf8> label, Pointer<Utf8> tapePath, Pointer<Utf8> host, Int32 port);
typedef _StartPlaybackD = Pointer<Void> Function(
    Pointer<Utf8> label, Pointer<Utf8> tapePath, Pointer<Utf8> host, int port);

typedef _StartRecordC = Pointer<Void> Function(Pointer<Utf8> label,
    Pointer<Utf8> tapePath, Pointer<Utf8> upstreamBase, Pointer<Utf8> host, Int32 port);
typedef _StartRecordD = Pointer<Void> Function(Pointer<Utf8> label,
    Pointer<Utf8> tapePath, Pointer<Utf8> upstreamBase, Pointer<Utf8> host, int port);

typedef _StopC = Void Function(Pointer<Void> server);
typedef _StopD = void Function(Pointer<Void> server);

typedef _FlushC = Pointer<Utf8> Function(Pointer<Void> server, Pointer<Utf8> tapePath);
typedef _FlushD = Pointer<Utf8> Function(Pointer<Void> server, Pointer<Utf8> tapePath);

typedef _PortC = Int32 Function(Pointer<Void> server);
typedef _PortD = int Function(Pointer<Void> server);

typedef _BaseUrlC = Pointer<Utf8> Function(Pointer<Void> server, Pointer<Utf8> host);
typedef _BaseUrlD = Pointer<Utf8> Function(Pointer<Void> server, Pointer<Utf8> host);

typedef _StartC = Int32 Function(Pointer<Void> server);
typedef _StartD = int Function(Pointer<Void> server);

typedef _IntHandleC = Int32 Function(Pointer<Void> server);
typedef _IntHandleD = int Function(Pointer<Void> server);

typedef _VoidHandleC = Void Function(Pointer<Void> server);
typedef _VoidHandleD = void Function(Pointer<Void> server);

typedef _StrHandleC = Pointer<Utf8> Function(Pointer<Void> server);
typedef _StrHandleD = Pointer<Utf8> Function(Pointer<Void> server);

typedef _RedactC = Pointer<Utf8> Function(
    Pointer<Void> server, Int32 field, Pointer<Utf8> pattern, Pointer<Utf8> replacement);
typedef _RedactD = Pointer<Utf8> Function(
    Pointer<Void> server, int field, Pointer<Utf8> pattern, Pointer<Utf8> replacement);

typedef _RemoveHeaderC = Pointer<Utf8> Function(Pointer<Void> server, Int32 field, Pointer<Utf8> name);
typedef _RemoveHeaderD = Pointer<Utf8> Function(Pointer<Void> server, int field, Pointer<Utf8> name);

typedef _NoteC = Pointer<Utf8> Function(Pointer<Void> server, Pointer<Utf8> title, Pointer<Utf8> body);
typedef _NoteD = Pointer<Utf8> Function(Pointer<Void> server, Pointer<Utf8> title, Pointer<Utf8> body);

typedef _StaticC = Pointer<Utf8> Function(Pointer<Void> server, Pointer<Utf8> mount, Pointer<Utf8> dir);
typedef _StaticD = Pointer<Utf8> Function(Pointer<Void> server, Pointer<Utf8> mount, Pointer<Utf8> dir);

typedef _UntapedC = Pointer<Utf8> Function(Pointer<Void> server, Pointer<Utf8> path);
typedef _UntapedD = Pointer<Utf8> Function(Pointer<Void> server, Pointer<Utf8> path);

typedef _SetIntC = Void Function(Pointer<Void> server, Int32 on);
typedef _SetIntD = void Function(Pointer<Void> server, int on);

typedef _FreeStringC = Void Function(Pointer<Utf8> s);
typedef _FreeStringD = void Function(Pointer<Utf8> s);

// ---- bound functions ------------------------------------------------------

/// Raw bindings over the native VCR library. Centralizes every `lookupFunction`
/// so the public API never touches a symbol name.
class Native {
  Native._();

  // ---- lifecycle ----------------------------------------------------------
  static final openPlayback = _lib.lookupFunction<_StartPlaybackC, _StartPlaybackD>(
      'aether_vcr_embed_open_playback');
  static final openPlaybackUrl = _lib.lookupFunction<_StartPlaybackC, _StartPlaybackD>(
      'aether_vcr_embed_open_playback_url');
  static final openRecord =
      _lib.lookupFunction<_StartRecordC, _StartRecordD>('aether_vcr_embed_open_record');
  static final start = _lib.lookupFunction<_StartC, _StartD>('aether_vcr_embed_start');
  static final stop = _lib.lookupFunction<_StopC, _StopD>('aether_vcr_embed_stop');
  static final stopAndFlush =
      _lib.lookupFunction<_FlushC, _FlushD>('aether_vcr_embed_stop_and_flush');
  static final stopAndFlushFailIfChanged = _lib.lookupFunction<_FlushC, _FlushD>(
      'aether_vcr_embed_stop_and_flush_fail_if_changed');
  static final stopAndFlushOrCheck = _lib.lookupFunction<_FlushC, _FlushD>(
      'aether_vcr_embed_stop_and_flush_or_check');

  // ---- introspection ------------------------------------------------------
  static final port = _lib.lookupFunction<_PortC, _PortD>('aether_vcr_embed_port');
  static final baseUrl =
      _lib.lookupFunction<_BaseUrlC, _BaseUrlD>('aether_vcr_embed_base_url');
  static final tapeLength =
      _lib.lookupFunction<_IntHandleC, _IntHandleD>('aether_vcr_embed_tape_length');
  static final resetCursor =
      _lib.lookupFunction<_VoidHandleC, _VoidHandleD>('aether_vcr_embed_reset_cursor');

  // ---- diagnostics (handle-based) -----------------------------------------
  static final lastError =
      _lib.lookupFunction<_StrHandleC, _StrHandleD>('aether_vcr_embed_last_error');
  static final lastKind =
      _lib.lookupFunction<_IntHandleC, _IntHandleD>('aether_vcr_embed_last_kind');
  static final lastIndex =
      _lib.lookupFunction<_IntHandleC, _IntHandleD>('aether_vcr_embed_last_index');
  static final clearLastError = _lib
      .lookupFunction<_VoidHandleC, _VoidHandleD>('aether_vcr_embed_clear_last_error');

  // ---- mutations / config (call BEFORE start; return "" or an error) ------
  static final redact = _lib.lookupFunction<_RedactC, _RedactD>('aether_vcr_embed_redact');
  static final unredact =
      _lib.lookupFunction<_RedactC, _RedactD>('aether_vcr_embed_unredact');
  static final removeHeader = _lib
      .lookupFunction<_RemoveHeaderC, _RemoveHeaderD>('aether_vcr_embed_remove_header');
  static final strictIgnoreCommonHeaders = _lib.lookupFunction<_StrHandleC, _StrHandleD>(
      'aether_vcr_embed_strict_ignore_common_headers');
  static final note = _lib.lookupFunction<_NoteC, _NoteD>('aether_vcr_embed_note');
  static final staticContent =
      _lib.lookupFunction<_StaticC, _StaticD>('aether_vcr_embed_static_content');
  static final untaped =
      _lib.lookupFunction<_UntapedC, _UntapedD>('aether_vcr_embed_untaped');
  static final setStrictHeaders =
      _lib.lookupFunction<_SetIntC, _SetIntD>('aether_vcr_embed_set_strict_headers');
  static final indentCodeBlocks = _lib
      .lookupFunction<_VoidHandleC, _VoidHandleD>('aether_vcr_embed_indent_code_blocks');
  static final emphasizeHttpVerbs = _lib.lookupFunction<_VoidHandleC, _VoidHandleD>(
      'aether_vcr_embed_emphasize_http_verbs');
  static final clearRedactions = _lib
      .lookupFunction<_VoidHandleC, _VoidHandleD>('aether_vcr_embed_clear_redactions');
  static final clearUnredactions = _lib.lookupFunction<_VoidHandleC, _VoidHandleD>(
      'aether_vcr_embed_clear_unredactions');
  static final clearHeaderRemovals = _lib.lookupFunction<_VoidHandleC, _VoidHandleD>(
      'aether_vcr_embed_clear_header_removals');
  static final clearStaticContent = _lib.lookupFunction<_VoidHandleC, _VoidHandleD>(
      'aether_vcr_embed_clear_static_content');
  static final clearUntaped = _lib.lookupFunction<_VoidHandleC, _VoidHandleD>(
      'aether_vcr_embed_clear_untaped');
  static final clearFormatOptions = _lib.lookupFunction<_VoidHandleC, _VoidHandleD>(
      'aether_vcr_embed_clear_format_options');

  // ---- string ownership ---------------------------------------------------
  static final freeString =
      _lib.lookupFunction<_FreeStringC, _FreeStringD>('aether_vcr_embed_free_string');
}

/// Copy a caller-owned native `char*` into a Dart [String] and free it via
/// `aether_vcr_embed_free_string`, per the ABI's ownership rule. Returns the
/// empty string for a `nullptr`.
String takeString(Pointer<Utf8> ptr) {
  if (ptr == nullptr) return '';
  try {
    return ptr.toDartString();
  } finally {
    Native.freeString(ptr);
  }
}

/// Allocate a NUL-terminated UTF-8 copy of [value], run [body] with it, and
/// free the native buffer afterwards. Mirrors the C-string lifetime contract
/// for input arguments.
T withUtf8<T>(String value, T Function(Pointer<Utf8>) body) {
  final ptr = value.toNativeUtf8();
  try {
    return body(ptr);
  } finally {
    malloc.free(ptr);
  }
}
