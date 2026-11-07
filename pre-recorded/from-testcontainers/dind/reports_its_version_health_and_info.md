## Interaction 0: GET /_ping

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
Builder-Version: 2
Cache-Control: no-cache, no-store, must-revalidate
Docker-Experimental: false
Ostype: linux
Pragma: no-cache
Server: Docker/28.0.1 (linux)
Swarm: inactive
Content-Length: 2
Content-Type: text/plain; charset=utf-8
```
### Response body recorded for playback (200: text/plain; charset=utf-8):

```
OK
```

## Interaction 1: HEAD /_ping

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
Builder-Version: 2
Cache-Control: no-cache, no-store, must-revalidate
Content-Length: 0
Content-Type: text/plain; charset=utf-8
Docker-Experimental: false
Ostype: linux
Pragma: no-cache
Server: Docker/28.0.1 (linux)
Swarm: inactive
```
### Response body recorded for playback (200: text/plain; charset=utf-8):

```
```

## Interaction 2: GET /version

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
Content-Length: 801
```
### Response body recorded for playback (200: application/json):

```
{"Platform":{"Name":"Docker Engine - Community"},"Components":[{"Name":"Engine","Version":"28.0.1","Details":{"ApiVersion":"1.48","Arch":"arm64","BuildTime":"2025-02-26T10:40:30.000000000+00:00","Experimental":"false","GitCommit":"bbd0a17","GoVersion":"go1.23.6","KernelVersion":"kernel","MinAPIVersion":"1.24","Os":"linux"}},{"Name":"containerd","Version":"v1.7.25","Details":{"GitCommit":"bcc810d6b9066471b0b6fa75f557a15a1cbf31bb"}},{"Name":"runc","Version":"1.2.5","Details":{"GitCommit":"v1.2.5-0-g59923ef"}},{"Name":"docker-init","Version":"0.19.0","Details":{"GitCommit":"de40ad0"}}],"Version":"28.0.1","ApiVersion":"1.48","MinAPIVersion":"1.24","GitCommit":"bbd0a17","GoVersion":"go1.23.6","Os":"linux","Arch":"arm64","KernelVersion":"kernel","BuildTime":"2025-02-26T10:40:30.000000000+00:00"}

```

## Interaction 3: GET /v1.48/version

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
Content-Length: 801
```
### Response body recorded for playback (200: application/json):

```
{"Platform":{"Name":"Docker Engine - Community"},"Components":[{"Name":"Engine","Version":"28.0.1","Details":{"ApiVersion":"1.48","Arch":"arm64","BuildTime":"2025-02-26T10:40:30.000000000+00:00","Experimental":"false","GitCommit":"bbd0a17","GoVersion":"go1.23.6","KernelVersion":"kernel","MinAPIVersion":"1.24","Os":"linux"}},{"Name":"containerd","Version":"v1.7.25","Details":{"GitCommit":"bcc810d6b9066471b0b6fa75f557a15a1cbf31bb"}},{"Name":"runc","Version":"1.2.5","Details":{"GitCommit":"v1.2.5-0-g59923ef"}},{"Name":"docker-init","Version":"0.19.0","Details":{"GitCommit":"de40ad0"}}],"Version":"28.0.1","ApiVersion":"1.48","MinAPIVersion":"1.24","GitCommit":"bbd0a17","GoVersion":"go1.23.6","Os":"linux","Arch":"arm64","KernelVersion":"kernel","BuildTime":"2025-02-26T10:40:30.000000000+00:00"}

```

## Interaction 4: GET /v1.48/info

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
{"ID":"00000000-0000-0000-0000-000000000000","Containers":0,"ContainersRunning":0,"ContainersPaused":0,"ContainersStopped":0,"Images":0,"Driver":"overlay2","DriverStatus":[["Backing Filesystem","xfs"],["Supports d_type","true"],["Using metacopy","false"],["Native Overlay Diff","true"],["userxattr","true"]],"Plugins":{"Volume":["local"],"Network":["bridge","host","ipvlan","macvlan","null","overlay"],"Authorization":null,"Log":["awslogs","fluentd","gcplogs","gelf","journald","json-file","local","splunk","syslog"]},"MemoryLimit":true,"SwapLimit":true,"CpuCfsPeriod":true,"CpuCfsQuota":true,"CPUShares":true,"CPUSet":false,"PidsLimit":true,"IPv4Forwarding":true,"BridgeNfIptables":false,"BridgeNfIp6tables":false,"Debug":false,"NFd":0,"OomKillDisable":false,"NGoroutines":0,"SystemTime":"2000-01-01T00:00:00Z","LoggingDriver":"json-file","CgroupDriver":"cgroupfs","CgroupVersion":"2","NEventsListener":0,"KernelVersion":"kernel","OperatingSystem":"Alpine Linux v3.21 (containerized)","OSVersion":"3.21.3","OSType":"linux","Architecture":"aarch64","IndexServerAddress":"https://index.docker.io/v1/","RegistryConfig":{"IndexConfigs":{"docker.io":{"Name":"docker.io","Mirrors":[],"Secure":true,"Official":true}},"InsecureRegistryCIDRs":["::1/128","127.0.0.0/8"],"Mirrors":null},"NCPU":1,"MemTotal":1,"GenericResources":null,"DockerRootDir":"/var/lib/docker","HttpProxy":"","HttpsProxy":"","NoProxy":"","Name":"dind-host","Labels":[],"ExperimentalBuild":false,"ServerVersion":"28.0.1","Runtimes":{"io.containerd.runc.v2":{"path":"runc","status":{"org.opencontainers.runtime-spec.features":"{\"ociVersionMin\":\"1.0.0\",\"ociVersionMax\":\"1.2.0\",\"hooks\":[\"prestart\",\"createRuntime\",\"createContainer\",\"startContainer\",\"poststart\",\"poststop\"],\"mountOptions\":[\"async\",\"atime\",\"bind\",\"defaults\",\"dev\",\"diratime\",\"dirsync\",\"exec\",\"iversion\",\"lazytime\",\"loud\",\"mand\",\"noatime\",\"nodev\",\"nodiratime\",\"noexec\",\"noiversion\",\"nolazytime\",\"nomand\",\"norelatime\",\"nostrictatime\",\"nosuid\",\"nosymfollow\",\"private\",\"ratime\",\"rbind\",\"rdev\",\"rdiratime\",\"relatime\",\"remount\",\"rexec\",\"rnoatime\",\"rnodev\",\"rnodiratime\",\"rnoexec\",\"rnorelatime\",\"rnostrictatime\",\"rnosuid\",\"rnosymfollow\",\"ro\",\"rprivate\",\"rrelatime\",\"rro\",\"rrw\",\"rshared\",\"rslave\",\"rstrictatime\",\"rsuid\",\"rsymfollow\",\"runbindable\",\"rw\",\"shared\",\"silent\",\"slave\",\"strictatime\",\"suid\",\"symfollow\",\"sync\",\"tmpcopyup\",\"unbindable\"],\"linux\":{\"namespaces\":[\"cgroup\",\"ipc\",\"mount\",\"network\",\"pid\",\"time\",\"user\",\"uts\"],\"capabilities\":[\"CAP_CHOWN\",\"CAP_DAC_OVERRIDE\",\"CAP_DAC_READ_SEARCH\",\"CAP_FOWNER\",\"CAP_FSETID\",\"CAP_KILL\",\"CAP_SETGID\",\"CAP_SETUID\",\"CAP_SETPCAP\",\"CAP_LINUX_IMMUTABLE\",\"CAP_NET_BIND_SERVICE\",\"CAP_NET_BROADCAST\",\"CAP_NET_ADMIN\",\"CAP_NET_RAW\",\"CAP_IPC_LOCK\",\"CAP_IPC_OWNER\",\"CAP_SYS_MODULE\",\"CAP_SYS_RAWIO\",\"CAP_SYS_CHROOT\",\"CAP_SYS_PTRACE\",\"CAP_SYS_PACCT\",\"CAP_SYS_ADMIN\",\"CAP_SYS_BOOT\",\"CAP_SYS_NICE\",\"CAP_SYS_RESOURCE\",\"CAP_SYS_TIME\",\"CAP_SYS_TTY_CONFIG\",\"CAP_MKNOD\",\"CAP_LEASE\",\"CAP_AUDIT_WRITE\",\"CAP_AUDIT_CONTROL\",\"CAP_SETFCAP\",\"CAP_MAC_OVERRIDE\",\"CAP_MAC_ADMIN\",\"CAP_SYSLOG\",\"CAP_WAKE_ALARM\",\"CAP_BLOCK_SUSPEND\",\"CAP_AUDIT_READ\",\"CAP_PERFMON\",\"CAP_BPF\",\"CAP_CHECKPOINT_RESTORE\"],\"cgroup\":{\"v1\":true,\"v2\":true,\"systemd\":true,\"systemdUser\":true,\"rdma\":true},\"seccomp\":{\"enabled\":true,\"actions\":[\"SCMP_ACT_ALLOW\",\"SCMP_ACT_ERRNO\",\"SCMP_ACT_KILL\",\"SCMP_ACT_KILL_PROCESS\",\"SCMP_ACT_KILL_THREAD\",\"SCMP_ACT_LOG\",\"SCMP_ACT_NOTIFY\",\"SCMP_ACT_TRACE\",\"SCMP_ACT_TRAP\"],\"operators\":[\"SCMP_CMP_EQ\",\"SCMP_CMP_GE\",\"SCMP_CMP_GT\",\"SCMP_CMP_LE\",\"SCMP_CMP_LT\",\"SCMP_CMP_MASKED_EQ\",\"SCMP_CMP_NE\"],\"archs\":[\"SCMP_ARCH_AARCH64\",\"SCMP_ARCH_ARM\",\"SCMP_ARCH_MIPS\",\"SCMP_ARCH_MIPS64\",\"SCMP_ARCH_MIPS64N32\",\"SCMP_ARCH_MIPSEL\",\"SCMP_ARCH_MIPSEL64\",\"SCMP_ARCH_MIPSEL64N32\",\"SCMP_ARCH_PPC\",\"SCMP_ARCH_PPC64\",\"SCMP_ARCH_PPC64LE\",\"SCMP_ARCH_RISCV64\",\"SCMP_ARCH_S390\",\"SCMP_ARCH_S390X\",\"SCMP_ARCH_X32\",\"SCMP_ARCH_X86\",\"SCMP_ARCH_X86_64\"],\"knownFlags\":[\"SECCOMP_FILTER_FLAG_TSYNC\",\"SECCOMP_FILTER_FLAG_SPEC_ALLOW\",\"SECCOMP_FILTER_FLAG_LOG\"],\"supportedFlags\":[\"SECCOMP_FILTER_FLAG_TSYNC\",\"SECCOMP_FILTER_FLAG_SPEC_ALLOW\",\"SECCOMP_FILTER_FLAG_LOG\"]},\"apparmor\":{\"enabled\":true},\"selinux\":{\"enabled\":true},\"intelRdt\":{\"enabled\":true},\"mountExtensions\":{\"idmap\":{\"enabled\":true}}},\"annotations\":{\"io.github.seccomp.libseccomp.version\":\"2.5.4\",\"org.opencontainers.runc.checkpoint.enabled\":\"true\",\"org.opencontainers.runc.commit\":\"v1.2.5-0-g59923ef\",\"org.opencontainers.runc.version\":\"1.2.5\"},\"potentiallyUnsafeConfigAnnotations\":[\"bundle\",\"org.systemd.property.\",\"org.criu.config\"]}"}},"runc":{"path":"runc","status":{"org.opencontainers.runtime-spec.features":"{\"ociVersionMin\":\"1.0.0\",\"ociVersionMax\":\"1.2.0\",\"hooks\":[\"prestart\",\"createRuntime\",\"createContainer\",\"startContainer\",\"poststart\",\"poststop\"],\"mountOptions\":[\"async\",\"atime\",\"bind\",\"defaults\",\"dev\",\"diratime\",\"dirsync\",\"exec\",\"iversion\",\"lazytime\",\"loud\",\"mand\",\"noatime\",\"nodev\",\"nodiratime\",\"noexec\",\"noiversion\",\"nolazytime\",\"nomand\",\"norelatime\",\"nostrictatime\",\"nosuid\",\"nosymfollow\",\"private\",\"ratime\",\"rbind\",\"rdev\",\"rdiratime\",\"relatime\",\"remount\",\"rexec\",\"rnoatime\",\"rnodev\",\"rnodiratime\",\"rnoexec\",\"rnorelatime\",\"rnostrictatime\",\"rnosuid\",\"rnosymfollow\",\"ro\",\"rprivate\",\"rrelatime\",\"rro\",\"rrw\",\"rshared\",\"rslave\",\"rstrictatime\",\"rsuid\",\"rsymfollow\",\"runbindable\",\"rw\",\"shared\",\"silent\",\"slave\",\"strictatime\",\"suid\",\"symfollow\",\"sync\",\"tmpcopyup\",\"unbindable\"],\"linux\":{\"namespaces\":[\"cgroup\",\"ipc\",\"mount\",\"network\",\"pid\",\"time\",\"user\",\"uts\"],\"capabilities\":[\"CAP_CHOWN\",\"CAP_DAC_OVERRIDE\",\"CAP_DAC_READ_SEARCH\",\"CAP_FOWNER\",\"CAP_FSETID\",\"CAP_KILL\",\"CAP_SETGID\",\"CAP_SETUID\",\"CAP_SETPCAP\",\"CAP_LINUX_IMMUTABLE\",\"CAP_NET_BIND_SERVICE\",\"CAP_NET_BROADCAST\",\"CAP_NET_ADMIN\",\"CAP_NET_RAW\",\"CAP_IPC_LOCK\",\"CAP_IPC_OWNER\",\"CAP_SYS_MODULE\",\"CAP_SYS_RAWIO\",\"CAP_SYS_CHROOT\",\"CAP_SYS_PTRACE\",\"CAP_SYS_PACCT\",\"CAP_SYS_ADMIN\",\"CAP_SYS_BOOT\",\"CAP_SYS_NICE\",\"CAP_SYS_RESOURCE\",\"CAP_SYS_TIME\",\"CAP_SYS_TTY_CONFIG\",\"CAP_MKNOD\",\"CAP_LEASE\",\"CAP_AUDIT_WRITE\",\"CAP_AUDIT_CONTROL\",\"CAP_SETFCAP\",\"CAP_MAC_OVERRIDE\",\"CAP_MAC_ADMIN\",\"CAP_SYSLOG\",\"CAP_WAKE_ALARM\",\"CAP_BLOCK_SUSPEND\",\"CAP_AUDIT_READ\",\"CAP_PERFMON\",\"CAP_BPF\",\"CAP_CHECKPOINT_RESTORE\"],\"cgroup\":{\"v1\":true,\"v2\":true,\"systemd\":true,\"systemdUser\":true,\"rdma\":true},\"seccomp\":{\"enabled\":true,\"actions\":[\"SCMP_ACT_ALLOW\",\"SCMP_ACT_ERRNO\",\"SCMP_ACT_KILL\",\"SCMP_ACT_KILL_PROCESS\",\"SCMP_ACT_KILL_THREAD\",\"SCMP_ACT_LOG\",\"SCMP_ACT_NOTIFY\",\"SCMP_ACT_TRACE\",\"SCMP_ACT_TRAP\"],\"operators\":[\"SCMP_CMP_EQ\",\"SCMP_CMP_GE\",\"SCMP_CMP_GT\",\"SCMP_CMP_LE\",\"SCMP_CMP_LT\",\"SCMP_CMP_MASKED_EQ\",\"SCMP_CMP_NE\"],\"archs\":[\"SCMP_ARCH_AARCH64\",\"SCMP_ARCH_ARM\",\"SCMP_ARCH_MIPS\",\"SCMP_ARCH_MIPS64\",\"SCMP_ARCH_MIPS64N32\",\"SCMP_ARCH_MIPSEL\",\"SCMP_ARCH_MIPSEL64\",\"SCMP_ARCH_MIPSEL64N32\",\"SCMP_ARCH_PPC\",\"SCMP_ARCH_PPC64\",\"SCMP_ARCH_PPC64LE\",\"SCMP_ARCH_RISCV64\",\"SCMP_ARCH_S390\",\"SCMP_ARCH_S390X\",\"SCMP_ARCH_X32\",\"SCMP_ARCH_X86\",\"SCMP_ARCH_X86_64\"],\"knownFlags\":[\"SECCOMP_FILTER_FLAG_TSYNC\",\"SECCOMP_FILTER_FLAG_SPEC_ALLOW\",\"SECCOMP_FILTER_FLAG_LOG\"],\"supportedFlags\":[\"SECCOMP_FILTER_FLAG_TSYNC\",\"SECCOMP_FILTER_FLAG_SPEC_ALLOW\",\"SECCOMP_FILTER_FLAG_LOG\"]},\"apparmor\":{\"enabled\":true},\"selinux\":{\"enabled\":true},\"intelRdt\":{\"enabled\":true},\"mountExtensions\":{\"idmap\":{\"enabled\":true}}},\"annotations\":{\"io.github.seccomp.libseccomp.version\":\"2.5.4\",\"org.opencontainers.runc.checkpoint.enabled\":\"true\",\"org.opencontainers.runc.commit\":\"v1.2.5-0-g59923ef\",\"org.opencontainers.runc.version\":\"1.2.5\"},\"potentiallyUnsafeConfigAnnotations\":[\"bundle\",\"org.systemd.property.\",\"org.criu.config\"]}"}}},"DefaultRuntime":"runc","Swarm":{"NodeID":"","NodeAddr":"","LocalNodeState":"inactive","ControlAvailable":false,"Error":"","RemoteManagers":null},"LiveRestoreEnabled":false,"Isolation":"","InitBinary":"docker-init","ContainerdCommit":{"ID":"bcc810d6b9066471b0b6fa75f557a15a1cbf31bb","Expected":"bcc810d6b9066471b0b6fa75f557a15a1cbf31bb"},"RuncCommit":{"ID":"v1.2.5-0-g59923ef","Expected":"v1.2.5-0-g59923ef"},"InitCommit":{"ID":"de40ad0","Expected":"de40ad0"},"SecurityOptions":["name=seccomp,profile=builtin","name=cgroupns"],"ProductLicense":"Community Engine","CDISpecDirs":[],"Containerd":{"Address":"/var/run/docker/containerd/containerd.sock","Namespaces":{"Containers":"moby","Plugins":"plugins.moby"}},"Warnings":["[DEPRECATION NOTICE]: API is accessible on http://0.0.0.0:2375 without encryption.\n         Access to the remote API is equivalent to root access on the host. Refer\n         to the 'Docker daemon attack surface' section in the documentation for\n         more information: https://docs.docker.com/go/attack-surface/\nIn future versions this will be a hard failure preventing the daemon from starting! Learn more at: https://docs.docker.com/go/api-security/","WARNING: No cpuset support"]}

```

## Interaction 5: GET /v1.99/version

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
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 84
```
### Response body recorded for playback (400: application/json):

```
{"message":"client version 1.99 is too new. Maximum supported API version is 1.48"}

```

## Interaction 6: GET /v1.12/info

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
Ostype: linux
Server: Docker/28.0.1 (linux)
Content-Length: 131
```
### Response body recorded for playback (400: application/json):

```
{"message":"client version 1.12 is too old. Minimum supported API version is 1.24, please upgrade your client to a newer version"}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–6 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–6 |
| normalized | whole recording | `(?<!sha256:)(?<![0-9a-f])[0-9a-f]{64}(?![0-9a-f])` | `{{docker-id-N}}` | none |
| collapsed | whole recording | `(?<="Created":"\|"StartedAt":"\|"FinishedAt":"\|"CreatedAt":"\|"LastTagTime":"\|"SystemTime":")[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 4 |
| collapsed | whole recording | `"ID":"[0-9a-f-]{36}"` | `"ID":"00000000-0000-0000-0000-000000000000"` | 4 |
| collapsed | whole recording | `"Name":"[0-9a-f]{12}"` | `"Name":"dind-host"` | 4 |
| collapsed | whole recording | `"NFd":[0-9]+,"OomKillDisable":(true\|false),"NGoroutines":[0-9]+` | `"NFd":0,"OomKillDisable":false,"NGoroutines":0` | 4 |
| collapsed | whole recording | `"Containers":[0-9]+,"ContainersRunning":[0-9]+,"ContainersPaused":[0-9]+,"ContainersStopped":[0-9]+,"Images":[0-9]+` | `"Containers":0,"ContainersRunning":0,"ContainersPaused":0,"ContainersStopped":0,"Images":0` | 4 |
| collapsed | whole recording | `"NCPU":[0-9]+,"MemTotal":[0-9]+` | `"NCPU":1,"MemTotal":1` | 4 |
| collapsed | whole recording | `"KernelVersion":"[^"]*"` | `"KernelVersion":"kernel"` | 2–4 |
| collapsed | whole recording | `"[0-9a-f]{12}","tcae-host"` | `"container-short-id","tcae-host"` | none |
| collapsed | whole recording | `- container [0-9a-f]{12} is using` | `- container container-short-id is using` | none |
| collapsed | whole recording | `"Created":[0-9]{10},"Ports"` | `"Created":946684800,"Ports"` | none |
| collapsed | whole recording | `"MacAddress":"[0-9a-f]{2}(:[0-9a-f]{2}){5}"` | `"MacAddress":"02:42:00:00:00:00"` | none |
| collapsed | whole recording | `"Pid":[1-9][0-9]*` | `"Pid":4242` | none |
| collapsed | whole recording | `/netns/[0-9a-f]{12}` | `/netns/sandbox` | none |
| collapsed | whole recording | `"Processes":\[\[.*\]\]` | `"Processes":[["root","4242","4241","0","00:00","pts/0","00:00:00","sleep 300"]]` | none |
