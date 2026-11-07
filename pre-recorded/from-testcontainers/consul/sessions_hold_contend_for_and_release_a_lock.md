## LICENSE NOTICE

Recorded against hashicorp/consul:1.15 (Consul 1.15.10), licensed under
the Business Source License 1.1 by HashiCorp. Its Additional Use Grant
does not cover offering Consul to third parties in a hosted or embedded
product that competes with HashiCorp's paid versions. Use of this tape
is subject to those terms; see UPSTREAM-TERMS.md in servirtium-vcr's
pre-recorded/from-testcontainers.

## Interaction 0: PUT /v1/session/create

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 72
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{"Name":"tcae-holder","TTL":"60s","Behavior":"release","LockDelay":"0s"}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 27
```
### Response body recorded for playback (200: application/json):

```
{
    "ID": "{{uuid-2}}"
}

```

## Interaction 1: PUT /v1/session/create

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 71
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{"Name":"tcae-waiter","TTL":"60s","Behavior":"delete","LockDelay":"0s"}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 27
```
### Response body recorded for playback (200: application/json):

```
{
    "ID": "{{uuid-3}}"
}

```

## Interaction 2: GET /v1/session/info/{{uuid-2}}

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
Content-Length: 323
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "ID": "{{uuid-2}}",
        "Name": "tcae-holder",
        "Node": "tcae-node",
        "LockDelay": 0,
        "Behavior": "release",
        "TTL": "60s",
        "NodeChecks": [
            "serfHealth"
        ],
        "ServiceChecks": null,
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 3: PUT /v1/kv/tcae/lock?acquire={{uuid-2}}

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 6
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
holder
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

## Interaction 4: PUT /v1/kv/tcae/lock?acquire={{uuid-3}}

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 6
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
waiter
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 6
```
### Response body recorded for playback (200: application/json):

```
false

```

## Interaction 5: GET /v1/kv/tcae/lock

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
Content-Length: 201
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "LockIndex": 1,
        "Key": "tcae/lock",
        "Flags": 0,
        "Value": "aG9sZGVy",
        "Session": "{{uuid-2}}",
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 6: PUT /v1/session/renew/{{uuid-2}}

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
Content-Length: 323
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "ID": "{{uuid-2}}",
        "Name": "tcae-holder",
        "Node": "tcae-node",
        "LockDelay": 0,
        "Behavior": "release",
        "TTL": "60s",
        "NodeChecks": [
            "serfHealth"
        ],
        "ServiceChecks": null,
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 7: PUT /v1/kv/tcae/lock?release={{uuid-2}}

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
x
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

## Interaction 8: GET /v1/kv/tcae/lock

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
Content-Length: 164
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "LockIndex": 1,
        "Key": "tcae/lock",
        "Flags": 0,
        "Value": "eA==",
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 9: PUT /v1/kv/tcae/lock?acquire={{uuid-3}}

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 6
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
waiter
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

## Interaction 10: GET /v1/kv/tcae/lock

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
Content-Length: 201
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "LockIndex": 2,
        "Key": "tcae/lock",
        "Flags": 0,
        "Value": "d2FpdGVy",
        "Session": "{{uuid-3}}",
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 11: PUT /v1/session/destroy/{{uuid-3}}

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

## Interaction 12: GET /v1/kv/tcae/lock

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

## Interaction 13: PUT /v1/session/destroy/{{uuid-2}}

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

## Interaction 14: GET /v1/session/info/{{uuid-2}}

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
Content-Length: 3
```
### Response body recorded for playback (200: application/json):

```
[]

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–14 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Consul-Token` | `X_CONSUL_TOKEN_N` | 0–14 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–14 |
| collapsed | whole recording | `X-Consul-Index: [0-9]+` | `X-Consul-Index: 1` | 2, 5, 8, 10, 12, 14 |
| collapsed | whole recording | `(?<="CreateIndex": \|"ModifyIndex": )[0-9]+` | `1` | 2, 5, 6, 8, 10 |
| collapsed | whole recording | `(?<=cas=)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<="Index":)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<=reset index: )[0-9]+` | `1` | none |
| normalized | whole recording | `(?!00000000-0000-0000-0000-00000000000[0-9])[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0–14 |
| collapsed | whole recording | `(?<="Hash": ")[A-Za-z0-9+/=]{44}(?=")` | `HASH` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
