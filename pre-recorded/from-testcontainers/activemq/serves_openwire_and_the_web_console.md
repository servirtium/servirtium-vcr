## Interaction 0: GET /api/jolokia/version

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[admin]
Connection: keep-alive
Host: {{request.host}}
Origin: http://localhost
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
X-FRAME-OPTIONS: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Cache-Control: no-cache
Access-Control-Allow-Origin: http://localhost
Access-Control-Allow-Credentials: true
Content-Type: text/plain;charset=utf-8
Pragma: no-cache
Expires: Sat, 01 Jan 2000 00:00:00 GMT
Transfer-Encoding: chunked
```
### Response body recorded for playback (200: text/plain;charset=utf-8):

```
{"request":{"type":"version"},"value":{"agent":"1.7.1","protocol":"7.2","config":{"listenForHttpService":"true","authIgnoreCerts":"false","agentId":"AGENT-ID","debug":"false","agentType":"servlet","policyLocation":"${prop:jolokia.conf}","agentContext":"\/jolokia","serializeException":"false","mimeType":"text\/plain","dispatcherClasses":"org.jolokia.http.Jsr160ProxyNotEnabledByDefaultAnymoreDispatcher","multicastGroup":"239.192.0.1","authMode":"basic","authMatch":"any","streaming":"true","canonicalNaming":"true","historyMaxEntries":"10","allowErrorDetails":"false","allowDnsReverseLookup":"true","realm":"jolokia","includeStackTrace":"true","multicastPort":"24884","useRestrictorService":"false","debugMaxEntries":"100"},"info":{"product":"activemq","vendor":"Apache","version":"5.18.7"}},"timestamp":946684800,"status":200}
```

## Interaction 1: GET /api/jolokia/version

### Request headers recorded for playback:

```
Connection: keep-alive
Host: {{request.host}}
Origin: http://localhost
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: basic realm="ActiveMQRealm"
Cache-Control: must-revalidate,no-cache,no-store
Content-Type: text/html;charset=iso-8859-1
Content-Length: 385
```
### Response body recorded for playback (401: text/html;charset=iso-8859-1):

```
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1"/>
<title>Error 401 Unauthorized</title>
</head>
<body><h2>HTTP ERROR 401 Unauthorized</h2>
<table>
<tr><th>URI:</th><td>/api/jolokia/version</td></tr>
<tr><th>STATUS:</th><td>401</td></tr>
<tr><th>MESSAGE:</th><td>Unauthorized</td></tr>
<tr><th>SERVLET:</th><td>-</td></tr>
</table>

</body>
</html>

```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[admin]` | 0 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `Expires: [A-Za-z]{3}, [0-9]{2} [A-Za-z]{3} [0-9]{4} [0-9:]{8} GMT` | `Expires: Sat, 01 Jan 2000 00:00:00 GMT` | 0 |
| collapsed | whole recording | `"timestamp":[0-9]+` | `"timestamp":946684800` | 0 |
| collapsed | whole recording | `"agentId":"[^"]*"` | `"agentId":"AGENT-ID"` | 0 |
| collapsed | whole recording | `"multicastGroup":"[^"]*"` | `"multicastGroup":"239.192.0.1"` | 0 |
| collapsed | whole recording | `"multicastPort":"[0-9]+"` | `"multicastPort":"24884"` | 0 |
