## LICENSE NOTICE

Recorded against hashicorp/consul:1.15 (Consul 1.15.10), licensed under
the Business Source License 1.1 by HashiCorp. Its Additional Use Grant
does not cover offering Consul to third parties in a hosted or embedded
product that competes with HashiCorp's paid versions. Use of this tape
is subject to those terms; see UPSTREAM-TERMS.md in servirtium-vcr's
pre-recorded/from-testcontainers.

## Interaction 0: PUT /v1/kv/tcae/err?flags=abc

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
v
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 48
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (500: text/plain; charset=utf-8):

```
strconv.ParseUint: parsing "abc": invalid syntax
```

## Interaction 1: GET /v1/kv/tcae/err?index=abc

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
Content-Length: 13
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (400: text/plain; charset=utf-8):

```
Invalid index
```

## Interaction 2: PUT /v1/catalog/register

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 4
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{bad
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 87
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (400: text/plain; charset=utf-8):

```
Request decode failed: invalid character 'b' looking for beginning of object key string
```

## Interaction 3: PUT /v1/agent/check/pass/nosuch

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
Content-Length: 82
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
Unknown check ID "nosuch". Ensure that the check ID is passed, not the check name.
```

## Interaction 4: GET /v1/nosuch

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
Content-Length: 53
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (404: text/plain; charset=utf-8):

```
Invalid URL path: not a recognized HTTP API endpoint

```

## Interaction 5: DELETE /v1/status/leader

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
Allow: OPTIONS,GET
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 25
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (405: text/plain; charset=utf-8):

```
method DELETE not allowed
```

## Interaction 6: PUT /v1/session/create

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 12
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{"TTL":"1s"}
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 63
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (500: text/plain; charset=utf-8):

```
Invalid Session TTL '1000000000', must be between [10s=24h0m0s]
```

## Interaction 7: PUT /v1/acl/token

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 32
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Consul-Token: X_CONSUL_TOKEN_1
```
### Request body recorded for playback ():

```
{"Policies":[{"Name":"nosuch"}]}
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: deny
Content-Length: 37
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (500: text/plain; charset=utf-8):

```
No such ACL policy with name "nosuch"
```

## Interaction 8: GET /v1/acl/policy/00000000-0000-0000-0000-000000000009

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
| removed | response headers | `Date` | (left out) | 0–8 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `X-Consul-Token` | `X_CONSUL_TOKEN_N` | 0–8 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–8 |
| collapsed | whole recording | `X-Consul-Index: [0-9]+` | `X-Consul-Index: 1` | none |
| collapsed | whole recording | `(?<="CreateIndex": \|"ModifyIndex": )[0-9]+` | `1` | none |
| collapsed | whole recording | `(?<=cas=)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<="Index":)[1-9][0-9]*` | `1` | none |
| collapsed | whole recording | `(?<=reset index: )[0-9]+` | `1` | none |
| normalized | whole recording | `(?!00000000-0000-0000-0000-00000000000[0-9])[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | 0–8 |
| collapsed | whole recording | `(?<="Hash": ")[A-Za-z0-9+/=]{44}(?=")` | `HASH` | none |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
