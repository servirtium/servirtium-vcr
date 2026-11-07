## Interaction 0: POST /v1.48/images/create?fromImage=busybox&tag=1.36.1

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
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{"status":"Pulling from library/busybox","id":"1.36.1"}
{"status":"Digest: sha256:73aaf090f3d85aa34ee199857f03fa3a95c8ede2ffd4cc2cdb5b94e566b11662"}
{"status":"Status: Image is up to date for busybox:1.36.1"}

```

## Interaction 1: GET /v1.48/images/json

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
Content-Length: 307
```
### Response body recorded for playback (200: application/json):

```
[{"Containers":-1,"Created":1684449257,"Id":"sha256:b7c873bd97bdc9046fc894e0b216c8aef31e0db4c5b761fb53022e40577ab6c0","Labels":null,"ParentId":"","RepoDigests":["busybox@sha256:73aaf090f3d85aa34ee199857f03fa3a95c8ede2ffd4cc2cdb5b94e566b11662"],"RepoTags":["busybox:1.36.1"],"SharedSize":-1,"Size":4105262}]

```

## Interaction 2: GET /v1.48/images/json?filters=%7B%22reference%22%3A%5B%22busybox%22%5D%7D

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
Content-Length: 307
```
### Response body recorded for playback (200: application/json):

```
[{"Containers":-1,"Created":1684449257,"Id":"sha256:b7c873bd97bdc9046fc894e0b216c8aef31e0db4c5b761fb53022e40577ab6c0","Labels":null,"ParentId":"","RepoDigests":["busybox@sha256:73aaf090f3d85aa34ee199857f03fa3a95c8ede2ffd4cc2cdb5b94e566b11662"],"RepoTags":["busybox:1.36.1"],"SharedSize":-1,"Size":4105262}]

```

## Interaction 3: GET /v1.48/images/busybox:1.36.1/json

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
Content-Length: 1087
```
### Response body recorded for playback (200: application/json):

```
{"Id":"sha256:b7c873bd97bdc9046fc894e0b216c8aef31e0db4c5b761fb53022e40577ab6c0","RepoTags":["busybox:1.36.1"],"RepoDigests":["busybox@sha256:73aaf090f3d85aa34ee199857f03fa3a95c8ede2ffd4cc2cdb5b94e566b11662"],"Parent":"","Comment":"","Created":"2000-01-01T00:00:00Z","DockerVersion":"","Author":"","Config":{"Hostname":"","Domainname":"","User":"","AttachStdin":false,"AttachStdout":false,"AttachStderr":false,"Tty":false,"OpenStdin":false,"StdinOnce":false,"Env":["PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"],"Cmd":["sh"],"Image":"","Volumes":null,"WorkingDir":"","Entrypoint":null,"OnBuild":null,"Labels":null},"Architecture":"arm64","Variant":"v8","Os":"linux","Size":4105262,"GraphDriver":{"Data":{"MergedDir":"/var/lib/docker/overlay2/{{docker-id-1}}/merged","UpperDir":"/var/lib/docker/overlay2/{{docker-id-1}}/diff","WorkDir":"/var/lib/docker/overlay2/{{docker-id-1}}/work"},"Name":"overlay2"},"RootFS":{"Type":"layers","Layers":["sha256:6d0cc19a6875e48bdb50fd93fbd8c4ba85d1024d1a35552a1f61e1e286c39afd"]},"Metadata":{"LastTagTime":"2000-01-01T00:00:00Z"}}

```

## Interaction 4: GET /v1.48/images/busybox:1.36.1/history

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
Content-Length: 206
```
### Response body recorded for playback (200: application/json):

```
[{"Comment":"","Created":1684449257,"CreatedBy":"BusyBox 1.36.1 (glibc), Debian 13","Id":"sha256:b7c873bd97bdc9046fc894e0b216c8aef31e0db4c5b761fb53022e40577ab6c0","Size":4105262,"Tags":["busybox:1.36.1"]}]

```

## Interaction 5: POST /v1.48/images/busybox:1.36.1/tag?repo=tcae/busybox&tag=test

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
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /v1.48/images/tcae/busybox:test/json

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
Content-Length: 1107
```
### Response body recorded for playback (200: application/json):

```
{"Id":"sha256:b7c873bd97bdc9046fc894e0b216c8aef31e0db4c5b761fb53022e40577ab6c0","RepoTags":["busybox:1.36.1","tcae/busybox:test"],"RepoDigests":["busybox@sha256:73aaf090f3d85aa34ee199857f03fa3a95c8ede2ffd4cc2cdb5b94e566b11662"],"Parent":"","Comment":"","Created":"2000-01-01T00:00:00Z","DockerVersion":"","Author":"","Config":{"Hostname":"","Domainname":"","User":"","AttachStdin":false,"AttachStdout":false,"AttachStderr":false,"Tty":false,"OpenStdin":false,"StdinOnce":false,"Env":["PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"],"Cmd":["sh"],"Image":"","Volumes":null,"WorkingDir":"","Entrypoint":null,"OnBuild":null,"Labels":null},"Architecture":"arm64","Variant":"v8","Os":"linux","Size":4105262,"GraphDriver":{"Data":{"MergedDir":"/var/lib/docker/overlay2/{{docker-id-1}}/merged","UpperDir":"/var/lib/docker/overlay2/{{docker-id-1}}/diff","WorkDir":"/var/lib/docker/overlay2/{{docker-id-1}}/work"},"Name":"overlay2"},"RootFS":{"Type":"layers","Layers":["sha256:6d0cc19a6875e48bdb50fd93fbd8c4ba85d1024d1a35552a1f61e1e286c39afd"]},"Metadata":{"LastTagTime":"2000-01-01T00:00:00Z"}}

```

## Interaction 7: DELETE /v1.48/images/tcae/busybox:test

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
Content-Length: 35
```
### Response body recorded for playback (200: application/json):

```
[{"Untagged":"tcae/busybox:test"}]

```

## Interaction 8: GET /v1.48/images/tcae/busybox:test/json

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
Content-Length: 47
```
### Response body recorded for playback (404: application/json):

```
{"message":"No such image: tcae/busybox:test"}

```

## Interaction 9: DELETE /v1.48/images/tcae/busybox:test

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
Content-Length: 47
```
### Response body recorded for playback (404: application/json):

```
{"message":"No such image: tcae/busybox:test"}

```

## Interaction 10: POST /v1.48/images/prune?filters=%7B%22dangling%22%3A%5B%22true%22%5D%7D

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
Content-Length: 42
```
### Response body recorded for playback (200: application/json):

```
{"ImagesDeleted":null,"SpaceReclaimed":0}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–10 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–10 |
| normalized | whole recording | `(?<!sha256:)(?<![0-9a-f])[0-9a-f]{64}(?![0-9a-f])` | `{{docker-id-N}}` | 3, 6 |
| collapsed | whole recording | `(?<="Created":"\|"StartedAt":"\|"FinishedAt":"\|"CreatedAt":"\|"LastTagTime":"\|"SystemTime":")[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 3, 6 |
| collapsed | whole recording | `"ID":"[0-9a-f-]{36}"` | `"ID":"00000000-0000-0000-0000-000000000000"` | none |
| collapsed | whole recording | `"Name":"[0-9a-f]{12}"` | `"Name":"dind-host"` | none |
| collapsed | whole recording | `"NFd":[0-9]+,"OomKillDisable":(true\|false),"NGoroutines":[0-9]+` | `"NFd":0,"OomKillDisable":false,"NGoroutines":0` | none |
| collapsed | whole recording | `"Containers":[0-9]+,"ContainersRunning":[0-9]+,"ContainersPaused":[0-9]+,"ContainersStopped":[0-9]+,"Images":[0-9]+` | `"Containers":0,"ContainersRunning":0,"ContainersPaused":0,"ContainersStopped":0,"Images":0` | none |
| collapsed | whole recording | `"NCPU":[0-9]+,"MemTotal":[0-9]+` | `"NCPU":1,"MemTotal":1` | none |
| collapsed | whole recording | `"KernelVersion":"[^"]*"` | `"KernelVersion":"kernel"` | none |
| collapsed | whole recording | `"[0-9a-f]{12}","tcae-host"` | `"container-short-id","tcae-host"` | none |
| collapsed | whole recording | `- container [0-9a-f]{12} is using` | `- container container-short-id is using` | none |
| collapsed | whole recording | `"Created":[0-9]{10},"Ports"` | `"Created":946684800,"Ports"` | none |
| collapsed | whole recording | `"MacAddress":"[0-9a-f]{2}(:[0-9a-f]{2}){5}"` | `"MacAddress":"02:42:00:00:00:00"` | none |
| collapsed | whole recording | `"Pid":[1-9][0-9]*` | `"Pid":4242` | none |
| collapsed | whole recording | `/netns/[0-9a-f]{12}` | `/netns/sandbox` | none |
| collapsed | whole recording | `"Processes":\[\[.*\]\]` | `"Processes":[["root","4242","4241","0","00:00","pts/0","00:00:00","sleep 300"]]` | none |
