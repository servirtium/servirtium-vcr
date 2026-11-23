# The VCR's own address on a tape

A test hands its client the VCR's base URL (`http://127.0.0.1:54213`), and the
port is the one the VCR got when it started: with port 0 (the default in most
bindings), a different one every run. A tape that holds that address
literally replays only on that port. Three placeholders stand for it instead:

| Placeholder | Filled with | Example |
|---|---|---|
| `{{baseUrl}}` | scheme, `://`, the live request's `Host` | `http://127.0.0.1:54213` |
| `{{request.host}}` | the live request's `Host` | `127.0.0.1:54213` |
| `{{request.scheme}}` | `https` when the VCR serves TLS, else `http` | `http` |

They are filled from the request being answered, on playback, wherever they
are on the tape:

- **In a recorded response** (body and headers): the client gets the address
  it used. A paging `nextLink`, a `Location`, a HATEOAS link or a service
  directory then points back at the VCR. (Bindings' `Substitute` rules run
  after these, for placeholders of your own.)
- **In a recorded request** (path, headers, body), when playback compares the
  live request with the tape: a URL the client sends that points at the VCR
  matches whatever port the VCR has. A SOAP `<a:To>`, a callback URL, a
  `Referer`, a link the service handed out that the client sends back. The
  placeholder is not a wildcard: a different address is a mismatch, and the
  mismatch report shows the expectation filled in, so only the real
  difference shows.

So a test needs to know nothing about the address before the VCR starts: it
starts the VCR (on port 0), reads its base URL, and gives that to the client.
There is no setting to make and no port to pick in advance (which races with
whatever else takes ports on the machine).

`{{request.header.NAME}}` (the live request's `NAME` header) is filled in a
response only: on the request side it would match any value.

## Getting the placeholders onto a tape

Record mode writes what was sent, so a recording against a service holds
the recorder's address where the client sent it, and the service's own
address where the service wrote it. Either rewrite them when recording
(a redaction of the literal address to `{{baseUrl}}`), or edit a hand-written
tape to use them.

## Guarded by

`core_tests/test_vcr_self_address.ae`: a tape with all three in its path, a
request header and its body, replayed on an OS-assigned port, in ordered and
`match_multiple` playback, with and without volatile values; and another
address refused, its report showing the filled-in expectation.
