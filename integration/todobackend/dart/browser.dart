/// Run the vendored TodoBackend Mocha spec in real headless Chrome against a
/// Servirtium VCR, and report the result. Mirrors the Python `browser.py`, but
/// drives Chrome with Dart's own `webdriver` pub package against a chromedriver.
///
/// Shared by both phases:
///   * record.dart        — VCR in record mode, forwarding to the live Kotlin SUT
///   * playback_test.dart — VCR replaying the committed tape, no SUT
///
/// The suite is served *same-origin* from the VCR's own static-content mount
/// (`/suite`), so the browser's API calls to the VCR root are same-origin — no
/// CORS, no preflight OPTIONS cluttering the tape. /favicon.ico is marked
/// untaped.
///
/// Fixed port: the recorded responses embed absolute todo URLs
/// (`http://127.0.0.1:<PORT>/<uuid>`) that the spec follows, and the VCR
/// replays response bodies verbatim — so playback MUST bind the same port the
/// tape was recorded against. Hence a fixed [vcrPort] for both phases rather
/// than port 0.
///
/// The `webdriver` package doesn't fetch a driver: we start the locally cached
/// chromedriver on an ephemeral port, connect to it, and stop it on teardown.
library;

import 'dart:io';

import 'package:webdriver/async_io.dart';

/// integration/todobackend — suite/ and tapes/ are shared one level up from
/// this `dart/` dir. Both the .ae leaf and `dart test` run with the CWD set to
/// integration/todobackend/dart, so anchor on it (Platform.script points at
/// the test runner under `dart test`, not at this file).
final Directory _base = Directory.current.parent;
final String suiteDir = '${_base.path}/suite';
final String tape = '${_base.path}/tapes/todobackend_crud.md';

/// Both phases bind here (see the library doc on why it can't be dynamic).
const int vcrPort = 51080;

/// The locally cached chromedriver (Chrome 148). These clients don't auto-fetch
/// a driver; honor an override but default to the Selenium Manager cache.
String _chromedriverPath() {
  final env = Platform.environment['CHROMEDRIVER'];
  if (env != null && env.isNotEmpty) return env;
  final home = Platform.environment['HOME'] ?? '';
  final cacheRoot = Directory('$home/.cache/selenium/chromedriver');
  if (cacheRoot.existsSync()) {
    for (final f in cacheRoot.listSync(recursive: true)) {
      if (f is File && f.path.endsWith('/chromedriver')) return f.path;
    }
  }
  return 'chromedriver';
}

Future<int> _freePort() async {
  final s = await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
  final p = s.port;
  await s.close();
  return p;
}

Future<bool> _waitReady(int port) async {
  final hc = HttpClient();
  try {
    for (var i = 0; i < 100; i++) {
      try {
        final req = await hc.getUrl(Uri.parse('http://localhost:$port/status'));
        final resp = await req.close();
        await resp.drain<void>();
        if (resp.statusCode == 200) return true;
      } catch (_) {}
      await Future<void>.delayed(const Duration(milliseconds: 100));
    }
    return false;
  } finally {
    hc.close();
  }
}

/// Drive `runner.html?<apiRoot>` in headless Chrome until Mocha finishes.
///
/// Returns `(passes, failures, failMessages)`. [apiRoot] defaults to the VCR
/// root (same origin as the served suite).
Future<(int, int, List<String>)> runSuite(String vcrBaseUrl,
    {String? apiRoot, Duration timeout = const Duration(seconds: 120)}) async {
  final root = apiRoot ?? vcrBaseUrl;
  final url = '$vcrBaseUrl/suite/runner.html?$root';

  final cdPort = await _freePort();
  final cd = await Process.start(_chromedriverPath(), ['--port=$cdPort']);
  // Drain the driver's own output so its pipe never blocks.
  cd.stdout.drain<void>();
  cd.stderr.drain<void>();
  if (!await _waitReady(cdPort)) {
    cd.kill();
    throw StateError('chromedriver did not become ready on :$cdPort');
  }

  final caps = {
    'browserName': 'chrome',
    'goog:chromeOptions': {
      'args': ['--headless=new', '--no-sandbox', '--disable-dev-shm-usage', '--disable-gpu'],
    },
  };

  WebDriver? driver;
  try {
    driver = await createDriver(
      uri: Uri.parse('http://localhost:$cdPort/'),
      desired: caps,
      spec: WebDriverSpec.W3c,
    );
    await driver.get(url);

    final deadline = DateTime.now().add(timeout);
    while (true) {
      final done = await driver.execute('return window.__mochaDone === true', []);
      if (done == true) break;
      if (DateTime.now().isAfter(deadline)) {
        throw StateError('timed out waiting for the Mocha suite to finish');
      }
      await Future<void>.delayed(const Duration(milliseconds: 250));
    }

    final passes = await driver.execute('return window.__mochaPasses', []);
    final failures = await driver.execute('return window.__mochaFailures', []);
    final msgs = await driver.execute('return window.__mochaFailMsgs', []);
    final msgList = (msgs is List) ? msgs.map((m) => '$m').toList() : <String>[];
    return ((passes as num).toInt(), (failures as num).toInt(), msgList);
  } finally {
    // quit() can hang on some chromedriver builds; bound it and then kill.
    try {
      await driver?.quit().timeout(const Duration(seconds: 10));
    } catch (_) {}
    cd.kill();
  }
}
