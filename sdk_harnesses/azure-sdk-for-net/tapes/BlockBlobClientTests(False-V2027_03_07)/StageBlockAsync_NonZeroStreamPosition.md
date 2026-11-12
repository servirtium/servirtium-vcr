## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f3943b02-aeaf-c85b-02e8-b84d854e9972?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockAsync_NonZeroStreamPosition
now: 2026-11-12T00:49:44.1037446+00:00

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
etag: "0x25ED80CD552EEC0"
last-modified: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6360f85-0ee0-4438-b62b-397e640baf90
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f3943b02-aeaf-c85b-02e8-b84d854e9972/test-blob-e2b309b7-15e2-770f-1fea-73c506aded50?comp=block&blockid=dGVzdC1ibG9jay1kNmQ4MTEzNi03MmQ4LTlhM2EtMzMxZC05NGNiZmEyMTQ1NGM%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
p43ea0AdO3EY3j8gzFrp/PQnW/8Wy9hL+Oy0gxQdnDv7vpausWAY8d5mjMf7sYURLSJEOUWdgNu0
knJTabhd+0IDJQ3DOkuTDmogrz8RT0dmo1by2WL2XT26+h7uxYcmCZGE+It4TfLXsCrbfNGco0Mr
7MZhayHfDcfQCUAspUni+qWujFe77lVjGig3G+BsHlbbw9jBxJ5vpOrDqESyqgvh+IIs7hfrb/5w
/lD5p/HmY+rpUeFwITUGPuds90YQsXAcViJePy8/8FPaUMZOdv353ERZyFkpcddMJq8vf3e3YEzf
3FHPiCS7qmCOldBvt8jqcxsCtugW8uVLEhl/D3HbI/B5bpmrKVQgnh74m9sG3G7nRQtctalkyOps
g3YKO5rvs3Lg9kguPknG4RjKHlcJRDWrmMplfm1HFKavPqbeFmODCOhoJuYluQbCldOQmqqSYj5A
X6PQijQEmeGifwCj6Mu1RhVvoR5Ohd/Eo+matnr7HNxnnba/s36zY4wFgzkGHq0H21OUI8Ef8dnE
DOdLauJmpmIkO0oV9ZOXuz2RSQGlvoQ7k9snZvgaR6zc+6aXaPmqntzW4uJj8uW//WiDjafXHk5i
D9YHP0BpCfSeOPrt/1JE56slztyh2KD1Z2mQlrkEBdxYNFgiol6cbdjuxLrr0v0VP6b8slBywDc=
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 22da4d5f-1b4c-4280-bd49-cf231658fa14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-content-crc64: usDHCjerjsI=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f3943b02-aeaf-c85b-02e8-b84d854e9972/test-blob-e2b309b7-15e2-770f-1fea-73c506aded50?comp=blocklist

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<BlockList><Latest>dGVzdC1ibG9jay1kNmQ4MTEzNi03MmQ4LTlhM2EtMzMxZC05NGNiZmEyMTQ1NGM=</Latest></BlockList>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EADAC0EEA481E0"
last-modified: Thu, 12 Nov 2026 00:49:44 GMT
content-md5: vQ/7muBzyAu1cYqt9z2cLg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3b6d9dd7-a3b3-4f97-9a1f-04e04ffcf240
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-f3943b02-aeaf-c85b-02e8-b84d854e9972/test-blob-e2b309b7-15e2-770f-1fea-73c506aded50

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:44 GMT
content-length: 512
content-type: application/octet-stream
etag: "0x1EADAC0EEA481E0"
content-md5: +Zr9SICoKi92KKf0aDkCjw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b6e4807-9b5f-4d2c-8e18-af931f4ee4de
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
p43ea0AdO3EY3j8gzFrp/PQnW/8Wy9hL+Oy0gxQdnDv7vpausWAY8d5mjMf7sYURLSJEOUWdgNu0
knJTabhd+0IDJQ3DOkuTDmogrz8RT0dmo1by2WL2XT26+h7uxYcmCZGE+It4TfLXsCrbfNGco0Mr
7MZhayHfDcfQCUAspUni+qWujFe77lVjGig3G+BsHlbbw9jBxJ5vpOrDqESyqgvh+IIs7hfrb/5w
/lD5p/HmY+rpUeFwITUGPuds90YQsXAcViJePy8/8FPaUMZOdv353ERZyFkpcddMJq8vf3e3YEzf
3FHPiCS7qmCOldBvt8jqcxsCtugW8uVLEhl/D3HbI/B5bpmrKVQgnh74m9sG3G7nRQtctalkyOps
g3YKO5rvs3Lg9kguPknG4RjKHlcJRDWrmMplfm1HFKavPqbeFmODCOhoJuYluQbCldOQmqqSYj5A
X6PQijQEmeGifwCj6Mu1RhVvoR5Ohd/Eo+matnr7HNxnnba/s36zY4wFgzkGHq0H21OUI8Ef8dnE
DOdLauJmpmIkO0oV9ZOXuz2RSQGlvoQ7k9snZvgaR6zc+6aXaPmqntzW4uJj8uW//WiDjafXHk5i
D9YHP0BpCfSeOPrt/1JE56slztyh2KD1Z2mQlrkEBdxYNFgiol6cbdjuxLrr0v0VP6b8slBywDc=
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f3943b02-aeaf-c85b-02e8-b84d854e9972?restype=container

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
x-ms-request-id: 068a0b19-9b24-4082-88ae-b70fa6bee324
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

