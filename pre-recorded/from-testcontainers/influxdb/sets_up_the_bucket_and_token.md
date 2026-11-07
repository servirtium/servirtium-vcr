## Interaction 0: GET /api/v2/buckets?name=bucket

### Request headers recorded for playback:

```
Authorization: Token REDACTED[admin-token]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json; charset=utf-8
X-Influxdb-Build: OSS
X-Influxdb-Version: v2.7.11
Content-Length: 826
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{
	"links": {
		"self": "/api/v2/buckets?bucket=bucket\u0026descending=false\u0026limit=20\u0026offset=0"
	},
	"buckets": [
		{
			"id": "0000000000000000",
			"orgID": "0000000000000000",
			"type": "user",
			"name": "bucket",
			"retentionRules": [
				{
					"type": "expire",
					"everySeconds": 0,
					"shardGroupDurationSeconds": 604800
				}
			],
			"createdAt": "2000-01-01T00:00:00Z",
			"updatedAt": "2000-01-01T00:00:00Z",
			"links": {
				"labels": "/api/v2/buckets/0000000000000000/labels",
				"members": "/api/v2/buckets/0000000000000000/members",
				"org": "/api/v2/orgs/0000000000000000",
				"owners": "/api/v2/buckets/0000000000000000/owners",
				"self": "/api/v2/buckets/0000000000000000",
				"write": "/api/v2/write?org=0000000000000000\u0026bucket=0000000000000000"
			},
			"labels": []
		}
	]
}
```

## Interaction 1: POST /api/v2/buckets

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 50
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"orgID":"x","name":"example","retentionRules":[]}
```
### Response headers recorded for playback:

```
Content-Type: application/json; charset=utf-8
X-Influxdb-Build: OSS
X-Influxdb-Version: v2.7.11
X-Platform-Error-Code: unauthorized
Content-Length: 55
```
### Response body recorded for playback (401: application/json; charset=utf-8):

```
{"code":"unauthorized","message":"unauthorized access"}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Token REDACTED[admin-token]` | 0 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `[0-9a-f]{16}` | `0000000000000000` | 0 |
| collapsed | whole recording | `[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?(Z\|[+-][0-9]{2}:[0-9]{2})` | `2000-01-01T00:00:00Z` | 0 |
