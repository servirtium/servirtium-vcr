# std.http.client returns an interim 100 Continue as the final response

Found 2026-11-11 by `sdk_harnesses/azure-sdk-for-net` (the Azure SDK's
`BlobClientTests.UploadAsync_ExpectContinue`, recording against Azurite).
Worked around in servirtium-vcr (record mode no longer forwards `Expect`);
not yet filed upstream (aether is PR-only, through Paul).

## What happens

A request sent with `Expect: 100-continue` to a server that honours it
(Node's `http` server does, by default) gets `HTTP/1.1 100 Continue`, then
the final response. Aether 0.908.0's `std.http.client` stops at the first
status line: `send_request` returns status 100 with an empty body, and the
real response is never read. RFC 9110 §15.2: a client must be able to parse
one or more 1xx responses before the final one, and an unexpected 1xx is
ignored.

## Repro (Aether 0.908.0, macOS arm64)

An upstream that answers `100 Continue` and then `201`:

```python
import socket, time
s = socket.socket(); s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
s.bind(("127.0.0.1", 18360)); s.listen(1)
c, _ = s.accept(); data = b""
while b"\r\n\r\n" not in data: data += c.recv(65536)
if b"100-continue" in data.lower(): c.sendall(b"HTTP/1.1 100 Continue\r\n\r\n")
time.sleep(0.3)
c.sendall(b"HTTP/1.1 201 Created\r\nContent-Length: 4\r\nConnection: close\r\n\r\nmade")
```

```aether
import std.http.client
import std.string
main() {
    req = client.request("PUT", "http://127.0.0.1:18360/c/b")
    client.set_header(req, "Expect", "100-continue")
    client.set_body(req, string.bytes("0123456789"), "application/octet-stream")
    resp, err = client.send_request(req)
    println("status ${client.response_status(resp)} body '${client.response_body(resp)}'")
}
```

Prints `status 100 body ''`; expected `status 201 body 'made'`.

## What a fix needs

In the response reader (`std/net/aether_http.c`), loop over status lines:
while the status is 1xx other than 101, discard its header block and read
the next. (Whether the client should also wait for the 100 before sending
the body, as curl and .NET do, is a separate question; sending the body
straight away is allowed.)
