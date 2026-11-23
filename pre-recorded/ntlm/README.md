# ntlm

Recordings of NTLM, and of Negotiate carrying NTLM, through Servirtium:
the three-leg handshake (Type 1, a 401 with the Type 2, Type 3, then 200)
as four Python clients do it, a refused password, a POST through the
handshake, and the calls that follow on an authenticated connection. The
server is our own, [`ntlm_server.py`](ntlm_server.py), on pyspnego's
NTLM acceptor; the user is synthetic. The pytest suite that records the
tapes also establishes, with evidence, how NTLM behaves through Servirtium
in record and in playback: the [findings](#findings) below.

## Who it is for

Anyone whose client authenticates to an IIS-style service with Windows
Authentication (SharePoint, Exchange Web Services, an intranet API) and
wants to test it against replayed answers: the tapes show what each leg
looks like on a tape and which Servirtium rules make it replay. And anyone
about to record such a service: read [finding (a)](#a-record-mode-and-connections) first.

## Fidelity

Not Windows and not IIS: pyspnego 0.12.4's pure-Python NTLM acceptor
(`spnego.server`), checking NTLMv2 responses against the NT hash of the one
user in [`users.txt`](users.txt), in [`ntlm_server.py`](ntlm_server.py), a
Python `http.server` on 127.0.0.1 that answers the way IIS does with
Windows Authentication on:

- a protected request with no credentials gets `401` with
  `WWW-Authenticate: Negotiate` then `WWW-Authenticate: NTLM` (IIS's order);
- the Type 2 comes back in a `401` on the connection that sent the Type 1,
  and the Type 3 must arrive on that same connection;
- after a good Type 3 the connection is authenticated: later requests on
  it are served with no `Authorization` header (IIS's default);
- a wrong password, and a Type 3 on a connection that sent no Type 1, are
  refused with a `401`, and the server's log says why, in pyspnego's words.

What IIS does and this does not: Kerberos (no KDC here, so Negotiate is
always SPNEGO carrying NTLM), Extended Protection / channel binding (plain
HTTP), a real domain (the Type 2 names a synthetic `NAE-NTLM-SERVER` in
`WORKSTATION`), IIS's HTML 401 bodies and its headers. A confirmation
against IIS on Windows is a separate step, not done yet. Record against
your own service before trusting details.

The user is `NAEDOMAIN\naeuser`, password `Not-A-Real-Passw0rd`: synthetic,
written here on purpose, not an account anywhere. `users.txt` is
pyspnego's Heimdal-style `DOMAIN:USER:PASSWORD` file (no comment lines: it
reads every line with two colons as a user).

What the tapes do to what was said (every rule is in `recorder()` in
[`conftest.py`](conftest.py)):

- `Authorization` is `NTLM AUTHORIZATION_N` / `Negotiate AUTHORIZATION_N`
  (Servirtium's credential preset, `redact_credentials`), matched on
  presence when replaying. Except in `handshake_requests_ntlm_unredacted.md`.
- A raw NTLM Type 2 is replaced by one fixed Type 2
  ([`ntlm_wire.build_challenge()`](ntlm_wire.py): server challenge
  `0123456789abcdef`, synthetic names, a fixed timestamp), by a
  `redact_whole_tape` regex. Not in the Negotiate tape (its Type 2 is inside
  SPNEGO) or the unredacted one.
- The client's `User-Agent` and `Accept-Encoding` and the server's `Date`
  are left out; the recorder's host and port are `{{request.host}}`.

With those rules the NTLM tapes re-record byte for byte.

## Tapes

Each is written by the test named, run with `NTLM_RERECORD=1`.

| Tape | What it holds | Test |
|---|---|---|
| [`handshake_requests_ntlm.md`](tapes/handshake_requests_ntlm.md) | requests + requests-ntlm, `GET /whoami`: the anonymous request (401, both challenges), Type 1 (401, Type 2), Type 3 (200, the user as JSON). | [test_ntlm.py#L251](test_ntlm.py#L251) |
| [`handshake_requests_ntlm_unredacted.md`](tapes/handshake_requests_ntlm_unredacted.md) | The same with no credential rule and the server's own Type 2: every token as sent. The Type 3 names the user, domain and workstation and carries the NTLMv2 response. | [test_ntlm.py#L215](test_ntlm.py#L215) |
| [`handshake_type1_first_ntlm.md`](tapes/handshake_type1_first_ntlm.md) | pyspnego's NTLM client told the scheme ([`clients.type1_first_call`](clients.py)): Type 1 straight away (401, Type 2), Type 3 (200). | [test_ntlm.py#L265](test_ntlm.py#L265) |
| [`handshake_httpx_negotiate.md`](tapes/handshake_httpx_negotiate.md) | httpx with pyspnego's Negotiate client: anonymous (401), SPNEGO NegTokenInit carrying the Type 1 (401, NegTokenResp carrying the Type 2), NegTokenResp carrying the Type 3 (200, with the server's mechListMIC in `WWW-Authenticate: Negotiate`). | [test_ntlm.py#L277](test_ntlm.py#L277) |
| [`refuses_a_wrong_password_type1_first_ntlm.md`](tapes/refuses_a_wrong_password_type1_first_ntlm.md) | The same client with the wrong password: Type 1 (401, Type 2), Type 3 (401, logon denied). | [test_ntlm.py#L292](test_ntlm.py#L292) |
| [`post_with_body_requests_ntlm.md`](tapes/post_with_body_requests_ntlm.md) | requests-ntlm, `POST /echo` with a JSON body: the body goes on all three legs. | [test_ntlm.py#L322](test_ntlm.py#L322) |
| [`post_body_after_type3_ntlm.md`](tapes/post_body_after_type3_ntlm.md) | The same client's POSTs, plain then chunked: the Type 1 leg has no body (`Content-Length: 0`, or one empty chunk), the Type 3 leg has it. | [test_ntlm.py#L333](test_ntlm.py#L333) |
| [`calls_on_an_authenticated_connection_requests_ntlm.md`](tapes/calls_on_an_authenticated_connection_requests_ntlm.md) | requests-ntlm on one session: the handshake (interactions 0 to 2), then `POST /echo`, `GET /whoami` and `GET /anonymous` with no `Authorization` at all (3 to 5). | [test_ntlm.py#L302](test_ntlm.py#L302) |

The repository's convention is a login on its own tape, separate from the
calls that follow. For NTLM that is not recordable: the calls after the
handshake carry no credential, because NTLM authenticated the connection,
and a new recording is a new connection, which is not authenticated. So the
calls tape starts with its handshake, and a test that wants only the calls
replays interactions 3 to 5 with `playback_range(3)`
([test_ntlm.py#L441](test_ntlm.py#L441)).

## Findings

### (a) Record mode and connections

**Servirtium's recorder pairs each client connection with an upstream
connection of its own** (since Aether 0.939.0: a pinned `std.http.client`
pool per client connection, closed when the client's connection closes).
NTLM authenticates a connection, and through the recorder it behaves as it
does directly:

- **One client's handshake** reaches the server on one upstream connection
  ([test_ntlm.py#L135](test_ntlm.py#L135)).
- **Two clients interleaving their handshakes** each keep their own upstream
  connection, and both authenticate ([test_ntlm.py#L148](test_ntlm.py#L148)).
- **A Type 3 on a new client connection** goes upstream on a new connection
  and is refused, as the server refuses it directly
  ([#L187](test_ntlm.py#L187); directly: [test_ntlm.py#L84](test_ntlm.py#L84)
  and [#L99](test_ntlm.py#L99)).
- **An authenticated upstream connection stays its client's.** An anonymous
  request from another client connection, or from a second recording VCR in
  the same process, gets its own upstream connection and the 401
  ([#L164](test_ntlm.py#L164) and [#L176](test_ntlm.py#L176)). Clients that
  run in parallel, and anonymous and authenticated cases in one process,
  record what the server said to each.

Before 0.939.0 the recorder forwarded through `std.http.client`'s
process-wide idle pool, keyed by origin only: all four of the cases above
went wrong (two clients' handshakes shared one connection and the first
was refused; an authenticated connection answered other clients' anonymous
requests as that user, across VCRs too; a Type 3 on a new client connection
succeeded). The tapes here were recorded one client at a time, which the
pool happened to get right, and re-record byte for byte with the pairing.
The Aether side was asked for in
[`asks/aether-http-client-connection-affinity.md`](../../asks/aether-http-client-connection-affinity.md).

The client's side is fine: the recorder's listener keeps the client's
connection alive across the legs (the Type 1 first client sends both on
one connection,
[#L200](test_ntlm.py#L200)).

### (b) What a tape records

All the legs, each as its own interaction, with its status: the anonymous
401 (when the client sends one), the Type 1 and its 401 with the Type 2,
the Type 3 and the 200. The first 401's two challenges are kept in the
order the server sent them, `Negotiate` then `NTLM`
([#L215](test_ntlm.py#L215)). Header names keep their casing
(`Authorization`, `WWW-Authenticate`); response headers keep the server's
order; request headers are written sorted by name, not in the client's
order ([#L233](test_ntlm.py#L233)).

Which scheme each client picked, offered `Negotiate` then `NTLM`:

| Client | Scheme | Legs |
|---|---|---|
| requests 2.34.2 + requests-ntlm 1.3.0 (pyspnego) | `NTLM` (it prefers NTLM when offered) | anonymous, Type 1, Type 3 |
| pyspnego 0.12.4 NTLM client on one `http.client` connection, told the scheme ([`clients.py`](clients.py)) | `NTLM` | Type 1 at once (no anonymous request), Type 3 |
| httpx 0.28.1 + pyspnego Negotiate ([`clients.py`](clients.py)) | `Negotiate`: SPNEGO carrying NTLM, since there is no Kerberos | anonymous, NegTokenInit(Type 1), NegTokenResp(Type 3); the server's mechListMIC on the 200 |

An observation made with curl on 2026-11-23, no longer a test here: `curl
--negotiate` with no Kerberos ticket does not fall back to NTLM inside
SPNEGO, so the first 401 stands. macOS curl 8.14.1 said
`gss_init_sec_context() failed: An unsupported mechanism was requested`;
cachyos curl 8.23.0 (MIT krb5) said `No Kerberos credentials available`.

### (c) Playback

A client's Type 1 is the same bytes every run; its Type 3 is not, even
against the same challenge: it carries the client's own nonce and
timestamp, and the NTLMv2 proof over them ([#L356](test_ntlm.py#L356)).
So with no rule, strict request matching passes the first legs and stops
at the Type 3: `HeaderValueDiff` on `Authorization`, and the client gets
Servirtium's 599 ([#L367](test_ntlm.py#L367)).

The existing credential preset is the rule: `redact_credentials()` on the
record and the playback builder writes `Authorization: NTLM
AUTHORIZATION_N` and matches it on presence. Every NTLM tape here then
plays back, for requests-ntlm and for the Type 1 first client
([#L378](test_ntlm.py#L378), [#L386](test_ntlm.py#L386)), the refusal tape
included ([#L412](test_ntlm.py#L412)). No core change was needed.

What that costs, and cannot be helped: playback cannot check an NTLM
response (it would need the password's hash and a challenge it issued), so
a wrong password replays as a 200 ([#L403](test_ntlm.py#L403)). And a tape
replays only for a client that takes the same legs: the Type 1 first
client, which skips the anonymous request, cannot replay the requests-ntlm
tape
([#L394](test_ntlm.py#L394)).

### (d) Redaction

The unredacted Type 3 names the domain, user and workstation in clear and
carries the password-derived NTLMv2 response
([#L468](test_ntlm.py#L468)). The credential preset leaves none of the
client's tokens on the tape ([#L475](test_ntlm.py#L475)) and, as (c) says,
still plays back.

The Type 2 is the server's: its challenge is a public nonce, but its target
information names the server and its domain (on a real IIS, real names). A
`redact_whole_tape` regex on `NTLM TlRMTVNTUAACAAAA...` can write it as one
fixed, well-formed Type 2; the client computes its Type 3 against that, and
playback passes ([#L485](test_ntlm.py#L485)). Redacted to a placeholder it
cannot play back: the client must parse it ([#L495](test_ntlm.py#L495)).
With the fixed Type 2, an NTLM tape re-records byte for byte
([#L508](test_ntlm.py#L508)).

pyspnego, client and server, names the machine after
`socket.gethostname()` inside its tokens; the suite sets
`NETBIOS_COMPUTER_NAME` for the clients and the server presents a
synthetic name, and a test checks no tape names the recording machine,
inside the tokens too ([#L529](test_ntlm.py#L529)).

### (e) Other things the run turned up

- **Negotiate's mechListMIC.** SPNEGO ends with the server's mechListMIC on
  the 200, keyed by the record run's session key. Replayed, it fails a
  client that checks it (pyspnego: `BadMICError`; xfail,
  [#L423](test_ntlm.py#L423)). A playback `substitute()` that removes that
  recorded header line cures it ([#L428](test_ntlm.py#L428)); note that
  `substitute` replaces literal text, it is not a regex.
- **POST bodies.** requests-ntlm re-sends the body on every leg; the Type 1
  first client sends none until the Type 3 (`Content-Length: 0` on the Type 1, or one empty
  chunk when chunked). The recorder writes a chunked body whole, keeps the
  client's `Transfer-Encoding: chunked` on the tape, and forwards it upstream
  with a `Content-Length` ([#L322](test_ntlm.py#L322),
  [#L333](test_ntlm.py#L333)).
- **Pre-sent credentials.** A client told the scheme sends its Type 1 with
  the first request, so its tapes have no anonymous leg.
- **Connection: close.** A client that closes after its Type 1 can never
  authenticate directly; through the recorder it can (finding a).

## Replaying from another language

- Register the same rules on the playback side: the credential preset, and
  leaving out `User-Agent` and `Accept-Encoding` from the request.
- Take the legs your client takes: a client that sends an anonymous request
  first needs a tape that has one (the requests-ntlm and httpx tapes); one
  that pre-sends its Type 1 needs one that does not (the `type1_first`
  tapes).
- Any NTLM client can compute a Type 3 against the fixed Type 2; any
  Type 3 is accepted.

## Running the suite

Python 3.9 or later, from this directory, with the library built from this
checkout (`aeb core/.build.ae` at the repository root writes
`core/native/libservirtium_vcr.so`, which the suite finds; or set
`SERVIRTIUM_VCR_LIB`). The suite uses the in-tree Python binding.

```sh
python3 -m venv .venv && . .venv/bin/activate
python -m pip install -r requirements.txt
python -m pytest                      # direct, record (into a temporary directory), playback of tapes/
NTLM_RERECORD=1 python -m pytest      # the record tests write tapes/
python ntlm_server.py --port 8099     # the server on its own, logging to stderr
```

Every client is Python, pinned in `requirements.txt`; nothing is skipped
for want of a tool. Last run (Aether 0.939.0, 2026-11-23): macOS arm64, 39 passed and 1 xfailed; cachyos (Python 3.14), 39 passed and 1 xfailed.

## Licence

The server, the tests and the tapes are part of servirtium-vcr, under its
[LICENSE](../../LICENSE) (MIT): our own server, our own synthetic
credentials, recorded on loopback. pyspnego (MIT) is a dependency, not
copied here; [`ntlm_wire.py`](ntlm_wire.py) follows the message layout of
Microsoft's published MS-NLMP specification.
