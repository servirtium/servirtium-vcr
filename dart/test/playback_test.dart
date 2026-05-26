@TestOn('vm')
library;

import 'dart:io';

import 'package:servirtium/servirtium.dart';
import 'package:test/test.dart';

import 'support.dart';

String _tape(String name) => '${Directory.current.path}/test/tapes/$name';

void main() {
  test('replays a recorded GET on a dynamic port', () async {
    final vcr = Vcr.playback(_tape('single_get.md')).label('replays a GET').port(0).start();
    try {
      expect(vcr.port, greaterThan(0), reason: 'expected an OS-assigned port');
      expect(vcr.tapeLength, 1);

      final (status, body) = await httpGet('${vcr.baseUrl}/ok');

      expect(status, 200);
      expect(body, 'ok-body');
      expect(vcr.lastKind, VcrOutcome.ok);
      expect(vcr.lastError, isEmpty);
    } finally {
      vcr.close();
    }
  });

  test('flags a path mismatch via diagnostics', () async {
    final vcr = Vcr.playback(_tape('single_get.md')).port(0).start();
    try {
      await httpGet('${vcr.baseUrl}/nope');
      expect(vcr.lastKind, isNot(VcrOutcome.ok));
      expect(vcr.lastError, isNotEmpty);
    } finally {
      vcr.close();
    }
  });
}
