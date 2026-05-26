/// TodoBackend browser integration test — PLAYBACK phase (the CI artifact).
///
/// Replays the committed CRUD tape through a Servirtium VCR and runs the real
/// TodoBackend Mocha spec against it in headless Chrome (Dart `webdriver`). No
/// SUT, no network — the whole CRUD conversation comes off the tape. This is
/// the offline test wired into aeb (.dart_playback.ae); record.dart regenerates
/// the tape.
///
/// Run via the .dart_playback.ae leaf, or directly from this dir:
///   SERVIRTIUM_VCR_LIB=../../../core/native/libservirtium_vcr.so \
///   dart test -j 1
@TestOn('vm')
library;

import 'package:servirtium/servirtium.dart';
import 'package:test/test.dart';

import 'browser.dart';

void main() {
  test('replays the TodoBackend CRUD tape and passes the Mocha suite in Chrome',
      () async {
    final vcr =
        Vcr.playback(tape).staticContent('/suite', suiteDir).untaped('/favicon.ico').port(vcrPort).start();
    try {
      final (passes, failures, msgs) = await runSuite(vcr.baseUrl);
      // ignore: avoid_print
      print('mocha (playback): $passes passed, $failures failed');
      for (final m in msgs) {
        // ignore: avoid_print
        print('  FAIL: $m');
      }
      expect(failures, 0, reason: msgs.join('\n'));
      expect(passes, greaterThan(0));
    } finally {
      vcr.close();
    }
  }, timeout: const Timeout(Duration(minutes: 3)));
}
