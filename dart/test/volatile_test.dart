@TestOn('vm')
library;

import 'dart:io';

import 'package:servirtium/servirtium.dart';
import 'package:test/test.dart';

String _tapes(String name) => File('../core_tests/volatile/$name').absolute.path;

ProcessResult _driver(String mode, String base) =>
    Process.runSync('../target/test-tools/volatile_fixture', [mode, base]);

void _ok(ProcessResult r) => expect(r.exitCode, 0, reason: '${r.stdout}${r.stderr}');

Matcher _failsWith(List<String> parts) => throwsA(isA<VcrException>()
    .having((e) => e.toString(), 'message', allOf(parts.map(contains).toList())));

void main() {
  test('tape-declared rules apply with none in code', () {
    final s = Vcr.playback(_tapes('wcf.md')).prettyXml(2).start();
    try {
      _ok(_driver('wcf', s.baseUrl));
      expect(s.volatileReport(), contains('binding: {{messageId-1}} = '));
    } finally { s.close(); }
  });

  test('profile file', () {
    final s = Vcr.playback(_tapes('wcf_plain.md')).prettyXml(2)
        .volatileProfile(_tapes('profile.md')).start();
    try { _ok(_driver('wcf', s.baseUrl)); } finally { s.close(); }
  });

  test('rules in code', () {
    final s = Vcr.playback(_tapes('wcf_plain.md')).prettyXml(2)
        .volatileRule('request body', r'<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>')
        .volatileRule('request body', r'<a:To s:mustUnderstand="1">{{endpoint}}/Services/')
        .volatileRule('request body', r'&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;')
        .volatileRule('response body', r'<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>')
        .start();
    try { _ok(_driver('wcf', s.baseUrl)); } finally { s.close(); }
  });

  test('markers', () {
    final s = Vcr.playback(_tapes('wcf_dollar.md')).prettyXml(2)
        .volatileMarkers(VolatileMarkers.dollarCurly).start();
    try { _ok(_driver('wcf', s.baseUrl)); } finally { s.close(); }
    expect(() => Vcr.playback(_tapes('wcf_dollar.md')).prettyXml(2).start(),
        _failsWith(['DollarCurly']));
  });

  test('cases: correlation and mismatch diagnostics', () {
    final s = Vcr.playback(_tapes('cases.md')).start();
    try {
      _ok(_driver('cases', s.baseUrl));
      s.resetCursor();
      _ok(_driver('cases-mismatch', s.baseUrl));
      expect(s.readLastError(consume: false), contains('{{caseId-1}} = 42'));
      s.lastError; // consuming read: nothing left unretrieved at close
    } finally { s.close(); }
  });

  test('bind', () {
    expect(() => Vcr.playback(_tapes('cases_recorded.md')).start(), _failsWith(['caseId']));
    final s = Vcr.playback(_tapes('cases_recorded.md')).bind('caseId', '42').start();
    try { _ok(_driver('cases', s.baseUrl)); } finally { s.close(); }
  });

  test('bad rules fail start with the core message', () {
    expect(() => Vcr.playback(_tapes('cases.md')).volatileRule('request body', 'no placeholder').start(),
        _failsWith(['needs at least one placeholder']));
    expect(() => Vcr.playback(_tapes('cases.md'))
            .volatileRule('response body', r'"caseId":"{{id}}"').start(),
        _failsWith(['conflicts with', '(tape)']));
    expect(() => Vcr.playback(_tapes('cases.md')).volatileRule('x', 'a {{b}}', 'regex').start(),
        throwsA(isA<VcrException>()));
  });
}
