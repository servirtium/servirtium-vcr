# Bruno import demo

Turns a [Bruno](https://www.usebruno.com/) collection into a replayable
Servirtium tape, then serves the tape with the real service switched off.

```sh
aeb bruno_import_demo/.build.ae  # build the CLI and Aether widget service
./bruno_import_demo/run-demo.sh
```

Needs the Aether/aeb toolchain to build, and `curl` to run. The compiled service uses Aether’s HTTP, JSON and XML standard libraries.

## Why a contrived service rather than a public API

The first instinct is to point this at a well-known public API, and there are
real Bruno collections to borrow — [`bruno-collections/github-rest-api-collection`](https://github.com/bruno-collections/github-rest-api-collection)
is a good one: it uses `{{baseUrl}}` (the default `--var`), targets
`https://api.github.com`, and every request is a keyless `auth: none` GET.

It is the wrong shape for *this* demo, for three reasons:

1. **`import-bru` makes REAL calls.** A `.bru` file holds a request definition
   and no response, so hydration has to fire each request at a live service.
   Against a public API that means rate limits (GitHub: 60/hr unauthenticated)
   and, for anything but GET, real side effects.
2. **It can only demo GETs.** The interesting cases are POST/PUT/DELETE with
   bodies — and you cannot point those at someone else's service.
3. **Its responses are not deterministic.** Star counts change; the tape would
   differ on every run.

The Python service here is deliberately boring and deterministic: state is
reseeded at startup, ids are assigned in order, nothing is random or
time-dependent. Hydrating twice gives the same interactions.

## What it exercises

Six interactions across four verbs, two of them carrying request bodies:

| seq | request | why |
|---|---|---|
| 1 | `GET /widgets` | the simple case |
| 2 | `POST /widgets` + JSON body | **body-carrying request** |
| 3 | `GET /widgets/2` | reads what the POST created |
| 4 | `PUT /widgets/2` + JSON body | **body-carrying request** |
| 5 | `DELETE /widgets/2` | verb with no body |
| 6 | `GET /widgets` | proves the delete took effect |
| 7 | `GET /widgets.xml` | XML response |
| 8 | `POST /widgets.xml` + XML body | **XML request body** |
| 9 | `GET /widgets.xml` | proves the XML POST landed |

Interactions 2 and 4 are what caught a real bug (see below); 8 proves the same
machinery works for a non-JSON payload. The `body:` type drives everything —
the engine maps it to a block name and a Content-Type, so XML travels the same
path JSON does rather than a special case.

## How the collection is read

**Bruno's own parser.** `import-bru` reads `.bru` files with Bruno's parser
(`@usebruno/lang`, vendored under `core/bru/third_party/` and run in QuickJS
embedded in the CLI), the same as `servirtium convert bru`, so what it sends is
what Bruno itself would send: a `body:json` block, for one, is sent outdented,
as Bruno sends it, not with the `.bru` file's indentation. (Until 2026-11-11 it
used a hand-written parser that kept that indentation; this demo's curl
bodies changed with it.)

**The whole collection, folders included.** Point `import-bru` at the
collection root; it reads every request `.bru` under it (not `folder.bru`,
`collection.bru` or `environments/`), in folder, then `meta.seq`, then name
order. Sequence matters here because interaction 3 reads the widget
interaction 2 created. The files are named `01-…` to `09-…` only so a human
reading the directory sees the same order; names have no spaces because this
repository allows none.

## The bug this demo found

On first run, `GET` and `DELETE` replayed but **`POST` and `PUT` did not match** —
`no recorded interaction matches POST /widgets` — even when replaying with the
byte-exact body that had been recorded.

`run_import_bru` sends bodies with
`client.set_body(req, body, len, "application/json")`, which sets a
`Content-Type` request header. The record proxy wrote that header into the
tape's **request match block**, so a replaying client had to send an identical
`Content-Type` *and* have it match — which nothing real does. This contradicted
the importer's own documented policy, three lines up from the call:

> Request headers are intentionally not forwarded into the tape's match block
> (a collection's headers wouldn't match a test client's; matching is method +
> path + body — same policy as HAR import).

`GET` and `DELETE` were unaffected because they send no body, so no
`Content-Type` — which is exactly why nothing noticed until a collection with
request bodies was imported. Fixed by having the importer drop that one header
from the request match block, so the code now does what its comment promised.

## What else a .bru can carry

`import-bru` sends the method, the URL (variables from the request's own
`vars:pre-request`, its folders' and the collection's; the base-URL variable
is the record proxy) and the body with its Content-Type (json, xml, text,
sparql, form-urlencoded and graphql bodies; a multipart or file body is sent
with no body and the tape gets a TODO note). It sends no headers and no auth,
on purpose (above). An unresolved `{{var}}` is still sent literally and its
404 recorded. See [`../docs/bruno-import-idioms.md`](../docs/bruno-import-idioms.md)
for the idioms each construct should expand into, and `servirtium convert bru`
(the root README) for turning a collection's saved examples into tapes with no
service at all.

## Tape determinism

The hydrated tape records the upstream's response headers, which include
`Date:` — so two tapes hydrated at different times are *not* byte-identical,
even though this service is otherwise deterministic. That is fine for a demo
and for replay (matching is on the request, not the response), but if you want
record-and-compare byte-equality you will want to normalise `Date` away first.
