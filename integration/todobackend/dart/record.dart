/// TodoBackend browser integration test — RECORD phase (manual, on-demand).
///
/// VCR in record mode, forwarding to the live Kotlin/http4k SUT
/// (TODOBACKEND_UPSTREAM). The Mocha spec runs in headless Chrome (Dart
/// `webdriver`) against the VCR; every CRUD call is forwarded upstream and
/// recorded, then flushed to the tape on close. The suite must pass for the
/// recording to be considered good.
///
/// Driven by .dart_record.ae, which brings the SUT up in a container (started
/// with its baseUrl set to the VCR origin, so the todo URLs it returns point
/// back at the VCR) and tears it down afterward. Not an aeb node — recording is
/// on-demand and must never run during a normal build (it needs the container +
/// sibling source).
library;

import 'dart:io';

import 'package:servirtium/servirtium.dart';

import 'browser.dart';

Future<int> _main() async {
  final upstream = Platform.environment['TODOBACKEND_UPSTREAM'];
  if (upstream == null || upstream.isEmpty) {
    stdout.writeln('record.dart: set TODOBACKEND_UPSTREAM (e.g. http://127.0.0.1:54321)');
    return 2;
  }

  final vcr = Vcr.record(tape, upstream)
      .staticContent('/suite', suiteDir)
      .untaped('/favicon.ico')
      .port(vcrPort)
      .start();
  try {
    final (passes, failures, msgs) = await runSuite(vcr.baseUrl);
    stdout.writeln('mocha (record): $passes passed, $failures failed');
    for (final m in msgs) {
      stdout.writeln('  FAIL: $m');
    }
    if (failures != 0 || passes == 0) {
      stdout.writeln('record: suite did not pass against the live SUT; tape NOT trustworthy');
      return 1;
    }
  } finally {
    vcr.close(); // flushes the tape to TAPE
  }

  stdout.writeln('record: wrote $tape');
  return 0;
}

Future<void> main() async {
  exitCode = await _main();
}
