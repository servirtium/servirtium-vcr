/// Raw `dart:ffi` surface over the native VCR library.
///
/// 1:1 with the `aether_vcr_embed_*` C-ABI exported by the in-repo
/// `core/embed.ae` engine (built on Aether stdlib primitives). This file owns
/// library location/loading, the typedef/lookup declarations, and the
/// string-ownership helpers.
///
/// Per-listener contract (matching the `core/vcr.ae` engine): N independent VCR
/// servers can run concurrently, one server per port, each keyed by its own
/// handle; every config / diagnostic / lifecycle call takes the handle.
/// Lifecycle is open -> configure(handle) -> start.
///
/// Returned `char*` values are caller-owned and NUL-terminated; copy them to a
/// Dart [String] and free them with `aether_vcr_embed_free_string` (see
/// [takeString]).
library;

import 'dart:convert';
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

/// An explicit path pinned by the caller via `.nativeLib()` / [Native.configure].
/// Wins over discovery. Only meaningful before the library is first loaded
/// (`_lib` is a lazy final — initialized on first native use).
String? _explicitPath;

/// Yields candidate library paths in resolution order:
/// 1. an explicit path pinned via `.nativeLib()` / [Native.configure];
/// 2. `SERVIRTIUM_VCR_LIB` (env override — a fresh dev `ae build --emit=lib`);
/// 3. the package's own bundled `lib/native/<file>`, self-located from the
///    consumer's `.dart_tool/package_config.json` (how an INSTALLED pub package
///    — a `path:` or hosted dependency — finds its shipped `.so`);
/// 4. CWD / entrypoint-relative `native/` (in-repo `dart test` from the package
///    root);
/// 5. the bare file name (let the OS loader try).
Iterable<String> _candidatePaths() sync* {
  final file = _fileName();

  final explicit = _explicitPath;
  if (explicit != null && explicit.isNotEmpty) yield explicit;

  final override = Platform.environment['SERVIRTIUM_VCR_LIB'];
  if (override != null && override.isNotEmpty) yield override;

  // The reliable self-location for an installed package: read the running
  // project's package_config and find the `servirtium` package's own root.
  for (final root in _servirtiumPackageRoots()) {
    yield '$root/lib/native/$file';
    yield '$root/native/$file';
  }

  final self = Platform.script;
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

/// Resolve the on-disk root(s) of the `servirtium` package by reading the
/// nearest `.dart_tool/package_config.json` (walking up from the CWD).
/// Synchronous — callable from the lazy `_lib` initializer. Yields nothing when
/// there is no package_config (e.g. full AOT / Flutter release, which bundle
/// native assets differently).
Iterable<String> _servirtiumPackageRoots() sync* {
  var dir = Directory.current.absolute;
  for (var i = 0; i < 16; i++) {
    final cfg = File('${dir.path}/.dart_tool/package_config.json');
    if (cfg.existsSync()) {
      try {
        final json = jsonDecode(cfg.readAsStringSync()) as Map<String, dynamic>;
        final packages = (json['packages'] as List).cast<Map<String, dynamic>>();
        // rootUri entries are relative to the .dart_tool/ directory.
        final base = Uri.directory('${dir.path}/.dart_tool/');
        for (final p in packages) {
          if (p['name'] == 'servirtium') {
            final resolved = base.resolveUri(Uri.parse(p['rootUri'] as String));
            yield File.fromUri(resolved).path.replaceAll(RegExp(r'[/\\]$'), '');
          }
        }
      } catch (_) {
        // Ignore a malformed/absent config; other candidates still apply.
      }
      return;
    }
    final parent = dir.parent;
    if (parent.path == dir.path) break;
    dir = parent;
  }
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

typedef _WholeTapeC = Pointer<Utf8> Function(
    Pointer<Void> server, Pointer<Utf8> pattern, Pointer<Utf8> nameOrReplacement);
typedef _WholeTapeD = Pointer<Utf8> Function(
    Pointer<Void> server, Pointer<Utf8> pattern, Pointer<Utf8> nameOrReplacement);

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

typedef _MatchHeaderC = Void Function(Pointer<Void> server, Pointer<Utf8> name);
typedef _MatchHeaderD = void Function(Pointer<Void> server, Pointer<Utf8> name);

typedef _FreeStringC = Void Function(Pointer<Utf8> s);
typedef _FreeStringD = void Function(Pointer<Utf8> s);

// ---- bound functions ------------------------------------------------------

/// Raw bindings over the native VCR library. Centralizes every `lookupFunction`
/// so the public API never touches a symbol name.
class Native {
  Native._();

  /// Pin an explicit path to the native library, used at first load. Backs the
  /// first-class `.nativeLib()` builder argument; wins over the bundled
  /// `lib/native/` default and the `SERVIRTIUM_VCR_LIB` env override. No-op once
  /// the library has already been loaded (set it before the first `.start()`).
  static void configure(String? path) {
    if (path != null && path.isNotEmpty) _explicitPath ??= path;
  }

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
  static final normalizeWholeTape = _lib.lookupFunction<_WholeTapeC, _WholeTapeD>(
      'aether_vcr_embed_normalize_whole_tape');
  static final redactWholeTape = _lib.lookupFunction<_WholeTapeC, _WholeTapeD>(
      'aether_vcr_embed_redact_whole_tape');
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
  static final setMatchJsonBody =
      _lib.lookupFunction<_SetIntC, _SetIntD>('aether_vcr_embed_set_match_json_body');
  static final setMatchMultiple =
      _lib.lookupFunction<_SetIntC, _SetIntD>('aether_vcr_embed_set_match_multiple');
  static final matchHeader = _lib
      .lookupFunction<_MatchHeaderC, _MatchHeaderD>('aether_vcr_embed_match_header');
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
