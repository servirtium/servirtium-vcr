import 'dart:io';
import 'package:servirtium/servirtium.dart';
import 'package:test/test.dart';
void main() {
  test('named secrets round trip for four services', () {
    final dir = Directory.systemTemp.createTempSync('vcr-secrets-');
    final tape = '${dir.path}/tape.md';
    String run(List<String> args) {
      final result = Process.runSync('python3', ['../core_tests/secret_fixture.py', ...args]);
      expect(result.exitCode, 0, reason: '${result.stdout}${result.stderr}');
      return (result.stdout as String).trim();
    }
    try {
      var count = 0;
      final rec = Vcr.record(tape, run(['start', dir.path])).secretRedactor((key, request) {
        if (key != 'password') return null;
        count++; expect(request.fieldPath, isNotEmpty);
        return '${request.path.split('/')[1].toUpperCase()}_PASSWORD';
      }).start();
      try { run(['drive', rec.baseUrl]); expect(count, 0); } finally { rec.close(); }
      expect(count, 20); run(['check', tape]);
      expect(() => Vcr.playback(tape).start(), throwsA(isA<VcrException>()));
      final replay = Vcr.playback(tape).secretResolver((token) => 'pw-${token.replaceAll('_PASSWORD', '').toLowerCase()}&secret').start();
      try { run(['drive', replay.baseUrl]); replay.assertNoMismatches(); } finally { replay.close(); }
      run(['check', tape]);
    } finally { dir.deleteSync(recursive: true); }
  });
}
