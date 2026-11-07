## Interaction 0: POST /certificates/tcae-cert/create?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 294
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"policy":{"issuer":{"name":"Self"},"key_props":{"exportable":true,"kty":"RSA","key_size":2048,"reuse_key":false},"secret_props":{"contentType":"application/x-pkcs12"},"x509_props":{"subject":"CN=example.com","validity_months":12,"ekus":["1.3.6.1.5.5.7.3.1"],"key_usage":["digitalSignature"]}}}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert/create"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (202: application/json):

```
{"cancellation_requested":false,"csr":"CERTIFICATE-REQUEST","id":"https://{{request.host}}/certificates/tcae-cert/pending","issuer":{"cert_transparency":false,"cty":null,"name":"Self"},"request_id":"{{version-1}}","status":"completed","status_details":null,"target":"https://{{request.host}}/certificates/tcae-cert"}
```

## Interaction 1: GET /certificates/tcae-cert/pending?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert/pending"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"cancellation_requested":false,"csr":"CERTIFICATE-REQUEST","id":"https://{{request.host}}/certificates/tcae-cert/pending","issuer":{"cert_transparency":false,"cty":null,"name":"Self"},"request_id":"{{version-1}}","status":"completed","status_details":null,"target":"https://{{request.host}}/certificates/tcae-cert"}
```

## Interaction 2: GET /certificates/tcae-cert?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"cer":"CERTIFICATE-DER","id":"https://{{request.host}}/certificates/tcae-cert/{{version-1}}","kid":"https://{{request.host}}/keys/tcae-cert/{{version-1}}","policy":{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert/{{version-1}}/policy","issuer":{"cert_transparency":false,"cty":null,"name":"Self"},"key_props":{"exportable":true,"key_size":2048,"kty":"RSA","reuse_key":false},"lifetime_actions":[{"action":{"action_type":"AutoRenew"},"trigger":{"lifetime_percentage":80}}],"secret_props":{"contentType":"application/x-pkcs12"},"x509_props":{"ekus":["1.3.6.1.5.5.7.3.1"],"key_usage":["digitalSignature"],"sans":{"dns_names":[],"emails":[],"upns":[]},"subject":"CN=example.com","validity_months":12}},"sid":"https://{{request.host}}/secrets/tcae-cert/{{version-1}}","tags":{},"x5t":"THUMBPRINT"}
```

## Interaction 3: GET /certificates/tcae-cert/versions?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert/versions"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert/{{version-1}}","tags":{},"x5t":"THUMBPRINT"}]}
```

## Interaction 4: POST /certificates/tcae-cert/create?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Content-Length: 294
Content-Type: application/json
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
{"policy":{"issuer":{"name":"Self"},"key_props":{"exportable":true,"kty":"RSA","key_size":2048,"reuse_key":false},"secret_props":{"contentType":"application/x-pkcs12"},"x509_props":{"subject":"CN=example.com","validity_months":12,"ekus":["1.3.6.1.5.5.7.3.1"],"key_usage":["digitalSignature"]}}}
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert/create"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (202: application/json):

```
{"cancellation_requested":false,"csr":"CERTIFICATE-REQUEST","id":"https://{{request.host}}/certificates/tcae-cert/pending","issuer":{"cert_transparency":false,"cty":null,"name":"Self"},"request_id":"{{version-2}}","status":"completed","status_details":null,"target":"https://{{request.host}}/certificates/tcae-cert"}
```

## Interaction 5: GET /certificates/tcae-cert/{{version-1}}?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert/{{version-1}}"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"cer":"CERTIFICATE-DER","id":"https://{{request.host}}/certificates/tcae-cert/{{version-1}}","kid":"https://{{request.host}}/keys/tcae-cert/{{version-1}}","policy":{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert/{{version-1}}/policy","issuer":{"cert_transparency":false,"cty":null,"name":"Self"},"key_props":{"exportable":true,"key_size":2048,"kty":"RSA","reuse_key":false},"lifetime_actions":[{"action":{"action_type":"AutoRenew"},"trigger":{"lifetime_percentage":80}}],"secret_props":{"contentType":"application/x-pkcs12"},"x509_props":{"ekus":["1.3.6.1.5.5.7.3.1"],"key_usage":["digitalSignature"],"sans":{"dns_names":[],"emails":[],"upns":[]},"subject":"CN=example.com","validity_months":12}},"sid":"https://{{request.host}}/secrets/tcae-cert/{{version-1}}","tags":{},"x5t":"THUMBPRINT"}
```

## Interaction 6: GET /certificates/tcae-cert?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"cer":"CERTIFICATE-DER","id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}","kid":"https://{{request.host}}/keys/tcae-cert/{{version-2}}","policy":{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}/policy","issuer":{"cert_transparency":false,"cty":null,"name":"Self"},"key_props":{"exportable":true,"key_size":2048,"kty":"RSA","reuse_key":false},"lifetime_actions":[{"action":{"action_type":"AutoRenew"},"trigger":{"lifetime_percentage":80}}],"secret_props":{"contentType":"application/x-pkcs12"},"x509_props":{"ekus":["1.3.6.1.5.5.7.3.1"],"key_usage":["digitalSignature"],"sans":{"dns_names":[],"emails":[],"upns":[]},"subject":"CN=example.com","validity_months":12}},"sid":"https://{{request.host}}/secrets/tcae-cert/{{version-2}}","tags":{},"x5t":"THUMBPRINT"}
```

## Interaction 7: GET /certificates/tcae-cert/versions?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert/versions"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert/{{version-1}}","tags":{},"x5t":"THUMBPRINT"},{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}","tags":{},"x5t":"THUMBPRINT"}]}
```

## Interaction 8: GET /certificates?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert","tags":{},"x5t":"THUMBPRINT"}]}
```

## Interaction 9: GET /certificates/tcae-cert/policy?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert/policy"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}/policy","issuer":{"cert_transparency":false,"cty":null,"name":"Self"},"key_props":{"exportable":true,"key_size":2048,"kty":"RSA","reuse_key":false},"lifetime_actions":[{"action":{"action_type":"AutoRenew"},"trigger":{"lifetime_percentage":80}}],"secret_props":{"contentType":"application/x-pkcs12"},"x509_props":{"ekus":["1.3.6.1.5.5.7.3.1"],"key_usage":["digitalSignature"],"sans":{"dns_names":[],"emails":[],"upns":[]},"subject":"CN=example.com","validity_months":12}}
```

## Interaction 10: DELETE /certificates/tcae-cert?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"cer":"CERTIFICATE-DER","deletedDate":946684800,"id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}","kid":"https://{{request.host}}/keys/tcae-cert/{{version-2}}","policy":{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}/policy","issuer":{"cert_transparency":false,"cty":null,"name":"Self"},"key_props":{"exportable":true,"key_size":2048,"kty":"RSA","reuse_key":false},"lifetime_actions":[{"action":{"action_type":"AutoRenew"},"trigger":{"lifetime_percentage":80}}],"secret_props":{"contentType":"application/x-pkcs12"},"x509_props":{"ekus":["1.3.6.1.5.5.7.3.1"],"key_usage":["digitalSignature"],"sans":{"dns_names":[],"emails":[],"upns":[]},"subject":"CN=example.com","validity_months":12}},"recoveryId":"https://{{request.host}}/deletedcertificates/tcae-cert","scheduledPurgeDate":954460800,"sid":"https://{{request.host}}/secrets/tcae-cert/{{version-2}}","tags":{},"x5t":"THUMBPRINT"}
```

## Interaction 11: GET /certificates/tcae-cert?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (404: application/json):

```
{"error":{"code":"com.github.nagyesta.lowkeyvault.service.exception.NotFoundException","message":"Key not found: certificate:https://{{request.host}}/tcae-cert/--"}}
```

## Interaction 12: GET /deletedcertificates?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedcertificates"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"value":[{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"deletedDate":946684800,"id":"https://{{request.host}}/certificates/tcae-cert","recoveryId":"https://{{request.host}}/deletedcertificates/tcae-cert","scheduledPurgeDate":954460800,"tags":{},"x5t":"THUMBPRINT"}]}
```

## Interaction 13: POST /deletedcertificates/tcae-cert/recover?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedcertificates/tcae-cert/recover"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"cer":"CERTIFICATE-DER","id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}","kid":"https://{{request.host}}/keys/tcae-cert/{{version-2}}","policy":{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}/policy","issuer":{"cert_transparency":false,"cty":null,"name":"Self"},"key_props":{"exportable":true,"key_size":2048,"kty":"RSA","reuse_key":false},"lifetime_actions":[{"action":{"action_type":"AutoRenew"},"trigger":{"lifetime_percentage":80}}],"secret_props":{"contentType":"application/x-pkcs12"},"x509_props":{"ekus":["1.3.6.1.5.5.7.3.1"],"key_usage":["digitalSignature"],"sans":{"dns_names":[],"emails":[],"upns":[]},"subject":"CN=example.com","validity_months":12}},"sid":"https://{{request.host}}/secrets/tcae-cert/{{version-2}}","tags":{},"x5t":"THUMBPRINT"}
```

## Interaction 14: GET /certificates/tcae-cert?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"cer":"CERTIFICATE-DER","id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}","kid":"https://{{request.host}}/keys/tcae-cert/{{version-2}}","policy":{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}/policy","issuer":{"cert_transparency":false,"cty":null,"name":"Self"},"key_props":{"exportable":true,"key_size":2048,"kty":"RSA","reuse_key":false},"lifetime_actions":[{"action":{"action_type":"AutoRenew"},"trigger":{"lifetime_percentage":80}}],"secret_props":{"contentType":"application/x-pkcs12"},"x509_props":{"ekus":["1.3.6.1.5.5.7.3.1"],"key_usage":["digitalSignature"],"sans":{"dns_names":[],"emails":[],"upns":[]},"subject":"CN=example.com","validity_months":12}},"sid":"https://{{request.host}}/secrets/tcae-cert/{{version-2}}","tags":{},"x5t":"THUMBPRINT"}
```

## Interaction 15: DELETE /certificates/tcae-cert?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/certificates/tcae-cert"
Content-Type: application/json
Transfer-Encoding: chunked
Keep-Alive: timeout=60
Connection: keep-alive
```
### Response body recorded for playback (200: application/json):

```
{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"cer":"CERTIFICATE-DER","deletedDate":946684800,"id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}","kid":"https://{{request.host}}/keys/tcae-cert/{{version-2}}","policy":{"attributes":{"created":946684800,"enabled":true,"exp":978307200,"nbf":946684800,"recoverableDays":90,"recoveryLevel":"Recoverable","updated":946684800},"id":"https://{{request.host}}/certificates/tcae-cert/{{version-2}}/policy","issuer":{"cert_transparency":false,"cty":null,"name":"Self"},"key_props":{"exportable":true,"key_size":2048,"kty":"RSA","reuse_key":false},"lifetime_actions":[{"action":{"action_type":"AutoRenew"},"trigger":{"lifetime_percentage":80}}],"secret_props":{"contentType":"application/x-pkcs12"},"x509_props":{"ekus":["1.3.6.1.5.5.7.3.1"],"key_usage":["digitalSignature"],"sans":{"dns_names":[],"emails":[],"upns":[]},"subject":"CN=example.com","validity_months":12}},"recoveryId":"https://{{request.host}}/deletedcertificates/tcae-cert","scheduledPurgeDate":954460800,"sid":"https://{{request.host}}/secrets/tcae-cert/{{version-2}}","tags":{},"x5t":"THUMBPRINT"}
```

## Interaction 16: DELETE /deletedcertificates/tcae-cert?api-version=7.4

### Request headers recorded for playback:

```
Authorization: Bearer AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
WWW-Authenticate: Bearer resource="https://{{request.host}}", authorization_uri="https://{{request.host}}/deletedcertificates/tcae-cert"
Content-Type: application/json
Transfer-Encoding: chunked
Connection: close
```
### Response body recorded for playback (500: application/json):

```
{"error":{"code":"java.lang.IllegalStateException","message":"The selected elements cannot be purged."}}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–16 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| redacted credential | request and response headers | `Authorization` | `<scheme> AUTHORIZATION_N` | 0–16 |
| redacted credential | request and response headers | `Proxy-Authorization` | `<scheme> PROXY_AUTHORIZATION_N` | none |
| redacted credential | request headers | `Cookie` | `<name>=COOKIE_N` | none |
| redacted credential | response headers | `Set-Cookie` | `<name>=COOKIE_N; <attributes>` | none |
| redacted credential | request and response headers | `X-Api-Key` | `API_KEY_N` | none |
| redacted credential | request and response headers | `X-Auth-Token` | `AUTH_TOKEN_N` | none |
| redacted credential | request and response headers | `X-IDENTITY-HEADER` | `X_IDENTITY_HEADER_N` | none |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | 0–16 |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–16 |
| normalized | whole recording | `(?<=[/"])[0-9a-f]{32}(?=[/"?])` | `{{version-N}}` | 0–7, 9, 10, 13–15 |
| normalized | whole recording | `(?<="value":")[A-Za-z0-9_-]{80,}(?=")` | `{{blob-N}}` | none |
| normalized | whole recording | `eyJ[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+` | `{{jwt-N}}` | 0–16 |
| collapsed | whole recording | `"expires_on":[0-9]+` | `"expires_on":946684800` | none |
| collapsed | whole recording | `"created":[0-9]{10}` | `"created":946684800` | 2, 3, 5–10, 12–15 |
| collapsed | whole recording | `"updated":[0-9]{10}` | `"updated":946684800` | 2, 3, 5–10, 12–15 |
| collapsed | whole recording | `"deletedDate":[0-9]{10}` | `"deletedDate":946684800` | 10, 12, 15 |
| collapsed | whole recording | `"scheduledPurgeDate":[0-9]{10}` | `"scheduledPurgeDate":954460800` | 10, 12, 15 |
| collapsed | whole recording | `"exp":[0-9]{10},"nbf":[0-9]{10}` | `"exp":978307200,"nbf":946684800` | 2, 3, 5–10, 12–15 |
| collapsed | whole recording | `"n":"[A-Za-z0-9_-]{300,}"` | `"n":"RSA-MODULUS"` | none |
| collapsed | whole recording | `"x":"[A-Za-z0-9_-]{40,}"` | `"x":"EC-X"` | none |
| collapsed | whole recording | `"y":"[A-Za-z0-9_-]{40,}"` | `"y":"EC-Y"` | none |
| collapsed | whole recording | `"cer":"[A-Za-z0-9+/=]+"` | `"cer":"CERTIFICATE-DER"` | 2, 5, 6, 10, 13–15 |
| collapsed | whole recording | `"csr":"[A-Za-z0-9+/=]+"` | `"csr":"CERTIFICATE-REQUEST"` | 0, 1, 4 |
| collapsed | whole recording | `"x5t":"[A-Za-z0-9_-]+"` | `"x5t":"THUMBPRINT"` | 2, 3, 5–8, 10, 12–15 |
| collapsed | whole recording | `"timestamp":"[^"]+"` | `"timestamp":"2000-01-01T00:00:00.000Z"` | none |
| ordered | response headers | `Allow` | its comma-separated items sorted | none |
| ordered | response body | JSON arrays at `/value`, requests matching `/versions\?` | sorted by `/attributes/created` | 3, 7 |

A credential's `N` numbers each distinct value: the same value has the same number wherever it appears, and one of 8 characters or more is replaced in bodies and paths too. Playback matches credential headers on presence, not value.
