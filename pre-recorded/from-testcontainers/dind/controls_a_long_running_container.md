## Interaction 0: POST /v1.48/containers/create?name=tcae-sleeper

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
{"Id":"{{docker-id-1}}","Warnings":[]}

```

## Interaction 1: POST /v1.48/containers/tcae-sleeper/start

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

## Interaction 2: POST /v1.48/containers/tcae-sleeper/start

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
### Response body recorded for playback (304: text/plain):

```
```

## Interaction 3: GET /v1.48/containers/tcae-sleeper/json

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
{"Id":"{{docker-id-1}}","Created":"2000-01-01T00:00:00Z","Path":"sleep","Args":["300"],"State":{"Status":"running","Running":true,"Paused":false,"Restarting":false,"OOMKilled":false,"Dead":false,"Pid":4242,"ExitCode":0,"Error":"","StartedAt":"2000-01-01T00:00:00Z","FinishedAt":"2000-01-01T00:00:00Z"},"Image":"sha256:b7c873bd97bdc9046fc894e0b216c8aef31e0db4c5b761fb53022e40577ab6c0","ResolvConfPath":"/var/lib/docker/containers/{{docker-id-1}}/resolv.conf","HostnamePath":"/var/lib/docker/containers/{{docker-id-1}}/hostname","HostsPath":"/var/lib/docker/containers/{{docker-id-1}}/hosts","LogPath":"/var/lib/docker/containers/{{docker-id-1}}/{{docker-id-1}}-json.log","Name":"/tcae-sleeper","RestartCount":0,"Driver":"overlay2","Platform":"linux","MountLabel":"","ProcessLabel":"","AppArmorProfile":"","ExecIDs":null,"HostConfig":{"Binds":null,"ContainerIDFile":"","LogConfig":{"Type":"json-file","Config":{}},"NetworkMode":"bridge","PortBindings":null,"RestartPolicy":{"Name":"no","MaximumRetryCount":0},"AutoRemove":false,"VolumeDriver":"","VolumesFrom":null,"ConsoleSize":[0,0],"CapAdd":null,"CapDrop":null,"CgroupnsMode":"private","Dns":null,"DnsOptions":null,"DnsSearch":null,"ExtraHosts":null,"GroupAdd":null,"IpcMode":"private","Cgroup":"","Links":null,"OomScoreAdj":200,"PidMode":"","Privileged":false,"PublishAllPorts":false,"ReadonlyRootfs":false,"SecurityOpt":null,"UTSMode":"","UsernsMode":"","ShmSize":67108864,"Runtime":"runc","Isolation":"","CpuShares":0,"Memory":0,"NanoCpus":0,"CgroupParent":"","BlkioWeight":0,"BlkioWeightDevice":null,"BlkioDeviceReadBps":null,"BlkioDeviceWriteBps":null,"BlkioDeviceReadIOps":null,"BlkioDeviceWriteIOps":null,"CpuPeriod":0,"CpuQuota":0,"CpuRealtimePeriod":0,"CpuRealtimeRuntime":0,"CpusetCpus":"","CpusetMems":"","Devices":null,"DeviceCgroupRules":null,"DeviceRequests":null,"MemoryReservation":0,"MemorySwap":0,"MemorySwappiness":null,"OomKillDisable":null,"PidsLimit":null,"Ulimits":null,"CpuCount":0,"CpuPercent":0,"IOMaximumIOps":0,"IOMaximumBandwidth":0,"MaskedPaths":["/proc/asound","/proc/acpi","/proc/kcore","/proc/keys","/proc/latency_stats","/proc/timer_list","/proc/timer_stats","/proc/sched_debug","/proc/scsi","/sys/firmware","/sys/devices/virtual/powercap"],"ReadonlyPaths":["/proc/bus","/proc/fs","/proc/irq","/proc/sys","/proc/sysrq-trigger"]},"GraphDriver":{"Data":{"ID":"{{docker-id-1}}","LowerDir":"/var/lib/docker/overlay2/{{docker-id-2}}-init/diff:/var/lib/docker/overlay2/{{docker-id-3}}/diff","MergedDir":"/var/lib/docker/overlay2/{{docker-id-2}}/merged","UpperDir":"/var/lib/docker/overlay2/{{docker-id-2}}/diff","WorkDir":"/var/lib/docker/overlay2/{{docker-id-2}}/work"},"Name":"overlay2"},"Mounts":[],"Config":{"Hostname":"tcae-host","Domainname":"","User":"","AttachStdin":false,"AttachStdout":false,"AttachStderr":false,"Tty":true,"OpenStdin":false,"StdinOnce":false,"Env":["PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"],"Cmd":["sleep","300"],"Image":"busybox:1.36.1","Volumes":null,"WorkingDir":"","Entrypoint":null,"OnBuild":null,"Labels":{}},"NetworkSettings":{"Bridge":"","SandboxID":"{{docker-id-4}}","SandboxKey":"/var/run/docker/netns/sandbox","Ports":{},"HairpinMode":false,"LinkLocalIPv6Address":"","LinkLocalIPv6PrefixLen":0,"SecondaryIPAddresses":null,"SecondaryIPv6Addresses":null,"EndpointID":"{{docker-id-5}}","Gateway":"172.17.0.1","GlobalIPv6Address":"","GlobalIPv6PrefixLen":0,"IPAddress":"172.17.0.2","IPPrefixLen":16,"IPv6Gateway":"","MacAddress":"02:42:00:00:00:00","Networks":{"bridge":{"IPAMConfig":null,"Links":null,"Aliases":null,"MacAddress":"02:42:00:00:00:00","DriverOpts":null,"GwPriority":0,"NetworkID":"{{docker-id-6}}","EndpointID":"{{docker-id-5}}","Gateway":"172.17.0.1","IPAddress":"172.17.0.2","IPPrefixLen":16,"IPv6Gateway":"","GlobalIPv6Address":"","GlobalIPv6PrefixLen":0,"DNSNames":null}}}}

```

## Interaction 4: GET /v1.48/containers/tcae-sleeper/top

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
Content-Length: 123
```
### Response body recorded for playback (200: application/json):

```
{"Processes":[["root","4242","4241","0","00:00","pts/0","00:00:00","sleep 300"]],"Titles":["PID","USER","TIME","COMMAND"]}

```

## Interaction 5: POST /v1.48/containers/tcae-sleeper/pause

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

## Interaction 6: GET /v1.48/containers/tcae-sleeper/json

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
{"Id":"{{docker-id-1}}","Created":"2000-01-01T00:00:00Z","Path":"sleep","Args":["300"],"State":{"Status":"paused","Running":true,"Paused":true,"Restarting":false,"OOMKilled":false,"Dead":false,"Pid":4242,"ExitCode":0,"Error":"","StartedAt":"2000-01-01T00:00:00Z","FinishedAt":"2000-01-01T00:00:00Z"},"Image":"sha256:b7c873bd97bdc9046fc894e0b216c8aef31e0db4c5b761fb53022e40577ab6c0","ResolvConfPath":"/var/lib/docker/containers/{{docker-id-1}}/resolv.conf","HostnamePath":"/var/lib/docker/containers/{{docker-id-1}}/hostname","HostsPath":"/var/lib/docker/containers/{{docker-id-1}}/hosts","LogPath":"/var/lib/docker/containers/{{docker-id-1}}/{{docker-id-1}}-json.log","Name":"/tcae-sleeper","RestartCount":0,"Driver":"overlay2","Platform":"linux","MountLabel":"","ProcessLabel":"","AppArmorProfile":"","ExecIDs":null,"HostConfig":{"Binds":null,"ContainerIDFile":"","LogConfig":{"Type":"json-file","Config":{}},"NetworkMode":"bridge","PortBindings":null,"RestartPolicy":{"Name":"no","MaximumRetryCount":0},"AutoRemove":false,"VolumeDriver":"","VolumesFrom":null,"ConsoleSize":[0,0],"CapAdd":null,"CapDrop":null,"CgroupnsMode":"private","Dns":null,"DnsOptions":null,"DnsSearch":null,"ExtraHosts":null,"GroupAdd":null,"IpcMode":"private","Cgroup":"","Links":null,"OomScoreAdj":200,"PidMode":"","Privileged":false,"PublishAllPorts":false,"ReadonlyRootfs":false,"SecurityOpt":null,"UTSMode":"","UsernsMode":"","ShmSize":67108864,"Runtime":"runc","Isolation":"","CpuShares":0,"Memory":0,"NanoCpus":0,"CgroupParent":"","BlkioWeight":0,"BlkioWeightDevice":null,"BlkioDeviceReadBps":null,"BlkioDeviceWriteBps":null,"BlkioDeviceReadIOps":null,"BlkioDeviceWriteIOps":null,"CpuPeriod":0,"CpuQuota":0,"CpuRealtimePeriod":0,"CpuRealtimeRuntime":0,"CpusetCpus":"","CpusetMems":"","Devices":null,"DeviceCgroupRules":null,"DeviceRequests":null,"MemoryReservation":0,"MemorySwap":0,"MemorySwappiness":null,"OomKillDisable":null,"PidsLimit":null,"Ulimits":null,"CpuCount":0,"CpuPercent":0,"IOMaximumIOps":0,"IOMaximumBandwidth":0,"MaskedPaths":["/proc/asound","/proc/acpi","/proc/kcore","/proc/keys","/proc/latency_stats","/proc/timer_list","/proc/timer_stats","/proc/sched_debug","/proc/scsi","/sys/firmware","/sys/devices/virtual/powercap"],"ReadonlyPaths":["/proc/bus","/proc/fs","/proc/irq","/proc/sys","/proc/sysrq-trigger"]},"GraphDriver":{"Data":{"ID":"{{docker-id-1}}","LowerDir":"/var/lib/docker/overlay2/{{docker-id-2}}-init/diff:/var/lib/docker/overlay2/{{docker-id-3}}/diff","MergedDir":"/var/lib/docker/overlay2/{{docker-id-2}}/merged","UpperDir":"/var/lib/docker/overlay2/{{docker-id-2}}/diff","WorkDir":"/var/lib/docker/overlay2/{{docker-id-2}}/work"},"Name":"overlay2"},"Mounts":[],"Config":{"Hostname":"tcae-host","Domainname":"","User":"","AttachStdin":false,"AttachStdout":false,"AttachStderr":false,"Tty":true,"OpenStdin":false,"StdinOnce":false,"Env":["PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"],"Cmd":["sleep","300"],"Image":"busybox:1.36.1","Volumes":null,"WorkingDir":"","Entrypoint":null,"OnBuild":null,"Labels":{}},"NetworkSettings":{"Bridge":"","SandboxID":"{{docker-id-4}}","SandboxKey":"/var/run/docker/netns/sandbox","Ports":{},"HairpinMode":false,"LinkLocalIPv6Address":"","LinkLocalIPv6PrefixLen":0,"SecondaryIPAddresses":null,"SecondaryIPv6Addresses":null,"EndpointID":"{{docker-id-5}}","Gateway":"172.17.0.1","GlobalIPv6Address":"","GlobalIPv6PrefixLen":0,"IPAddress":"172.17.0.2","IPPrefixLen":16,"IPv6Gateway":"","MacAddress":"02:42:00:00:00:00","Networks":{"bridge":{"IPAMConfig":null,"Links":null,"Aliases":null,"MacAddress":"02:42:00:00:00:00","DriverOpts":null,"GwPriority":0,"NetworkID":"{{docker-id-6}}","EndpointID":"{{docker-id-5}}","Gateway":"172.17.0.1","IPAddress":"172.17.0.2","IPPrefixLen":16,"IPv6Gateway":"","GlobalIPv6Address":"","GlobalIPv6PrefixLen":0,"DNSNames":null}}}}

```

## Interaction 7: POST /v1.48/containers/tcae-sleeper/unpause

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

## Interaction 8: POST /v1.48/containers/tcae-sleeper/rename?name=tcae-sleeper-renamed

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

## Interaction 9: GET /v1.48/containers/tcae-sleeper-renamed/json

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
{"Id":"{{docker-id-1}}","Created":"2000-01-01T00:00:00Z","Path":"sleep","Args":["300"],"State":{"Status":"running","Running":true,"Paused":false,"Restarting":false,"OOMKilled":false,"Dead":false,"Pid":4242,"ExitCode":0,"Error":"","StartedAt":"2000-01-01T00:00:00Z","FinishedAt":"2000-01-01T00:00:00Z"},"Image":"sha256:b7c873bd97bdc9046fc894e0b216c8aef31e0db4c5b761fb53022e40577ab6c0","ResolvConfPath":"/var/lib/docker/containers/{{docker-id-1}}/resolv.conf","HostnamePath":"/var/lib/docker/containers/{{docker-id-1}}/hostname","HostsPath":"/var/lib/docker/containers/{{docker-id-1}}/hosts","LogPath":"/var/lib/docker/containers/{{docker-id-1}}/{{docker-id-1}}-json.log","Name":"/tcae-sleeper-renamed","RestartCount":0,"Driver":"overlay2","Platform":"linux","MountLabel":"","ProcessLabel":"","AppArmorProfile":"","ExecIDs":null,"HostConfig":{"Binds":null,"ContainerIDFile":"","LogConfig":{"Type":"json-file","Config":{}},"NetworkMode":"bridge","PortBindings":null,"RestartPolicy":{"Name":"no","MaximumRetryCount":0},"AutoRemove":false,"VolumeDriver":"","VolumesFrom":null,"ConsoleSize":[0,0],"CapAdd":null,"CapDrop":null,"CgroupnsMode":"private","Dns":null,"DnsOptions":null,"DnsSearch":null,"ExtraHosts":null,"GroupAdd":null,"IpcMode":"private","Cgroup":"","Links":null,"OomScoreAdj":200,"PidMode":"","Privileged":false,"PublishAllPorts":false,"ReadonlyRootfs":false,"SecurityOpt":null,"UTSMode":"","UsernsMode":"","ShmSize":67108864,"Runtime":"runc","Isolation":"","CpuShares":0,"Memory":0,"NanoCpus":0,"CgroupParent":"","BlkioWeight":0,"BlkioWeightDevice":null,"BlkioDeviceReadBps":null,"BlkioDeviceWriteBps":null,"BlkioDeviceReadIOps":null,"BlkioDeviceWriteIOps":null,"CpuPeriod":0,"CpuQuota":0,"CpuRealtimePeriod":0,"CpuRealtimeRuntime":0,"CpusetCpus":"","CpusetMems":"","Devices":null,"DeviceCgroupRules":null,"DeviceRequests":null,"MemoryReservation":0,"MemorySwap":0,"MemorySwappiness":null,"OomKillDisable":null,"PidsLimit":null,"Ulimits":null,"CpuCount":0,"CpuPercent":0,"IOMaximumIOps":0,"IOMaximumBandwidth":0,"MaskedPaths":["/proc/asound","/proc/acpi","/proc/kcore","/proc/keys","/proc/latency_stats","/proc/timer_list","/proc/timer_stats","/proc/sched_debug","/proc/scsi","/sys/firmware","/sys/devices/virtual/powercap"],"ReadonlyPaths":["/proc/bus","/proc/fs","/proc/irq","/proc/sys","/proc/sysrq-trigger"]},"GraphDriver":{"Data":{"ID":"{{docker-id-1}}","LowerDir":"/var/lib/docker/overlay2/{{docker-id-2}}-init/diff:/var/lib/docker/overlay2/{{docker-id-3}}/diff","MergedDir":"/var/lib/docker/overlay2/{{docker-id-2}}/merged","UpperDir":"/var/lib/docker/overlay2/{{docker-id-2}}/diff","WorkDir":"/var/lib/docker/overlay2/{{docker-id-2}}/work"},"Name":"overlay2"},"Mounts":[],"Config":{"Hostname":"tcae-host","Domainname":"","User":"","AttachStdin":false,"AttachStdout":false,"AttachStderr":false,"Tty":true,"OpenStdin":false,"StdinOnce":false,"Env":["PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"],"Cmd":["sleep","300"],"Image":"busybox:1.36.1","Volumes":null,"WorkingDir":"","Entrypoint":null,"OnBuild":null,"Labels":{}},"NetworkSettings":{"Bridge":"","SandboxID":"{{docker-id-4}}","SandboxKey":"/var/run/docker/netns/sandbox","Ports":{},"HairpinMode":false,"LinkLocalIPv6Address":"","LinkLocalIPv6PrefixLen":0,"SecondaryIPAddresses":null,"SecondaryIPv6Addresses":null,"EndpointID":"{{docker-id-5}}","Gateway":"172.17.0.1","GlobalIPv6Address":"","GlobalIPv6PrefixLen":0,"IPAddress":"172.17.0.2","IPPrefixLen":16,"IPv6Gateway":"","MacAddress":"02:42:00:00:00:00","Networks":{"bridge":{"IPAMConfig":null,"Links":null,"Aliases":null,"MacAddress":"02:42:00:00:00:00","DriverOpts":null,"GwPriority":0,"NetworkID":"{{docker-id-6}}","EndpointID":"{{docker-id-5}}","Gateway":"172.17.0.1","IPAddress":"172.17.0.2","IPPrefixLen":16,"IPv6Gateway":"","GlobalIPv6Address":"","GlobalIPv6PrefixLen":0,"DNSNames":["tcae-sleeper-renamed","container-short-id","tcae-host"]}}}}

```

## Interaction 10: DELETE /v1.48/containers/tcae-sleeper-renamed

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
Content-Length: 138
```
### Response body recorded for playback (409: application/json):

```
{"message":"cannot remove container \"/tcae-sleeper-renamed\": container is running: stop the container before removing or force remove"}

```

## Interaction 11: POST /v1.48/containers/tcae-sleeper-renamed/restart?t=1

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

## Interaction 12: POST /v1.48/containers/tcae-sleeper-renamed/stop?t=1

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

## Interaction 13: POST /v1.48/containers/tcae-sleeper-renamed/stop?t=1

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
### Response body recorded for playback (304: text/plain):

```
```

## Interaction 14: POST /v1.48/containers/tcae-sleeper-renamed/wait

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
{"StatusCode":137}

```

## Interaction 15: POST /v1.48/containers/tcae-sleeper-renamed/start

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

## Interaction 16: DELETE /v1.48/containers/tcae-sleeper-renamed?force=1

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


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–16 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–16 |
| normalized | whole recording | `(?<!sha256:)(?<![0-9a-f])[0-9a-f]{64}(?![0-9a-f])` | `{{docker-id-N}}` | 0, 3, 6, 9 |
| collapsed | whole recording | `(?<="Created":"\|"StartedAt":"\|"FinishedAt":"\|"CreatedAt":"\|"LastTagTime":"\|"SystemTime":")[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 3, 6, 9 |
| collapsed | whole recording | `"ID":"[0-9a-f-]{36}"` | `"ID":"00000000-0000-0000-0000-000000000000"` | none |
| collapsed | whole recording | `"Name":"[0-9a-f]{12}"` | `"Name":"dind-host"` | none |
| collapsed | whole recording | `"NFd":[0-9]+,"OomKillDisable":(true\|false),"NGoroutines":[0-9]+` | `"NFd":0,"OomKillDisable":false,"NGoroutines":0` | none |
| collapsed | whole recording | `"Containers":[0-9]+,"ContainersRunning":[0-9]+,"ContainersPaused":[0-9]+,"ContainersStopped":[0-9]+,"Images":[0-9]+` | `"Containers":0,"ContainersRunning":0,"ContainersPaused":0,"ContainersStopped":0,"Images":0` | none |
| collapsed | whole recording | `"NCPU":[0-9]+,"MemTotal":[0-9]+` | `"NCPU":1,"MemTotal":1` | none |
| collapsed | whole recording | `"KernelVersion":"[^"]*"` | `"KernelVersion":"kernel"` | none |
| collapsed | whole recording | `"[0-9a-f]{12}","tcae-host"` | `"container-short-id","tcae-host"` | 9 |
| collapsed | whole recording | `- container [0-9a-f]{12} is using` | `- container container-short-id is using` | none |
| collapsed | whole recording | `"Created":[0-9]{10},"Ports"` | `"Created":946684800,"Ports"` | none |
| collapsed | whole recording | `"MacAddress":"[0-9a-f]{2}(:[0-9a-f]{2}){5}"` | `"MacAddress":"02:42:00:00:00:00"` | 3, 6, 9 |
| collapsed | whole recording | `"Pid":[1-9][0-9]*` | `"Pid":4242` | 3, 6, 9 |
| collapsed | whole recording | `/netns/[0-9a-f]{12}` | `/netns/sandbox` | 3, 6, 9 |
| collapsed | whole recording | `"Processes":\[\[.*\]\]` | `"Processes":[["root","4242","4241","0","00:00","pts/0","00:00:00","sleep 300"]]` | 4 |
