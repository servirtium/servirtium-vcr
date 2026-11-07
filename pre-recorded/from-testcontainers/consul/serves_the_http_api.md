## Interaction 0: GET /v1/status/leader

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
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 17
```
### Response body recorded for playback (200: application/json):

```
"127.0.0.1:8300"

```

## Interaction 1: PUT /v1/kv/tcae/greeting

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 12
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
hello consul
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 5
```
### Response body recorded for playback (200: application/json):

```
true

```

## Interaction 2: GET /v1/kv/tcae/greeting?raw

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
Content-Length: 12
Content-Security-Policy: sandbox
Content-Type: text/plain
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (200: text/plain):

```
hello consul
```

## Interaction 3: PUT /v1/agent/service/register

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
{"ID":"abcd","Name":"Default"}
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: GET /v1/agent/services

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
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 305
```
### Response body recorded for playback (200: application/json):

```
{
    "abcd": {
        "ID": "abcd",
        "Service": "Default",
        "Tags": [],
        "Meta": {},
        "Port": 0,
        "Address": "",
        "Weights": {
            "Passing": 1,
            "Warning": 1
        },
        "EnableTagOverride": false,
        "Datacenter": "dc1"
    }
}

```

## Interaction 5: PUT /v1/agent/service/deregister/abcd

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
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 6: GET /v1/agent/services

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
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 3
```
### Response body recorded for playback (200: application/json):

```
{}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–6 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–6 |
| collapsed | whole recording | `X-Consul-Index: [0-9]+` | `X-Consul-Index: 1` | 2 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{node-id-N}}` | none |
| collapsed | whole recording | `"applied_index": "[0-9]+"` | `"applied_index": "0"` | none |
| collapsed | whole recording | `"commit_index": "[0-9]+"` | `"commit_index": "0"` | none |
| collapsed | whole recording | `"last_log_index": "[0-9]+"` | `"last_log_index": "0"` | none |
| collapsed | whole recording | `"last_log_term": "[0-9]+"` | `"last_log_term": "0"` | none |
| collapsed | whole recording | `"term": "[0-9]+"` | `"term": "0"` | none |
| collapsed | whole recording | `"last_contact": "[0-9]+"` | `"last_contact": "0"` | none |
| collapsed | whole recording | `"fsm_pending": "[0-9]+"` | `"fsm_pending": "0"` | none |
| collapsed | whole recording | `"goroutines": "[0-9]+"` | `"goroutines": "0"` | none |
| collapsed | whole recording | `"cpu_count": "[0-9]+"` | `"cpu_count": "0"` | none |
| collapsed | whole recording | `"max_procs": "[0-9]+"` | `"max_procs": "0"` | none |
| collapsed | whole recording | `"event_queue": "[0-9]+"` | `"event_queue": "0"` | none |
| collapsed | whole recording | `"event_time": "[0-9]+"` | `"event_time": "0"` | none |
| collapsed | whole recording | `"member_time": "[0-9]+"` | `"member_time": "0"` | none |
| collapsed | whole recording | `"query_time": "[0-9]+"` | `"query_time": "0"` | none |
| collapsed | whole recording | `"intent_queue": "[0-9]+"` | `"intent_queue": "0"` | none |
| collapsed | whole recording | `"query_queue": "[0-9]+"` | `"query_queue": "0"` | none |
| collapsed | whole recording | `"health_score": "[0-9]+"` | `"health_score": "0"` | none |
| collapsed | whole recording | `"coordinate_resets": "[0-9]+"` | `"coordinate_resets": "0"` | none |
| collapsed | whole recording | `"arch": "[a-z0-9_]+"` | `"arch": "ARCH"` | none |
