## Interaction 0: GET /

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
Cache-Control: no-cache, no-store, max-age=0, must-revalidate\r\nPragma: no-cache
Content-Type: text/html; charset=utf-8
Server: OrientDB
Connection: Keep-Alive
Content-Security-Policy: frame-ancestors 'none'
Content-Transfer-Encoding: binary
Content-Length: 1313
```
### Response body recorded for playback (200: text/html; charset=utf-8):

```
<!--
    ~ /*
    ~  *  Copyright 2014 Orient Technologies LTD (info(at)orientechnologies.com)
    ~  *
    ~  *  Licensed under the Apache License, Version 2.0 (the "License");
    ~  *  you may not use this file except in compliance with the License.
    ~  *  You may obtain a copy of the License at
    ~  *
    ~  *       http://www.apache.org/licenses/LICENSE-2.0
    ~  *
    ~  *  Unless required by applicable law or agreed to in writing, software
    ~  *  distributed under the License is distributed on an "AS IS" BASIS,
    ~  *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    ~  *  See the License for the specific language governing permissions and
    ~  *  limitations under the License.
    ~  *
    ~  * For more information: http://www.orientechnologies.com
    ~  */
    -->

 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 <html>
 <head>
 <title>Redirecting to OrientDB Studio...</title>
 <meta name="title" content="Document | DBMS | Database | Java | Studio" />
 <meta name="description" content="OrientDB Studio" />
 <meta http-equiv="refresh" content="0;URL=/studio/index.html">
 <style type="text/css">
 body {
     font-size: 9pt;
     font-family: Arial;
 }
 </style>
 </head>
 <body>Redirecting to OrientDB Studio...
 </body>
 </html>

```

## Interaction 1: GET /server

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[root]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Pragma: no-cache
Content-Type: application/json; charset=utf-8
Server: OrientDB
Connection: Keep-Alive
Content-Security-Policy: frame-ancestors 'none'
Content-Length: 27
```
### Response body recorded for playback (200: application/json; charset=utf-8):

```
{"connections":[],"dbs":[]}
```

## Interaction 2: GET /server

### Request headers recorded for playback:

```
Authorization: Basic REDACTED[root-default]
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Pragma: no-cache
Content-Type: application/json; charset=utf-8
Server: OrientDB
Connection: Keep-Alive
Content-Security-Policy: frame-ancestors 'none'
WWW-Authenticate: Basic realm="OrientDB Server"
WWW-Authenticate: Basic realm="OrientDB Server"
WWW-Authenticate: Basic realm="OrientDB Server"
WWW-Authenticate: Basic realm="OrientDB Server"
Content-Length: 129
```
### Response body recorded for playback (401: application/json; charset=utf-8):

```
{
  "errors": [
    {
      "code": 401,
      "reason": "Unauthorized",
      "content": "401 Unauthorized."
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
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[root]` | 1 |
| redacted | request headers | (not shown: it may be the secret) | `Basic REDACTED[root-default]` | 2 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–2 |
| collapsed | whole recording | `\{"connections":[^
]*` | `{"connections":[],"dbs":[]}` | 1 |
