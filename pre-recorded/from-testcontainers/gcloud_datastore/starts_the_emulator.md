## LICENSE NOTICE

Recorded against the Cloud Datastore emulator in
gcr.io/google.com/cloudsdktool/cloud-sdk:emulators (Google Cloud CLI
592.0.0). The emulator is Google-owned and ships no licence of its own;
the CLI's LICENSE says use with Google Cloud products is also governed
by Google's terms, and the Google Cloud Terms of Service (3.3) forbid
reverse engineering the Services. Use of this tape is subject to those
terms; see UPSTREAM-TERMS.md in servirtium-vcr's pre-recorded/from-
testcontainers.

## Interaction 0: POST /v1/projects/datastore-project:commit

### Request headers recorded for playback:

```
Authorization: Bearer owner
Connection: keep-alive
Content-Length: 166
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"mode":"NON_TRANSACTIONAL","mutations":[{"upsert":{"key":{"path":[{"kind":"Task","name":"sample"}]},"properties":{"Description":{"stringValue":"my description"}}}}]}
```
### Response headers recorded for playback:

```
content-type: application/json
content-length: 73
```
### Response body recorded for playback (200: application/json):

```
{
  "mutationResults": [{
    "version": "2"
  }],
  "indexUpdates": 3
}

```

## Interaction 1: POST /v1/projects/datastore-project:lookup

### Request headers recorded for playback:

```
Authorization: Bearer owner
Connection: keep-alive
Content-Length: 53
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"keys":[{"path":[{"kind":"Task","name":"sample"}]}]}
```
### Response headers recorded for playback:

```
content-type: application/json
content-length: 358
```
### Response body recorded for playback (200: application/json):

```
{
  "found": [{
    "entity": {
      "key": {
        "partitionId": {
          "projectId": "datastore-project"
        },
        "path": [{
          "kind": "Task",
          "name": "sample"
        }]
      },
      "properties": {
        "Description": {
          "stringValue": "my description"
        }
      }
    },
    "version": "2"
  }]
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
