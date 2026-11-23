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
Authorization: NTLM TlRMTVNTUAABAAAAN4II4gAAAAAoAAAAAAAAACgAAAAADAQAAAAADw==
Connection: Keep-Alive
Host: {{request.host}}
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: pyspnego-ntlm-test-server/1
WWW-Authenticate: NTLM TlRMTVNTUAACAAAAHgAeADgAAAA1goricugCo1/FSOcAAAAAAAAAAG4AbgBWAAAAAAwEAAAAAA9OAEEARQAtAE4AVABMAE0ALQBTAEUAUgBWAEUAUgABAB4ATgBBAEUALQBOAFQATABNAC0AUwBFAFIAVgBFAFIAAgAWAFcATwBSAEsAUwBUAEEAVABJAE8ATgADAB4ATgBBAEUALQBOAFQATABNAC0AUwBFAFIAVgBFAFIABwAIAEzQhetne90BAAAAAA==
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
Authorization: NTLM TlRMTVNTUAADAAAAGAAYAFgAAADGAMYAcAAAABIAEgA2AQAADgAOAEgBAAAUABQAVgEAABAAEABqAQAANYKK4gAMBAAAAAAPXb3tGoT/Dadoy3ahWuVXewAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJLXlWo38Nxcvm80K6JI4bMBAQAAAAAAAEzQhetne90BFJOVZKzwgXkAAAAAAQAeAE4AQQBFAC0ATgBUAEwATQAtAFMARQBSAFYARQBSAAIAFgBXAE8AUgBLAFMAVABBAFQASQBPAE4AAwAeAE4AQQBFAC0ATgBUAEwATQAtAFMARQBSAFYARQBSAAcACABM0IXrZ3vdAQkAHABoAHQAdABwAC8AMQAyADcALgAwAC4AMAAuADEABgAEAAIAAAAAAAAAAAAAAE4AQQBFAEQATwBNAEEASQBOAG4AYQBlAHUAcwBlAHIATgBBAEUALQBDAEwASQBFAE4AVAC6VKH6WEty0OMbDo2oX07c
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

