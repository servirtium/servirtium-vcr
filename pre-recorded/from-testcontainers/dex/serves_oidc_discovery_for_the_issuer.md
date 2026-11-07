## Interaction 0: GET /dex/.well-known/openid-configuration

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
Content-Length: 1150
Content-Type: application/json
```
### Response body recorded for playback (200: application/json):

```
{
  "issuer": "http://{{request.host}}/dex",
  "authorization_endpoint": "http://{{request.host}}/dex/auth",
  "token_endpoint": "http://{{request.host}}/dex/token",
  "jwks_uri": "http://{{request.host}}/dex/keys",
  "userinfo_endpoint": "http://{{request.host}}/dex/userinfo",
  "device_authorization_endpoint": "http://{{request.host}}/dex/device/code",
  "introspection_endpoint": "http://{{request.host}}/dex/token/introspect",
  "grant_types_supported": [
    "authorization_code",
    "password",
    "refresh_token"
  ],
  "response_types_supported": [
    "code"
  ],
  "subject_types_supported": [
    "public"
  ],
  "id_token_signing_alg_values_supported": [
    "RS256"
  ],
  "code_challenge_methods_supported": [
    "S256",
    "plain"
  ],
  "scopes_supported": [
    "openid",
    "email",
    "groups",
    "profile",
    "offline_access"
  ],
  "token_endpoint_auth_methods_supported": [
    "client_secret_basic",
    "client_secret_post"
  ],
  "claims_supported": [
    "iss",
    "sub",
    "aud",
    "iat",
    "exp",
    "email",
    "email_verified",
    "locale",
    "name",
    "preferred_username",
    "at_hash"
  ]
}
```

## Interaction 1: GET /dex/keys

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
Cache-Control: max-age=600, must-revalidate
Content-Length: 156
Content-Type: application/json
```
### Response body recorded for playback (200: application/json):

```
{
  "keys": [
    {
      "use": "sig",
      "kty": "RSA",
      "kid": "KEY-ID",
      "alg": "RS256",
      "n": "MODULUS",
      "e": "AQAB"
    }
  ]
}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0, 1 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0, 1 |
| collapsed | whole recording | `"kid": "[0-9a-f]{40}"` | `"kid": "KEY-ID"` | 1 |
| collapsed | whole recording | `"n": "[A-Za-z0-9_-]{300,}"` | `"n": "MODULUS"` | 1 |
