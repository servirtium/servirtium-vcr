## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5b1bacb5-1af9-7029-3e93-04697df349f4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).Ctor_ConnectionStringEscapeBlobName
now: 2026-11-12T00:46:27.6813210+00:00

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
etag: "0x2655BF9C2142320"
last-modified: Thu, 12 Nov 2026 00:46:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7c7f1503-8f00-492a-a536-1e934334d573
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5b1bacb5-1af9-7029-3e93-04697df349f4/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%3F%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
oCbwuMBRvryGIB2SVWbq2k38zb/hhtb+HJVHZfk3M/IqkdZQbvluY+5e1Nj9lhrXqCobgSaJEhlQ
8pwqCVnDT+0rZ8SQmmtUjmnRg7H9AIV6b7zOG7LMoH68/3xcQ1qVm4Xr0S9WRw2+xvO8uI9nUvEW
r5mc9DM7X8dF1Jrv90oPPOcsES9WJCiuD1W+D+jvVKyLRZTA+KZRsHJoEXNyz86prXynO0HBwItx
7eXefE/fVX/uY7G2T0NB22G87RO1Oz+GFWJrSBlryYUITwrAcjMjibvzhGsc8145ZV/gBdJ4u7Kl
WGftcw1mgposrQA4gGktmWRXwrfUaSIEMuK5i8OykJNYGxrMNhWujALR70VeAOT2smxuIPn70e5E
6EEqrPfWehxs32VPYGJPqTW0AnrcpTH9w9hXRG+aXUorh03Tg98L+nUo8SF/plEJHnbDRs50Z0MQ
LOgefzas0oEaI9gVeyVWqQgFtLQQfhyHTSX51hd7tx8Kw1f27Xs+ex+fZIN49KNRbJzGb7OO/67L
ljERs/tqnmu4C7fNX7yMxjiVcRmZDlmBp2p7tUhse8OpKlZJLccjNMYXv+nrgw3fOah7+Y6UMojY
jwyR7+kjTI/zJDRmQ5hwcTxTgU5wliNcm3yf8IE1FPjOcZ67kUXc9HJZ+F/YefUPC4dRQbA5aPno
NVNsg1wNvg88mNH6td/3do3bFp7EgyKGj+X649JHlAml0lzxb3EWSzlPnOEjFVanWssjXVFaJLEx
5vN3E9s89APIVeKCBgYcxctkdOdAYnqOUogHJDe3Sq6rv4l9njdeEqfdW79zJFTFB5eG9q/K8IN4
6MFSNdDLEQsz10Z8nieTBmE/Ywe7Gy00QhygMVP/4c4FBbZ2DN3XEkm0QE0NSGlw8vBNio18vc2T
HfOzK9+3NPV4d5hxHPmEaFG9BtvgJvmzLz5jsVZAiUfo4+/pI+Zp/AtXldHQ/9b2yCI8vrbys/b6
//uhU4OfN+1RiDkKm0RqVAnPiJAo4zBobOg0BMqR9jD47yPryKmIuF7jf3ed7C3d0mqsIipl0RzL
OOaaajMjv5EIEqshf4tgR9AyRGS5y4C6VzFg5NQFkh0HH4/C7U4rwL/llNqBu1LeS9paM423EW1m
3xMBwtu8A3+OGl/8nlmCB4Sl0zemOZvfgZj6q16QTw0hWw06Kf3kKZFa86Hz4q2A1ywIEj42v6Z3
IkFCwlch/cpR2kJMR92GwKqlTEX565/redMyhz3P6ptnwwe8oWY5OfXWoQdqNJBPglGUkHNgfjai
VkmD7naNgu+n5YTVyh5DbBJQIkqYgUVC4gXrO1ooBkTRGksdtUp/SR8Xw08MebcyUCRgEFvsCQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22FE5B530B3DC00"
last-modified: Thu, 12 Nov 2026 00:46:27 GMT
content-md5: lOz3asaMfh/XGo8mStdAPQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 94b8c8b7-09af-4609-86d4-c14f7f955a50
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-5b1bacb5-1af9-7029-3e93-04697df349f4/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%3F%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F

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
last-modified: Thu, 12 Nov 2026 00:46:27 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:27 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22FE5B530B3DC00"
content-md5: lOz3asaMfh/XGo8mStdAPQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4779101e-86e9-41cb-a92a-4075573c4681
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:27 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:27 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-5b1bacb5-1af9-7029-3e93-04697df349f4/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%3F%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F?sv=2027-03-07&st=2026-11-11T23%3A46%3A27Z&se=2026-11-12T01%3A46%3A27Z&sr=b&sp=racwd&sig=4yxh7uayPmMyeYSVMTt7S%2FW6pqNR9j50skxae4RFlbc%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:27 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:27 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22FE5B530B3DC00"
content-md5: lOz3asaMfh/XGo8mStdAPQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84a81389-dc3a-4485-b41e-9a70b7377ddc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:27 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:27 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-5b1bacb5-1af9-7029-3e93-04697df349f4?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
x-ms-request-id: d5e8b7fe-c3ca-4782-b61f-c3033c82940c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:27 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

