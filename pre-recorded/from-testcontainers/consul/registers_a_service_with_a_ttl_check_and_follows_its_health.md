## LICENSE NOTICE

Recorded against hashicorp/consul:1.15 (Consul 1.15.10), licensed under
the Business Source License 1.1 by HashiCorp. Its Additional Use Grant
does not cover offering Consul to third parties in a hosted or embedded
product that competes with HashiCorp's paid versions. Use of this tape
is subject to those terms; see UPSTREAM-TERMS.md in servirtium-vcr's
pre-recorded/from-testcontainers.

## Interaction 0: PUT /v1/agent/service/register

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 166
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{"ID":"web-1","Name":"web","Tags":["v1","tcae"],"Port":8080,"Address":"10.0.0.5","Meta":{"owner":"tcae"},"Check":{"CheckID":"web-1-ttl","Name":"web ttl","TTL":"60s"}}
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 1: GET /v1/agent/services

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
Content-Length: 654
```
### Response body recorded for playback (200: application/json):

```
{
    "web-1": {
        "ID": "web-1",
        "Service": "web",
        "Tags": [
            "v1",
            "tcae"
        ],
        "Meta": {
            "owner": "tcae"
        },
        "Port": 8080,
        "Address": "10.0.0.5",
        "TaggedAddresses": {
            "lan_ipv4": {
                "Address": "10.0.0.5",
                "Port": 8080
            },
            "wan_ipv4": {
                "Address": "10.0.0.5",
                "Port": 8080
            }
        },
        "Weights": {
            "Passing": 1,
            "Warning": 1
        },
        "EnableTagOverride": false,
        "Datacenter": "dc1"
    }
}

```

## Interaction 2: GET /v1/agent/checks

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
Content-Length: 496
```
### Response body recorded for playback (200: application/json):

```
{
    "web-1-ttl": {
        "Node": "tcae-node",
        "CheckID": "web-1-ttl",
        "Name": "web ttl",
        "Status": "critical",
        "Notes": "",
        "Output": "",
        "ServiceID": "web-1",
        "ServiceName": "web",
        "ServiceTags": [
            "v1",
            "tcae"
        ],
        "Type": "ttl",
        "Interval": "",
        "Timeout": "",
        "ExposedPort": 0,
        "Definition": {},
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
}

```

## Interaction 3: GET /v1/agent/health/service/id/web-1

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
X-Consul-Reason: critical
Content-Length: 1702
```
### Response body recorded for playback (503: application/json):

```
{
    "AggregatedStatus": "critical",
    "Service": {
        "ID": "web-1",
        "Service": "web",
        "Tags": [
            "v1",
            "tcae"
        ],
        "Meta": {
            "owner": "tcae"
        },
        "Port": 8080,
        "Address": "10.0.0.5",
        "TaggedAddresses": {
            "lan_ipv4": {
                "Address": "10.0.0.5",
                "Port": 8080
            },
            "wan_ipv4": {
                "Address": "10.0.0.5",
                "Port": 8080
            }
        },
        "Weights": {
            "Passing": 1,
            "Warning": 1
        },
        "EnableTagOverride": false,
        "Datacenter": "dc1"
    },
    "Checks": [
        {
            "Node": "tcae-node",
            "CheckID": "web-1-ttl",
            "Name": "web ttl",
            "Status": "critical",
            "Notes": "",
            "Output": "",
            "ServiceID": "web-1",
            "ServiceName": "web",
            "ServiceTags": [
                "v1",
                "tcae"
            ],
            "Type": "",
            "ExposedPort": 0,
            "Definition": {
                "Interval": "0s",
                "Timeout": "0s",
                "DeregisterCriticalServiceAfter": "0s",
                "HTTP": "",
                "Header": null,
                "Method": "",
                "Body": "",
                "TLSServerName": "",
                "TLSSkipVerify": false,
                "TCP": "",
                "UDP": "",
                "GRPC": "",
                "OSService": "",
                "GRPCUseTLS": false
            },
            "CreateIndex": 1,
            "ModifyIndex": 1
        }
    ]
}

```

## Interaction 4: PUT /v1/agent/check/pass/web-1-ttl?note=ok

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
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 5: GET /v1/agent/health/service/id/web-1

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
X-Consul-Reason: passing
Content-Length: 1702
```
### Response body recorded for playback (200: application/json):

```
{
    "AggregatedStatus": "passing",
    "Service": {
        "ID": "web-1",
        "Service": "web",
        "Tags": [
            "v1",
            "tcae"
        ],
        "Meta": {
            "owner": "tcae"
        },
        "Port": 8080,
        "Address": "10.0.0.5",
        "TaggedAddresses": {
            "lan_ipv4": {
                "Address": "10.0.0.5",
                "Port": 8080
            },
            "wan_ipv4": {
                "Address": "10.0.0.5",
                "Port": 8080
            }
        },
        "Weights": {
            "Passing": 1,
            "Warning": 1
        },
        "EnableTagOverride": false,
        "Datacenter": "dc1"
    },
    "Checks": [
        {
            "Node": "tcae-node",
            "CheckID": "web-1-ttl",
            "Name": "web ttl",
            "Status": "passing",
            "Notes": "",
            "Output": "ok",
            "ServiceID": "web-1",
            "ServiceName": "web",
            "ServiceTags": [
                "v1",
                "tcae"
            ],
            "Type": "",
            "ExposedPort": 0,
            "Definition": {
                "Interval": "0s",
                "Timeout": "0s",
                "DeregisterCriticalServiceAfter": "0s",
                "HTTP": "",
                "Header": null,
                "Method": "",
                "Body": "",
                "TLSServerName": "",
                "TLSSkipVerify": false,
                "TCP": "",
                "UDP": "",
                "GRPC": "",
                "OSService": "",
                "GRPCUseTLS": false
            },
            "CreateIndex": 1,
            "ModifyIndex": 1
        }
    ]
}

```

## Interaction 6: GET /v1/health/service/web?passing

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
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
[
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
        "Service": {
            "ID": "web-1",
            "Service": "web",
            "Tags": [
                "v1",
                "tcae"
            ],
            "Address": "10.0.0.5",
            "TaggedAddresses": {
                "lan_ipv4": {
                    "Address": "10.0.0.5",
                    "Port": 8080
                },
                "wan_ipv4": {
                    "Address": "10.0.0.5",
                    "Port": 8080
                }
            },
            "Meta": {
                "owner": "tcae"
            },
            "Port": 8080,
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
        },
        "Checks": [
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
            },
            {
                "Node": "tcae-node",
                "CheckID": "web-1-ttl",
                "Name": "web ttl",
                "Status": "passing",
                "Notes": "",
                "Output": "ok",
                "ServiceID": "web-1",
                "ServiceName": "web",
                "ServiceTags": [
                    "v1",
                    "tcae"
                ],
                "Type": "ttl",
                "Interval": "",
                "Timeout": "",
                "ExposedPort": 0,
                "Definition": {},
                "CreateIndex": 1,
                "ModifyIndex": 1
            }
        ]
    }
]

```

## Interaction 7: GET /v1/catalog/service/web

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
Content-Length: 1112
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
        "NodeMeta": null,
        "ServiceKind": "",
        "ServiceID": "web-1",
        "ServiceName": "web",
        "ServiceTags": [
            "v1",
            "tcae"
        ],
        "ServiceAddress": "10.0.0.5",
        "ServiceTaggedAddresses": {
            "lan_ipv4": {
                "Address": "10.0.0.5",
                "Port": 8080
            },
            "wan_ipv4": {
                "Address": "10.0.0.5",
                "Port": 8080
            }
        },
        "ServiceWeights": {
            "Passing": 1,
            "Warning": 1
        },
        "ServiceMeta": {
            "owner": "tcae"
        },
        "ServicePort": 8080,
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

## Interaction 8: PUT /v1/agent/check/warn/web-1-ttl?note=slow

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
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 9: GET /v1/agent/health/service/name/web

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
X-Consul-Reason: warning
Content-Length: 1980
```
### Response body recorded for playback (429: application/json):

```
[
    {
        "AggregatedStatus": "warning",
        "Service": {
            "ID": "web-1",
            "Service": "web",
            "Tags": [
                "v1",
                "tcae"
            ],
            "Meta": {
                "owner": "tcae"
            },
            "Port": 8080,
            "Address": "10.0.0.5",
            "TaggedAddresses": {
                "lan_ipv4": {
                    "Address": "10.0.0.5",
                    "Port": 8080
                },
                "wan_ipv4": {
                    "Address": "10.0.0.5",
                    "Port": 8080
                }
            },
            "Weights": {
                "Passing": 1,
                "Warning": 1
            },
            "EnableTagOverride": false,
            "Datacenter": "dc1"
        },
        "Checks": [
            {
                "Node": "tcae-node",
                "CheckID": "web-1-ttl",
                "Name": "web ttl",
                "Status": "warning",
                "Notes": "",
                "Output": "slow",
                "ServiceID": "web-1",
                "ServiceName": "web",
                "ServiceTags": [
                    "v1",
                    "tcae"
                ],
                "Type": "",
                "ExposedPort": 0,
                "Definition": {
                    "Interval": "0s",
                    "Timeout": "0s",
                    "DeregisterCriticalServiceAfter": "0s",
                    "HTTP": "",
                    "Header": null,
                    "Method": "",
                    "Body": "",
                    "TLSServerName": "",
                    "TLSSkipVerify": false,
                    "TCP": "",
                    "UDP": "",
                    "GRPC": "",
                    "OSService": "",
                    "GRPCUseTLS": false
                },
                "CreateIndex": 1,
                "ModifyIndex": 1
            }
        ]
    }
]

```

## Interaction 10: GET /v1/health/service/web?passing

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
Content-Length: 3
```
### Response body recorded for playback (200: application/json):

```
[]

```

## Interaction 11: PUT /v1/agent/check/fail/web-1-ttl?note=down

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
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 12: GET /v1/health/state/critical

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
Content-Length: 487
```
### Response body recorded for playback (200: application/json):

```
[
    {
        "Node": "tcae-node",
        "CheckID": "web-1-ttl",
        "Name": "web ttl",
        "Status": "critical",
        "Notes": "",
        "Output": "down",
        "ServiceID": "web-1",
        "ServiceName": "web",
        "ServiceTags": [
            "v1",
            "tcae"
        ],
        "Type": "ttl",
        "Interval": "",
        "Timeout": "",
        "ExposedPort": 0,
        "Definition": {},
        "CreateIndex": 1,
        "ModifyIndex": 1
    }
]

```

## Interaction 13: PUT /v1/agent/service/deregister/web-1

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
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 14: GET /v1/agent/services

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
Content-Length: 3
```
### Response body recorded for playback (200: application/json):

```
{}

```

## Interaction 15: PUT /v1/agent/service/deregister/web-1

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
Content-Length: 87
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
Unknown service ID "web-1". Ensure that the service ID is passed, not the service name.
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
| collapsed | whole recording | `X-Consul-Index: [0-9]+` | `X-Consul-Index: 1` | 6, 7, 10, 12 |
| collapsed | whole recording | `(?<="CreateIndex": \|"ModifyIndex": )[0-9]+` | `1` | 2, 3, 5–7, 9, 12 |
| collapsed | whole recording | `(?<=cas=)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<="Index":)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<=reset index: )[0-9]+` | `1` | none |
| normalized | whole recording | `(?!00000000-0000-0000-0000-00000000000[0-9])[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0–15 |
| collapsed | whole recording | `(?<="Hash": ")[A-Za-z0-9+/=]{44}(?=")` | `HASH` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
