## Volatile values

- request path, regex `/cases/([0-9]+)`: case-id
- response body, JSON `caseId`: case-id

## Interaction 0: POST /cases

### Request headers recorded for playback:

```
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json
```
### Response body recorded for playback (201: application/json):

```
{"caseId":"42"}
```

## Interaction 1: GET /cases/42/documents

### Request headers recorded for playback:

```
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: text/plain
```
### Response body recorded for playback (200: text/plain):

```
the documents of case 42
```

