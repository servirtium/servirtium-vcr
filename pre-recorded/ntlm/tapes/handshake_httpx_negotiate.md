## Interaction 0: GET /whoami

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
Authorization: Negotiate AUTHORIZATION_1
Connection: keep-alive
Host: {{request.host}}
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: pyspnego-ntlm-test-server/1
WWW-Authenticate: Negotiate oYHgMIHdoAMKAQOhDAYKKwYBBAGCNwICCqKBxwSBxE5UTE1TU1AAAgAAAB4AHgA4AAAANYKK4uxA6YSbVic9AAAAAAAAAABuAG4AVgAAAAAMBAAAAAAPTgBBAEUALQBOAFQATABNAC0AUwBFAFIAVgBFAFIAAQAeAE4AQQBFAC0ATgBUAEwATQAtAFMARQBSAFYARQBSAAIAFgBXAE8AUgBLAFMAVABBAFQASQBPAE4AAwAeAE4AQQBFAC0ATgBUAEwATQAtAFMARQBSAFYARQBSAAcACADyMUvsZ3vdAQAAAAA=
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
Authorization: Negotiate AUTHORIZATION_2
Connection: keep-alive
Host: {{request.host}}
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: pyspnego-ntlm-test-server/1
WWW-Authenticate: Negotiate oRswGaADCgEAoxIEEAEAAACrRJdKrJf1RQAAAAA=
Content-Type: application/json
Content-Length: 54
```
### Response body recorded for playback (200: application/json):

```
{"scheme": "Negotiate", "user": "NAEDOMAIN\\naeuser"}

```

