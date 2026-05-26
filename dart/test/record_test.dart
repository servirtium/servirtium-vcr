@TestOn('vm')
library;

import 'dart:io';

import 'package:servirtium/servirtium.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  late HttpServer upstream;
  late String upstreamBase;
  late String tapePath;

  setUp(() async {
    upstream = await HttpServer.bind('127.0.0.1', 0);
    upstreamBase = 'http://127.0.0.1:${upstream.port}';
    upstream.listen((req) async {
      const body = 'hello-from-upstream';
      req.response
        ..headers.contentType = ContentType.text
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
