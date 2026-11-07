## LICENSE NOTICE

Recorded against hashicorp/consul:1.15 (Consul 1.15.10), licensed under
the Business Source License 1.1 by HashiCorp. Its Additional Use Grant
does not cover offering Consul to third parties in a hosted or embedded
product that competes with HashiCorp's paid versions. Use of this tape
is subject to those terms; see UPSTREAM-TERMS.md in servirtium-vcr's
pre-recorded/from-testcontainers.

## Interaction 0: PUT /v1/txn

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 172
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
[{"KV":{"Verb":"set","Key":"tcae/txn/a","Value":"dmFsMQ=="}},{"KV":{"Verb":"get","Key":"tcae/txn/a"}},{"KV":{"Verb":"cas","Key":"tcae/txn/b","Value":"dmFsMg==","Index":0}}]
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 802
```
### Response body recorded for playback (200: application/json):

```
{
    "Results": [
        {
            "KV": {
                "LockIndex": 0,
                "Key": "tcae/txn/a",
                "Flags": 0,
                "Value": null,
                "CreateIndex": 1,
                "ModifyIndex": 1
            }
        },
        {
            "KV": {
                "LockIndex": 0,
                "Key": "tcae/txn/a",
                "Flags": 0,
                "Value": "dmFsMQ==",
                "CreateIndex": 1,
                "ModifyIndex": 1
            }
        },
        {
            "KV": {
                "LockIndex": 0,
                "Key": "tcae/txn/b",
                "Flags": 0,
                "Value": null,
                "CreateIndex": 1,
                "ModifyIndex": 1
            }
        }
    ],
    "Errors": null
}

```

## Interaction 1: PUT /v1/kv/tcae/txn/a

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
changed
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

## Interaction 2: PUT /v1/txn

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 123
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
[{"KV":{"Verb":"set","Key":"tcae/txn/c","Value":"eA=="}},{"KV":{"Verb":"cas","Key":"tcae/txn/a","Value":"eQ==","Index":1}}]
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 164
```
### Response body recorded for playback (409: application/json):

```
{
    "Results": null,
    "Errors": [
        {
            "OpIndex": 1,
            "What": "failed to set key \"tcae/txn/a\", index is stale"
        }
    ]
}

```

## Interaction 3: GET /v1/kv/tcae/txn/c

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

## Interaction 4: PUT /v1/txn

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 49
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
[{"KV":{"Verb":"delete-tree","Key":"tcae/txn/"}}]
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 42
```
### Response body recorded for playback (200: application/json):

```
{
    "Results": [],
    "Errors": null
}

```

## Interaction 5: GET /v1/kv/tcae/txn?keys

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
| removed | response headers | `Date` | (left out) | 0–5 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Consul-Token` | `X_CONSUL_TOKEN_N` | 0–5 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–5 |
| collapsed | whole recording | `X-Consul-Index: [0-9]+` | `X-Consul-Index: 1` | 3, 5 |
| collapsed | whole recording | `(?<="CreateIndex": \|"ModifyIndex": )[0-9]+` | `1` | 0 |
| collapsed | whole recording | `(?<=cas=)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<="Index":)[1-9][0-9]*` | `1` | 2 |
| collapsed | whole recording | `(?<=reset index: )[0-9]+` | `1` | none |
| normalized | whole recording | `(?!00000000-0000-0000-0000-00000000000[0-9])[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0–5 |
| collapsed | whole recording | `(?<="Hash": ")[A-Za-z0-9+/=]{44}(?=")` | `HASH` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
