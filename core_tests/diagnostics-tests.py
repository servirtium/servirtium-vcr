#!/usr/bin/env python3
"""Black-box C ABI checks for event retention, acknowledgement and boundaries."""
import ctypes as C
import importlib.util
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import urllib.request
import urllib.error

HERE = Path(__file__).resolve().parent
spec = importlib.util.spec_from_file_location('fixture', HERE / 'diagnostic_fixture.py')
fixture = importlib.util.module_from_spec(spec)
spec.loader.exec_module(fixture)
lib = C.CDLL(os.environ['SERVIRTIUM_VCR_LIB'])


def native(name, result, args):
    function = getattr(lib, 'aether_vcr_embed_' + name)
    function.restype, function.argtypes = result, args
    return function


open_playback = native('open_playback', C.c_void_p, [C.c_char_p, C.c_char_p, C.c_char_p, C.c_int])
start = native('start', C.c_int, [C.c_void_p])
stop = native('stop', None, [C.c_void_p])
port = native('port', C.c_int, [C.c_void_p])
free = native('free_string', None, [C.c_void_p])
last = native('last_error_ex', C.c_void_p, [C.c_void_p, C.c_int])
events = native('diagnostics_json', C.c_void_p, [C.c_void_p, C.c_int])
assert_clean = native('assert_no_mismatches', C.c_void_p, [C.c_void_p])
context = native('test_context', None, [C.c_void_p, C.c_char_p, C.c_char_p, C.c_int])
kind = native('last_kind', C.c_int, [C.c_void_p])
clear = native('clear_last_error', None, [C.c_void_p])
reset = native('reset_cursor', None, [C.c_void_p])
unredact = native('unredact', C.c_void_p, [C.c_void_p, C.c_int, C.c_char_p, C.c_char_p])
match_multiple = native('set_match_multiple', None, [C.c_void_p, C.c_int])
match_header = native('match_header', None, [C.c_void_p, C.c_char_p])
match_json = native('set_match_json_body', None, [C.c_void_p, C.c_int])


def text(pointer):
    try:
        return C.string_at(pointer).decode()
    finally:
        free(pointer)


def server(tape=None):
    handle = open_playback(b'ABI scenario', str(tape or HERE / 'diagnostics/playback.md').encode(), b'127.0.0.1', 0)
    assert handle
    context(handle, b'UsersTest.rejectsAdmin', b'tests/users.test', 42)
    assert start(handle) >= 0
    return handle, 'http://127.0.0.1:' + str(port(handle))


def send(base, body, headers=None, path='/items'):
    request = urllib.request.Request(base + path, data=body, headers=headers or {})
    try:
        with urllib.request.urlopen(request, timeout=10) as response:
            return response.status, response.read()
    except urllib.error.HTTPError as error:
        return error.code, error.read()


def projection_checks():
    handle, base = server()
    try:
        assert text(unredact(handle, 4, b'reader', b'restored-secret')) == ''
        payload = b'{"role":"restored-secret","password":"password-secret","secretKey":"key-secret"}'
        assert send(base, payload, {'Authorization': 'Bearer auth-secret', 'Cookie': 'session=cookie-secret', 'X-Api-Key': 'api-secret'})[0] == 599
        encoded = text(events(handle, 1))
        for secret in ('restored-secret', 'password-secret', 'key-secret', 'auth-secret', 'cookie-secret', 'api-secret'):
            assert secret not in encoded, (secret, encoded)
        assert '[REDACTED]' in encoded
        clear(handle)
        assert send(base, b'\xff\x00abc')[0] == 599
        binary = json.loads(text(events(handle, 1)))[0]
        assert 'binary' in binary['diff'] and 'byte 0' in binary['diff']
        assert 'binary body' in binary['actual']['body']
    finally:
        stop(handle)
    with tempfile.TemporaryDirectory(prefix='vcr-diagnostic-') as directory:
        tape = Path(directory) / 'large.md'
        golden = (HERE / 'diagnostics/playback.md').read_text()
        expected = 'x' * 6000 + 'EXPECTED'
        tape.write_text(golden.replace('{"role":"reader"}', expected))
        handle, base = server(tape)
        try:
            assert send(base, ('x' * 6000 + 'ACTUAL').encode())[0] == 599
            encoded = text(events(handle, 1))
            item = json.loads(encoded)[0]
            assert 'byte 6000' in item['diff'] and 'EXPECTED' in item['diff'] and 'ACTUAL' in item['diff']
            assert len(item['diff']) < 1500 and len(encoded) < 14000
        finally:
            stop(handle)
        # Valid UTF-8 is preserved even when a bounded excerpt ends inside a codepoint.
        tape.write_text(golden.replace('{"role":"reader"}', 'a' * 4095 + 'éEXPECTED'))
        handle, base = server(tape)
        try:
            assert send(base, ('a' * 4095 + 'éACTUAL').encode())[0] == 599
            item = json.loads(text(events(handle, 1)))[0]
            assert 'ACTUAL' in item['diff'] and 'EXPECTED' in item['diff']
            assert '[binary' not in item['actual']['body']
        finally:
            stop(handle)
    handle, base = server()
    try:
        match_json(handle, 1)
        assert send(base, b'{ "role" : "reader" }')[0] == 200
        assert text(events(handle, 0)) == '[]', 'semantic JSON matches must not create diagnostics'
        assert send(base, b'{"role":"reader"}')[0] == 599
        exhausted = json.loads(text(events(handle, 1)))[0]
        assert exhausted['kind'] == 5 and exhausted['interaction'] == 1
        assert exhausted['expected']['method'] == ''
        assert 'no expected interaction' in exhausted['diff']
    finally:
        stop(handle)
    with tempfile.TemporaryDirectory(prefix='vcr-header-diagnostic-') as directory:
        tape = Path(directory) / 'headers.md'
        golden = (HERE / 'diagnostics/playback.md').read_text()
        tape.write_text(golden.replace('### Request headers recorded for playback:\n\n```\n```',
                                       '### Request headers recorded for playback:\n\n```\nX-Choice: expected\n```'))
        handle, base = server(tape)
        try:
            match_header(handle, b'X-Choice')
            for multiple in (0, 1):
                clear(handle)
                match_multiple(handle, multiple)
                assert send(base, b'{"role":"reader"}', {'X-Choice': 'actual', 'X-Noise': 'ignore-me'})[0] == 599
                item = json.loads(text(events(handle, 1)))[0]
                assert 'x-choice' in item['diff'].lower() and 'actual' in item['diff'] and 'expected' in item['diff']
                assert 'ignore-me' not in item['diff'] and 'accept' not in item['diff'].lower()
                assert item['candidate'] == multiple
        finally:
            stop(handle)
    # Handles carry independent events and coordinates.
    first, base1 = server()
    second, base2 = server()
    try:
        context(second, b'other test', b'other.test', 9)
        fixture.drive(base1)
        assert text(events(second, 0)) == '[]'
        assert send(base2, b'{"role":"invalid"}')[0] == 599
        assert json.loads(text(events(first, 1)))[0]['test'] == 'UsersTest.rejectsAdmin'
        assert json.loads(text(events(second, 1)))[0]['test'] == 'other test'
    finally:
        stop(first); stop(second)


def main():
    handle, base = server()
    try:
        assert text(assert_clean(handle)) == ''
        fixture.drive(base)
        assert kind(handle) == 0
        data = json.loads(text(events(handle, 0)))
        assert len(data) == 2 and [e['retrieved'] for e in data] == [0, 0]
        assert data[0]['test'] == 'UsersTest.rejectsAdmin' and data[0]['source_line'] == 42
        assert data[0]['expected']['body'] == '{"role":"reader"}'
        assert data[0]['actual']['body'] == '{"role":"admin"}'
        assert data[0]['kind'] == 6 and data[0]['interaction'] == 0
        assert '- {"role":"reader"}' in data[0]['diff'] and '+ {"role":"admin"}' in data[0]['diff']
        assert text(last(handle, 0)) == text(last(handle, 0))
        assert [e['retrieved'] for e in json.loads(text(events(handle, 0)))] == [0, 0]
        latest = text(last(handle, 1))
        assert 'owner' in latest and 'users.test:42' in latest
        assert [e['retrieved'] for e in json.loads(text(events(handle, 0)))] == [0, 1]
        reset(handle)
        assert 'owner' in text(last(handle, 0)), 'cursor reset must not erase retained errors'
        assertion = text(assert_clean(handle))
        assert 'admin' in assertion and 'owner' in assertion
        assert [e['retrieved'] for e in json.loads(text(events(handle, 0)))] == [1, 1]
        assert text(assert_clean(handle)) == assertion, 'acknowledgement is not deletion'
        context(handle, b'next test', b'next.test', 7)
        assert text(events(handle, 0)) == '[]' and text(assert_clean(handle)) == ''
        assert fixture.request(base, 'admin')[0] == 599
        assert json.loads(text(events(handle, 0)))[0]['sequence'] == 3
        clear(handle)
        assert text(events(handle, 0)) == '[]'
        match_multiple(handle, 1)
        assert fixture.request(base, 'admin')[0] == 599
        candidate = json.loads(text(events(handle, 1)))[0]
        assert candidate['candidate'] == 1 and 'candidate' in text(last(handle, 0))
    finally:
        stop(handle)
    # Every unacknowledged event is dumped once, with its original coordinates.
    for mode in ('unread', 'observed', 'latest', 'all', 'boundary'):
        result = subprocess.run([sys.executable, __file__, mode], capture_output=True, text=True, check=True)
        expected_count = {'unread': 2, 'observed': 2, 'latest': 1, 'all': 0, 'boundary': 2}[mode]
        assert result.stderr.count('UNRETRIEVED REPLAY MISMATCH') == expected_count, (mode, result.stderr)
        if expected_count:
            assert 'UsersTest.rejectsAdmin' in result.stderr and 'tests/users.test:42' in result.stderr
    projection_checks()
    print('diagnostic C ABI: passed')


if __name__ == '__main__':
    if len(sys.argv) == 1:
        main()
    else:
        handle, base = server()
        fixture.drive(base)
        mode = sys.argv[1]
        if mode == 'observed':
            text(last(handle, 0)); text(events(handle, 0))
        elif mode == 'latest':
            text(last(handle, 1))
        elif mode == 'all':
            text(events(handle, 1))
        elif mode == 'boundary':
            context(handle, b'next test', b'next.test', 99)
        stop(handle)
