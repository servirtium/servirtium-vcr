## Interaction 0: POST /api/v1/send

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 369
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"From":{"Email":"alice@example.com","Name":"Alice"},"To":[{"Email":"bob@example.com","Name":"Bob"}],"Cc":[{"Email":"carol@example.com"}],"Bcc":["dave@example.com"],"Subject":"Hello Bob","Text":"plain body","HTML":"<p>html <b>body</b></p>","Tags":["greeting","tcae"],"Headers":{"X-Tcae":"1"},"Attachments":[{"Content":"aGVsbG8gYXR0YWNobWVudA==","Filename":"note.txt"}]}
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

## Interaction 1: GET /api/v1/messages

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
Content-Length: 510
```
### Response body recorded for playback (200: application/json):

```
{"total":1,"unread":1,"count":1,"messages_count":1,"start":0,"tags":["greeting","tcae"],"messages":[{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[{"Name":"","Address":"carol@example.com"}],"Bcc":[{"Name":"","Address":"dave@example.com"}],"ReplyTo":[],"Subject":"Hello Bob","Created":"2000-01-01T00:00:00Z","Tags":["greeting","tcae"],"Size":0,"Attachments":1,"Snippet":"html body"}]}

```

## Interaction 2: GET /api/v1/message/{{id-1}}

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
Content-Length: 667
```
### Response body recorded for playback (200: application/json):

```
{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[{"Name":"","Address":"carol@example.com"}],"Bcc":[{"Name":"","Address":"dave@example.com"}],"ReplyTo":[],"ReturnPath":"alice@example.com","Subject":"Hello Bob","ListUnsubscribe":{"Header":"","Links":[],"Errors":"","HeaderPost":""},"Date":"2000-01-01T00:00:00Z","Tags":["greeting","tcae"],"Text":"plain body","HTML":"\u003cp\u003ehtml \u003cb\u003ebody\u003c/b\u003e\u003c/p\u003e","Size":0,"Inline":[],"Attachments":[{"PartID":"2","FileName":"note.txt","ContentType":"text/plain","ContentID":"","Size":0}]}

```

## Interaction 3: GET /api/v1/message/{{id-1}}/headers

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
Content-Length: 454
```
### Response body recorded for playback (200: application/json):

```
{"Bcc":["dave@example.com"],"Cc":["\u003ccarol@example.com\u003e"],"Content-Type":["multipart/mixed; boundary=enmime-BOUNDARY"],"Date":["Sat, 01 Jan 2000 00:00:00 +0000"],"From":["\"Alice\" \u003calice@example.com\u003e"],"Message-Id":["\u003cMESSAGE-ID@mailpit\u003e"],"Mime-Version":["1.0"],"Return-Path":["\u003calice@example.com\u003e"],"Subject":["Hello Bob"],"To":["\"Bob\" \u003cbob@example.com\u003e"],"X-Tags":["greeting, tcae"],"X-Tcae":["1"]}

```

## Interaction 4: GET /api/v1/message/{{id-1}}/raw

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
Content-Type: text/plain; charset=utf-8
Referrer-Policy: no-referrer
Content-Length: 776
```
### Response body recorded for playback (200: text/plain; charset=utf-8):

```
Bcc: dave@example.com
Message-Id: <MESSAGE-ID@mailpit>
Return-Path: <alice@example.com>
Cc: <carol@example.com>
Content-Type: multipart/mixed;
 boundary=enmime-BOUNDARY
Date: Sat, 01 Jan 2000 00:00:00 +0000
From: "Alice" <alice@example.com>
Mime-Version: 1.0
Subject: Hello Bob
To: "Bob" <bob@example.com>
X-Tags: greeting, tcae
X-Tcae: 1

--enmime-BOUNDARY
Content-Type: multipart/alternative;
 boundary=enmime-BOUNDARY

--enmime-BOUNDARY
Content-Type: text/plain; charset=utf-8

plain body
--enmime-BOUNDARY
Content-Type: text/html; charset=utf-8

<p>html <b>body</b></p>
--enmime-BOUNDARY--

--enmime-BOUNDARY
Content-Disposition: attachment; filename=note.txt
Content-Type: text/plain; charset=utf-8

hello attachment
--enmime-BOUNDARY--

```

## Interaction 5: GET /api/v1/message/{{id-1}}/part/2

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
Content-Disposition: filename="note.txt"
Content-Security-Policy: default-src 'self'; script-src 'nonce-NONCE'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Content-Type: text/plain
Referrer-Policy: no-referrer
Content-Length: 16
```
### Response body recorded for playback (200: text/plain):

```
hello attachment
```

## Interaction 6: GET /api/v1/message/latest

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
Content-Length: 667
```
### Response body recorded for playback (200: application/json):

```
{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[{"Name":"","Address":"carol@example.com"}],"Bcc":[{"Name":"","Address":"dave@example.com"}],"ReplyTo":[],"ReturnPath":"alice@example.com","Subject":"Hello Bob","ListUnsubscribe":{"Header":"","Links":[],"Errors":"","HeaderPost":""},"Date":"2000-01-01T00:00:00Z","Tags":["greeting","tcae"],"Text":"plain body","HTML":"\u003cp\u003ehtml \u003cb\u003ebody\u003c/b\u003e\u003c/p\u003e","Size":0,"Inline":[],"Attachments":[{"PartID":"2","FileName":"note.txt","ContentType":"text/plain","ContentID":"","Size":0}]}

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
Content-Length: 509
```
### Response body recorded for playback (200: application/json):

```
{"total":1,"unread":0,"count":1,"messages_count":1,"start":0,"tags":["greeting","tcae"],"messages":[{"ID":"{{id-1}}","MessageID":"MESSAGE-ID@mailpit","Read":true,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[{"Name":"","Address":"carol@example.com"}],"Bcc":[{"Name":"","Address":"dave@example.com"}],"ReplyTo":[],"Subject":"Hello Bob","Created":"2000-01-01T00:00:00Z","Tags":["greeting","tcae"],"Size":0,"Attachments":1,"Snippet":"html body"}]}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–7 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–7 |
| normalized | whole recording | `(?<="ID":")[A-Za-z0-9]{22}(?=")` | `{{id-N}}` | 0–2, 6, 7 |
| collapsed | whole recording | `[A-Za-z0-9]{21,22}@mailpit` | `MESSAGE-ID@mailpit` | 1–4, 6, 7 |
| collapsed | whole recording | `enmime-[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `enmime-BOUNDARY` | 3, 4 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 1, 2, 6, 7 |
| collapsed | whole recording | `(Mon\|Tue\|Wed\|Thu\|Fri\|Sat\|Sun), [0-9]{2} [A-Z][a-z]{2} [0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} [+-][0-9]{4}` | `Sat, 01 Jan 2000 00:00:00 +0000` | 3, 4 |
| collapsed | whole recording | `(?s)Received: from .*?\(UTC\)` | `Received: from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)` | none |
| collapsed | whole recording | `(?s)"Received":\["from .*?\(UTC\)"\]` | `"Received":["from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)"]` | none |
| collapsed | whole recording | `"Size":[0-9]+` | `"Size":0` | 1, 2, 6, 7 |
| collapsed | whole recording | `nonce-[A-Za-z0-9]{22}` | `nonce-NONCE` | 0–7 |
