# ntlm

Recordings of NTLM, and of Negotiate carrying NTLM, through Servirtium:
the three-leg handshake (Type 1, a 401 with the Type 2, Type 3, then 200)
as four different clients do it, a refused password, a POST through the
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
| [`handshake_requests_ntlm.md`](tapes/handshake_requests_ntlm.md) | requests + requests-ntlm, `GET /whoami`: the anonymous request (401, both challenges), Type 1 (401, Type 2), Type 3 (200, the user as JSON). | [test_ntlm.py#L270](test_ntlm.py#L270) |
| [`handshake_requests_ntlm_unredacted.md`](tapes/handshake_requests_ntlm_unredacted.md) | The same with no credential rule and the server's own Type 2: every token as sent. The Type 3 names the user, domain and workstation and carries the NTLMv2 response. | [test_ntlm.py#L236](test_ntlm.py#L236) |
| [`handshake_curl_ntlm.md`](tapes/handshake_curl_ntlm.md) | `curl --ntlm`: Type 1 straight away (401, Type 2), Type 3 (200). | [test_ntlm.py#L284](test_ntlm.py#L284) |
| [`handshake_httpx_negotiate.md`](tapes/handshake_httpx_negotiate.md) | httpx with pyspnego's Negotiate client: anonymous (401), SPNEGO NegTokenInit carrying the Type 1 (401, NegTokenResp carrying the Type 2), NegTokenResp carrying the Type 3 (200, with the server's mechListMIC in `WWW-Authenticate: Negotiate`). | [test_ntlm.py#L293](test_ntlm.py#L293) |
| [`refuses_a_wrong_password_curl_ntlm.md`](tapes/refuses_a_wrong_password_curl_ntlm.md) | `curl --ntlm` with the wrong password: Type 1 (401, Type 2), Type 3 (401, logon denied). | [test_ntlm.py#L308](test_ntlm.py#L308) |
| [`post_with_body_requests_ntlm.md`](tapes/post_with_body_requests_ntlm.md) | requests-ntlm, `POST /echo` with a JSON body: the body goes on all three legs. | [test_ntlm.py#L336](test_ntlm.py#L336) |
| [`post_with_body_curl_ntlm.md`](tapes/post_with_body_curl_ntlm.md) | `curl --ntlm` POSTs, plain then chunked: the Type 1 leg has no body (`Content-Length: 0`, or one empty chunk), the Type 3 leg has it. | [test_ntlm.py#L347](test_ntlm.py#L347) |
| [`calls_on_an_authenticated_connection_requests_ntlm.md`](tapes/calls_on_an_authenticated_connection_requests_ntlm.md) | requests-ntlm on one session: the handshake (interactions 0 to 2), then `POST /echo`, `GET /whoami` and `GET /anonymous` with no `Authorization` at all (3 to 5). | [test_ntlm.py#L317](test_ntlm.py#L317) |

The repository's convention is a login on its own tape, separate from the
calls that follow. For NTLM that is not recordable: the calls after the
handshake carry no credential, because NTLM authenticated the connection,
and a new recording is a new connection, which is not authenticated. So the
calls tape starts with its handshake, and a test that wants only the calls
replays interactions 3 to 5 with `playback_range(3)`
([test_ntlm.py#L458](test_ntlm.py#L458)).

## Findings

### (a) Record mode and connections

**Servirtium's recorder does not pair a client connection with an
upstream connection.** It forwards each request with Aether's
`std.http.client`, whose idle connection pool is process-wide and keyed by
origin only. NTLM authenticates a connection, so:

- **One client at a time works, by accident.** The pool hands the
  recorder back the one upstream connection the previous leg used, so the
  Type 3 lands where its Type 1 did and the server accepts it
  ([test_ntlm.py#L150](test_ntlm.py#L150): one upstream connection for the
  whole handshake). All the tapes here were recorded that way.
- **Two clients interleaving their handshakes fail.** Both go upstream over
  the one pooled connection; the second Type 1 replaces the first's
  challenge, and the first Type 3 is refused as if its password were wrong
  (xfail, [test_ntlm.py#L167](test_ntlm.py#L167)).
- **A Type 3 on a new client connection succeeds through the recorder**,
  where the server refuses it directly
  ([test_ntlm.py#L99](test_ntlm.py#L99) and
  [#L114](test_ntlm.py#L114)): `Connection: close` is not forwarded, and
  the pooled upstream connection still holds the challenge (xfail,
  [#L211](test_ntlm.py#L211)). Record mode hides NTLM's connection binding.
- **An authenticated upstream connection is handed to other clients.** After
  one client authenticates, an anonymous request from another client
  connection, or from a second recording VCR in the same process, is
  served as the authenticated user, and the tape records a 200 for a
  request with no credentials (xfail,
  [#L185](test_ntlm.py#L185) and [#L198](test_ntlm.py#L198)). Recording a
  suite whose clients run in parallel, or which has anonymous and
  authenticated cases in one process, records wrong answers.

So: record one NTLM client at a time, one recording per process or per
upstream origin, and check that an anonymous case still gets its 401.

The fix is not in Servirtium's core alone: `std.http.client` has no way to
send a request on a particular connection. What it needs, and how the core
would use it, is in
[`asks/aether-http-client-connection-affinity.md`](../../asks/aether-http-client-connection-affinity.md)
and the repository's [TODO.md](../../TODO.md).

The client's side is fine: the recorder's listener keeps the client's
connection alive across the legs (curl reuses it,
[#L222](test_ntlm.py#L222)).

### (b) What a tape records

All the legs, each as its own interaction, with its status: the anonymous
401 (when the client sends one), the Type 1 and its 401 with the Type 2,
the Type 3 and the 200. The first 401's two challenges are kept in the
order the server sent them, `Negotiate` then `NTLM`
([#L236](test_ntlm.py#L236)). Header names keep their casing
(`Authorization`, `WWW-Authenticate`); response headers keep the server's
order; request headers are written sorted by name, not in the client's
order ([#L253](test_ntlm.py#L253)).

Which scheme each client picked, offered `Negotiate` then `NTLM`:

| Client | Scheme | Legs |
|---|---|---|
| requests 2.34.2 + requests-ntlm 1.3.0 (pyspnego) | `NTLM` (it prefers NTLM when offered) | anonymous, Type 1, Type 3 |
| curl 8.14.1 `--ntlm` (macOS) | `NTLM` | Type 1 at once (no anonymous request), Type 3 |
| httpx 0.28.1 + pyspnego Negotiate ([`clients.py`](clients.py)) | `Negotiate`: SPNEGO carrying NTLM, since there is no Kerberos | anonymous, NegTokenInit(Type 1), NegTokenResp(Type 3); the server's mechListMIC on the 200 |
| curl `--negotiate` | none: no NTLM fallback without Kerberos | macOS curl 8.14.1: `gss_init_sec_context() failed: An unsupported mechanism was requested`; cachyos curl 8.23.0 (MIT krb5): `No Kerberos credentials available`; the 401 stands (xfail, [#L81](test_ntlm.py#L81)) |

### (c) Playback

A client's Type 1 is the same bytes every run; its Type 3 is not, even
against the same challenge: it carries the client's own nonce and
timestamp, and the NTLMv2 proof over them ([#L369](test_ntlm.py#L369)).
So with no rule, strict request matching passes the first legs and stops
at the Type 3: `HeaderValueDiff` on `Authorization`, and the client gets
Servirtium's 599 ([#L380](test_ntlm.py#L380)).

The existing credential preset is the rule: `redact_credentials()` on the
record and the playback builder writes `Authorization: NTLM
AUTHORIZATION_N` and matches it on presence. Every NTLM tape here then
plays back, for requests-ntlm and for curl
([#L391](test_ntlm.py#L391), [#L400](test_ntlm.py#L400)), the refusal tape
included ([#L429](test_ntlm.py#L429)). No core change was needed.

What that costs, and cannot be helped: playback cannot check an NTLM
response (it would need the password's hash and a challenge it issued), so
a wrong password replays as a 200 ([#L419](test_ntlm.py#L419)). And a tape
replays only for a client that takes the same legs: curl, which skips the
anonymous request, cannot replay the requests-ntlm tape
([#L409](test_ntlm.py#L409)).

### (d) Redaction

The unredacted Type 3 names the domain, user and workstation in clear and
carries the password-derived NTLMv2 response
([#L485](test_ntlm.py#L485)). The credential preset leaves none of the
client's tokens on the tape ([#L492](test_ntlm.py#L492)) and, as (c) says,
still plays back.

The Type 2 is the server's: its challenge is a public nonce, but its target
information names the server and its domain (on a real IIS, real names). A
`redact_whole_tape` regex on `NTLM TlRMTVNTUAACAAAA...` can write it as one
fixed, well-formed Type 2; the client computes its Type 3 against that, and
playback passes ([#L502](test_ntlm.py#L502)). Redacted to a placeholder it
cannot play back: the client must parse it ([#L512](test_ntlm.py#L512)).
With the fixed Type 2, an NTLM tape re-records byte for byte
([#L524](test_ntlm.py#L524)).

pyspnego, client and server, names the machine after
`socket.gethostname()` inside its tokens; the suite sets
`NETBIOS_COMPUTER_NAME` for the clients and the server presents a
synthetic name, and a test checks no tape names the recording machine,
inside the tokens too ([#L543](test_ntlm.py#L543)).

### (e) Other things the run turned up

- **Negotiate's mechListMIC.** SPNEGO ends with the server's mechListMIC on
  the 200, keyed by the record run's session key. Replayed, it fails a
  client that checks it (pyspnego: `BadMICError`; xfail,
  [#L440](test_ntlm.py#L440)). A playback `substitute()` that removes that
  recorded header line cures it ([#L445](test_ntlm.py#L445)); note that
  `substitute` replaces literal text, it is not a regex.
- **POST bodies.** requests-ntlm re-sends the body on every leg; curl sends
  none until the Type 3 (`Content-Length: 0` on the Type 1, or one empty
  chunk when chunked). The recorder writes a chunked body whole, keeps the
  client's `Transfer-Encoding: chunked` on the tape, and forwards it upstream
  with a `Content-Length` ([#L336](test_ntlm.py#L336),
  [#L347](test_ntlm.py#L347)).
- **Pre-sent credentials.** curl `--ntlm` sends its Type 1 with the first
  request, so its tapes have no anonymous leg.
- **Connection: close.** A client that closes after its Type 1 can never
  authenticate directly; through the recorder it can (finding a).

## Replaying from another language

- Register the same rules on the playback side: the credential preset, and
  leaving out `User-Agent` and `Accept-Encoding` from the request.
- Take the legs your client takes: a client that sends an anonymous request
  first needs a tape that has one (the requests-ntlm and httpx tapes); one
  that pre-sends its Type 1 needs one that does not (the curl tapes).
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

The curl tests need a curl built with NTLM (`curl --version` lists it
under Features); Arch's curl 8.23.0 is not, so on cachyos they skip, with
that reason. Last run: macOS arm64, 35 passed and 6 xfailed; cachyos
(Python 3.14, curl without NTLM), 27 passed, 6 xfailed, 8 skipped.

## Licence

The server, the tests and the tapes are part of servirtium-vcr, under its
[LICENSE](../../LICENSE) (MIT): our own server, our own synthetic
credentials, recorded on loopback. pyspnego (MIT) is a dependency, not
copied here; [`ntlm_wire.py`](ntlm_wire.py) follows the message layout of
Microsoft's published MS-NLMP specification.
