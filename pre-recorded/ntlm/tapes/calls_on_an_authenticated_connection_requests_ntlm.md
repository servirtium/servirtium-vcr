## Interaction 0: GET /whoami

### Request headers recorded for playback:

```
Accept: */*
Connection: Keep-Alive
Host: {{request.host}}
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: pyspnego-ntlm-test-server/1
WWW-Authenticate: Negotiate
WWW-Authenticate: NTLM
Content-Type: text/plain; charset=utf-8
Content-Length: 53
```
### Response body recorded for playback (401: text/plain; charset=utf-8):

```
401 Unauthorized: send NTLM or Negotiate credentials

```

## Interaction 1: GET /whoami

### Request headers recorded for playback:

```
Accept: */*
Authorization: NTLM AUTHORIZATION_1
Connection: Keep-Alive
Host: {{request.host}}
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: pyspnego-ntlm-test-server/1
WWW-Authenticate: NTLM TlRMTVNTUAACAAAAHgAeADAAAAA1gorgASNFZ4mrze8AAAAAAAAAAG4AbgBOAAAATgBBAEUALQBOAFQATABNAC0AUwBFAFIAVgBFAFIAAQAeAE4AQQBFAC0ATgBUAEwATQAtAFMARQBSAFYARQBSAAIAFgBXAE8AUgBLAFMAVABBAFQASQBPAE4AAwAeAG4AYQBlAC0AbgB0AGwAbQAtAHMAZQByAHYAZQByAAcACAAAAAAAAADQAQAAAAA=
Content-Type: text/plain; charset=utf-8
Content-Length: 60
```
### Response body recorded for playback (401: text/plain; charset=utf-8):

```
401 Unauthorized: continue the handshake on this connection

```

## Interaction 2: GET /whoami

### Request headers recorded for playback:

```
Accept: */*
Authorization: NTLM AUTHORIZATION_2
Connection: Keep-Alive
Host: {{request.host}}
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: pyspnego-ntlm-test-server/1
Content-Type: application/json
Content-Length: 49
```
### Response body recorded for playback (200: application/json):

```
{"scheme": "NTLM", "user": "NAEDOMAIN\\naeuser"}

```

## Interaction 3: POST /echo

### Request headers recorded for playback:

```
Accept: */*
Connection: Keep-Alive
Content-Length: 12
Content-Type: application/json
Host: {{request.host}}
```
### Request body recorded for playback ():

```
{"order": 7}
```
### Response headers recorded for playback:

```
Server: pyspnego-ntlm-test-server/1
Content-Type: application/json
Content-Length: 75
```
### Response body recorded for playback (200: application/json):

```
{"received": {"order": 7}, "scheme": "NTLM", "user": "NAEDOMAIN\\naeuser"}

```

## Interaction 4: GET /whoami

### Request headers recorded for playback:

```
Accept: */*
Connection: Keep-Alive
Host: {{request.host}}
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: pyspnego-ntlm-test-server/1
Content-Type: application/json
Content-Length: 49
```
### Response body recorded for playback (200: application/json):

```
{"scheme": "NTLM", "user": "NAEDOMAIN\\naeuser"}

```

## Interaction 5: GET /anonymous

### Request headers recorded for playback:

```
Accept: */*
Connection: keep-alive
Host: {{request.host}}
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: pyspnego-ntlm-test-server/1
Content-Type: application/json
Content-Length: 20
```
### Response body recorded for playback (200: application/json):

```
{"anonymous": true}

```

