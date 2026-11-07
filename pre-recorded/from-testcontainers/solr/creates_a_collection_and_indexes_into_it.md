## Interaction 0: GET /solr/admin/info/health?wt=json

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
Content-Security-Policy: default-src 'none'; base-uri 'none'; connect-src 'self'; form-action 'self'; font-src 'self'; frame-ancestors 'none'; img-src 'self' data:; media-src 'self'; style-src 'self' 'unsafe-inline'; script-src 'self'; worker-src 'self';
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
Content-Type: application/json;charset=utf-8
Vary: Accept-Encoding
Content-Length: 190
```
### Response body recorded for playback (200: application/json;charset=utf-8):

```
{
  "responseHeader":{
    "status":0,
    "QTime":0
  },
  "message":"maxGenerationLag isn't specified. Followers aren't checking for the generation lag from the leaders",
  "status":"OK"
}
```

## Interaction 1: POST /solr/tcae/update?commit=true

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 30
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
[{"id":"1","title_s":"hello"}]
```
### Response headers recorded for playback:

```
Content-Security-Policy: default-src 'none'; base-uri 'none'; connect-src 'self'; form-action 'self'; font-src 'self'; frame-ancestors 'none'; img-src 'self' data:; media-src 'self'; style-src 'self' 'unsafe-inline'; script-src 'self'; worker-src 'self';
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
Content-Type: application/json;charset=utf-8
Vary: Accept-Encoding
Content-Length: 58
```
### Response body recorded for playback (200: application/json;charset=utf-8):

```
{
  "responseHeader":{
    "status":0,
    "QTime":0
  }
}
```

## Interaction 2: GET /solr/tcae/select?q=title_s:hello&wt=json

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
Content-Security-Policy: default-src 'none'; base-uri 'none'; connect-src 'self'; form-action 'self'; font-src 'self'; frame-ancestors 'none'; img-src 'self' data:; media-src 'self'; style-src 'self' 'unsafe-inline'; script-src 'self'; worker-src 'self';
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
Content-Type: application/json;charset=utf-8
Vary: Accept-Encoding
Content-Length: 306
```
### Response body recorded for playback (200: application/json;charset=utf-8):

```
{
  "responseHeader":{
    "status":0,
    "QTime":0,
    "params":{
      "q":"title_s:hello",
      "wt":"json"
    }
  },
  "response":{
    "numFound":1,
    "start":0,
    "numFoundExact":true,
    "docs":[{
      "id":"1",
      "title_s":"hello",
      "_version_":1,
      "_root_":"1"
    }]
  }
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
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
| collapsed | whole recording | `"QTime":[0-9]+` | `"QTime":0` | 0–2 |
| collapsed | whole recording | `"_version_":[0-9]+` | `"_version_":1` | 2 |
