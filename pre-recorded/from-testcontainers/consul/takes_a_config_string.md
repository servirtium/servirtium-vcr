## Interaction 0: GET /v1/status/leader

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
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 17
```
### Response body recorded for playback (200: application/json):

```
"127.0.0.1:8300"

```

## Interaction 1: PUT /v1/kv/tcae/greeting

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 12
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
hello consul
```
### Response headers recorded for playback:

```
Content-Type: application/json
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 5
```
### Response body recorded for playback (200: application/json):

```
true

```

## Interaction 2: GET /v1/kv/tcae/greeting?raw

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
Content-Length: 12
Content-Security-Policy: sandbox
Content-Type: text/plain
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
X-Consul-Index: 1
X-Consul-Knownleader: true
X-Consul-Lastcontact: 0
X-Consul-Query-Backend: blocking-query
X-Content-Type-Options: nosniff
```
### Response body recorded for playback (200: text/plain):

```
hello consul
```

## Interaction 3: PUT /v1/agent/service/register

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 39
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"ID":"abcd","Name":"WithConfigString"}
```
### Response headers recorded for playback:

```
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: GET /v1/agent/services

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
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 314
```
### Response body recorded for playback (200: application/json):

```
{
    "abcd": {
        "ID": "abcd",
        "Service": "WithConfigString",
        "Tags": [],
        "Meta": {},
        "Port": 0,
        "Address": "",
        "Weights": {
            "Passing": 1,
            "Warning": 1
        },
        "EnableTagOverride": false,
        "Datacenter": "dc1"
    }
}

```

## Interaction 5: PUT /v1/agent/service/deregister/abcd

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
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 6: GET /v1/agent/services

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
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Content-Length: 3
```
### Response body recorded for playback (200: application/json):

```
{}

```

## Interaction 7: GET /v1/agent/self

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
Vary: Accept-Encoding
X-Consul-Default-Acl-Policy: allow
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: application/json):

```
{
    "Config": {
        "Datacenter": "dc1",
        "PrimaryDatacenter": "dc1",
        "NodeName": "tcae-string-node",
        "NodeID": "{{node-id-1}}",
        "Revision": "a8dca240",
        "Server": true,
        "Version": "1.15.10",
        "BuildDate": "2024-02-13T18:30:20Z"
    },
    "DebugConfig": {
        "ACLEnableKeyListPolicy": false,
        "ACLInitialManagementToken": "hidden",
        "ACLResolverSettings": {
            "ACLDefaultPolicy": "allow",
            "ACLDownPolicy": "extend-cache",
            "ACLPolicyTTL": "30s",
            "ACLRoleTTL": "0s",
            "ACLTokenTTL": "30s",
            "ACLsEnabled": false,
            "Datacenter": "dc1",
            "EnterpriseMeta": {},
            "NodeName": "tcae-string-node"
        },
        "ACLTokenReplication": false,
        "ACLTokens": {
            "ACLAgentRecoveryToken": "hidden",
            "ACLAgentToken": "hidden",
            "ACLConfigFileRegistrationToken": "hidden",
            "ACLDefaultToken": "hidden",
            "ACLReplicationToken": "hidden",
            "DataDir": "/consul/data",
            "EnablePersistence": false,
            "EnterpriseConfig": {}
        },
        "ACLsEnabled": false,
        "AEInterval": "1m0s",
        "AdvertiseAddrLAN": "127.0.0.1",
        "AdvertiseAddrWAN": "127.0.0.1",
        "AdvertiseReconnectTimeout": "0s",
        "AllowWriteHTTPFrom": [],
        "AutoConfig": {
            "Authorizer": {
                "AllowReuse": false,
                "AuthMethod": {
                    "ACLAuthMethodEnterpriseFields": {},
                    "Config": {
                        "BoundAudiences": null,
                        "BoundIssuer": "",
                        "ClaimMappings": null,
                        "ClockSkewLeeway": 0,
                        "ExpirationLeeway": 0,
                        "JWKSCACert": "",
                        "JWKSURL": "",
                        "JWTSupportedAlgs": null,
                        "JWTValidationPubKeys": null,
                        "ListClaimMappings": null,
                        "NotBeforeLeeway": 0,
                        "OIDCDiscoveryCACert": "",
                        "OIDCDiscoveryURL": ""
                    },
                    "Description": "",
                    "DisplayName": "",
                    "EnterpriseMeta": {},
                    "MaxTokenTTL": "0s",
                    "Name": "Auto Config Authorizer",
                    "RaftIndex": {
                        "CreateIndex": 0,
                        "ModifyIndex": 0
                    },
                    "TokenLocality": "",
                    "Type": "jwt"
                },
                "ClaimAssertions": [],
                "Enabled": false
            },
            "DNSSANs": [],
            "Enabled": false,
            "IPSANs": [],
            "IntroToken": "hidden",
            "IntroTokenFile": "",
            "ServerAddresses": []
        },
        "AutoEncryptAllowTLS": false,
        "AutoEncryptDNSSAN": [],
        "AutoEncryptIPSAN": [],
        "AutoEncryptTLS": false,
        "AutoReloadConfig": false,
        "AutoReloadConfigCoalesceInterval": "1s",
        "AutopilotCleanupDeadServers": true,
        "AutopilotDisableUpgradeMigration": false,
        "AutopilotLastContactThreshold": "200ms",
        "AutopilotMaxTrailingLogs": 250,
        "AutopilotMinQuorum": 0,
        "AutopilotRedundancyZoneTag": "",
        "AutopilotServerStabilizationTime": "10s",
        "AutopilotUpgradeVersionTag": "",
        "BindAddr": "127.0.0.1",
        "Bootstrap": false,
        "BootstrapExpect": 0,
        "BuildDate": "2024-02-13 18:30:20 +0000 UTC",
        "Cache": {
            "EntryFetchMaxBurst": 2,
            "EntryFetchRate": 1.7976931348623157e+308,
            "Logger": null
        },
        "CheckDeregisterIntervalMin": "1m0s",
        "CheckOutputMaxSize": 4096,
        "CheckReapInterval": "30s",
        "CheckUpdateInterval": "5m0s",
        "Checks": [],
        "ClientAddrs": [
            "0.0.0.0"
        ],
        "Cloud": {
            "AuthURL": "",
            "ClientID": "",
            "ClientSecret": "hidden",
            "Hostname": "",
            "ManagementToken": "hidden",
            "NodeID": "",
            "NodeName": "tcae-string-node",
            "ResourceID": "",
            "ScadaAddress": "",
            "TLSConfig": null
        },
        "ConfigEntryBootstrap": [],
        "ConnectCAConfig": {},
        "ConnectCAProvider": "",
        "ConnectEnabled": true,
        "ConnectMeshGatewayWANFederationEnabled": false,
        "ConnectSidecarMaxPort": 21255,
        "ConnectSidecarMinPort": 21000,
        "ConnectTestCALeafRootChangeSpread": "0s",
        "ConsulCoordinateUpdateBatchSize": 128,
        "ConsulCoordinateUpdateMaxBatches": 5,
        "ConsulCoordinateUpdatePeriod": "100ms",
        "ConsulRaftElectionTimeout": "52ms",
        "ConsulRaftHeartbeatTimeout": "35ms",
        "ConsulRaftLeaderLeaseTimeout": "20ms",
        "ConsulServerHealthInterval": "10ms",
        "DNSARecordLimit": 0,
        "DNSAddrs": [
            "tcp://0.0.0.0:8600",
            "udp://0.0.0.0:8600"
        ],
        "DNSAllowStale": true,
        "DNSAltDomain": "",
        "DNSCacheMaxAge": "0s",
        "DNSDisableCompression": false,
        "DNSDomain": "consul.",
        "DNSEnableTruncate": false,
        "DNSMaxStale": "87600h0m0s",
        "DNSNodeMetaTXT": true,
        "DNSNodeTTL": "0s",
        "DNSOnlyPassing": false,
        "DNSPort": 8600,
        "DNSRecursorStrategy": "sequential",
        "DNSRecursorTimeout": "2s",
        "DNSRecursors": [],
        "DNSSOA": {
            "Expire": 86400,
            "Minttl": 0,
            "Refresh": 3600,
            "Retry": 600
        },
        "DNSServiceTTL": {},
        "DNSUDPAnswerLimit": 3,
        "DNSUseCache": false,
        "DataDir": "/consul/data",
        "Datacenter": "dc1",
        "DefaultQueryTime": "5m0s",
        "DevMode": true,
        "DisableAnonymousSignature": true,
        "DisableCoordinates": false,
        "DisableHTTPUnprintableCharFilter": false,
        "DisableHostNodeID": true,
        "DisableKeyringFile": true,
        "DisableRemoteExec": true,
        "DisableUpdateCheck": false,
        "DiscardCheckOutput": false,
        "DiscoveryMaxStale": "0s",
        "EnableAgentTLSForChecks": false,
        "EnableCentralServiceConfig": true,
        "EnableDebug": true,
        "EnableLocalScriptChecks": false,
        "EnableRemoteScriptChecks": false,
        "EncryptKey": "hidden",
        "EnterpriseRuntimeConfig": {},
        "ExposeMaxPort": 21755,
        "ExposeMinPort": 21500,
        "GRPCAddrs": [
            "tcp://0.0.0.0:8502"
        ],
        "GRPCKeepaliveInterval": "30s",
        "GRPCKeepaliveTimeout": "20s",
        "GRPCPort": 8502,
        "GRPCTLSAddrs": [
            "tcp://0.0.0.0:8503"
        ],
        "GRPCTLSPort": 8503,
        "GossipLANGossipInterval": "100ms",
        "GossipLANGossipNodes": 3,
        "GossipLANProbeInterval": "100ms",
        "GossipLANProbeTimeout": "100ms",
        "GossipLANRetransmitMult": 4,
        "GossipLANSuspicionMult": 3,
        "GossipWANGossipInterval": "100ms",
        "GossipWANGossipNodes": 3,
        "GossipWANProbeInterval": "100ms",
        "GossipWANProbeTimeout": "100ms",
        "GossipWANRetransmitMult": 4,
        "GossipWANSuspicionMult": 3,
        "HTTPAddrs": [
            "tcp://0.0.0.0:8500"
        ],
        "HTTPBlockEndpoints": [],
        "HTTPMaxConnsPerClient": 200,
        "HTTPMaxHeaderBytes": 0,
        "HTTPPort": 8500,
        "HTTPResponseHeaders": {},
        "HTTPSAddrs": [],
        "HTTPSHandshakeTimeout": "5s",
        "HTTPSPort": -1,
        "HTTPUseCache": true,
        "KVMaxValueSize": 524288,
        "LeaveDrainTime": "5s",
        "LeaveOnTerm": false,
        "LocalProxyConfigResyncInterval": "30s",
        "Logging": {
            "EnableSyslog": false,
            "LogFilePath": "",
            "LogJSON": false,
            "LogLevel": "DEBUG",
            "LogRotateBytes": 0,
            "LogRotateDuration": "0s",
            "LogRotateMaxFiles": 0,
            "Name": "",
            "SyslogFacility": "LOCAL0"
        },
        "MaxQueryTime": "10m0s",
        "NodeID": "{{node-id-1}}",
        "NodeMeta": {},
        "NodeName": "tcae-string-node",
        "PeeringEnabled": true,
        "PeeringTestAllowPeerRegistrations": false,
        "PidFile": "",
        "PrimaryDatacenter": "dc1",
        "PrimaryGateways": [],
        "PrimaryGatewaysInterval": "30s",
        "RPCAdvertiseAddr": "tcp://127.0.0.1:8300",
        "RPCBindAddr": "tcp://127.0.0.1:8300",
        "RPCClientTimeout": "1m0s",
        "RPCConfig": {
            "EnableStreaming": true
        },
        "RPCHandshakeTimeout": "5s",
        "RPCHoldTimeout": "7s",
        "RPCMaxBurst": 1000,
        "RPCMaxConnsPerClient": 100,
        "RPCProtocol": 2,
        "RPCRateLimit": 1.7976931348623157e+308,
        "RaftLogStoreConfig": {
            "Backend": "boltdb",
            "BoltDB": {
                "NoFreelistSync": false
            },
            "DisableLogCache": false,
            "Verification": {
                "Enabled": false,
                "Interval": "0s"
            },
            "WAL": {
                "SegmentSize": 67108864
            }
        },
        "RaftProtocol": 3,
        "RaftSnapshotInterval": "30s",
        "RaftSnapshotThreshold": 16384,
        "RaftTrailingLogs": 10240,
        "ReadReplica": false,
        "ReconnectTimeoutLAN": "0s",
        "ReconnectTimeoutWAN": "0s",
        "RejoinAfterLeave": false,
        "Reporting": {
            "License": {
                "Enabled": false
            }
        },
        "RequestLimitsMode": 0,
        "RequestLimitsReadRate": 1.7976931348623157e+308,
        "RequestLimitsWriteRate": 1.7976931348623157e+308,
        "RetryJoinIntervalLAN": "30s",
        "RetryJoinIntervalWAN": "30s",
        "RetryJoinLAN": [],
        "RetryJoinMaxAttemptsLAN": 0,
        "RetryJoinMaxAttemptsWAN": 0,
        "RetryJoinWAN": [],
        "Revision": "a8dca240",
        "SegmentLimit": 64,
        "SegmentName": "",
        "SegmentNameLimit": 64,
        "Segments": [],
        "SerfAdvertiseAddrLAN": "tcp://127.0.0.1:8301",
        "SerfAdvertiseAddrWAN": "tcp://127.0.0.1:8302",
        "SerfAllowedCIDRsLAN": [],
        "SerfAllowedCIDRsWAN": [],
        "SerfBindAddrLAN": "tcp://127.0.0.1:8301",
        "SerfBindAddrWAN": "tcp://127.0.0.1:8302",
        "SerfPortLAN": 8301,
        "SerfPortWAN": 8302,
        "ServerMode": true,
        "ServerName": "",
        "ServerPort": 8300,
        "ServerRejoinAgeMax": "168h0m0s",
        "Services": [],
        "SessionTTLMin": "0s",
        "SkipLeaveOnInt": true,
        "StaticRuntimeConfig": {
            "EncryptVerifyIncoming": true,
            "EncryptVerifyOutgoing": true
        },
        "SyncCoordinateIntervalMin": "15s",
        "SyncCoordinateRateTarget": 64,
        "TLS": {
            "AutoTLS": false,
            "Domain": "consul.",
            "EnableAgentTLSForChecks": false,
            "GRPC": {
                "CAFile": "",
                "CAPath": "",
                "CertFile": "",
                "CipherSuites": [],
                "KeyFile": "hidden",
                "TLSMinVersion": "TLSv1_2",
                "UseAutoCert": false,
                "VerifyIncoming": false,
                "VerifyOutgoing": false,
                "VerifyServerHostname": false
            },
            "HTTPS": {
                "CAFile": "",
                "CAPath": "",
                "CertFile": "",
                "CipherSuites": [],
                "KeyFile": "hidden",
                "TLSMinVersion": "TLSv1_2",
                "UseAutoCert": false,
                "VerifyIncoming": false,
                "VerifyOutgoing": false,
                "VerifyServerHostname": false
            },
            "InternalRPC": {
                "CAFile": "",
                "CAPath": "",
                "CertFile": "",
                "CipherSuites": [],
                "KeyFile": "hidden",
                "TLSMinVersion": "TLSv1_2",
                "UseAutoCert": false,
                "VerifyIncoming": false,
                "VerifyOutgoing": false,
                "VerifyServerHostname": false
            },
            "NodeName": "tcae-string-node",
            "ServerMode": true,
            "ServerName": ""
        },
        "TaggedAddresses": {
            "lan": "127.0.0.1",
            "lan_ipv4": "127.0.0.1",
            "wan": "127.0.0.1",
            "wan_ipv4": "127.0.0.1"
        },
        "Telemetry": {
            "AllowedPrefixes": [],
            "BlockedPrefixes": [
                "consul.rpc.server.call"
            ],
            "CirconusAPIApp": "",
            "CirconusAPIToken": "hidden",
            "CirconusAPIURL": "",
            "CirconusBrokerID": "",
            "CirconusBrokerSelectTag": "",
            "CirconusCheckDisplayName": "",
            "CirconusCheckForceMetricActivation": "",
            "CirconusCheckID": "",
            "CirconusCheckInstanceID": "",
            "CirconusCheckSearchTag": "",
            "CirconusCheckTags": "",
            "CirconusSubmissionInterval": "",
            "CirconusSubmissionURL": "",
            "Disable": false,
            "DisableHostname": false,
            "DogstatsdAddr": "",
            "DogstatsdTags": [],
            "EnableHostMetrics": false,
            "FilterDefault": true,
            "MetricsPrefix": "consul",
            "PrometheusOpts": {
                "CounterDefinitions": [],
                "Expiration": "0s",
                "GaugeDefinitions": [],
                "Name": "consul",
                "Registerer": null,
                "SummaryDefinitions": []
            },
            "RetryFailedConfiguration": true,
            "StatsdAddr": "",
            "StatsiteAddr": ""
        },
        "TranslateWANAddrs": false,
        "TxnMaxReqLen": 524288,
        "UIConfig": {
            "ContentPath": "/ui/",
            "DashboardURLTemplates": {},
            "Dir": "",
            "Enabled": true,
            "HCPEnabled": false,
            "MetricsProvider": "",
            "MetricsProviderFiles": [],
            "MetricsProviderOptionsJSON": "",
            "MetricsProxy": {
                "AddHeaders": [],
                "BaseURL": "",
                "PathAllowlist": []
            }
        },
        "UnixSocketGroup": "",
        "UnixSocketMode": "",
        "UnixSocketUser": "",
        "UseStreamingBackend": true,
        "Version": "1.15.10",
        "VersionMetadata": "",
        "VersionPrerelease": "",
        "Watches": [],
        "XDSUpdateRateLimit": 250
    },
    "Coord": {
        "Vec": [
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0
        ],
        "Error": 1.5,
        "Adjustment": 0,
        "Height": 0.00001
    },
    "Member": {
        "Name": "tcae-string-node",
        "Addr": "127.0.0.1",
        "Port": 8301,
        "Tags": {
            "acls": "0",
            "build": "1.15.10:a8dca240",
            "dc": "dc1",
            "ft_fs": "1",
            "ft_si": "1",
            "grpc_port": "8502",
            "grpc_tls_port": "8503",
            "id": "{{node-id-1}}",
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
    },
    "Stats": {
        "agent": {
            "check_monitors": "0",
            "check_ttls": "0",
            "checks": "0",
            "services": "0"
        },
        "build": {
            "prerelease": "",
            "revision": "a8dca240",
            "version": "1.15.10",
            "version_metadata": ""
        },
        "consul": {
            "acl": "disabled",
            "bootstrap": "false",
            "known_datacenters": "1",
            "leader": "true",
            "leader_addr": "127.0.0.1:8300",
            "server": "true"
        },
        "raft": {
            "applied_index": "0",
            "commit_index": "0",
            "fsm_pending": "0",
            "last_contact": "0",
            "last_log_index": "0",
            "last_log_term": "0",
            "last_snapshot_index": "0",
            "last_snapshot_term": "0",
            "latest_configuration": "[{Suffrage:Voter ID:{{node-id-1}} Address:127.0.0.1:8300}]",
            "latest_configuration_index": "0",
            "num_peers": "0",
            "protocol_version": "3",
            "protocol_version_max": "3",
            "protocol_version_min": "0",
            "snapshot_version_max": "1",
            "snapshot_version_min": "0",
            "state": "Leader",
            "term": "0"
        },
        "runtime": {
            "arch": "ARCH",
            "cpu_count": "0",
            "goroutines": "0",
            "max_procs": "0",
            "os": "linux",
            "version": "go1.21.7"
        },
        "serf_lan": {
            "coordinate_resets": "0",
            "encrypted": "false",
            "event_queue": "0",
            "event_time": "0",
            "failed": "0",
            "health_score": "0",
            "intent_queue": "0",
            "left": "0",
            "member_time": "0",
            "members": "1",
            "query_queue": "0",
            "query_time": "0"
        },
        "serf_wan": {
            "coordinate_resets": "0",
            "encrypted": "false",
            "event_queue": "0",
            "event_time": "0",
            "failed": "0",
            "health_score": "0",
            "intent_queue": "0",
            "left": "0",
            "member_time": "0",
            "members": "1",
            "query_queue": "0",
            "query_time": "0"
        }
    },
    "Meta": {
        "consul-network-segment": ""
    },
    "xDS": {
        "SupportedProxies": {
            "envoy": [
                "1.28.1",
                "1.27.3",
                "1.26.7",
                "1.25.11",
                "1.24.12",
                "1.23.12",
                "1.22.11"
            ]
        },
        "Port": 8503,
        "Ports": {
            "Plaintext": 8502,
            "TLS": 8503
        }
    }
}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–7 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–7 |
| collapsed | whole recording | `X-Consul-Index: [0-9]+` | `X-Consul-Index: 1` | 2 |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{node-id-N}}` | 7 |
| collapsed | whole recording | `"applied_index": "[0-9]+"` | `"applied_index": "0"` | 7 |
| collapsed | whole recording | `"commit_index": "[0-9]+"` | `"commit_index": "0"` | 7 |
| collapsed | whole recording | `"last_log_index": "[0-9]+"` | `"last_log_index": "0"` | 7 |
| collapsed | whole recording | `"last_log_term": "[0-9]+"` | `"last_log_term": "0"` | 7 |
| collapsed | whole recording | `"term": "[0-9]+"` | `"term": "0"` | 7 |
| collapsed | whole recording | `"last_contact": "[0-9]+"` | `"last_contact": "0"` | 7 |
| collapsed | whole recording | `"fsm_pending": "[0-9]+"` | `"fsm_pending": "0"` | 7 |
| collapsed | whole recording | `"goroutines": "[0-9]+"` | `"goroutines": "0"` | 7 |
| collapsed | whole recording | `"cpu_count": "[0-9]+"` | `"cpu_count": "0"` | 7 |
| collapsed | whole recording | `"max_procs": "[0-9]+"` | `"max_procs": "0"` | 7 |
| collapsed | whole recording | `"event_queue": "[0-9]+"` | `"event_queue": "0"` | 7 |
| collapsed | whole recording | `"event_time": "[0-9]+"` | `"event_time": "0"` | 7 |
| collapsed | whole recording | `"member_time": "[0-9]+"` | `"member_time": "0"` | 7 |
| collapsed | whole recording | `"query_time": "[0-9]+"` | `"query_time": "0"` | 7 |
| collapsed | whole recording | `"intent_queue": "[0-9]+"` | `"intent_queue": "0"` | 7 |
| collapsed | whole recording | `"query_queue": "[0-9]+"` | `"query_queue": "0"` | 7 |
| collapsed | whole recording | `"health_score": "[0-9]+"` | `"health_score": "0"` | 7 |
| collapsed | whole recording | `"coordinate_resets": "[0-9]+"` | `"coordinate_resets": "0"` | 7 |
| collapsed | whole recording | `"arch": "[a-z0-9_]+"` | `"arch": "ARCH"` | 7 |
