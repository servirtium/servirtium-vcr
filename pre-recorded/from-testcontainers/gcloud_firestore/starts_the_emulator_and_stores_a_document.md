## LICENSE NOTICE

Recorded against the Cloud Firestore emulator in
gcr.io/google.com/cloudsdktool/cloud-sdk:emulators (Google Cloud CLI
592.0.0). The emulator is Google-owned and ships no licence of its own;
the CLI's LICENSE says use with Google Cloud products is also governed
by Google's terms, and the Google Cloud Terms of Service (3.3) forbid
reverse engineering the Services. Use of this tape is subject to those
terms; see UPSTREAM-TERMS.md in servirtium-vcr's pre-recorded/from-
testcontainers.

## Interaction 0: POST /v1/projects/firestore-project/databases/(default)/documents/users?documentId=alovelace

### Request headers recorded for playback:

```
Authorization: Bearer owner
Connection: keep-alive
Content-Length: 84
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"fields":{"firstname":{"stringValue":"Ada"},"lastname":{"stringValue":"Lovelace"}}}
```
### Response headers recorded for playback:

```
content-type: application/json
content-length: 311
```
### Response body recorded for playback (200: application/json):

```
{
  "name": "projects/firestore-project/databases/(default)/documents/users/alovelace",
  "fields": {
    "firstname": {
      "stringValue": "Ada"
    },
    "lastname": {
      "stringValue": "Lovelace"
    }
  },
  "createTime": "2026-01-01T00:00:00.000000Z",
  "updateTime": "2026-01-01T00:00:00.000000Z"
}

```

## Interaction 1: GET /v1/projects/firestore-project/databases/(default)/documents/users/alovelace

### Request headers recorded for playback:

```
Authorization: Bearer owner
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
content-type: application/json
content-length: 311
```
### Response body recorded for playback (200: application/json):

```
{
  "name": "projects/firestore-project/databases/(default)/documents/users/alovelace",
  "fields": {
    "firstname": {
      "stringValue": "Ada"
    },
    "lastname": {
      "stringValue": "Lovelace"
    }
  },
  "createTime": "2026-01-01T00:00:00.000000Z",
  "updateTime": "2026-01-01T00:00:00.000000Z"
}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | none |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2026-01-01T00:00:00.000000Z` | 0, 1 |
