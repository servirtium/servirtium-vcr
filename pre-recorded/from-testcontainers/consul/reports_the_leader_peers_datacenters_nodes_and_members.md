## LICENSE NOTICE

Recorded against hashicorp/consul:1.15 (Consul 1.15.10), licensed under
the Business Source License 1.1 by HashiCorp. Its Additional Use Grant
does not cover offering Consul to third parties in a hosted or embedded
product that competes with HashiCorp's paid versions. Use of this tape
is subject to those terms; see UPSTREAM-TERMS.md in servirtium-vcr's
pre-recorded/from-testcontainers.

## Interaction 0: GET /v1/status/leader

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
Content-Length: 17
```
### Response body recorded for playback (200: application/json):

```
"127.0.0.1:8300"

```

## Interaction 1: GET /v1/status/peers

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
Content-Length: 25
```
### Response body recorded for playback (200: application/json):

```
[
    "127.0.0.1:8300"
]

```

## Interaction 2: GET /v1/catalog/datacenters

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
Content-Length: 14
```
### Response body recorded for playback (200: application/json):

```
[
    "dc1"
]

```

## Interaction 3: GET /v1/catalog/nodes

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
Content-Length: 240
```
### Response body recorded for playback (200: application/json):

```
[
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

## Interaction 4: GET /v1/catalog/node/tcae-node

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
Content-Length: 1222
```
### Response body recorded for playback (200: application/json):

```
{
    "Node": {
        "ID": "{{uuid-2}}",
        "Node": "tcae-node",
        "Address": "127.0.0.1",
        "Datacenter": "dc1",
        "TaggedAddresses": null,
        "Meta": null,
        "CreateIndex": 1,
        "ModifyIndex": 1
    },
    "Services": {
        "consul": {
            "ID": "consul",
            "Service": "consul",
            "Tags": [],
            "Address": "",
            "Meta": {
                "grpc_port": "8502",
                "grpc_tls_port": "8503",
                "non_voter": "false",
                "raft_version": "3",
                "read_replica": "false",
                "serf_protocol_current": "2",
                "serf_protocol_max": "5",
                "serf_protocol_min": "1",
                "version": "1.15.10"
            },
            "Port": 8300,
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

## Interaction 5: GET /v1/catalog/services

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
Content-Length: 21
```
### Response body recorded for playback (200: application/json):

```
{
    "consul": []
}

```

## Interaction 6: GET /v1/agent/members

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
Content-Length: 776
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "Name": "tcae-node",
        "Addr": "127.0.0.1",
        "Port": 8301,
        "Tags": {
            "acls": "1",
            "build": "1.15.10:a8dca240",
            "dc": "dc1",
            "ft_fs": "1",
            "ft_si": "1",
            "grpc_port": "8502",
            "grpc_tls_port": "8503",
            "id": "{{uuid-2}}",
            "port": "8300",
            "raft_vsn": "3",
            "role": "consul",
            "segment": "",
            "vsn": "2",
            "vsn_max": "3",
            "vsn_min": "2",
            "wan_join_port": "8302"
        },
        "Status": 1,
        "ProtocolMin": 1,
        "ProtocolMax": 5,
        "ProtocolCur": 2,
        "DelegateMin": 2,
        "DelegateMax": 5,
        "DelegateCur": 4
    }
]

```

## Interaction 7: GET /v1/health/node/tcae-node

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
Content-Length: 462
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "Node": "tcae-node",
        "CheckID": "serfHealth",
        "Name": "Serf Health Status",
        "Status": "passing",
        "Notes": "",
        "Output": "Agent alive and reachable",
        "ServiceID": "",
        "ServiceName": "",
        "ServiceTags": [],
        "Type": "",
        "Interval": "",
        "Timeout": "",
        "ExposedPort": 0,
        "Definition": {},
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–7 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Consul-Token` | `X_CONSUL_TOKEN_N` | 0–7 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–7 |
| collapsed | whole recording | `X-Consul-Index: [0-9]+` | `X-Consul-Index: 1` | 3–5, 7 |
| collapsed | whole recording | `(?<="CreateIndex": \|"ModifyIndex": )[0-9]+` | `1` | 3, 4, 7 |
| collapsed | whole recording | `(?<=cas=)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<="Index":)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<=reset index: )[0-9]+` | `1` | none |
| normalized | whole recording | `(?!00000000-0000-0000-0000-00000000000[0-9])[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0–7 |
| collapsed | whole recording | `(?<="Hash": ")[A-Za-z0-9+/=]{44}(?=")` | `HASH` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
