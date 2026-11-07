## Interaction 0: GET /api-doc

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
Content-Length: 1389
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
{"apiVersion": "0.0.1", "swaggerVersion": "1.2", "apis": [{"path": "/system", "description": "The system related API"},{"path": "/error_injection", "description": "The error injection API"},{"path": "/storage_proxy", "description": "The storage proxy API"},{"path": "/storage_service", "description": "The storage service API"},{"path": "/endpoint_snitch_info", "description": "The endpoint snitch info API"},{"path": "/task_manager", "description": "The task manager API"},{"path": "/messaging_service", "description": "The messaging service API"},{"path": "/gossiper", "description": "The gossiper API"},{"path": "/failure_detector", "description": "The failure detector API"},{"path": "/raft", "description": "The Raft API"},{"path": "/compaction_manager", "description": "The Compaction manager API"},{"path": "/column_family", "description": "The column family API"},{"path": "/stream_manager", "description": "The stream manager API"},{"path": "/tasks", "description": "The tasks API"},{"path": "/cache_service", "description": "The cache service API"},{"path": "/authorization_cache", "description": "The authorization cache API"},{"path": "/hinted_handoff", "description": "The hinted handoff API"},{"path": "/lsa", "description": "Log-structured allocator API"},{"path": "/commitlog", "description": "The commit log API"},{"path": "/collectd", "description": "The collectd API"}]}
```

## Interaction 1: GET /api-doc

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
Content-Length: 1389
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
{"apiVersion": "0.0.1", "swaggerVersion": "1.2", "apis": [{"path": "/system", "description": "The system related API"},{"path": "/error_injection", "description": "The error injection API"},{"path": "/storage_proxy", "description": "The storage proxy API"},{"path": "/storage_service", "description": "The storage service API"},{"path": "/endpoint_snitch_info", "description": "The endpoint snitch info API"},{"path": "/task_manager", "description": "The task manager API"},{"path": "/messaging_service", "description": "The messaging service API"},{"path": "/gossiper", "description": "The gossiper API"},{"path": "/failure_detector", "description": "The failure detector API"},{"path": "/raft", "description": "The Raft API"},{"path": "/compaction_manager", "description": "The Compaction manager API"},{"path": "/column_family", "description": "The column family API"},{"path": "/stream_manager", "description": "The stream manager API"},{"path": "/tasks", "description": "The tasks API"},{"path": "/cache_service", "description": "The cache service API"},{"path": "/authorization_cache", "description": "The authorization cache API"},{"path": "/hinted_handoff", "description": "The hinted handoff API"},{"path": "/lsa", "description": "Log-structured allocator API"},{"path": "/commitlog", "description": "The commit log API"},{"path": "/collectd", "description": "The collectd API"}]}
```

## Interaction 2: GET /api-doc/system/

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
Transfer-Encoding: chunked
Content-Type: application/json
Server: Seastar httpd
```
### Response body recorded for playback (200: application/json):

```
{
   "apiVersion":"0.0.1",
   "swaggerVersion":"1.2",
   "basePath":"http://{{request.host}}",
   "resourcePath":"/system",
   "produces":[
      "application/json"
   ],
   "apis":[
      {
         "path":"/system/logger",
         "operations":[
            {
               "method":"GET",
               "summary":"Get all logger names",
               "type":"array",
               "items":{
                  "type":"string"
               },
               "nickname":"get_all_logger_names",
               "produces":[
                  "application/json"
               ],
               "parameters":[
               ]
            },
            {
               "method":"POST",
               "summary":"Set all logger level",
               "type":"void",
               "nickname":"set_all_logger_level",
               "produces":[
                  "application/json"
               ],
               "parameters":[
                  {
                     "name":"level",
                     "description":"The new log level",
                     "required":true,
                     "allowMultiple":false,
                     "type":"string",
                     "enum":[
                        "error",
                        "warn",
                        "info",
                        "debug",
                        "trace"
                     ],
                     "paramType":"query"
                  }
               ]
            }
         ]
      },
      {
         "path":"/system/log",
         "operations":[
            {
               "method":"POST",
               "summary":"Write a message to the Scylla log",
               "type":"void",
               "nickname":"write_log_message",
               "produces":[
                  "application/json"
               ],
               "parameters":[
                  {
                     "name":"message",
                     "description":"The message to write to the log",
                     "required":true,
                     "allowMultiple":false,
                     "type":"string",
                     "paramType":"query"
                  },
                  {
                     "name":"level",
                     "description":"The logging level to use",
                     "required":true,
                     "allowMultiple":false,
                     "type":"string",
                     "enum":[
                        "error",
                        "warn",
                        "info",
                        "debug",
                        "trace"
                     ],
                     "paramType":"query"
                  }
               ]
            }
         ]
      },
      {
         "path":"/system/drop_sstable_caches",
         "operations":[
            {
               "method":"POST",
               "summary":"Drop in-memory caches for data which is in sstables",
               "type":"void",
               "nickname":"drop_sstable_caches",
               "produces":[
                  "application/json"
               ],
               "parameters":[
               ]
            }
         ]
      },
      {
         "path":"/system/uptime_ms",
         "operations":[
            {
               "method":"GET",
               "summary":"Get system uptime, in milliseconds",
               "type":"long",
               "nickname":"get_system_uptime",
               "produces":[
                  "application/json"
               ],
               "parameters":[]
            }
         ]
      },
      {
         "path":"/system/logger/{name}",
         "operations":[
            {
               "method":"GET",
               "summary":"Get logger level",
               "type":"string",
               "nickname":"get_logger_level",
               "produces":[
                  "application/json"
               ],
               "parameters":[
                  {
                     "name":"name",
                     "description":"The logger to query about",
                     "required":true,
                     "allowMultiple":false,
                     "type":"string",
                     "paramType":"path"
                  }
               ]
            },
            {
               "method":"POST",
               "summary":"Set logger level",
               "type":"void",
               "nickname":"set_logger_level",
               "produces":[
                  "application/json"
               ],
               "parameters":[
                  {
                     "name":"name",
                     "description":"The logger to query about",
                     "required":true,
                     "allowMultiple":false,
                     "type":"string",
                     "paramType":"path"
                  },
                  {
                     "name":"level",
                     "description":"The new log level",
                     "required":true,
                     "allowMultiple":false,
                     "type":"string",
                     "enum":[
                        "error",
                        "warn",
                        "info",
                        "debug",
                        "trace"
                     ],
                     "paramType":"query"
                  }
               ]
            }
         ]
      },
      {
         "path":"/system/dump_llvm_profile",
         "operations":[
            {
               "method":"POST",
               "summary":"Dump llvm profile data (raw profile data) that can later be used for coverage reporting or PGO (no-op if the current binary is not instrumented)",
               "type":"void",
               "nickname":"dump_profile",
               "produces":[
                  "application/json"
               ],
               "parameters":[]
            }
         ]
      },
      {
         "path":"/system/highest_supported_sstable_version",
         "operations":[
            {
               "method":"GET",
               "summary":"Get highest supported sstable version",
               "type":"string",
               "nickname":"get_highest_supported_sstable_version",
               "produces":[
                  "application/json"
               ],
               "parameters":[]
            }
         ]
      }
   ]
}

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–2 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 2 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
| collapsed | whole recording | `\["-?[0-9]{10,}"(, "-?[0-9]{10,}")*\]` | `["TOKEN"]` | none |
| collapsed | whole recording | `\[\{"key":"-?[0-9]{10,}","value":"[^"]*"\}(, \{"key":"-?[0-9]{10,}","value":"[^"]*"\})*\]` | `[{"key":"TOKEN","value":"ADDRESS"}]` | none |
| normalized | whole recording | `[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}` | `{{uuid-N}}` | none |
| normalized | whole recording | `(?<![0-9.])(?!127\.)[0-9]{1,3}(\.[0-9]{1,3}){3}(?![0-9.])` | `{{ip-N}}` | none |
| collapsed | whole recording | `(?<![0-9])1[0-9]{9}(?![0-9])` | `1000000000` | none |
| collapsed | whole recording | `"value": [0-9]+\}` | `"value": 0}` | none |
| collapsed | whole recording | `"value": "[01](\.[0-9]+)?"` | `"value": "1"` | none |
| collapsed | whole recording | `"total":[0-9]+,"live":[0-9]+` | `"total":0,"live":0` | none |
| collapsed | whole recording | `(?m)^[0-9]{3,9}$` | `1000000` | none |
