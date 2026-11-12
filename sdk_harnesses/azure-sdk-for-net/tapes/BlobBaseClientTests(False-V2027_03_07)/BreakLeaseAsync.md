## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-afebf1c9-b446-653b-e088-e326461fc413?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).BreakLeaseAsync
now: 2026-11-12T00:46:17.4651202+00:00

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
etag: "0x26797301A525320"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8a617a07-87d3-4772-9703-83051b626a80
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-afebf1c9-b446-653b-e088-e326461fc413/test-blob-135e43d2-4afe-3de5-1611-670af4faee99

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
nbyBcF5N7+6cFvv82I2rKhOrQdXUt+N/C62YNU0wcOWZSoiJnVO0hFNwd+hO6WWJZTz2SbkYxObY
AmWxtLqha6UVYo4EIYzA9ryCZD/7MSJID9AQOiYsgIWhsZvuA9CZzgxDOIbXhUOwNlP8lmCn3dFC
aKXpkTF+6eEIYnDx0fLs6ZUzuPmbcImMXwPTL+ok+tPKq5sqrz3axE6lziLSvmRhEK3LcyXXp/cb
XDEtq7n35GecJyZWwTlYWPOq9aJnuqGech88WYau8gOjD1MLrBiVreq7Npc+Ck9zcxsxLbFVtKKQ
jzmZuorg7jQis7HmTKvaFEe3q4QJYGfPyeZrfMVRTVuwex3f+/Nf2kdiHFedjSZvVhhpnQgehi7R
yvGkdXFv0GVWNtCN+xlUWNE8pkMQMTu/+yWs6LBSkvTuDjECumXV80vxR1dW4lv/FUU24d/rwZi1
5XlLwui1BKPbnuznUZ1sZ7L4H+rkaBnKrdJqG7AUA0yZTdTriTFjO0OzekNuF8Onynos8qKt0H1g
gRQVSujzxpufTgTJgd2BlOOnMe7VW5UOw1E16BCq631XiggcTfFav7Oozsm/3kmdq16+BZ6OiiZ+
B4eWvd6K9GKHcvbVZUfyTHE6LYzMT+UImDyy7ObeyADinUZpxAHUHtlmOGtSyEYWzLgtVF2Zsrei
jSWh1wh8qKn18scAiIhvZQ+yZRd5tc/2nB8tsXSjSOuOxzbcMkbQ6o/CXdV+FUQwve5N5kygKdhV
qzvpTvc1UqrccsFSkzLI4XuItlj6eIba/fSFVWKe7p1ehocL55yXjQoroaOC3im7hQTRF3J/WjK0
DlADr/xHPYMj9AyqvPrf8ClNz9biVx/KydBezdcr3itVV9hLlN0N42MgX+kdEMgJ8idIMYtb0bYx
OeUs6XCs9xXgVWUhlFxLQOtywvg1rLgIVNuv4qyg+YUhGVv44frzdGfTPLti513K/fGf6Q+++4ws
JJWU/BVpQFzg/3oBU1/xf06QYW/9pWx95OW6AA92Yx3Oy7xkXnhSavxegufjyaqSrWrALZocLn4o
Fxcvrz9MaZxcMoeijCDVPfdzniOEmhs7KFKltTWDsp09PEdgIru9EhhLhpci7yBJ6++iqY9bo338
9IbsprRm2X/qZFDZdBs8tYwKORODGDgyXMpF4AkN4ZnJZC000Wtk5KwXOIrQcHbUZvMDUWlpeNxO
ukrpIPh23IO3DxDtB+QhpVRma9+tYetUcXkVCpAvYOxR5hYgesS0oVsHGWBm518O4asVAg38oFhe
la9+YNLyh64kmyHNACuQssmEpkiK7ooaByjlGl7eVUW+wuUUNUGIFZGyQUs9QOGAhE9Dd/oQ0w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24E9170AB0FC3E0"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
content-md5: vwu1Rmc3jwW2UPKmTx1FLA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6a7dd61b-5e9e-4faa-9d49-812a3402f7f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-afebf1c9-b446-653b-e088-e326461fc413/test-blob-135e43d2-4afe-3de5-1611-670af4faee99?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 596425a7-0daa-506d-4546-db0f3e457c7d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24E9170AB0FC3E0"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-lease-id: 596425a7-0daa-506d-4546-db0f3e457c7d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c72751cd-b2f1-46ef-b33b-1b12419b1904
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-afebf1c9-b446-653b-e088-e326461fc413/test-blob-135e43d2-4afe-3de5-1611-670af4faee99?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24E9170AB0FC3E0"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e27b8158-7fe4-49a8-88b1-c42adc0b7616
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-afebf1c9-b446-653b-e088-e326461fc413?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b1fd0f9-684d-4330-980b-8c5e22773a97
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

