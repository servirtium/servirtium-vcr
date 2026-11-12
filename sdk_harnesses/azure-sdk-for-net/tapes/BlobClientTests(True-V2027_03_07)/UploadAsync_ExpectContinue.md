## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c2aff38c-b934-31d7-6530-9cc6fa405617?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_ExpectContinue
now: 2026-11-12T00:49:12.9161294+00:00

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x209A3DCAF7C2D20"
last-modified: Thu, 12 Nov 2026 00:49:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5f95bfb8-d022-4770-bf76-1acdca95c715
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c2aff38c-b934-31d7-6530-9cc6fa405617/test-blob-54da8519-6e61-a307-93b6-983742b09bb5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
jLQvYIm6SEe1wPgxwnTuoX7SGZ+Omvod7AwufSCf77SV5zlFEfaNXjySnqF21uEfyPa4cJb7JvK5
EXN9i8snFdFDnNo6qJCIRLtj/PtZpxUqD7Up534emcFHjP+CENJxaojPMjkH5B9mMCvbmCn2X2ld
UnwV/S5SJQMZ8xyQBjTo8ZFzinXcIyqVw7ZTQgCXUSyWJL1WW2xZfQw27vED1Sr286eYg9X0gS9R
gDp4/uICgaHv+uF3kZUkGQ1opTU5ke6LXU9Z/85XoqKNBdsy4X4qNGxPE9pIf2ERc2nHjNz6GO5M
7KGTqILTmFg/6Yy68jiPPnDI6X0TQ93tSIxkjxbFk+3s5vTcl4vqe3uCCZXVVoAxOE1rMS5wOKnD
pWD1bwhCeVWfzgxDsqbk3m0CkDlHGPELMlfIWWK+e61LGPEr9AxzQI9ANoh07oamh1LAbqhve4xu
6jyxeh/y4FNf95m1uelhjlCpB+JplkTQIdIP/QwF251lvQrPwsZwTVU1Ffbs8c5pX99XxXSqBFP3
4FhN4uJGWhv8UPvfkcyKObmMNIFN5C8Epp0srRYouri21+FtImpy7rrb8KHSic4SzYu6Hc/Rqvsp
SDtEGawF1JVDKLnqHBdOGUbHcvSNMh3PGeCKbZ3o5C3lQ9kuLtQN1RwMj2AVKLB0bASJCjcHmxYe
df/Me2b4WkOLBNg9H+txuZ3XgaK8uvEvFQGZX9r23qjDELjVQVq1FDQciSPXN0wYGFGaMBpzYrsN
nWVkX/tplCYweQ8ynHdCIW1unzDOV921gEaIXK6NT639x6T0UbU5s/X8pr085XvZVw6tBcKLP0WI
r9604Dh4oyphNdXTTdC4NOw70rEfeJrKrwSf4ErrcodebKLWhNK8gwOT27CmBgk99NDWUGyUaDZD
6TE02MLgdsNNdOEu4a8Zfk+tjJ3qJKn6Yut5FCEbygRrkpuhiKpAs2TsWZEoDhMhvdEd5tyYWcWI
OXbXZmKhMqrdw04UePakbNg5/csX0VTYV1dQ/eMn0jnVGU40aUwCSyfnS0vEDEXaeHoDX1v6cGgi
/g4KUDTGtfAVPl6ocAKMNrKkMIYIE0sSdYVpJHLd26nmEmo99/ryIJZar83mMgh3dimpVj/hGevD
+NuvXJB+N2O1wl6XTj63sQ/vrWR9K0N88a1JNIRpBPh/ef8fQ8QF3HhqMHCp3yjq8aUv8WyGRsyX
MmriNALeTL1mGNU/mG1L6tDsE/vT0hKFXkPfOhKM+DMyhxBZIqd1i+SyQ8dSqlg34webmjLRxF9Y
Xda//xKr2R+hDRFc8scodogXIY9LMrPqqFYK8V4BYMOxAMXRtozRBmmnsZ1H2vFAciOpuqPQDQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E2C210415F7530"
last-modified: Thu, 12 Nov 2026 00:49:13 GMT
content-md5: 7ZT3ljhu0VrSPkf7www9Pg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: acda0f26-531c-42f0-87a3-9eb7cbf39c4c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-c2aff38c-b934-31d7-6530-9cc6fa405617?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6d32b422-2f52-4f7b-a972-a3a93cd1480e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

