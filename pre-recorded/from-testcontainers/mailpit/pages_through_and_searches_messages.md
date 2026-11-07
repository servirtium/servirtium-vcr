## Interaction 0: POST /api/v1/send

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 155
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"From":{"Email":"alice@example.com","Name":"Alice"},"To":[{"Email":"bob@example.com","Name":"Bob"}],"Subject":"alpha report","Text":"first","Tags":["q1"]}
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
Content-Length: 155
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"From":{"Email":"alice@example.com","Name":"Alice"},"To":[{"Email":"bob@example.com","Name":"Bob"}],"Subject":"beta report","Text":"second","Tags":["q1"]}
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
Content-Length: 149
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"From":{"Email":"alice@example.com","Name":"Alice"},"To":[{"Email":"bob@example.com","Name":"Bob"}],"Subject":"gamma note","Text":"third","Tags":[]}
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

## Interaction 3: POST /api/v1/send

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 194
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"From":{"Email":"alice@example.com","Name":"Alice"},"To":[{"Email":"bob@example.com","Name":"Bob"}],"Subject":"delta note","Text":"fourth","Attachments":[{"Content":"eA==","Filename":"x.txt"}]}
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
{"ID":"{{id-4}}"}

```

## Interaction 4: GET /api/v1/messages

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
Content-Length: 1330
```
### Response body recorded for playback (200: application/json):

```
{"total":4,"unread":4,"count":4,"messages_count":4,"start":0,"tags":["q1"],"messages":[{"ID":"{{id-4}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"delta note","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":1,"Snippet":"fourth"},{"ID":"{{id-3}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"gamma note","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"third"},{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"beta report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"second"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"alpha report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"first"}]}

```

## Interaction 5: GET /api/v1/messages?start=0&limit=2

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
Content-Length: 704
```
### Response body recorded for playback (200: application/json):

```
{"total":4,"unread":4,"count":2,"messages_count":4,"start":0,"tags":["q1"],"messages":[{"ID":"{{id-4}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"delta note","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":1,"Snippet":"fourth"},{"ID":"{{id-3}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"gamma note","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"third"}]}

```

## Interaction 6: GET /api/v1/messages?start=2&limit=2

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
Content-Length: 715
```
### Response body recorded for playback (200: application/json):

```
{"total":4,"unread":4,"count":2,"messages_count":4,"start":2,"tags":["q1"],"messages":[{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"beta report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"second"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"alpha report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"first"}]}

```

## Interaction 7: GET /api/v1/search?query=subject:report

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
Content-Length: 715
```
### Response body recorded for playback (200: application/json):

```
{"total":4,"unread":4,"count":2,"messages_count":2,"start":0,"tags":["q1"],"messages":[{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"beta report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"second"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"alpha report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"first"}]}

```

## Interaction 8: GET /api/v1/search?query=tag:q1

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
Content-Length: 715
```
### Response body recorded for playback (200: application/json):

```
{"total":4,"unread":4,"count":2,"messages_count":2,"start":0,"tags":["q1"],"messages":[{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"beta report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"second"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"alpha report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"first"}]}

```

## Interaction 9: GET /api/v1/search?query=gamma

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
Content-Length: 396
```
### Response body recorded for playback (200: application/json):

```
{"total":4,"unread":4,"count":1,"messages_count":1,"start":0,"tags":["q1"],"messages":[{"ID":"{{id-3}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"gamma note","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"third"}]}

```

## Interaction 10: GET /api/v1/search?query=has:attachment

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
Content-Length: 397
```
### Response body recorded for playback (200: application/json):

```
{"total":4,"unread":4,"count":1,"messages_count":1,"start":0,"tags":["q1"],"messages":[{"ID":"{{id-4}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"delta note","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":1,"Snippet":"fourth"}]}

```

## Interaction 11: GET /api/v1/search?query=from:alice@example.com

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
Content-Length: 1330
```
### Response body recorded for playback (200: application/json):

```
{"total":4,"unread":4,"count":4,"messages_count":4,"start":0,"tags":["q1"],"messages":[{"ID":"{{id-4}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"delta note","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":1,"Snippet":"fourth"},{"ID":"{{id-3}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"gamma note","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"third"},{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"beta report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"second"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"alpha report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"first"}]}

```

## Interaction 12: GET /api/v1/search?query=is:unread

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
Content-Length: 1330
```
### Response body recorded for playback (200: application/json):

```
{"total":4,"unread":4,"count":4,"messages_count":4,"start":0,"tags":["q1"],"messages":[{"ID":"{{id-4}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"delta note","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":1,"Snippet":"fourth"},{"ID":"{{id-3}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"gamma note","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":0,"Snippet":"third"},{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"beta report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"second"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"alpha report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"first"}]}

```

## Interaction 13: GET /api/v1/search?query=nosuchword

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
Content-Length: 90
```
### Response body recorded for playback (200: application/json):

```
{"total":4,"unread":4,"count":0,"messages_count":0,"start":0,"tags":["q1"],"messages":[]}

```

## Interaction 14: DELETE /api/v1/search?query=subject:note

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
Content-Type: text/plain
Referrer-Policy: no-referrer
Content-Length: 2
```
### Response body recorded for playback (200: text/plain):

```
ok
```

## Interaction 15: GET /api/v1/messages

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
Content-Length: 715
```
### Response body recorded for playback (200: application/json):

```
{"total":2,"unread":2,"count":2,"messages_count":2,"start":0,"tags":["q1"],"messages":[{"ID":"{{id-2}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"beta report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"second"},{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[],"Bcc":[],"ReplyTo":[],"Subject":"alpha report","Created":"2000-01-01T00:00:00Z","Tags":["q1"],"Size":0,"Attachments":0,"Snippet":"first"}]}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–15 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–15 |
| normalized | whole recording | `(?<="ID":")[A-Za-z0-9]{22}(?=")` | `{{id-N}}` | 0–12, 15 |
| collapsed | whole recording | `[A-Za-z0-9]{21,22}@mailpit` | `MESSAGE-ID@mailpit` | 4–12, 15 |
| collapsed | whole recording | `enmime-[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `enmime-BOUNDARY` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 4–12, 15 |
| collapsed | whole recording | `(Mon\|Tue\|Wed\|Thu\|Fri\|Sat\|Sun), [0-9]{2} [A-Z][a-z]{2} [0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} [+-][0-9]{4}` | `Sat, 01 Jan 2000 00:00:00 +0000` | none |
| collapsed | whole recording | `(?s)Received: from .*?\(UTC\)` | `Received: from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)` | none |
| collapsed | whole recording | `(?s)"Received":\["from .*?\(UTC\)"\]` | `"Received":["from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)"]` | none |
| collapsed | whole recording | `"Size":[0-9]+` | `"Size":0` | 4–12, 15 |
| collapsed | whole recording | `nonce-[A-Za-z0-9]{22}` | `nonce-NONCE` | 0–15 |
