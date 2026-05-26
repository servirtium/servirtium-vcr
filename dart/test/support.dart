import 'dart:convert';
import 'dart:io';

/// Minimal HTTP GET for tests: returns (status, body).
Future<(int, String)> httpGet(String url) async {
  final client = HttpClient();
  try {
    final req = await client.getUrl(Uri.parse(url));
    final resp = await req.close();
    final body = await resp.transform(utf8.decoder).join();
    return (resp.statusCode, body);
  } finally {
    client.close(force: true);
  }
}
