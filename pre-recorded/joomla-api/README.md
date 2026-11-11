# joomla-api

Recordings of the Joomla 6 Web Services API (`/api/index.php/v1/...`):
real requests to a real Joomla 6.2.0 with MariaDB 11.4, both in containers,
with Servirtium in the middle. The requests are cribbed from René
Kreijveld's Bruno collection, whose straight conversion
([`../converted/from.bru/renekreijveld_bruno-joomla-api/`](../converted/from.bru/renekreijveld_bruno-joomla-api/README.md))
has a status and almost never a body; these tapes have what Joomla really
answers, bodies and headers included.

## Who it is for

Anyone writing a Joomla API client or an app that talks to a Joomla site,
in any language, who wants to replay realistic answers in tests without
running Joomla and a database.

## Fidelity

The real product at a pinned version, not an emulator: Joomla 6.2.0 (image
`docker.io/library/joomla:6.2.0-php8.4-apache`, digest
`sha256:922f9a6b65fdc747c1dd2d4f8672f8f9b94bb5c49fc7e22d072e4df248779b59`;
Apache 2.4.69, PHP 8.4.27) on MariaDB 11.4.13
(`docker.io/library/mariadb:11.4.13`, digest
`sha256:9640785a96ddd0aa19b50f89f693eebb065e2c7b494d8ae16e5b776a3680e7fb`),
freshly installed by the image's own installer, all web services plugins as
installed, the site's data throwaway and synthetic. A real site differs where
its data and configuration differ (ids, categories, users, languages,
extensions, SEF settings) and across Joomla versions; record against your own
site before trusting details.

What the tapes do to what Joomla said (every rule is in the test's `rules()`,
and each tape ends with a `## [Recording rules]` table of them):

- The token header is `X-Joomla-Token: X_JOOMLA_TOKEN_N` (Servirtium's
  `redact_credential_header`), matched on presence when replaying.
- Times (`created`, `modified`, `publish_up`, `registerDate`, ...) are
  `2000-01-01 00:00:00`; the `Date` and `Last-Modified` response headers are
  left out.
- The new user's password in the request body is `REDACTED[reader-password]`
  (put back on replay).
- Links carry `{{request.host}}`, which playback fills with its own host and
  port.

Not rewritten, and deterministic for that reason: the admin is user 42 (the
installer picks a random id; the test renumbers the admin in MariaDB before
recording), so the next user is 43; every other id is what a fresh install
hands out with the cases run in order.

## Cases

Each row is one tape in [`tapes/`](tapes/); its name is the second argument
of `begin(...)` in the test. The test's `PORTING` comment above each case
lists its requests, bodies and answers.

| Tape | What it does | Test |
|---|---|---|
| [`refuses_a_request_without_a_token.md`](tapes/refuses_a_request_without_a_token.md) | GET articles with no token (401 `Forbidden`), with an invented token (401), then with the token (200, empty list). | [test_joomla.ae#L339](test_joomla.ae#L339) |
| [`creates_reads_updates_and_deletes_an_article.md`](tapes/creates_reads_updates_and_deletes_an_article.md) | POST an article, GET it, PATCH its title, list, DELETE refused with 409 (not trashed), trash (PATCH state -2), DELETE 204, GET 404. | [test_joomla.ae#L361](test_joomla.ae#L361) |
| [`creates_a_category_and_an_article_in_it.md`](tapes/creates_a_category_and_an_article_in_it.md) | POST a content category, POST an article with its id, list articles filtered by the category, GET the category, trash and delete both. | [test_joomla.ae#L394](test_joomla.ae#L394) |
| [`creates_a_tag_and_tags_an_article.md`](tapes/creates_a_tag_and_tags_an_article.md) | POST a tag, POST an article tagged with its id, GET the article (its tag relationship) and the tag, trash and delete both. | [test_joomla.ae#L421](test_joomla.ae#L421) |
| [`creates_a_banner_client_and_a_banner_for_it.md`](tapes/creates_a_banner_client_and_a_banner_for_it.md) | POST a banner client, POST a banner for it (`cid`), list the client's banners, PATCH the banner, trash and delete both. | [test_joomla.ae#L449](test_joomla.ae#L449) |
| [`creates_updates_and_deletes_a_user.md`](tapes/creates_updates_and_deletes_a_user.md) | POST a user (Registered), GET, PATCH the name, search, DELETE 204, GET 404. | [test_joomla.ae#L478](test_joomla.ae#L478) |
| [`lists_user_groups_and_access_levels.md`](tapes/lists_user_groups_and_access_levels.md) | GET the user groups and the access levels. | [test_joomla.ae#L505](test_joomla.ae#L505) |
| [`answers_the_representative_errors.md`](tapes/answers_the_representative_errors.md) | 404 for a missing article and user and an unknown route; 400 for a tag Joomla cannot save (no description: the database error comes back in the title). | [test_joomla.ae#L523](test_joomla.ae#L523) |

Out of scope so far, though the Bruno collection has them: config, contacts,
fields and field groups, languages and overrides, media, menus, messages,
modules, newsfeeds, plugins, privacy, redirects, templates, guided tours, the
installer. Each would be a case of its own.

## Replaying from another language

- Every request is plain HTTP/1.1 with `User-Agent`, `Accept:
  application/vnd.api+json`, `X-Joomla-Token` (any value: matched on
  presence) and `Content-Type: application/json` when there is a body. Send
  the JSON bodies byte for byte as in the test; the query strings are
  encoded as written there (`?filter%5Bcategory%5D=8`).
- Take ids from the responses and send them back, as the cases do.
- Joomla answers JSON:API documents (`application/vnd.api+json;
  charset=utf-8`); its 409 for deleting an untrashed item is plain
  `application/json` with a different shape, and a 204 has no body. The
  tapes keep each as sent.
- Playback is strict: a request that differs from the recorded one (method,
  path, recorded headers, body) or a recorded request never made fails the
  case.

## Running the test

`TCAE_VCR` selects the mode, as in
[`../from-testcontainers/`](../from-testcontainers/README.md#modes-tcae_vcr).
From this directory, with the Aether toolchain (`ae`) installed:

```sh
ae test test_joomla.ae                       # containers, no Servirtium, no tapes
TCAE_VCR=record   ae test test_joomla.ae     # containers, Servirtium in the middle, tapes written to tapes/
TCAE_VCR=check    ae test test_joomla.ae     # record, and fail if a tape changed (<case>.md.actual beside it)
TCAE_VCR=playback ae test test_joomla.ae     # no containers, no engine: replay the tapes
```

Recording needs Docker or Podman (two containers on a network of their own,
from [testcontainers-ae](https://github.com/servirtium/testcontainers-ae), in
`aether.toml`; there is no Joomla module there, so the test starts both as
generic containers). The site lives for one run: the test installs it,
renumbers the admin, gives it an API token (a seed in the admin's profile,
HMAC-SHA256 keyed by the site's secret, Joomla's token format) and removes
both containers at the end; none of that is recorded. Run the whole suite:
the ids on the tapes depend on the cases running in order on a fresh site.

`lib/servirtium_vcr` links to this repository's `core/`, and `servirtium`
to the recorder module of `../from-testcontainers/servirtium/`, so the test
records with the Servirtium beside it.

## Licence

The tapes and the test are part of servirtium-vcr, under its
[LICENSE](../../LICENSE) (MIT). Joomla is GPL-2.0-or-later, and the reasoning
for not carrying that over is Paul Hammant's (2026-11-11): these are wire
recordings of our own test runs against our own throwaway instance, HTTP
requests we wrote and the HTTP responses a GPL server gave them, not copies
of Joomla's code; an HTTP exchange is a leveller, the same whatever licence
the server's code is under, as a page fetched from a GPL web server is not
GPL. Nothing of Joomla's source is in them. The requests were cribbed from
the GPL-3.0 Bruno collection above as facts about the API (endpoint paths and
field names), rewritten as our own test code, not copied as text. Joomla! is
a trademark of Open Source Matters, Inc., named here only to say what was
recorded.
