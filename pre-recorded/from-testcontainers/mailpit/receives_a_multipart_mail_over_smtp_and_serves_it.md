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
Content-Length: 485
```
### Response body recorded for playback (200: application/json):

```
{"total":1,"unread":1,"count":1,"messages_count":1,"start":0,"tags":[],"messages":[{"ID":"{{id-1}}","MessageID":"report-1@tcae.test","Read":false,"From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[{"Name":"","Address":"carol@example.com"}],"Bcc":[{"Name":"","Address":"hidden@example.com"}],"ReplyTo":[],"Subject":"Quarterly report","Created":"2000-01-01T00:00:00Z","Tags":[],"Size":0,"Attachments":1,"Snippet":"HTML body"}]}

```

## Interaction 1: GET /api/v1/message/{{id-1}}

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
Content-Length: 664
```
### Response body recorded for playback (200: application/json):

```
{"ID":"{{id-1}}","MessageID":"report-1@tcae.test","From":{"Name":"Alice","Address":"alice@example.com"},"To":[{"Name":"Bob","Address":"bob@example.com"}],"Cc":[{"Name":"","Address":"carol@example.com"}],"Bcc":[{"Name":"","Address":"hidden@example.com"}],"ReplyTo":[],"ReturnPath":"alice@example.com","Subject":"Quarterly report","ListUnsubscribe":{"Header":"","Links":[],"Errors":"","HeaderPost":""},"Date":"2000-01-01T00:00:00Z","Tags":[],"Text":"Plain text body","HTML":"\u003cp\u003eHTML \u003cb\u003ebody\u003c/b\u003e\u003c/p\u003e","Size":0,"Inline":[],"Attachments":[{"PartID":"2","FileName":"report.csv","ContentType":"text/csv","ContentID":"","Size":0}]}

```

## Interaction 2: GET /api/v1/message/{{id-1}}/part/2

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
Content-Disposition: filename="report.csv"
Content-Security-Policy: default-src 'self'; script-src 'nonce-NONCE'; style-src * 'unsafe-inline'; frame-src 'self'; img-src * data: blob:; font-src * data:; media-src 'self'; connect-src 'self' ws: wss:; object-src 'none'; base-uri 'self';
Content-Type: text/csv
Referrer-Policy: no-referrer
Content-Length: 8
```
### Response body recorded for playback (200: text/csv):

```
a,b
1,2
```

## Interaction 3: GET /api/v1/message/{{id-1}}/raw

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
Content-Length: 777
```
### Response body recorded for playback (200: text/plain; charset=utf-8):

```
Bcc: hidden@example.com
Return-Path: <alice@example.com>
Received: from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)
From: Alice <alice@example.com>
To: Bob <bob@example.com>
Cc: carol@example.com
Subject: Quarterly report
Date: Sat, 01 Jan 2000 00:00:00 +0000
Message-ID: <report-1@tcae.test>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tcae-b1"

--tcae-b1
Content-Type: multipart/alternative; boundary="tcae-b2"

--tcae-b2
Content-Type: text/plain; charset=utf-8

Plain text body
--tcae-b2
Content-Type: text/html; charset=utf-8

<p>HTML <b>body</b></p>
--tcae-b2--
--tcae-b1
Content-Type: text/csv; name="report.csv"
Content-Disposition: attachment; filename="report.csv"

a,b
1,2
--tcae-b1--


```

## Interaction 4: GET /api/v1/message/{{id-1}}/headers

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
Content-Length: 494
```
### Response body recorded for playback (200: application/json):

```
{"Bcc":["hidden@example.com"],"Cc":["carol@example.com"],"Content-Type":["multipart/mixed; boundary=\"tcae-b1\""],"Date":["Sat, 01 Jan 2000 00:00:00 +0000"],"From":["Alice \u003calice@example.com\u003e"],"Message-Id":["\u003creport-1@tcae.test\u003e"],"Mime-Version":["1.0"],"Received":["from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)"],"Return-Path":["\u003calice@example.com\u003e"],"Subject":["Quarterly report"],"To":["Bob \u003cbob@example.com\u003e"]}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–4 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–4 |
| normalized | whole recording | `(?<="ID":")[A-Za-z0-9]{22}(?=")` | `{{id-N}}` | 0, 1 |
| collapsed | whole recording | `[A-Za-z0-9]{21,22}@mailpit` | `MESSAGE-ID@mailpit` | none |
| collapsed | whole recording | `enmime-[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `enmime-BOUNDARY` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 0, 1 |
| collapsed | whole recording | `(Mon\|Tue\|Wed\|Thu\|Fri\|Sat\|Sun), [0-9]{2} [A-Z][a-z]{2} [0-9]{4} [0-9]{2}:[0-9]{2}:[0-9]{2} [+-][0-9]{4}` | `Sat, 01 Jan 2000 00:00:00 +0000` | 3, 4 |
| collapsed | whole recording | `(?s)Received: from .*?\(UTC\)` | `Received: from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)` | 3 |
| collapsed | whole recording | `(?s)"Received":\["from .*?\(UTC\)"\]` | `"Received":["from CLIENT by CONTAINER (Mailpit) with SMTP; Sat, 1 Jan 2000 00:00:00 +0000 (UTC)"]` | 4 |
| collapsed | whole recording | `"Size":[0-9]+` | `"Size":0` | 0, 1 |
| collapsed | whole recording | `nonce-[A-Za-z0-9]{22}` | `nonce-NONCE` | 0–4 |
