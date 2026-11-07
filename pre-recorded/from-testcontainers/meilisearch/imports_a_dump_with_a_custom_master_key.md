## Interaction 0: GET /

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-length: 651
content-type: text/html
```
### Response body recorded for playback (200: text/html):

```
<!doctype html><html lang="en"><head><meta name="robots" content="noindex"/><meta charset="utf-8"/><link rel="icon" href="/favicon-32x32.png"/><meta name="viewport" content="width=device-width,initial-scale=1"/><meta name="theme-color" content="#000000"/><meta name="description" content="Dashboard to test Meilisearch's search engine"/><link rel="apple-touch-icon" href="/logo.svg"/><link rel="manifest" href="/manifest.json"/><title>Mini-dashboard | Meilisearch</title><script defer="defer" src="/static/js/main.e3547b38.js"></script></head><body><noscript>You need to enable JavaScript to run this app.</noscript><div id="root"></div></body></html>
```

## Interaction 1: GET /indexes/movies/documents/1212

### Request headers recorded for playback:

```
Authorization: Bearer REDACTED[my-master-key]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-length: 321
content-type: application/json
```
### Response body recorded for playback (200: application/json):

```
{"movie_id":1212,"title":"American Ninja 5","poster":"https://image.tmdb.org/t/p/w1280/iuAQVI4mvjI83wnirpD8GVNRVuY.jpg","overview":"When a scientists daughter is kidnapped, American Ninja, attempts to find her, but this time he teams up with a youngster he has trained in the ways of the ninja.","release_date":725846400}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `vary` | (left out) | 0, 1 |
| redacted | request headers | (not shown: it may be the secret) | `Bearer REDACTED[default-master-key]` | none |
| redacted | request headers | (not shown: it may be the secret) | `Bearer REDACTED[my-master-key]` | 1 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
