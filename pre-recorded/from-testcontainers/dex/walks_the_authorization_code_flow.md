## Interaction 0: GET /dex/auth?client_id=my-app&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback&response_type=code&scope=openid+email&state=xyz

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
Location: /dex/auth/local?client_id=my-app&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback&response_type=code&scope=openid+email&state=xyz
Content-Length: 1376
```
### Response body recorded for playback (302: text/html; charset=utf-8):

```
<a href="/dex/auth/local?client_id=my-app&amp;redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback&amp;response_type=code&amp;scope=openid+email&amp;state=xyz">Found</a>.

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>dex</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="static/main.css" rel="stylesheet">
    <link href="theme/styles.css" rel="stylesheet">
    <link rel="icon" href="theme/favicon.png">
  </head>

  <body class="theme-body">
    <div class="theme-navbar">
      <div class="theme-navbar__logo-wrap">
        <img class="theme-navbar__logo" src="theme/logo.png">
      </div>
    </div>

    <div class="dex-container">


<div class="theme-panel">
  <h2 class="theme-heading">Log in to dex </h2>
  <div>
    
      <div class="theme-form-row">
        <a href="/dex/auth/local?client_id=my-app&amp;redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback&amp;response_type=code&amp;scope=openid&#43;email&amp;state=xyz" target="_self">
          <button class="dex-btn theme-btn-provider">
            <span class="dex-btn-icon dex-btn-icon--local"></span>
            <span class="dex-btn-text">Log in with Email</span>
          </button>
        </a>
      </div>
    
  </div>
</div>

    </div>
  </body>
</html>


```

## Interaction 1: GET /dex/auth/local?client_id=my-app&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback&response_type=code&scope=openid+email&state=xyz

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
Location: /dex/auth/local/login?back=&state={{authid-1}}
Content-Length: 73
```
### Response body recorded for playback (302: text/html; charset=utf-8):

```
<a href="/dex/auth/local/login?back=&amp;state={{authid-1}}">Found</a>.


```

## Interaction 2: GET /dex/auth/local/login?back=&state={{authid-1}}

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
Content-Length: 1718
Content-Type: text/html; charset=utf-8
```
### Response body recorded for playback (200: text/html; charset=utf-8):

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>dex</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../../static/main.css" rel="stylesheet">
    <link href="../../theme/styles.css" rel="stylesheet">
    <link rel="icon" href="../../theme/favicon.png">
  </head>

  <body class="theme-body">
    <div class="theme-navbar">
      <div class="theme-navbar__logo-wrap">
        <img class="theme-navbar__logo" src="../../theme/logo.png">
      </div>
    </div>

    <div class="dex-container">


<div class="theme-panel">
  <h2 class="theme-heading">Log in to Your Account</h2>
  <form method="post" action="/dex/auth/local/login?back=&amp;state={{authid-1}}">
    <div class="theme-form-row">
      <div class="theme-form-label">
        <label for="login">Email Address</label>
      </div>
	  <input tabindex="1" required id="login" name="login" type="text" class="theme-form-input" placeholder="email address"  autofocus />
    </div>
    <div class="theme-form-row">
      <div class="theme-form-label">
        <label for="password">Password</label>
      </div>
	  <input tabindex="2" required id="password" name="password" type="password" class="theme-form-input" placeholder="password" />
    </div>

    

    <button tabindex="3" id="submit-login" type="submit" class="dex-btn theme-btn--primary">Login</button>

  </form>
  
</div>


<script type="text/javascript">
  document.querySelector('form').onsubmit = function(e) {
    var el = document.querySelector('#submit-login');
    el.setAttribute('disabled', 'disabled');
  };
</script>

    </div>
  </body>
</html>


```

## Interaction 3: POST /dex/auth/local/login?back=&state={{authid-1}}

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 65
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
login=alice%40example.com&password=REDACTED[alice-wrong-password]
```
### Response headers recorded for playback:

```
Content-Length: 1858
Content-Type: text/html; charset=utf-8
```
### Response body recorded for playback (401: text/html; charset=utf-8):

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>dex</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../../static/main.css" rel="stylesheet">
    <link href="../../theme/styles.css" rel="stylesheet">
    <link rel="icon" href="../../theme/favicon.png">
  </head>

  <body class="theme-body">
    <div class="theme-navbar">
      <div class="theme-navbar__logo-wrap">
        <img class="theme-navbar__logo" src="../../theme/logo.png">
      </div>
    </div>

    <div class="dex-container">


<div class="theme-panel">
  <h2 class="theme-heading">Log in to Your Account</h2>
  <form method="post" action="/dex/auth/local/login?back=&amp;state={{authid-1}}">
    <div class="theme-form-row">
      <div class="theme-form-label">
        <label for="login">Email Address</label>
      </div>
	  <input tabindex="1" required id="login" name="login" type="text" class="theme-form-input" placeholder="email address"  value="alice@example.com" />
    </div>
    <div class="theme-form-row">
      <div class="theme-form-label">
        <label for="password">Password</label>
      </div>
	  <input tabindex="2" required id="password" name="password" type="password" class="theme-form-input" placeholder="password"  autofocus />
    </div>

    
      <div id="login-error" class="dex-error-box">
        Invalid Email Address and password.
      </div>
    

    <button tabindex="3" id="submit-login" type="submit" class="dex-btn theme-btn--primary">Login</button>

  </form>
  
</div>


<script type="text/javascript">
  document.querySelector('form').onsubmit = function(e) {
    var el = document.querySelector('#submit-login');
    el.setAttribute('disabled', 'disabled');
  };
</script>

    </div>
  </body>
</html>


```

## Interaction 4: POST /dex/auth/local/login?back=&state={{authid-1}}

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 50
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
login=alice%40example.com&password=REDACTED[alice]
```
### Response headers recorded for playback:

```
Location: /dex/approval?req={{authid-1}}&hmac={{hmac-1}}
Content-Length: 0
```
### Response body recorded for playback (303: text/plain):

```
```

## Interaction 5: GET /dex/approval?req={{authid-1}}&hmac={{hmac-1}}

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
Content-Length: 1675
Content-Type: text/html; charset=utf-8
```
### Response body recorded for playback (200: text/html; charset=utf-8):

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>dex</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="static/main.css" rel="stylesheet">
    <link href="theme/styles.css" rel="stylesheet">
    <link rel="icon" href="theme/favicon.png">
  </head>

  <body class="theme-body">
    <div class="theme-navbar">
      <div class="theme-navbar__logo-wrap">
        <img class="theme-navbar__logo" src="theme/logo.png">
      </div>
    </div>

    <div class="dex-container">


<div class="theme-panel">
  <h2 class="theme-heading">Grant Access</h2>

  <hr class="dex-separator">
  <div>
    
    <div class="dex-subtle-text">My App would like to:</div>
    <ul class="dex-list">
      
      <li>View your email address</li>
      
    </ul>
    
  </div>
  <hr class="dex-separator">

  <div>
    <div class="theme-form-row">
      <form method="post">
        <input type="hidden" name="req" value="{{authid-1}}"/>
        <input type="hidden" name="approval" value="approve">
        <button type="submit" class="dex-btn theme-btn--success">
            <span class="dex-btn-text">Grant Access</span>
        </button>
      </form>
    </div>
    <div class="theme-form-row">
      <form method="post">
        <input type="hidden" name="req" value="{{authid-1}}"/>
        <input type="hidden" name="approval" value="rejected">
        <button type="submit" class="dex-btn theme-btn-provider">
            <span class="dex-btn-text">Cancel</span>
        </button>
      </form>
    </div>
  </div>

</div>

    </div>
  </body>
</html>


```

## Interaction 6: POST /dex/approval?req={{authid-1}}&hmac={{hmac-1}}

### Request headers recorded for playback:

```
Connection: keep-alive
Content-Length: 33
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
req={{authid-1}}&approval=approve
```
### Response headers recorded for playback:

```
Location: http://localhost:3000/callback?code={{authid-2}}&state=xyz
Content-Length: 0
```
### Response body recorded for playback (303: text/plain):

```
```

## Interaction 7: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 101
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=authorization_code&code={{authid-2}}&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback
```
### Response headers recorded for playback:

```
Cache-Control: no-store
Content-Length: 92
Content-Type: application/json
Pragma: no-cache
```
### Response body recorded for playback (200: application/json):

```
{"access_token":"{{jwt-1}}","token_type":"bearer","expires_in":86400,"id_token":"{{jwt-2}}"}
```

## Interaction 8: POST /dex/token

### Request headers recorded for playback:

```
Authorization: Basic AUTHORIZATION_1
Connection: keep-alive
Content-Length: 101
Content-Type: application/x-www-form-urlencoded
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
grant_type=authorization_code&code={{authid-2}}&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fcallback
```
### Response headers recorded for playback:

```
Content-Length: 82
Content-Type: application/json
```
### Response body recorded for playback (400: application/json):

```
{"error":"invalid_grant","error_description":"Invalid or expired code parameter."}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–8 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 7, 8 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice]` | 4 |
| redacted | request body | (not shown: it may be the secret) | `password=REDACTED[alice-wrong-password]` | 3 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–8 |
| collapsed | whole recording | `"kid": "[0-9a-f]{40}"` | `"kid": "KEY-ID"` | none |
| collapsed | whole recording | `"n": "[A-Za-z0-9_-]{300,}"` | `"n": "MODULUS"` | none |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | 7 |
| normalized | whole recording | `(?<="refresh_token":"\|refresh_token=\|[&?]token=\|^token=)(?!eyJ)[A-Za-z0-9_-]{40,}` | `{{refresh-N}}` | none |
| normalized | whole recording | `(?<![A-Za-z0-9])[a-z0-9]{25}(?![A-Za-z0-9])` | `{{authid-N}}` | 1–8 |
| normalized | whole recording | `(?<=hmac=)[A-Za-z0-9_-]+` | `{{hmac-N}}` | 4–6 |
| collapsed | whole recording | `"exp":[0-9]{10}` | `"exp":946684800` | none |
| collapsed | whole recording | `"iat":[0-9]{10}` | `"iat":946684800` | none |
| collapsed | whole recording | `"nbf":[0-9]{10}` | `"nbf":946684800` | none |
| collapsed | whole recording | `"expires_in":[0-9]+` | `"expires_in":86400` | 7 |
| collapsed | whole recording | `"at_hash":"[A-Za-z0-9_-]+"` | `"at_hash":"AT-HASH"` | none |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
