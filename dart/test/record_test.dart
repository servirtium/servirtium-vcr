@TestOn('vm')
library;

import 'dart:io';

import 'package:servirtium/servirtium.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {

  test('structured helpers forward credentials and scrub the tape', () {
    final directory = Directory.systemTemp.createTempSync('vcr-helpers-');
    final fixture = File('../target/test-tools/redaction_fixture').absolute.path;
    String run(List<String> args) {
      final result = Process.runSync(fixture, args);
      expect(result.exitCode, 0, reason: '${result.stdout}${result.stderr}');
      return (result.stdout as String).trim();
    }
    try {
      final upstream = run(['start', directory.path]);
      final rec = Vcr.record('${directory.path}/tape.md', upstream)
          .redactHeader('Authorization').redactQueryParam('password').redactJsonField('secretKey').start();
      try {
        run(['drive', directory.path, rec.baseUrl]);
        expect(rec.lastKind, VcrOutcome.ok);
      } finally { rec.close(); }
      run(['check', directory.path]);
    } finally { directory.deleteSync(recursive: true); }
  });

  test('retained replay diagnostics support observer reads', () {
    final server = Vcr.playback('../core_tests/diagnostics/playback.md').start();
    try {
      server.testContext('Dart scenario', sourceFile: 'scenario.test', sourceLine: 123);
      final result = Process.runSync('../target/test-tools/diagnostic_fixture', [server.baseUrl]);
      expect(result.exitCode, 0, reason: '${result.stdout}${result.stderr}');
      expect(server.readLastError(consume: false), contains('owner'));
      expect(server.readLastError(consume: false), contains('scenario.test:123'));
      expect(server.diagnosticsJson(), isNot(contains('"retrieved":1')));
      expect(server.lastError, contains('owner'));
      expect(server.diagnosticsJson(), contains('"retrieved":0'));
      expect(server.diagnosticsJson(), contains('"retrieved":1'));
      expect(() => server.assertNoMismatches(), throwsA(isA<VcrException>()));
      server.testContext('next test');
      server.assertNoMismatches();
      expect(server.diagnosticsJson(), '[]');
    } finally { server.close(); }
  });

  late HttpServer upstream;
  late String upstreamBase;
  late String tapePath;

  setUp(() async {
    upstream = await HttpServer.bind('127.0.0.1', 0);
    upstreamBase = 'http://127.0.0.1:${upstream.port}';
    upstream.listen((req) async {
      final json = req.uri.path == '/json';
      final body = json ? '{"zebra":1,"apple":{"mango":2,"banana":3}}' : 'hello-from-upstream';
      req.response
        ..headers.contentType = json ? ContentType.json : ContentType.text
        ..contentLength = body.length; // explicit length → non-chunked
      req.response.write(body);
      await req.response.close();
    });
    tapePath = '${Directory.systemTemp.path}/vcr_dart_${DateTime.now().microsecondsSinceEpoch}.md';
  });

  tearDown(() async {
    await upstream.close(force: true);
    final f = File(tapePath);
    if (f.existsSync()) f.deleteSync();
  });

  test('records then replays the same interaction', () async {
    final rec = Vcr.record(tapePath, upstreamBase).port(0).start();
    final (_, body) = await httpGet('${rec.baseUrl}/greeting');
    expect(body, 'hello-from-upstream');
    rec.close(); // flushes the tape

    expect(File(tapePath).existsSync(), isTrue);

    final play = Vcr.playback(tapePath).port(0).start();
    try {
      final (_, replayed) = await httpGet('${play.baseUrl}/greeting');
      expect(replayed, 'hello-from-upstream');
      expect(play.lastKind, VcrOutcome.ok);
    } finally {
      play.close();
    }
  });

  test('sortJsonKeys with prettyJson writes sorted, pretty JSON', () async {
    final rec = Vcr.record(tapePath, upstreamBase)
        .prettyJson(2)
        .sortJsonKeys()
        .sortJsonArray('/list')
        .sortJsonArrayAt('/data', '/list', 'id')
        .sortResponseHeaders()
        .sortHeaderValue('Allow')
        .port(0)
        .start();
    expect(rec.sortJsonKeys, isTrue);
    expect(rec.sortResponseHeaders, isTrue);
    await httpGet('${rec.baseUrl}/json');
    rec.close();
    expect(File(tapePath).readAsStringSync(),
        contains('{\n  "apple": {\n    "banana": 3,\n    "mango": 2\n  },\n  "zebra": 1\n}'));
  });

  test('sortJsonKeys without prettyJson is refused at emit time', () async {
    final rec = Vcr.record(tapePath, upstreamBase).sortJsonKeys().port(0).start();
    await httpGet('${rec.baseUrl}/json');
    expect(() => rec.close(),
        throwsA(isA<VcrException>().having((e) => e.message, 'message', contains('sort_json_keys needs pretty_json'))));
    expect(File(tapePath).existsSync(), isFalse);
    expect(() => Vcr.record(tapePath, upstreamBase).sortJsonArray('a/b').port(0).start(),
        throwsA(isA<VcrException>()));
  });

  test('a record server refuses a playback range', () {
    final rec = Vcr.record(tapePath, upstreamBase).port(0).start();
    try {
      expect(() => rec.setPlaybackRange(0, 1), throwsA(isA<VcrException>()));
      expect(rec.playbackRange, isNull);
    } finally {
      rec.discard();
    }
  });

  test('redacts response body before it lands on the tape', () async {
    final rec = Vcr.record(tapePath, upstreamBase)
        .redact(VcrField.responseBody, 'hello-from-upstream', 'REDACTED')
        .port(0)
        .start();
    await httpGet('${rec.baseUrl}/greeting');
    rec.close();

    final tape = File(tapePath).readAsStringSync();
    expect(tape, contains('REDACTED'));
    expect(tape, isNot(contains('hello-from-upstream')));
  });
}
