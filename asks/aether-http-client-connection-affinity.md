# std.http.client cannot send a request on a chosen connection

Found 2026-11-23 by `pre-recorded/ntlm/` (pyspnego's NTLM acceptor,
recording through servirtium-vcr on Aether 0.936.0). Not worked around in
servirtium-vcr (there is nothing in the core to work around it with); not
yet filed upstream (aether is PR-only, through Paul).

## What happens

Record mode forwards each request with `http_request_raw` +
`http_send_raw`. The client's idle pool (`http_pool_take` /
`http_pool_put` in `std/net/aether_http.c`) is process-wide and keyed by
origin, the endpoint dialled, TLS and verification: nothing a caller can
set per request. So the recorder cannot keep the upstream connection of one
client connection for that client. For HTTP that authenticates a connection
rather than a request (NTLM, Negotiate), that is wrong in both directions:

- two clients' interleaved handshakes go upstream over one pooled
  connection, and the server refuses the first Type 3;
- an upstream connection one client authenticated serves the next request
  from any other client connection, or from another VCR in the process,
  as that user (an anonymous request is answered 200);
- a Type 3 a client sends on a new connection succeeds through the
  recorder where the server would refuse it.

Disabling the pool (`client_pool_disable`) would stop the leak and make
NTLM unrecordable (every Type 3 on a new connection). Strict xfails in
`pre-recorded/ntlm/test_ntlm.py` (the four `test_record_*` ones marked
xfail) show each case against a real server.

## Repro

`cd pre-recorded/ntlm && python -m pytest -rxX -k "record_keeps or record_does_not or record_a_second or record_refuses_a_type3"`
after `aeb core/.build.ae` (see that directory's README). The shortest one:
record through a VCR, let requests-ntlm authenticate, then send an
anonymous `GET /whoami` on a new connection to the same VCR: the upstream
answers 200 with the user.

## What a fix needs

1. In `std.http.client`: a connection a caller holds, outside the pool. For
   instance

   ```aether
   conn = client.connection()                  // nothing dialled yet
   client.request_set_connection(req, conn)    // send on it: dial on first use, keep it after
   client.connection_close(conn)
   ```

   A response that ends the connection (`Connection: close`, an
   indefinite length) closes it, and the next request on it dials again,
   as the pool does now.
2. In `std.http` (server): either a stable connection id per request and a
   callback when that connection closes, or `request_remote_addr` /
   `request_remote_port` (already there) plus the close callback.

Then servirtium-vcr's `do_record` keeps a per-VCR map from the client
connection to its upstream connection, sends each forwarded request on it,
and closes it when the client's connection closes (or forwards a
`Connection: close`). Its core test would be the NTLM cases above, with a
pure-Aether upstream that answers per connection.
