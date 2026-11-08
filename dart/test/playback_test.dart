@TestOn('vm')
library;

import 'dart:convert';
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

  test('header presets and credential redaction apply on playback', () async {
    final vcr = Vcr.playback(_tape('single_get.md'))
        .removeTransportHeaders().removeCloudHeaders('aws')
        .redactCredentials().redactCredentialHeader('X-Vault-Token').port(0).start();
    try {
      final (status, body) = await httpGet('${vcr.baseUrl}/ok');
      expect(status, 200);
      expect(body, 'ok-body');
    } finally {
      vcr.close();
    }
  });

  test('record accepts a license notice and pretty JSON', () {
    final directory = Directory.systemTemp.createTempSync('vcr-notice-');
    try {
      final rec = Vcr.record('${directory.path}/tape.md', 'http://127.0.0.1:1')
          .addLicenseNotice('test notice').prettyJson(2).port(0).start();
      rec.close();
    } finally {
      directory.deleteSync(recursive: true);
    }
  });

  test('playback range replays only the chosen interactions', () async {
    final vcr = Vcr.playback('../core_tests/tapes/playback_range.tape')
        .redactCredentials()
        .playbackRange(7, 7)
        .port(0)
        .start();
    try {
      expect(vcr.playbackRange, (7, 7));
      // The test brings its own cookie and skips the whole journey.
      Future<(int, String)> get(String path) async {
        final client = HttpClient()..userAgent = null; // the tape recorded only the Cookie
        try {
          final req = await client.getUrl(Uri.parse('${vcr.baseUrl}$path'));
          req.headers.set('Cookie', 'sid=live-session', preserveHeaderCase: true);
          final resp = await req.close();
          return (resp.statusCode, await resp.transform(utf8.decoder).join());
        } finally {
          client.close(force: true);
        }
      }

      final (status, body) = await get('/logout');
      expect(status, 200);
      expect(body.trim(), 'bye');
      expect(vcr.lastIndex, 7);
      final (_, skipped) = await get('/login');
      expect(skipped, isNot(contains('login-form')));
      expect(vcr.lastError, contains('outside the playback range'));
      vcr.clearPlaybackRange();
      expect(vcr.playbackRange, isNull);
    } finally {
      vcr.close();
    }
  });

  test('a bad playback range is refused at start', () {
    expect(() => Vcr.playback('../core_tests/tapes/playback_range.tape').playbackRange(9).port(0).start(),
        throwsA(isA<VcrException>()));
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

  test('untaped path 404s without consuming the tape cursor', () async {
    final vcr = Vcr.playback(_tape('single_get.md')).untaped('/favicon.ico').port(0).start();
    try {
      // The incidental path is answered 404 and never touches the tape.
      final (status, _) = await httpGet('${vcr.baseUrl}/favicon.ico');
      expect(status, 404);

      // The recorded interaction still replays — the cursor wasn't consumed.
      final (okStatus, body) = await httpGet('${vcr.baseUrl}/ok');
      expect(okStatus, 200);
      expect(body, 'ok-body');
      expect(vcr.lastKind, VcrOutcome.ok);
    } finally {
      vcr.close();
    }
  });

  test('substitute fills a custom placeholder and assertAllConsumed tracks replay', () async {
    final vcr = Vcr.playback(_tape('base_url.md'))
        .substitute(VcrField.responseBody, '@@HOST@@', 'http://sub.example')
        .port(0)
        .start();
    try {
      expect(() => vcr.assertAllConsumed(), throwsA(isA<VcrException>()));
      final (_, body) = await httpGet('${vcr.baseUrl}/where');
      expect(body.trimRight(), 'at http://sub.example/x');
      vcr.assertAllConsumed();
      vcr.assertAllRedactionsUsed();
      expect(vcr.lastTlsProtocol, isEmpty);
    } finally {
      vcr.close();
    }
  });
}
