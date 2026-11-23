## Interaction 0: POST /echo

### Request headers recorded for playback:

```
Authorization: NTLM AUTHORIZATION_1
Content-Length: 0
Content-Type: application/json
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

## Interaction 1: POST /echo

### Request headers recorded for playback:

```
Authorization: NTLM AUTHORIZATION_2
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

## Interaction 2: POST /echo

### Request headers recorded for playback:

```
Authorization: NTLM AUTHORIZATION_1
Content-Type: application/json
Host: {{request.host}}
Transfer-Encoding: chunked
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

## Interaction 3: POST /echo

### Request headers recorded for playback:

```
Authorization: NTLM AUTHORIZATION_3
Content-Type: application/json
Host: {{request.host}}
Transfer-Encoding: chunked
```
### Request body recorded for playback ():

```
{"order": 8}
```
### Response headers recorded for playback:

```
Server: pyspnego-ntlm-test-server/1
Content-Type: application/json
Content-Length: 75
```
### Response body recorded for playback (200: application/json):

```
{"received": {"order": 8}, "scheme": "NTLM", "user": "NAEDOMAIN\\naeuser"}

```

