#!/usr/bin/env python3
"""Shared black-box contract for every language's structured redaction test.

start DIR starts a bounded, single-request raw HTTP upstream and prints its URL.
drive DIR URL posts the canonical credentials through a binding's VCR, verifies
that upstream received them unchanged, and waits for upstream to exit.
check DIR verifies the flushed tape. No language binding parses or redacts here.
"""
import http.server
import json
import pathlib
import subprocess
import sys
import time
import urllib.request

BODY = '{ "secretKey": "json-secret", "items": [{"secretKey": 17}], "keep": "visible" }'
PATH = '/ok?password=query-secret&keep=a%2Fb&pass%77ord=second-secret'


def serve(directory):
    class Handler(http.server.BaseHTTPRequestHandler):
        def do_POST(self):
            body = self.rfile.read(int(self.headers['Content-Length'])).decode()
            (directory / 'capture.json').write_text(json.dumps({
                'path': self.path, 'authorization': self.headers.get('Authorization'), 'body': body,
            }))
            payload = b'upstream-ok'
            self.send_response(200)
            self.send_header('Content-Type', 'text/plain')
            self.send_header('Content-Length', str(len(payload)))
            self.end_headers()
            self.wfile.write(payload)

        def log_message(self, *args):
            pass

    with http.server.HTTPServer(('127.0.0.1', 0), Handler) as server:
        server.timeout = 45
        ready = directory / 'url.ready'
        ready.write_text(f'http://127.0.0.1:{server.server_port}')
        ready.replace(directory / 'url')
        server.handle_request()
    (directory / 'done').touch()


def main():
    action, location, *args = sys.argv[1:]
    directory = pathlib.Path(location)
    if action == 'serve':
        serve(directory)
    elif action == 'start':
        directory.mkdir(parents=True, exist_ok=True)
        subprocess.Popen([sys.executable, __file__, 'serve', str(directory)],
                         stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL,
                         stderr=subprocess.DEVNULL, start_new_session=True)
        for _ in range(500):
            if (directory / 'url').exists():
                print((directory / 'url').read_text())
                return
            time.sleep(.01)
        raise RuntimeError('redaction upstream did not start')
    elif action == 'drive':
        request = urllib.request.Request(args[0] + PATH, data=BODY.encode(), headers={
            'Authorization': 'Bearer header-secret', 'Content-Type': 'application/json',
        })
        with urllib.request.urlopen(request, timeout=10) as response:
            assert response.status == 200
            assert response.read() == b'upstream-ok'
        for _ in range(500):
            if (directory / 'done').exists():
                break
            time.sleep(.01)
        assert (directory / 'done').exists(), 'upstream did not finish'
        capture = json.loads((directory / 'capture.json').read_text())
        assert capture == {'path': PATH, 'authorization': 'Bearer header-secret', 'body': BODY}, capture
    elif action == 'check':
        tape = (directory / 'tape.md').read_text()
        for secret in ('header-secret', 'query-secret', 'second-secret', 'json-secret'):
            assert secret not in tape, f'{secret} leaked into tape'
        for expected in ('Authorization: [REDACTED]', 'password=%5BREDACTED%5D',
                         'pass%77ord=%5BREDACTED%5D', 'keep=a%2Fb',
                         '"secretKey": "[REDACTED]"', '"keep": "visible"',
                         '"items": [{"secretKey": "[REDACTED]"}]', 'upstream-ok'):
            assert expected in tape, f'missing {expected!r} in tape'
        print('structured redaction: upstream intact, tape scrubbed')
    else:
        raise ValueError(action)


if __name__ == '__main__':
    main()
