#!/usr/bin/env python3
"""Drive replay mismatch scenarios without depending on an HLL's HTTP library."""
import sys
import urllib.request
import urllib.error


def request(base, role):
    request = urllib.request.Request(base + '/items', data=('{"role":"' + role + '"}').encode(),
                                     headers={'Content-Type': 'application/json'})
    try:
        with urllib.request.urlopen(request, timeout=10) as response:
            return response.status, response.read().decode()
    except urllib.error.HTTPError as error:
        return error.code, error.read().decode()


def drive(base):
    for role in ('admin', 'owner'):
        status, body = request(base, role)
        assert status == 599, (status, body)
        # Diffs are a side channel, not new HTTP response content.
        assert 'recorded=' in body and '--- expected' not in body, body
    assert request(base, 'reader') == (200, 'ok-body')


if __name__ == '__main__':
    drive(sys.argv[1])
