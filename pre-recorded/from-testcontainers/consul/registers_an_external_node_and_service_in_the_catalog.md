## LICENSE NOTICE

Recorded against hashicorp/consul:1.15 (Consul 1.15.10), licensed under
the Business Source License 1.1 by HashiCorp. Its Additional Use Grant
does not cover offering Consul to third parties in a hosted or embedded
product that competes with HashiCorp's paid versions. Use of this tape
is subject to those terms; see UPSTREAM-TERMS.md in servirtium-vcr's
pre-recorded/from-testcontainers.

## Interaction 0: PUT /v1/catalog/register

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 114
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{"Node":"ext-node","Address":"192.168.1.10","Service":{"ID":"db-1","Service":"db","Port":5432,"Tags":["primary"]}}
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

## Interaction 1: GET /v1/catalog/nodes

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
X-Consul-Effective-Consistency: leader
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 469
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "ID": "",
        "Node": "ext-node",
        "Address": "192.168.1.10",
        "Datacenter": "dc1",
        "TaggedAddresses": null,
        "Meta": null,
        "CreateIndex": 1,
        "ModifyIndex": 1
    },
    {
        "ID": "{{uuid-2}}",
        "Node": "tcae-node",
        "Address": "127.0.0.1",
        "Datacenter": "dc1",
        "TaggedAddresses": null,
        "Meta": null,
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 2: GET /v1/catalog/node/ext-node

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
X-Consul-Effective-Consistency: leader
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 873
```
### Response body recorded for playback (200: application/json):

```
{
    "Node": {
        "ID": "",
        "Node": "ext-node",
        "Address": "192.168.1.10",
        "Datacenter": "dc1",
        "TaggedAddresses": null,
        "Meta": null,
        "CreateIndex": 1,
        "ModifyIndex": 1
    },
    "Services": {
        "db-1": {
            "ID": "db-1",
            "Service": "db",
            "Tags": [
                "primary"
            ],
            "Address": "",
            "Meta": null,
            "Port": 5432,
            "Weights": {
                "Passing": 1,
                "Warning": 1
            },
            "EnableTagOverride": false,
            "Proxy": {
                "Mode": "",
                "MeshGateway": {},
                "Expose": {}
            },
            "Connect": {},
            "PeerName": "",
            "CreateIndex": 1,
            "ModifyIndex": 1
        }
    }
}

```

## Interaction 3: GET /v1/catalog/service/db

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
X-Consul-Effective-Consistency: leader
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 778
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "ID": "",
        "Node": "ext-node",
        "Address": "192.168.1.10",
        "Datacenter": "dc1",
        "TaggedAddresses": null,
        "NodeMeta": null,
        "ServiceKind": "",
        "ServiceID": "db-1",
        "ServiceName": "db",
        "ServiceTags": [
            "primary"
        ],
        "ServiceAddress": "",
        "ServiceWeights": {
            "Passing": 1,
            "Warning": 1
        },
        "ServiceMeta": {},
        "ServicePort": 5432,
        "ServiceSocketPath": "",
        "ServiceEnableTagOverride": false,
        "ServiceProxy": {
            "Mode": "",
            "MeshGateway": {},
            "Expose": {}
        },
        "ServiceConnect": {},
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 4: PUT /v1/catalog/deregister

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 19
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{"Node":"ext-node"}
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

## Interaction 5: GET /v1/catalog/node/ext-node

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
X-Consul-Effective-Consistency: leader
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
Content-Length: 5
```
### Response body recorded for playback (200: application/json):

```
null

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
| collapsed | whole recording | `X-Consul-Index: [0-9]+` | `X-Consul-Index: 1` | 1–3, 5 |
| collapsed | whole recording | `(?<="CreateIndex": \|"ModifyIndex": )[0-9]+` | `1` | 1–3 |
| collapsed | whole recording | `(?<=cas=)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<="Index":)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<=reset index: )[0-9]+` | `1` | none |
| normalized | whole recording | `(?!00000000-0000-0000-0000-00000000000[0-9])[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0–5 |
| collapsed | whole recording | `(?<="Hash": ")[A-Za-z0-9+/=]{44}(?=")` | `HASH` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
