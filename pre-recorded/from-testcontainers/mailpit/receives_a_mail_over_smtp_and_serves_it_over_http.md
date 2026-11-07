## Interaction 0: GET /api/v1/messages

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
Content-Security-Policy: default-src 'self'; script-src 'nonce-NONCE'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Content-Type: application/json
Referrer-Policy: no-referrer
Content-Length: 401
```
### Response body recorded for playback (200: application/json):

```
{"total":1,"unread":1,"count":1,"messages_count":1,"start":0,"tags":[],"messages":[{"ID":"MESSAGE-ID","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"","Address":"sender@example.com"},"To":[{"Name":"","Address":"rcpt@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"Hello from tcae","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"the body text"}]}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | `"ID":"[A-Za-z0-9]{22}"` | `"ID":"MESSAGE-ID"` | 0 |
| collapsed | whole recording | `"MessageID":"[A-Za-z0-9]+@mailpit"` | `"MessageID":"MESSAGE-ID@mailpit"` | 0 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 0 |
| collapsed | whole recording | `"Size":[0-9]+` | `"Size":0` | 0 |
| collapsed | whole recording | `nonce-[A-Za-z0-9]{22}` | `nonce-NONCE` | 0 |
