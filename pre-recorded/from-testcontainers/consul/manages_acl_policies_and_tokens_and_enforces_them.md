## LICENSE NOTICE

Recorded against hashicorp/consul:1.15 (Consul 1.15.10), licensed under
the Business Source License 1.1 by HashiCorp. Its Additional Use Grant
does not cover offering Consul to third parties in a hosted or embedded
product that competes with HashiCorp's paid versions. Use of this tape
is subject to those terms; see UPSTREAM-TERMS.md in servirtium-vcr's
pre-recorded/from-testcontainers.

## Interaction 0: PUT /v1/acl/policy

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 106
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{"Name":"tcae-reader","Description":"read tcae keys","Rules":"key_prefix \"tcae/\" { policy = \"read\" }"}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 214
```
### Response body recorded for playback (200: application/json):

```
{
    "ID": "{{uuid-2}}",
    "Name": "tcae-reader",
    "Description": "read tcae keys",
    "Rules": "key_prefix \"tcae/\" { policy = \"read\" }",
    "Hash": "HASH",
    "CreateIndex": 1,
    "ModifyIndex": 1
}

```

## Interaction 1: GET /v1/acl/policy/{{uuid-2}}

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
Content-Length: 214
```
### Response body recorded for playback (200: application/json):

```
{
    "ID": "{{uuid-2}}",
    "Name": "tcae-reader",
    "Description": "read tcae keys",
    "Rules": "key_prefix \"tcae/\" { policy = \"read\" }",
    "Hash": "HASH",
    "CreateIndex": 1,
    "ModifyIndex": 1
}

```

## Interaction 2: GET /v1/acl/policy/name/tcae-reader

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
Content-Length: 214
```
### Response body recorded for playback (200: application/json):

```
{
    "ID": "{{uuid-2}}",
    "Name": "tcae-reader",
    "Description": "read tcae keys",
    "Rules": "key_prefix \"tcae/\" { policy = \"read\" }",
    "Hash": "HASH",
    "CreateIndex": 1,
    "ModifyIndex": 1
}

```

## Interaction 3: PUT /v1/acl/policy/{{uuid-2}}

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 116
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{"Name":"tcae-reader","Description":"read tcae keys (updated)","Rules":"key_prefix \"tcae/\" { policy = \"read\" }"}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 224
```
### Response body recorded for playback (200: application/json):

```
{
    "ID": "{{uuid-2}}",
    "Name": "tcae-reader",
    "Description": "read tcae keys (updated)",
    "Rules": "key_prefix \"tcae/\" { policy = \"read\" }",
    "Hash": "HASH",
    "CreateIndex": 1,
    "ModifyIndex": 1
}

```

## Interaction 4: GET /v1/acl/policies

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
Content-Length: 850
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "ID": "00000000-0000-0000-0000-000000000002",
        "Name": "builtin/global-read-only",
        "Description": "A built-in policy that grants read-only access to all Consul features",
        "Datacenters": null,
        "Hash": "HASH",
        "CreateIndex": 1,
        "ModifyIndex": 1
    },
    {
        "ID": "00000000-0000-0000-0000-000000000001",
        "Name": "global-management",
        "Description": "A built-in policy that grants read and write access to all Consul features",
        "Datacenters": null,
        "Hash": "HASH",
        "CreateIndex": 1,
        "ModifyIndex": 1
    },
    {
        "ID": "{{uuid-2}}",
        "Name": "tcae-reader",
        "Description": "read tcae keys (updated)",
        "Datacenters": null,
        "Hash": "HASH",
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 5: PUT /v1/acl/token

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 65
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{"Description":"tcae reader","Policies":[{"Name":"tcae-reader"}]}
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 342
```
### Response body recorded for playback (200: application/json):

```
{
    "AccessorID": "{{uuid-3}}",
    "SecretID": "X_CONSUL_TOKEN_2",
    "Description": "tcae reader",
    "Policies": [
        {
            "ID": "{{uuid-2}}",
            "Name": "tcae-reader"
        }
    ],
    "Local": false,
    "CreateTime": "2000-01-01T00:00:00Z",
    "Hash": "HASH",
    "CreateIndex": 1,
    "ModifyIndex": 1
}

```

## Interaction 6: GET /v1/acl/token/{{uuid-3}}

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
Content-Length: 342
```
### Response body recorded for playback (200: application/json):

```
{
    "AccessorID": "{{uuid-3}}",
    "SecretID": "X_CONSUL_TOKEN_2",
    "Description": "tcae reader",
    "Policies": [
        {
            "ID": "{{uuid-2}}",
            "Name": "tcae-reader"
        }
    ],
    "Local": false,
    "CreateTime": "2000-01-01T00:00:00Z",
    "Hash": "HASH",
    "CreateIndex": 1,
    "ModifyIndex": 1
}

```

## Interaction 7: GET /v1/acl/token/self

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_2
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
Content-Length: 342
```
### Response body recorded for playback (200: application/json):

```
{
    "AccessorID": "{{uuid-3}}",
    "SecretID": "X_CONSUL_TOKEN_2",
    "Description": "tcae reader",
    "Policies": [
        {
            "ID": "{{uuid-2}}",
            "Name": "tcae-reader"
        }
    ],
    "Local": false,
    "CreateTime": "2000-01-01T00:00:00Z",
    "Hash": "HASH",
    "CreateIndex": 1,
    "ModifyIndex": 1
}

```

## Interaction 8: GET /v1/kv/tcae/x

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_2
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

## Interaction 9: PUT /v1/kv/tcae/x

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 1
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_2
```
### Request body recorded for playback ():

```
v
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 94
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (403: text/plain; charset=utf-8):

```
Permission denied: token with AccessorID '{{uuid-3}}' lacks permission 'key:write' on "tcae/x"
```

## Interaction 10: GET /v1/kv/other/x

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_2
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 94
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (403: text/plain; charset=utf-8):

```
Permission denied: token with AccessorID '{{uuid-3}}' lacks permission 'key:read' on "other/x"
```

## Interaction 11: GET /v1/acl/tokens

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_2
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
X-Consul-Index: 1
X-Consul-Knownleader: false
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 81
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (403: text/plain; charset=utf-8):

```
Permission denied: token with AccessorID '{{uuid-3}}' lacks permission 'acl:read'
```

## Interaction 12: DELETE /v1/acl/token/{{uuid-3}}

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

## Interaction 13: GET /v1/acl/token/self

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_2
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
X-Consul-Index: 1
X-Consul-Knownleader: false
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 35
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (403: text/plain; charset=utf-8):

```
token does not exist: ACL not found
```

## Interaction 14: DELETE /v1/acl/policy/{{uuid-2}}

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

## Interaction 15: GET /v1/acl/policy/{{uuid-2}}

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
Content-Length: 46
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
Requested policy does not exist: ACL not found
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–15 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Consul-Token` | `X_CONSUL_TOKEN_N` | 0–15 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–15 |
| collapsed | whole recording | `X-Consul-Index: [0-9]+` | `X-Consul-Index: 1` | 1, 2, 4, 6–8, 11, 13 |
| collapsed | whole recording | `(?<="CreateIndex": \|"ModifyIndex": )[0-9]+` | `1` | 0–7 |
| collapsed | whole recording | `(?<=cas=)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<="Index":)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<=reset index: )[0-9]+` | `1` | none |
| normalized | whole recording | `(?!00000000-0000-0000-0000-00000000000[0-9])[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0–15 |
| collapsed | whole recording | `(?<="Hash": ")[A-Za-z0-9+/=]{44}(?=")` | `HASH` | 0–7 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 5–7 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
