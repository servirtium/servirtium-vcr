# renekreijveld_bruno-joomla-api

Servirtium tapes converted, as they are, from René Kreijveld's Bruno
collection for the Joomla 6 Web Services API: one tape per request, one
interaction per example the collection documents. Nothing here was recorded
against a Joomla: the requests and responses are what the collection's
author wrote down.

**Licence: GPL-3.0** (the [LICENSE](LICENSE) beside this file), because the
collection is GPL-3.0 and these tapes are a straight conversion of it. This
directory is a separate work aggregated into servirtium-vcr, whose own code is
MIT; nothing outside this directory is under the GPL because of it, and
nothing here is under the MIT licence.

## Source

| | |
|---|---|
| Collection | [renekreijveld/bruno-joomla-api](https://github.com/renekreijveld/bruno-joomla-api) (Bruno, `bruno/Joomla Web Services API/`) |
| Commit | `4fde80b50bf82f041a51b13f43f4fe3d68699087` (2026-04-07, "Added headers for Accept and Content-Type") |
| Licence | GPL-3.0 (`LICENSE` in that repository, byte-identical to the copy here) |
| API | Joomla 6 Web Services (`/api/index.php/v1/...`), as the collection describes it |
| Converter | `servirtium convert bru` (servirtium-vcr), Bruno's parser `@usebruno/lang` 0.41.0 |

## What is in it

- 182 tapes, one per request `.bru` (78 GET, 36 POST, 35 PATCH, 33 DELETE),
  under a directory per Bruno folder. Names are the folder and request names
  made lowercase with `-` for spaces and punctuation
  (`Banners Categories/Add Category.bru` is
  `banners-categories/add-category.md`). [CONVERSION.md](CONVERSION.md) maps
  every source file to its tape.
- 194 interactions: 173 requests have one example, 6 have two and 3 have
  three (a 200 and the 4xx/413 the collection documents, in that order on the
  tape).
- **189 of the 194 have no response body**: the collection's examples give a
  status but their body is empty and their description says "todo: response
  object". Each of those interactions starts with
  `## [Note] Converted from Bruno: response body not documented:`, and its
  empty body means "not documented", not "the service sends nothing". The 5
  with a body (Media Adapters and Media Files) hold the JSON:API skeleton the
  author wrote, with empty values, not a real Joomla answer.
- Paths come from the collection's environment (`base_url` =
  `https://yourjoomlasite.com/api/index.php`, so every path starts
  `/api/index.php/v1/`) and each request's own variables. A variable the
  collection never gives a value (`{{banner_id}}`, `{{app}}`, `{{field_id}}`
  and the like) stays in the path as written, and the note lists it.
- Request bodies are the examples' (realistic values), not the requests'
  (mostly blanks).
- Request headers are not in any tape's request-headers block, so playback
  matches on method, path and body only. Each note lists what the collection
  would send: `Accept` and `Content-Type: application/vnd.api+json`, and
  `X-Joomla-Token: {{api_key}}` (the collection's secret variable: no token
  is in the collection or here).

## Fidelity

These are documentation, not recordings. Replay them to scaffold a client or
a test before you have a Joomla, but expect a real Joomla 6 to differ: the
real responses have bodies (JSON:API documents with `links`, `data`, `meta`),
`Content-Type: application/vnd.api+json`, real ids, 401 without a token, 404
for an id that does not exist. For real recordings of a real Joomla, see
[`../../../joomla-api/`](../../../joomla-api/README.md), made by our own tests
against Joomla in a container, with requests taken from this collection.

## Using them

Any Servirtium playback replays a tape, e.g.
`servirtium serve banners/list-banners.md 8080` and then
`curl http://127.0.0.1:8080/api/index.php/v1/banners`. A request must match
the tape's method, path (an unresolved variable literally, `{{banner_id}}`)
and body byte for byte.

## Regenerating

From the repository root, with the CLI built (`aeb core/.cli.ae`, which
writes `target/servirtium`):

```sh
git clone https://github.com/renekreijveld/bruno-joomla-api /tmp/bruno-joomla-api
git -C /tmp/bruno-joomla-api checkout 4fde80b50bf82f041a51b13f43f4fe3d68699087
rm -rf pre-recorded/converted/from.bru/renekreijveld_bruno-joomla-api/*/ \
       pre-recorded/converted/from.bru/renekreijveld_bruno-joomla-api/CONVERSION.md
target/servirtium convert bru "/tmp/bruno-joomla-api/bruno/Joomla Web Services API" \
  pre-recorded/converted/from.bru/renekreijveld_bruno-joomla-api \
  --env "Joomla Web Services API"
```

The conversion is deterministic: run on the same commit, it writes the same
bytes (`git status` stays clean). This README and LICENSE are not written by
the converter.
