## Interaction 0: POST /api/v1/send

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 138
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"From":{"Email":"alice@example.com","Name":"Alice"},"To":[{"Email":"bob@example.com","Name":"Bob"}],"Subject":"one","Text":"1","Tags":[]}
```
### Response headers recorded for playback:

```
Content-Security-Policy: default-src 'self'; script-src 'nonce-NONCE'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Content-Type: application/json
Referrer-Policy: no-referrer
Content-Length: 18
```
### Response body recorded for playback (200: application/json):

```
{"ID":"{{id-1}}"}

```

## Interaction 1: POST /api/v1/send

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 138
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"From":{"Email":"alice@example.com","Name":"Alice"},"To":[{"Email":"bob@example.com","Name":"Bob"}],"Subject":"two","Text":"2","Tags":[]}
```
### Response headers recorded for playback:

```
Content-Security-Policy: default-src 'self'; script-src 'nonce-NONCE'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Content-Type: application/json
Referrer-Policy: no-referrer
Content-Length: 18
```
### Response body recorded for playback (200: application/json):

```
{"ID":"{{id-2}}"}

```

## Interaction 2: POST /api/v1/send

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 140
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"From":{"Email":"alice@example.com","Name":"Alice"},"To":[{"Email":"bob@example.com","Name":"Bob"}],"Subject":"three","Text":"3","Tags":[]}
```
### Response headers recorded for playback:

```
Content-Security-Policy: default-src 'self'; script-src 'nonce-NONCE'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Content-Type: application/json
Referrer-Policy: no-referrer
Content-Length: 18
```
### Response body recorded for playback (200: application/json):

```
{"ID":"{{id-3}}"}

```

## Interaction 3: GET /api/v1/messages

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
Content-Length: 975
```
### Response body recorded for playback (200: application/json):

```
{"total":3,"unread":3,"count":3,"messages_count":3,"start":0,"tags":[],"messages":[{"ID":"{{id-3}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"three","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"3"},{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"two","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"2"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"one","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"1"}]}

```

## Interaction 4: PUT /api/v1/messages

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 32
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"IDs":["{{id-1}}"],"Read":true}
```
### Response headers recorded for playback:

```
Content-Security-Policy: default-src 'self'; script-src 'nonce-NONCE'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Content-Type: text/plain
Referrer-Policy: no-referrer
Content-Length: 2
```
### Response body recorded for playback (200: text/plain):

```
ok
```

## Interaction 5: GET /api/v1/messages

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
Content-Length: 974
```
### Response body recorded for playback (200: application/json):

```
{"total":3,"unread":2,"count":3,"messages_count":3,"start":0,"tags":[],"messages":[{"ID":"{{id-3}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"three","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"3"},{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"two","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"2"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":true,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"one","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"1"}]}

```

## Interaction 6: PUT /api/v1/messages

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 33
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"IDs":["{{id-1}}"],"Read":false}
```
### Response headers recorded for playback:

```
Content-Security-Policy: default-src 'self'; script-src 'nonce-NONCE'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Content-Type: text/plain
Referrer-Policy: no-referrer
Content-Length: 2
```
### Response body recorded for playback (200: text/plain):

```
ok
```

## Interaction 7: GET /api/v1/messages

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
Content-Length: 975
```
### Response body recorded for playback (200: application/json):

```
{"total":3,"unread":3,"count":3,"messages_count":3,"start":0,"tags":[],"messages":[{"ID":"{{id-3}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"three","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"3"},{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"two","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"2"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"one","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"1"}]}

```

## Interaction 8: GET /api/v1/message/{{id-2}}

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
Content-Length: 404
```
### Response body recorded for playback (200: application/json):

```
{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"ReturnPath":"alice@example.com","Subject":"two","ListUnsubscribe":{"Header":"","Links":[],"Errors":"","HeaderPost":""},"Date":"2000-01-01T00:00:00Z","Tags":[],"Text":"2","HTML":"","Size":0,"Inline":[],"Attachments":[]}

```

## Interaction 9: GET /api/v1/messages

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
Content-Length: 974
```
### Response body recorded for playback (200: application/json):

```
{"total":3,"unread":2,"count":3,"messages_count":3,"start":0,"tags":[],"messages":[{"ID":"{{id-3}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"three","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"3"},{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":true,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"two","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"2"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"one","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"1"}]}

```

## Interaction 10: PUT /api/v1/messages

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 13
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"Read":true}
```
### Response headers recorded for playback:

```
Content-Security-Policy: default-src 'self'; script-src 'nonce-NONCE'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Content-Type: text/plain
Referrer-Policy: no-referrer
Content-Length: 2
```
### Response body recorded for playback (200: text/plain):

```
ok
```

## Interaction 11: GET /api/v1/messages

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
Content-Length: 972
```
### Response body recorded for playback (200: application/json):

```
{"total":3,"unread":0,"count":3,"messages_count":3,"start":0,"tags":[],"messages":[{"ID":"{{id-3}}","MessageID":"MESSAGE-ID@mailpit","Read":true,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"three","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"3"},{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":true,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"two","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"2"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":true,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"one","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"1"}]}

```

## Interaction 12: GET /api/v1/search?query=is:read

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
Content-Length: 972
```
### Response body recorded for playback (200: application/json):

```
{"total":3,"unread":0,"count":3,"messages_count":3,"start":0,"tags":[],"messages":[{"ID":"{{id-3}}","MessageID":"MESSAGE-ID@mailpit","Read":true,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"three","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"3"},{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":true,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"two","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"2"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":true,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"one","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"1"}]}

```

## Interaction 13: GET /api/v1/search?query=is:unread

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
Content-Length: 86
```
### Response body recorded for playback (200: application/json):

```
{"total":3,"unread":0,"count":0,"messages_count":0,"start":0,"tags":[],"messages":[]}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–13 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–13 |
| normalized | whole recording | `(?<="ID":")[A-Za-z0-9]{22}(?=")` | `{{id-N}}` | 0–3, 5, 7–9, 11, 12 |
| collapsed | whole recording | `[A-Za-z0-9]{21,22}@mailpit` | `MESSAGE-ID@mailpit` | 3, 5, 7–9, 11, 12 |
| collapsed | whole recording | `enmime-[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `enmime-BOUNDARY` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 3, 5, 7–9, 11, 12 |
| collapsed | whole recording | `(Mon\|Tue\|Wed\|Thu\|Fri\|Sat\|Sun), [0-9]{2} [A-Z][a-z]{2} [0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} [+-][0-9]{4}` | `Sat, 01 Jan 2000 00:00:00 +0000` | none |
| collapsed | whole recording | `(?s)Received: from .*?\(UTC\)` | `Received: from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)` | none |
| collapsed | whole recording | `(?s)"Received":\["from .*?\(UTC\)"\]` | `"Received":["from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)"]` | none |
| collapsed | whole recording | `"Size":[0-9]+` | `"Size":0` | 3, 5, 7–9, 11, 12 |
| collapsed | whole recording | `nonce-[A-Za-z0-9]{22}` | `nonce-NONCE` | 0–13 |
