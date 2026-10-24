import pathlib
import subprocess
import threading

import pytest
import servirtium

ROOT = pathlib.Path(__file__).resolve().parents[2]
FIXTURE = ROOT / 'target/test-tools/secret_fixture'
PASSWORDS = {name.upper() + '_PASSWORD': 'pw-' + name + '&secret'
             for name in ('accounts', 'billing', 'shipping', 'support')}


def run(*args):
    return subprocess.check_output([str(FIXTURE), *map(str, args)], text=True).strip()


def test_four_services_resolve_named_secrets_without_live_upstream(tmp_path):
    upstream = run('start', tmp_path)
    tape = tmp_path / 'tape.md'
    calling_thread = threading.get_ident()
    seen = []
    def redact(key, request):
        assert threading.get_ident() == calling_thread
        assert isinstance(request, servirtium.SecretRequest)
        if key == 'password':
            seen.append((request.location, request.format, request.field_path))
            return request.path.split('/')[1].upper() + '_PASSWORD'
        return None
    with servirtium.record(str(tape), upstream).secret_redactor(redact).start() as recorder:
        run('drive', recorder.base_url)
        assert seen == [], 'redactors must not run on the HTTP worker'
    run('check', tape)
    assert len(seen) == 20
    assert {fmt for _, fmt, _ in seen} >= {'query', 'json', 'form', 'xml', 'yaml'}
    with pytest.raises(servirtium.VcrError, match='unresolved secret'):
        servirtium.playback(str(tape)).start()
    resolved = []
    def resolve(token):
        assert threading.get_ident() == calling_thread
        resolved.append(token)
        return PASSWORDS.get(token)
    with servirtium.playback(str(tape)).secret_resolver(resolve).start() as playback:
        run('drive', playback.base_url)
        playback.assert_no_mismatches()
    assert set(resolved) == set(PASSWORDS)
    run('check', tape)


def test_failed_redactor_does_not_overwrite_existing_tape(tmp_path):
    upstream = run('start', tmp_path)
    tape = tmp_path / 'tape.md'; tape.write_text('original')
    def failing(key, request):
        raise RuntimeError('callback failed')
    recorder = servirtium.record(str(tape), upstream).secret_redactor(failing).start()
    run('drive', recorder.base_url)
    with pytest.raises(RuntimeError, match='callback failed'):
        recorder.close()
    assert tape.read_text() == 'original'


def test_generic_redacted_field_resolves_by_key(tmp_path):
    tape = tmp_path / 'legacy.md'
    source = (ROOT / 'core_tests/diagnostics/playback.md').read_text()
    tape.write_text(source.replace('{"role":"reader"}', '{"password":"[REDACTED]"}'))
    import urllib.request
    with servirtium.playback(str(tape)).secret_resolver(lambda key: 'qwerty' if key == 'password' else None).start() as server:
        request = urllib.request.Request(server.base_url + '/items', data=b'{"password":"qwerty"}')
        with urllib.request.urlopen(request, timeout=10) as response:
            assert response.read() == b'ok-body'
        server.assert_no_mismatches()

@pytest.mark.parametrize('multiple', [False, True])
def test_secret_wire_encoding_equivalence_keeps_other_bytes_exact(tmp_path, multiple):
    import urllib.request
    from urllib.error import HTTPError
    tape = tmp_path / 'encodings.md'
    tape.write_text('''## Interaction 0: POST /login?password=%7B%7Bsecret%3APASSWORD%7C1%7D%7D&safe=a%2Fb
### Request headers recorded for playback:
```
Content-Type: application/x-www-form-urlencoded
```
### Request body recorded for playback:
```
password=%7B%7Bsecret%3APASSWORD%7C1%7D%7D&safe=a%2Fb
```
### Response headers recorded for playback:
```
```
### Response body recorded for playback (200: text/plain):
```
ok
```

''')
    builder = servirtium.playback(str(tape)).match_header('Content-Type').secret_resolver(lambda _: 'space & secret')
    if multiple:
        builder.match_multiple()
    with builder.start() as server:
        encoded = 'password=space+%26+secret&safe=a%2Fb'
        request = urllib.request.Request(server.base_url + '/login?' + encoded, data=encoded.encode(),
                                         headers={'Content-Type': 'application/x-www-form-urlencoded'})
        with urllib.request.urlopen(request, timeout=10) as response:
            assert response.read() == b'ok'
        server.assert_no_mismatches()
        server.reset_cursor()
        request = urllib.request.Request(server.base_url + '/login?' + encoded.replace('safe=a%2Fb', 'safe=a/b'), data=encoded.encode(),
                                         headers={'Content-Type': 'application/x-www-form-urlencoded'})
        with pytest.raises(HTTPError):
            urllib.request.urlopen(request, timeout=10)
        diagnostic = server.last_error
        assert 'space+%26+secret' not in diagnostic
        assert 'space%20%26%20secret' not in diagnostic
