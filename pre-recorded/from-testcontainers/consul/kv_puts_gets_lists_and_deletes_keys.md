## LICENSE NOTICE

Recorded against hashicorp/consul:1.15 (Consul 1.15.10), licensed under
the Business Source License 1.1 by HashiCorp. Its Additional Use Grant
does not cover offering Consul to third parties in a hosted or embedded
product that competes with HashiCorp's paid versions. Use of this tape
is subject to those terms; see UPSTREAM-TERMS.md in servirtium-vcr's
pre-recorded/from-testcontainers.

## Interaction 0: PUT /v1/kv/tcae/kv/a

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 5
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
hello
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 5
```
### Response body recorded for playback (200: application/json):

```
true

```

## Interaction 1: GET /v1/kv/tcae/kv/a

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 168
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "LockIndex": 0,
        "Key": "tcae/kv/a",
        "Flags": 0,
        "Value": "aGVsbG8=",
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 2: GET /v1/kv/tcae/kv/a?raw

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Length: 5
Content-Security-Policy: sandbox
Content-Type: text/plain
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (200: text/plain):

```
hello
```

## Interaction 3: PUT /v1/kv/tcae/kv/a?flags=42

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 7
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
updated
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 5
```
### Response body recorded for playback (200: application/json):

```
true

```

## Interaction 4: GET /v1/kv/tcae/kv/a

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 173
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "LockIndex": 0,
        "Key": "tcae/kv/a",
        "Flags": 42,
        "Value": "dXBkYXRlZA==",
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 5: PUT /v1/kv/tcae/kv/b

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 7
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{"j":1}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 5
```
### Response body recorded for playback (200: application/json):

```
true

```

## Interaction 6: PUT /v1/kv/tcae/kv/sub/c

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 1
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
c
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 5
```
### Response body recorded for playback (200: application/json):

```
true

```

## Interaction 7: GET /v1/kv/tcae/kv?keys

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 58
```
### Response body recorded for playback (200: application/json):

```
[
    "tcae/kv/a",
    "tcae/kv/b",
    "tcae/kv/sub/c"
]

```

## Interaction 8: GET /v1/kv/tcae/kv/?keys&separator=/

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 57
```
### Response body recorded for playback (200: application/json):

```
[
    "tcae/kv/a",
    "tcae/kv/b",
    "tcae/kv/sub/"
]

```

## Interaction 9: GET /v1/kv/tcae/kv?recurse

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 507
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "LockIndex": 0,
        "Key": "tcae/kv/a",
        "Flags": 42,
        "Value": "dXBkYXRlZA==",
        "CreateIndex": 1,
        "ModifyIndex": 1
    },
    {
        "LockIndex": 0,
        "Key": "tcae/kv/b",
        "Flags": 0,
        "Value": "eyJqIjoxfQ==",
        "CreateIndex": 1,
        "ModifyIndex": 1
    },
    {
        "LockIndex": 0,
        "Key": "tcae/kv/sub/c",
        "Flags": 0,
        "Value": "Yw==",
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 10: GET /v1/kv/tcae/kv/missing

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 0
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 11: DELETE /v1/kv/tcae/kv/b

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 5
```
### Response body recorded for playback (200: application/json):

```
true

```

## Interaction 12: DELETE /v1/kv/tcae/kv?recurse

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 5
```
### Response body recorded for playback (200: application/json):

```
true

```

## Interaction 13: GET /v1/kv/tcae/kv/a

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 0
```
### Response body recorded for playback (404: text/plain):

```
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–13 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Consul-Token` | `X_CONSUL_TOKEN_N` | 0–13 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–13 |
| collapsed | whole recording | `X-Consul-Index: [0-9]+` | `X-Consul-Index: 1` | 1, 2, 4, 7–10, 13 |
| collapsed | whole recording | `(?<="CreateIndex": \|"ModifyIndex": )[0-9]+` | `1` | 1, 4, 9 |
| collapsed | whole recording | `(?<=cas=)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<="Index":)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<=reset index: )[0-9]+` | `1` | none |
| normalized | whole recording | `(?!00000000-0000-0000-0000-00000000000[0-9])[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0–13 |
| collapsed | whole recording | `(?<="Hash": ")[A-Za-z0-9+/=]{44}(?=")` | `HASH` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
