## Interaction 0: POST /api/v1/send

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 141
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"From":{"Email":"alice@example.com","Name":"Alice"},"To":[{"Email":"bob@example.com","Name":"Bob"}],"Subject":"exists","Text":"e","Tags":[]}
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
Content-Length: 28
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"To":[{"Email":"b@x.com"}]}
```
### Response headers recorded for playback:

```
Content-Security-Policy: default-src 'self'; script-src 'self'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Referrer-Policy: no-referrer
Content-Length: 49
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (400: text/plain; charset=utf-8):

```
{"Error":"error building message: from not set"}

```

## Interaction 2: POST /api/v1/send

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 4
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{bad
```
### Response headers recorded for playback:

```
Content-Security-Policy: default-src 'self'; script-src 'self'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Referrer-Policy: no-referrer
Content-Length: 77
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (400: text/plain; charset=utf-8):

```
{"Error":"invalid character 'b' looking for beginning of object key string"}

```

## Interaction 3: GET /api/v1/search

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
Content-Security-Policy: default-src 'self'; script-src 'self'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Referrer-Policy: no-referrer
Content-Length: 22
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (400: text/plain; charset=utf-8):

```
Error: no search query
```

## Interaction 4: GET /api/v1/message/nosuchid

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
Content-Security-Policy: default-src 'self'; script-src 'self'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Referrer-Policy: no-referrer
Content-Length: 18
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
404 page not found
```

## Interaction 5: GET /api/v1/message/{{id-1}}/part/9

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
Content-Security-Policy: default-src 'self'; script-src 'self'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Referrer-Policy: no-referrer
Content-Length: 18
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
404 page not found
```

## Interaction 6: GET /api/v1/nosuch

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
Content-Security-Policy: default-src 'self'; script-src 'self'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Content-Type: text/plain; charset=utf-8
Referrer-Policy: no-referrer
X-Content-Type-Options: nosniff
Content-Length: 19
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
404 page not found

```

## Interaction 7: POST /api/v1/messages

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
Content-Security-Policy: default-src 'self'; script-src 'self'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Content-Type: text/plain; charset=utf-8
Referrer-Policy: no-referrer
X-Content-Type-Options: nosniff
Content-Length: 19
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
404 page not found

```

## Interaction 8: DELETE /api/v1/tags/nosuch

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
Content-Security-Policy: default-src 'self'; script-src 'self'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Referrer-Policy: no-referrer
Content-Length: 21
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (400: text/plain; charset=utf-8):

```
tag not found: nosuch
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–8 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–8 |
| normalized | whole recording | `(?<="ID":")[A-Za-z0-9]{22}(?=")` | `{{id-N}}` | 0 |
| collapsed | whole recording | `[A-Za-z0-9]{21,22}@mailpit` | `MESSAGE-ID@mailpit` | none |
| collapsed | whole recording | `enmime-[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `enmime-BOUNDARY` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |
| collapsed | whole recording | `(Mon\|Tue\|Wed\|Thu\|Fri\|Sat\|Sun), [0-9]{2} [A-Z][a-z]{2} [0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} [+-][0-9]{4}` | `Sat, 01 Jan 2000 00:00:00 +0000` | none |
| collapsed | whole recording | `(?s)Received: from .*?\(UTC\)` | `Received: from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)` | none |
| collapsed | whole recording | `(?s)"Received":\["from .*?\(UTC\)"\]` | `"Received":["from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)"]` | none |
| collapsed | whole recording | `"Size":[0-9]+` | `"Size":0` | none |
| collapsed | whole recording | `nonce-[A-Za-z0-9]{22}` | `nonce-NONCE` | 0 |
