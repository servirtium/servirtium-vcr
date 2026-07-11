// Third-party consumer example for the servirtium pub package.
//
// A separate project that depends on `servirtium` via pub (a `path:` dep here;
// a hosted dep resolves identically). It imports `package:servirtium/...`,
// self-locates the native engine .so that ships inside the resolved package
// (lib/native/), and replays the canonical Servirtium tape — with no
// SERVIRTIUM_VCR_LIB, proving the package is self-contained.
//
// Two modes, each in its own fresh process:
//   dart run consumer_example.dart explicit    // first-class nativeLib:
//   dart run consumer_example.dart discovery    // zero-config self-location
//
// Exit 0 = pass.

import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:servirtium/servirtium.dart';

Never fail(String msg) {
  stderr.writeln('FAIL: $msg');
  exit(1);
}

Future<String> httpGet(String url) async {
  final client = HttpClient();
  try {
    final req = await client.getUrl(Uri.parse(url));
    final resp = await req.close();
    return await resp.transform(utf8.decoder).join();
  } finally {
    client.close(force: true);
  }
}

Future<void> play(PlaybackBuilder builder) async {
  final vcr = builder.port(0).start();
  try {
    final body = await httpGet('${vcr.baseUrl}/ok');
    if (body != 'ok-body') fail("expected body 'ok-body', got '$body'");
    if (vcr.lastKind != VcrOutcome.ok) {
      fail('expected VcrOutcome.ok, got ${vcr.lastKind}: ${vcr.lastError}');
    }
  } finally {
    vcr.close();
  }
}

Future<void> main(List<String> args) async {
  final mode = args.isNotEmpty ? args.first : 'explicit';

  // Prove we consume `servirtium` as a resolved pub dependency (not by importing
  // relative source files), and locate its bundled .so under the package root.
  final uri =
      await Isolate.resolvePackageUri(Uri.parse('package:servirtium/servirtium.dart'));
  if (uri == null) fail('servirtium is not resolvable as a pub dependency');
  final pkgRoot = File.fromUri(uri!).parent.parent.path; // .../<pkg>/lib/servirtium.dart -> <pkg>
  stdout.writeln('ok: consuming servirtium package at $pkgRoot');
  final bundledSo = '$pkgRoot/lib/native/libservirtium_vcr.so';

  final tape = '${Directory.current.path}/tapes/single_get.md';

  switch (mode) {
    case 'explicit':
      if (!File(bundledSo).existsSync()) {
        fail('bundled engine .so missing from the resolved package: $bundledSo');
      }
      await play(Vcr.playback(tape, nativeLib: bundledSo));
      stdout.writeln('ok: explicit nativeLib: playback (bundled .so $bundledSo)');
    case 'discovery':
      await play(Vcr.playback(tape));
      stdout.writeln('ok: discovery playback (zero-config bundled .so)');
    default:
      fail("unknown mode '$mode'; expected 'explicit' or 'discovery'");
  }

  stdout.writeln('PASS[$mode]: consumer replayed the canonical tape from the resolved package');
}
