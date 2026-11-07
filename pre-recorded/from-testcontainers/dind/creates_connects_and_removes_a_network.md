## Interaction 0: POST /v1.48/networks/create

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 129
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"Name":"tcae-net","Driver":"bridge","Labels":{"tcae":"1"},"IPAM":{"Config":[{"Subnet":"10.250.0.0/24","Gateway":"10.250.0.1"}]}}
```
### Response headers recorded for playback:

```
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 38
```
### Response body recorded for playback (201: application/json):

```
{"Id":"{{docker-id-1}}","Warning":""}

```

## Interaction 1: GET /v1.48/networks/tcae-net

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
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 401
```
### Response body recorded for playback (200: application/json):

```
{"Name":"tcae-net","Id":"{{docker-id-1}}","Created":"2000-01-01T00:00:00Z","Scope":"local","Driver":"bridge","EnableIPv4":true,"EnableIPv6":false,"IPAM":{"Driver":"default","Options":null,"Config":[{"Subnet":"10.250.0.0/24","Gateway":"10.250.0.1"}]},"Internal":false,"Attachable":false,"Ingress":false,"ConfigFrom":{"Network":""},"ConfigOnly":false,"Containers":{},"Options":{},"Labels":{"tcae":"1"}}

```

## Interaction 2: GET /v1.48/networks?filters=%7B%22name%22%3A%5B%22tcae-net%22%5D%7D

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
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 403
```
### Response body recorded for playback (200: application/json):

```
[{"Name":"tcae-net","Id":"{{docker-id-1}}","Created":"2000-01-01T00:00:00Z","Scope":"local","Driver":"bridge","EnableIPv4":true,"EnableIPv6":false,"IPAM":{"Driver":"default","Options":null,"Config":[{"Subnet":"10.250.0.0/24","Gateway":"10.250.0.1"}]},"Internal":false,"Attachable":false,"Ingress":false,"ConfigFrom":{"Network":""},"ConfigOnly":false,"Containers":{},"Options":{},"Labels":{"tcae":"1"}}]

```

## Interaction 3: POST /v1.48/networks/create

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 19
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"Name":"tcae-net"}
```
### Response headers recorded for playback:

```
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 56
```
### Response body recorded for playback (409: application/json):

```
{"message":"network with name tcae-net already exists"}

```

## Interaction 4: POST /v1.48/containers/create?name=tcae-member

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 82
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"Image":"busybox:1.36.1","Hostname":"tcae-host","Tty":true,"Cmd":["sleep","300"]}
```
### Response headers recorded for playback:

```
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 39
```
### Response body recorded for playback (201: application/json):

```
{"Id":"{{docker-id-2}}","Warnings":[]}

```

## Interaction 5: POST /v1.48/containers/tcae-member/start

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
Api-Version: 1.48
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 6: POST /v1.48/networks/tcae-net/connect

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 27
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"Container":"tcae-member"}
```
### Response headers recorded for playback:

```
Api-Version: 1.48
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: GET /v1.48/networks/tcae-net

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
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 552
```
### Response body recorded for playback (200: application/json):

```
{"Name":"tcae-net","Id":"{{docker-id-1}}","Created":"2000-01-01T00:00:00Z","Scope":"local","Driver":"bridge","EnableIPv4":true,"EnableIPv6":false,"IPAM":{"Driver":"default","Options":null,"Config":[{"Subnet":"10.250.0.0/24","Gateway":"10.250.0.1"}]},"Internal":false,"Attachable":false,"Ingress":false,"ConfigFrom":{"Network":""},"ConfigOnly":false,"Containers":{"{{docker-id-2}}":{"Name":"tcae-member","EndpointID":"{{docker-id-3}}","MacAddress":"02:42:00:00:00:00","IPv4Address":"10.250.0.2/24","IPv6Address":""}},"Options":{},"Labels":{"tcae":"1"}}

```

## Interaction 8: DELETE /v1.48/networks/tcae-net

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
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 101
```
### Response body recorded for playback (403: application/json):

```
{"message":"error while removing network: network tcae-net id {{docker-id-1}} has active endpoints"}

```

## Interaction 9: POST /v1.48/networks/tcae-net/disconnect

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 27
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"Container":"tcae-member"}
```
### Response headers recorded for playback:

```
Api-Version: 1.48
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: DELETE /v1.48/containers/tcae-member?force=1

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
Api-Version: 1.48
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 11: DELETE /v1.48/networks/tcae-net

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
Api-Version: 1.48
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 12: GET /v1.48/networks/tcae-net

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
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 41
```
### Response body recorded for playback (404: application/json):

```
{"message":"network tcae-net not found"}

```

## Interaction 13: DELETE /v1.48/networks/tcae-net

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
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 41
```
### Response body recorded for playback (404: application/json):

```
{"message":"network tcae-net not found"}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–13 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–13 |
| normalized | whole recording | `(?<!sha256:)(?<![0-9a-f])[0-9a-f]{64}(?![0-9a-f])` | `{{docker-id-N}}` | 0–2, 4, 7, 8 |
| collapsed | whole recording | `(?<="Created":"\|"StartedAt":"\|"FinishedAt":"\|"CreatedAt":"\|"LastTagTime":"\|"SystemTime":")[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 1, 2, 7 |
| collapsed | whole recording | `"ID":"[0-9a-f-]{36}"` | `"ID":"00000000-0000-0000-0000-000000000000"` | none |
| collapsed | whole recording | `"Name":"[0-9a-f]{12}"` | `"Name":"dind-host"` | none |
| collapsed | whole recording | `"NFd":[0-9]+,"OomKillDisable":(true\|false),"NGoroutines":[0-9]+` | `"NFd":0,"OomKillDisable":false,"NGoroutines":0` | none |
| collapsed | whole recording | `"Containers":[0-9]+,"ContainersRunning":[0-9]+,"ContainersPaused":[0-9]+,"ContainersStopped":[0-9]+,"Images":[0-9]+` | `"Containers":0,"ContainersRunning":0,"ContainersPaused":0,"ContainersStopped":0,"Images":0` | none |
| collapsed | whole recording | `"NCPU":[0-9]+,"MemTotal":[0-9]+` | `"NCPU":1,"MemTotal":1` | none |
| collapsed | whole recording | `"KernelVersion":"[^"]*"` | `"KernelVersion":"kernel"` | none |
| collapsed | whole recording | `"[0-9a-f]{12}","tcae-host"` | `"container-short-id","tcae-host"` | none |
| collapsed | whole recording | `- container [0-9a-f]{12} is using` | `- container container-short-id is using` | none |
| collapsed | whole recording | `"Created":[0-9]{10},"Ports"` | `"Created":946684800,"Ports"` | none |
| collapsed | whole recording | `"MacAddress":"[0-9a-f]{2}(:[0-9a-f]{2}){5}"` | `"MacAddress":"02:42:00:00:00:00"` | 7 |
| collapsed | whole recording | `"Pid":[1-9][0-9]*` | `"Pid":4242` | none |
| collapsed | whole recording | `/netns/[0-9a-f]{12}` | `/netns/sandbox` | none |
| collapsed | whole recording | `"Processes":\[\[.*\]\]` | `"Processes":[["root","4242","4241","0","00:00","pts/0","00:00:00","sleep 300"]]` | none |
