## Interaction 0: GET /dex/auth/local?client_id=nope&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback&response_type=code&scope=openid

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
Content-Length: 756
Content-Type: text/html; charset=utf-8
```
### Response body recorded for playback (404: text/html; charset=utf-8):

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>dex</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../static/main.css" rel="stylesheet">
    <link href="../theme/styles.css" rel="stylesheet">
    <link rel="icon" href="../theme/favicon.png">
  </head>

  <body class="theme-body">
    <div class="theme-navbar">
      <div class="theme-navbar__logo-wrap">
        <img class="theme-navbar__logo" src="../theme/logo.png">
      </div>
    </div>

    <div class="dex-container">


<div class="theme-panel">
  <h2 class="theme-heading">Not Found</h2>
  <p>Invalid client_id.</p>
</div>

    </div>
  </body>
</html>


```

## Interaction 1: GET /dex/auth/local?client_id=my-app&redirect_uri=http%3A%2F%2Fevil.example%2Fcb&response_type=code&scope=openid

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
Content-Length: 766
Content-Type: text/html; charset=utf-8
```
### Response body recorded for playback (400: text/html; charset=utf-8):

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>dex</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../static/main.css" rel="stylesheet">
    <link href="../theme/styles.css" rel="stylesheet">
    <link rel="icon" href="../theme/favicon.png">
  </head>

  <body class="theme-body">
    <div class="theme-navbar">
      <div class="theme-navbar__logo-wrap">
        <img class="theme-navbar__logo" src="../theme/logo.png">
      </div>
    </div>

    <div class="dex-container">


<div class="theme-panel">
  <h2 class="theme-heading">Bad Request</h2>
  <p>Unregistered redirect_uri.</p>
</div>

    </div>
  </body>
</html>


```

## Interaction 2: GET /dex/auth/local?client_id=my-app&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback&response_type=token&scope=openid&state=s

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
Content-Type: text/html; charset=utf-8
Location: http://localhost:3000/callback?error=unsupported_response_type&error_description=Unsupported+response+type+%22token%22&state=s
Content-Length: 161
```
### Response body recorded for playback (303: text/html; charset=utf-8):

```
<a href="http://localhost:3000/callback?error=unsupported_response_type&amp;error_description=Unsupported+response+type+%22token%22&amp;state=s">See Other</a>.


```

## Interaction 3: GET /dex/auth/local?client_id=my-app&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback&response_type=code&scope=email&state=s

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
Content-Type: text/html; charset=utf-8
Location: http://localhost:3000/callback?error=invalid_scope&error_description=Missing+required+scope%28s%29+%5B%22openid%22%5D.&state=s
Content-Length: 161
```
### Response body recorded for playback (303: text/html; charset=utf-8):

```
<a href="http://localhost:3000/callback?error=invalid_scope&amp;error_description=Missing+required+scope%28s%29+%5B%22openid%22%5D.&amp;state=s">See Other</a>.


```

## Interaction 4: GET /dex/auth/local?client_id=my-app&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback&scope=openid&state=s

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
Content-Type: text/html; charset=utf-8
Location: http://localhost:3000/callback?error=invalid_request&error_description=No+response_type+provided&state=s
Content-Length: 139
```
### Response body recorded for playback (303: text/html; charset=utf-8):

```
<a href="http://localhost:3000/callback?error=invalid_request&amp;error_description=No+response_type+provided&amp;state=s">See Other</a>.


```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–4 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | none |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice]` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice-wrong-password]` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–4 |
| collapsed | whole recording | `"kid": "[0-9a-f]{40}"` | `"kid": "KEY-ID"` | none |
| collapsed | whole recording | `"n": "[A-Za-z0-9_-]{300,}"` | `"n": "MODULUS"` | none |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | none |
| normalized | whole recording | `(?<="refresh_token":"\|refresh_token=\|[&?]token=\|^token=)(?!eyJ)[A-Za-z0-9_-]{40,}` | `{{refresh-N}}` | none |
| normalized | whole recording | `(?<![A-Za-z0-9])[a-z0-9]{25}(?![A-Za-z0-9])` | `{{authid-N}}` | none |
| normalized | whole recording | `(?<=hmac=)[A-Za-z0-9_-]+` | `{{hmac-N}}` | none |
| collapsed | whole recording | `"exp":[0-9]{10}` | `"exp":946684800` | none |
| collapsed | whole recording | `"iat":[0-9]{10}` | `"iat":946684800` | none |
| collapsed | whole recording | `"nbf":[0-9]{10}` | `"nbf":946684800` | none |
| collapsed | whole recording | `"expires_in":[0-9]+` | `"expires_in":86400` | none |
| collapsed | whole recording | `"at_hash":"[A-Za-z0-9_-]+"` | `"at_hash":"AT-HASH"` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
