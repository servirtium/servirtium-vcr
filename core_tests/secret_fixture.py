#!/usr/bin/env python3
"""One raw HTTP upstream, four logical services and four passwords on one port."""
import http.server
import json
import pathlib
import subprocess
import sys
import time
import urllib.parse
import urllib.request

SERVICES = ('accounts', 'billing', 'shipping', 'support')
PASSWORDS = {name.upper() + '_PASSWORD': 'pw-' + name + '&secret' for name in SERVICES}
FORMATS = ('json', 'form', 'xml', 'yaml')
MIMES = ('application/json', 'application/x-www-form-urlencoded', 'application/xml', 'application/yaml')


def payload(index):
    name = SERVICES[index]
    password = PASSWORDS[name.upper() + '_PASSWORD']
    if index == 0:
        return ('{ "password": ' + json.dumps(password) + ', "nested": [{"password": ' + json.dumps(password) + '}], "safe": "keep" }').encode()
    if index == 1:
        return urllib.parse.urlencode([('password', password), ('password', password), ('safe', 'keep')]).encode()
    if index == 2:
        from xml.sax.saxutils import escape
        return ('<root password="' + escape(password) + '"><password>' + escape(password) + '</password><safe>keep</safe></root>').encode()
    return ("credentials:\n  password: '" + password + "' # keep this comment\nitems:\n  - password: " + password + "\nsafe: keep\n").encode()


def drive(base):
    for index, name in enumerate(SERVICES):
        password = PASSWORDS[name.upper() + '_PASSWORD']
        path = '/' + name + '/login?' + urllib.parse.urlencode({'password': password, 'safe': 'keep'})
        request = urllib.request.Request(base + path, data=payload(index), headers={'Content-Type': MIMES[index]})
        with urllib.request.urlopen(request, timeout=10) as response:
            assert response.status == 200
            assert response.read() == payload(index)


def serve(directory):
    captured = []
    class Handler(http.server.BaseHTTPRequestHandler):
        def do_POST(self):
            index = len(captured)
            expected = payload(index)
            body = self.rfile.read(int(self.headers['Content-Length']))
            assert body == expected, (body, expected)
            name = SERVICES[index]
            assert self.path.startswith('/' + name + '/login?')
            assert urllib.parse.parse_qs(urllib.parse.urlsplit(self.path).query)['password'] == [PASSWORDS[name.upper() + '_PASSWORD']]
            captured.append(self.path)
            self.send_response(200)
            self.send_header('Content-Type', MIMES[index])
            self.send_header('Content-Length', str(len(expected)))
            self.end_headers()
            self.wfile.write(expected)
        def log_message(self, *args):
            pass
    with http.server.HTTPServer(('127.0.0.1', 0), Handler) as server:
        server.timeout = 1
        deadline = time.monotonic() + 45
        ready = directory / 'url.ready'
        ready.write_text('http://127.0.0.1:' + str(server.server_port))
        ready.replace(directory / 'url')
        while len(captured) < 4 and time.monotonic() < deadline:
            server.handle_request()
            if not captured and not (directory / 'url').exists():
                break
    (directory / 'done').write_text(json.dumps(captured))


def main():
    action = sys.argv[1]
    if action == 'serve':
        serve(pathlib.Path(sys.argv[2]))
    elif action == 'start':
        directory = pathlib.Path(sys.argv[2]); directory.mkdir(parents=True, exist_ok=True)
        subprocess.Popen([sys.executable, __file__, 'serve', str(directory)], stdin=subprocess.DEVNULL,
                         stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, start_new_session=True)
        for _ in range(500):
            if (directory / 'url').exists():
                print((directory / 'url').read_text()); return
            time.sleep(.01)
        raise RuntimeError('secret upstream did not start')
    elif action == 'drive':
        drive(sys.argv[2])
    elif action == 'check':
        tape = pathlib.Path(sys.argv[2]).read_text()
        for name, password in PASSWORDS.items():
            assert name in tape, name
            assert password not in tape and urllib.parse.quote(password, safe='') not in tape, password
        assert 'keep this comment' in tape and '"safe": "keep"' in tape
        assert '%7B%7Bsecret%3A' in tape
    else:
        raise ValueError(action)

if __name__ == '__main__':
    main()
