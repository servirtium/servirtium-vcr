## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c399bd98-4112-232b-d4b9-72ccd6833a9a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_AccessTier_Cold
now: 2026-11-12T00:47:13.6038825+00:00

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
etag: "0x27A141A28421B00"
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 70f9a3a4-d662-4dc9-b679-fad08847e17c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c399bd98-4112-232b-d4b9-72ccd6833a9a/test-blob-613e217f-bda4-cd2e-271b-42ae47c95252

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
OCk0H4Vn4BLrW9WZgvS4VfF/k/7nSAPajsub9v982wpnIJOsThoUGEAsdUjolUszY+y8yDZUau8l
WpC5y+oSb4DKMWFgCwfXanq9u9O78fmAaJMTvxLTE7akh/OJWk1WGQbIHWPp0lfk5V68lq4camiX
OWJW/69t9x6qvIQTTQ8sZqLM8tOVlpY8Ltq0F3wIiByK8iHr/xpXWiZFPhbS0JhOjy8LT3eVAqLM
GtDVud+hojRniVrtQWeIdZesUFiAaV5BZYdN/Dil9e9/H+VJgqFGo5vhakc9YU7Ig9nf6LJJTLFy
k1NYVKb7wpNrbSKCPvP2Zqy8nv8WBAQ4hXhexQ09NdMz1+5N7k/15qi00vMsRkXm6YIGja2yW49P
H88tnfyFLTdPTmYEqHdcxrdWYjIQDD4zeNyLN6glgXxf/s6Ax0mrLqS73ffe4UAKqcb2W/hcPhOQ
+iQf+vaPKczqpaqp2/5uqjSNVS9GVZebgY3hLyaDAr+78M0kizSuLLMr8zyWYc3Hh7DEz+njSaSN
hHhorfqlZ6Lr7esxSh8A3ih8G2JaBSC/Gad2vzLV16Yplge7Rn64hYyZqnPilj2RxPHAZy5CMn5Y
qJRTL6dvFRZEB7MXRJiqw5XVwVqs3YJq5fpBFXB452SJYp3qZVbkKZVdnY+KeX9ZFqOZbHEjq8sR
6UqtLgClzCBOjuL6v14+8ZfFTz/z32t76P7M33rzZbbS2XwMN/uVt9FuO+ucXlZFWnvZXluLHQne
MkUB2eylWygrKObiMrqcL5huhKR/3omnh4T/GQZaRrtyLQS2k97kyd/DcTZwYijAPS7DHZlkX1O7
WlFopUEh0eErbwW15Zy6ibvEvG1TNyRcPtzYlyghDc2x+jmMfCOeoZ9URfMjC1eSCJPeoKPmaCIt
C2ZkSTq5CWE3BOtjLg2XJhrN/vIxOTOFRo6UQ20qypIWXnC8OVhlmzuR6wdrL9qGRnmIGWkw+9Ez
3wOsJMX0DDlZTM+c2+3CaGO2oE0sGRezDv3zobEo5mOeiVlVuXd2nd7NEuIL6WqMxrAFeluEBsXs
+BXHAGuIMGVs/lKTbK/sQAJuXgY0qCWTZ9oAI2wHGoKTacBhrp1zReJ8nusY+VoBGTpYFai/t0/w
NJiQhwz5ZePQ/wPuipFl+xkjtwo5em2A/wkyrgXZ1LFwcXkE473VgjkHSPlWE46o8hqOmwBFtror
D4gDx7be9ipSfRkXYRhbTTTQMjJzKut6ibzqSziwK7q/2NM10ruDKFLPBJZ1kJECM03MdYSHt+Wc
iD7586ryoVJfWIhEJnt5TQngpCVVBfgr6Bjr5LU2NyHtmEl9iTWn3WJDFjgIvQ3SUid6pxLARw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F95EE4986C8E20"
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
content-md5: 8unSvwynRwyjjp5eGOFGPw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a62201e8-06df-4dd0-b69e-d76dc3de1bd0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c399bd98-4112-232b-d4b9-72ccd6833a9a/test-blob-0ace4583-0692-9cbc-2820-67578d31fbc3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cold
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-c399bd98-4112-232b-d4b9-72ccd6833a9a/test-blob-613e217f-bda4-cd2e-271b-42ae47c95252
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2735F32D1EFC240"
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 193f9039-4de1-4b50-ad91-ee8876cc3240
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-copy-id: 700e7008-55df-44c6-bcfa-a33cdaca49e4
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-c399bd98-4112-232b-d4b9-72ccd6833a9a/test-blob-0ace4583-0692-9cbc-2820-67578d31fbc3

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
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-copy-id: 700e7008-55df-44c6-bcfa-a33cdaca49e4
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-c399bd98-4112-232b-d4b9-72ccd6833a9a/test-blob-613e217f-bda4-cd2e-271b-42ae47c95252
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2735F32D1EFC240"
content-md5: 8unSvwynRwyjjp5eGOFGPw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b3b8ca7d-20b3-495b-82e0-e02b5aad4416
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-c399bd98-4112-232b-d4b9-72ccd6833a9a/test-blob-0ace4583-0692-9cbc-2820-67578d31fbc3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-copy-id: 700e7008-55df-44c6-bcfa-a33cdaca49e4
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-c399bd98-4112-232b-d4b9-72ccd6833a9a/test-blob-613e217f-bda4-cd2e-271b-42ae47c95252
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2735F32D1EFC240"
content-md5: 8unSvwynRwyjjp5eGOFGPw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: efc8dc18-5431-4049-99e7-a55dec10da8b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-c399bd98-4112-232b-d4b9-72ccd6833a9a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: 4bf7afc9-bbde-48f0-8a35-2edc0f0070a1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

