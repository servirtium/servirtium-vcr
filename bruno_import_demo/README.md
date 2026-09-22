# Bruno import demo

Turns a [Bruno](https://www.usebruno.com/) collection into a replayable
Servirtium tape, then serves the tape with the real service switched off.

```sh
aeb core/.cli.ae            # build ./target/servirtium
./bruno_import_demo/run-demo.sh
```

Needs `python3` (stdlib only — no pip, no venv) and `curl`.

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

Interactions 2 and 4 are the point. They are what caught a real bug — see below.

## Two things that will bite you

**The collection directory is globbed FLAT.** `import-bru` does
`glob("<dir>/*.bru")` and does not recurse, so `collection/` here is flat. Real
Bruno collections are usually nested by folder (the GitHub one above has
`Repository/` and `User/`), and pointing `import-bru` at the collection root
finds **zero** `.bru` files. Point it at one leaf folder at a time, or flatten.

**Hydration order is `meta.seq`, not filename.** The files are named `01 …` to
`06 …` only so a human reading the directory sees the same order the importer
uses; the importer sorts on `seq` from each file's `meta` block. Sequence
matters here because interaction 3 reads the widget interaction 2 created.

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

## Tape determinism

The hydrated tape records the upstream's response headers, which include
`Date:` — so two tapes hydrated at different times are *not* byte-identical,
even though this service is otherwise deterministic. That is fine for a demo
and for replay (matching is on the request, not the response), but if you want
record-and-compare byte-equality you will want to normalise `Date` away first.
