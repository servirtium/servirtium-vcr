## Interaction 0: GET /v1.48/containers/tcae-nope/json

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
Content-Length: 43
```
### Response body recorded for playback (404: application/json):

```
{"message":"No such container: tcae-nope"}

```

## Interaction 1: POST /v1.48/containers/tcae-nope/start

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
Content-Length: 43
```
### Response body recorded for playback (404: application/json):

```
{"message":"No such container: tcae-nope"}

```

## Interaction 2: GET /v1.48/containers/tcae-nope/logs?stdout=1

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
Content-Length: 43
```
### Response body recorded for playback (404: application/json):

```
{"message":"No such container: tcae-nope"}

```

## Interaction 3: DELETE /v1.48/containers/tcae-nope

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
Content-Length: 43
```
### Response body recorded for playback (404: application/json):

```
{"message":"No such container: tcae-nope"}

```

## Interaction 4: POST /v1.48/containers/create?name=tcae-dup

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 31
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"Image":"tcae/not-an-image:x"}
```
### Response headers recorded for playback:

```
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 49
```
### Response body recorded for playback (404: application/json):

```
{"message":"No such image: tcae/not-an-image:x"}

```

## Interaction 5: POST /v1.48/containers/create?name=tcae-dup

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 9
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{not json
```
### Response headers recorded for playback:

```
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 93
```
### Response body recorded for playback (400: application/json):

```
{"message":"invalid JSON: invalid character 'n' looking for beginning of object key string"}

```

## Interaction 6: POST /v1.48/containers/create?name=tcae-dup

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 2
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{}
```
### Response headers recorded for playback:

```
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 68
```
### Response body recorded for playback (400: application/json):

```
{"message":"config cannot be empty in order to create a container"}

```

## Interaction 7: POST /v1.48/containers/create?name=tcae-dup

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 75
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"Image":"busybox:1.36.1","Hostname":"tcae-host","Tty":true,"Cmd":["true"]}
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
{"Id":"{{docker-id-1}}","Warnings":[]}

```

## Interaction 8: POST /v1.48/containers/create?name=tcae-dup

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 75
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"Image":"busybox:1.36.1","Hostname":"tcae-host","Tty":true,"Cmd":["true"]}
```
### Response headers recorded for playback:

```
Api-Version: 1.48
Content-Type: application/json
Docker-Experimental: false
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 186
```
### Response body recorded for playback (409: application/json):

```
{"message":"Conflict. The container name \"/tcae-dup\" is already in use by container \"{{docker-id-1}}\". You have to remove (or rename) that container to be able to reuse that name."}

```

## Interaction 9: DELETE /v1.48/images/busybox:1.36.1

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
Content-Length: 168
```
### Response body recorded for playback (409: application/json):

```
{"message":"conflict: unable to remove repository reference \"busybox:1.36.1\" (must force) - container container-short-id is using its referenced image b7c873bd97bd"}

```

## Interaction 10: DELETE /v1.48/containers/tcae-dup

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

## Interaction 11: GET /v1.48/no-such-endpoint

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
Content-Length: 29
```
### Response body recorded for playback (404: application/json):

```
{"message":"page not found"}

```

## Interaction 12: GET /v1.48/images/tcae-nope/json

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
Content-Length: 46
```
### Response body recorded for playback (404: application/json):

```
{"message":"No such image: tcae-nope:latest"}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–12 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–12 |
| normalized | whole recording | `(?<!sha256:)(?<![0-9a-f])[0-9a-f]{64}(?![0-9a-f])` | `{{docker-id-N}}` | 7, 8 |
| collapsed | whole recording | `(?<="Created":"\|"StartedAt":"\|"FinishedAt":"\|"CreatedAt":"\|"LastTagTime":"\|"SystemTime":")[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | none |
| collapsed | whole recording | `"ID":"[0-9a-f-]{36}"` | `"ID":"00000000-0000-0000-0000-000000000000"` | none |
| collapsed | whole recording | `"Name":"[0-9a-f]{12}"` | `"Name":"dind-host"` | none |
| collapsed | whole recording | `"NFd":[0-9]+,"OomKillDisable":(true\|false),"NGoroutines":[0-9]+` | `"NFd":0,"OomKillDisable":false,"NGoroutines":0` | none |
| collapsed | whole recording | `"Containers":[0-9]+,"ContainersRunning":[0-9]+,"ContainersPaused":[0-9]+,"ContainersStopped":[0-9]+,"Images":[0-9]+` | `"Containers":0,"ContainersRunning":0,"ContainersPaused":0,"ContainersStopped":0,"Images":0` | none |
| collapsed | whole recording | `"NCPU":[0-9]+,"MemTotal":[0-9]+` | `"NCPU":1,"MemTotal":1` | none |
| collapsed | whole recording | `"KernelVersion":"[^"]*"` | `"KernelVersion":"kernel"` | none |
| collapsed | whole recording | `"[0-9a-f]{12}","tcae-host"` | `"container-short-id","tcae-host"` | none |
| collapsed | whole recording | `- container [0-9a-f]{12} is using` | `- container container-short-id is using` | 9 |
| collapsed | whole recording | `"Created":[0-9]{10},"Ports"` | `"Created":946684800,"Ports"` | none |
| collapsed | whole recording | `"MacAddress":"[0-9a-f]{2}(:[0-9a-f]{2}){5}"` | `"MacAddress":"02:42:00:00:00:00"` | none |
| collapsed | whole recording | `"Pid":[1-9][0-9]*` | `"Pid":4242` | none |
| collapsed | whole recording | `/netns/[0-9a-f]{12}` | `/netns/sandbox` | none |
| collapsed | whole recording | `"Processes":\[\[.*\]\]` | `"Processes":[["root","4242","4241","0","00:00","pts/0","00:00:00","sleep 300"]]` | none |
