## Interaction 0: PUT /v1/projects/pubsub-project/topics/greetings

### Request headers recorded for playback:

```
Authorization: Bearer owner
Connection: keep-alive
Content-Length: 2
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{}
```
### Response headers recorded for playback:

```
content-type: application/json
content-length: 57
```
### Response body recorded for playback (200: application/json):

```
{
  "name": "projects/pubsub-project/topics/greetings"
}

```

## Interaction 1: PUT /v1/projects/pubsub-project/subscriptions/subscription

### Request headers recorded for playback:

```
Authorization: Bearer owner
Connection: keep-alive
Content-Length: 52
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"topic":"projects/pubsub-project/topics/greetings"}
```
### Response headers recorded for playback:

```
content-type: application/json
content-length: 214
```
### Response body recorded for playback (200: application/json):

```
{
  "name": "projects/pubsub-project/subscriptions/subscription",
  "topic": "projects/pubsub-project/topics/greetings",
  "pushConfig": {
  },
  "ackDeadlineSeconds": 10,
  "messageRetentionDuration": "604800s"
}

```

## Interaction 2: POST /v1/projects/pubsub-project/topics/greetings:publish

### Request headers recorded for playback:

```
Authorization: Bearer owner
Connection: keep-alive
Content-Length: 42
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"messages":[{"data":"SGVsbG8gV29ybGQ="}]}
```
### Response headers recorded for playback:

```
content-type: application/json
content-length: 26
```
### Response body recorded for playback (200: application/json):

```
{
  "messageIds": ["1"]
}

```

## Interaction 3: POST /v1/projects/pubsub-project/subscriptions/subscription:pull

### Request headers recorded for playback:

```
Authorization: Bearer owner
Connection: keep-alive
Content-Length: 42
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"maxMessages":1,"returnImmediately":true}
```
### Response headers recorded for playback:

```
content-type: application/json
content-length: 232
```
### Response body recorded for playback (200: application/json):

```
{
  "receivedMessages": [{
    "ackId": "projects/pubsub-project/subscriptions/subscription:1",
    "message": {
      "data": "SGVsbG8gV29ybGQ=",
      "messageId": "1",
      "publishTime": "2026-01-01T00:00:00.000Z"
    }
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
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2026-01-01T00:00:00.000Z` | 3 |
