## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-66eb4cb1-74b3-3969-a6dc-4a15d9840684?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_Stream_UploadsBlock
now: 2026-11-12T00:49:17.5915049+00:00

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
etag: "0x22D46F42C5DA240"
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53a71689-c9b7-4956-9af2-744f94e1597c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-66eb4cb1-74b3-3969-a6dc-4a15d9840684/test-blob-c3e956a5-2704-1455-d1c0-df4a21ba0986

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
QESWV8hSh8eRlS030bkD+weY4kzxE9aJ9taV8pUeF+vSxNWU7a+7U88hMm/6HUIXveRDidi8lCxu
DWDxvJQycn1BZA3kbg1Y3I99z+FnjtmUfjWw244TFjCoJt9OyZc777/xubk1Mk/W6qxIP8RLBn6H
XT1fgZfvLU7dPEgtCRL3QeAhdtUfXkzm2vDhytZrXB9hx2xZ3G0oAotrWPUGqOCaUf3kKpCoZ/7w
eaemDWJ3ceAozEKmnWVy+HNKtAZW3zEQR3nYhzKPuV9taWPGgvQo9OcV3dyd87OYcTEdXrP4mZl1
lcbpnumtmRPjODQCq3Z+IcAfQQJVclPGQBUAclusdc/JUewuP1X9Z0PJurt+lsa6njzy2ViXICNz
Il3TrCe4N8NlOFqJT+JqIdm+jLeXR6pPRtMeuZx2MTHIuxz4KrocEIP3GV1rMU5ZiLd/2ZNs29qz
g2ZTmX0n7gYpwZTFcvceoXs0oC5M5BWFxTDk91idXN9BRKZUyXcFzytWQm+5kxXAYDgXNzqsZp9R
ztRMQ/aui2S0hC5QytgDLtAC9qKlyzEbI5cghSWkld0HAvqjuIw1qLYLBQ/ncJVfFAhqqXD8rAOi
MR9ejQY/D+9QSMjdYHZDzU3smcYiM7MBwHEcOutsClX3AIZt1hqvzPUglyfNgrOSJtwiEBM9gP5s
XM2UItUD4z1z5l/v1vYzPM3QAZuLND6+ihMPSflCuoCHAXlMG6kfHLPpWpxTolDl79RGbH5i4CiP
1pjB9JlEMCvfaNV85iAjseTootqiaujDKVol+04BJSFRvUQRXigapSlwdDp6aAizIrqZej1O7Wyw
/cs/HjXd3UK0KyjcElK8zfywMfWuScBRcdiTZ6rjA9DYYGFc24b0kpb3xj3g1xBo3axBnbt2ArQK
7a1cSnaY0ShYA7HxX/J2vJ9etoODcZnIKor+omUVYV6sUu3ZmEggX/QVh9Nfdn25y+EcGEswh3sT
kx/rmi/CQ6JSRA0FnCRWPVeOberGabQNRNeE+EkTe8pxxgQoNcXFUkQwDDJvtC69xdrzohmRTCpr
3VVYPkpZP8hDk9YfLgiSyBullVyBno+oxzNuH9mw33nZvVdvbRP518xpLCBXnZfSYdr97LfN6T/G
r3cX6yDvkrRdRXGwIloIrL6QGHFuUCmcnL3/svPBDNMYqb6b4eysepps+lcmIT5/9T/5PdHOV15O
e05i8N/AmzmdmHmcbMrS457XAlbRdnp+f720yM4CSlFfTWadSom6rF4eiInF4ol0Jloz9lUIfAXU
43AhDNNqm04oPB5kNJkUHFX3s+3wuZ00P6F0zlP8V9FhyGYZmKCLs+w7naZqEPHAHtn/EMgX4w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27AA8A0FB4E2300"
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
content-md5: ZcKvU2AXaNiJnFIKPisFJg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4cc575bd-93a0-4d3b-9f53-0ee6207ee239
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-66eb4cb1-74b3-3969-a6dc-4a15d9840684/test-blob-c3e956a5-2704-1455-d1c0-df4a21ba0986

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
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x27AA8A0FB4E2300"
content-md5: ZcKvU2AXaNiJnFIKPisFJg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ec5aed9-e0a3-4c5e-9342-5883b2be67ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:17 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:17 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-66eb4cb1-74b3-3969-a6dc-4a15d9840684?restype=container

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
x-ms-request-id: 00fb22da-6b98-4124-a022-8c0f6e24aa74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

