## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e938a282-c086-a746-baf1-f3c486624d12?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync
now: 2026-11-12T00:46:33.6655022+00:00

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
etag: "0x252B987B0690820"
last-modified: Thu, 12 Nov 2026 00:46:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2cc56c5b-896f-4219-ab58-c110b36bc54b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e938a282-c086-a746-baf1-f3c486624d12/test-blob-6708fb44-1985-fbc7-cdf5-b3b0dbf8a7b9

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
4WMKtuv9v4q8o4ApNhtUwBy4qoUMtLY9cf/HyvmMekS+CB/lfgU0hOOtLeI/HHCenDKozbjIBS2t
zUXrNvSQLyk7ay78bkIXgyWiX4bT/VSOKC3G5KyM9QLyOLHASE7vHP25BLFCoi7wkEqSJqam2c/w
XQ7GyUp8rnYrCjWRVzvXs0KJGvijS4X/1lRi+s9cS1/hz+tAKFOyPVU6F5j4XzkOu3NjHL/WTRGI
x/P2GbSmzr7Wr4hQlorv1t2jaDTtBnYaVD5c+C6gCoHZt2FfuyOhlEnaIq+wvSTodEbiM+Xdm8B8
3MV1SdWPNqUGd98pjxu5AtPqE+TGapYadITovtac/Byg4t9eK0pzSusKqkZFv+QrKDER8ojctnEu
W9VQpnjOaXrCia07W9aJd8j4vL9Q1bWgvZWliwqUwyxtL891IqRzO0HLgjU278xaiHu/5Pmy3YYg
sOniKN1wLsWBzSwHFFQkhIB+hFJ/ac3JSwOO1N8yu1FJVHK6kBNjW1NwtSGgU3Qnm195NFkzoUcb
Gd3a4VrlThLavb/iafRtGyn+DrOrKPiPZziAuYf4FrMqn3c1iHn5imcPxpW0RDJrDBgwNJKUb/Dl
S3ohZZWL4qcMt8l9N5KvBYNLnGJi2iIGFaxux+EgljCGTz3/2CTRg+PuqI1o7dSFgS8PSNKOg3BX
G1DoHRrF6yGZ9+hVsC1eehh+dDGVnifY6EayEU5d98zMp73U6WbJKbxszvbsMNACsM65Dw4/wn0p
DzTTEtrSO/8biQhwipCxtUt0KM8w7Lh1sGCAo+i9jOQ/qtky9hbimZP30KbIkiU9B1rDypmu+CJ8
XWJ5UpcXXfwjMN+2f740ko87ORsRrR47QpuN+cJKkbK2tpi0aEb733OppGFGhoibjzcKcr8Haq9D
PhD7iWM52J4tAMklgClJQFmoaAi89LwT8mqLQB/yr0vpcCo2/1YPb8vDGIa+dQ4NwDJlXgGmh0lU
6Jf4rpd+OlB9PBD/E0ADmfg9+Ns1VHxcfYDtjFFKQujg4he/FsAzRd02QTn+Dq3xYsQJaY5uHpMa
nDEXkK7+M/onHjApQ4I3CbP9/xNDXm7S/CmMQNhZcsOEpHmPG7QvNw0+1u98yB9B0WDbcB9/1z7C
RZSEcvIhzaxtpZ8JqO3+zscGBId/VTMKSm94fgKkBMw7zdYfqsUaHAhDDyN/OCly3KFXedK2QvBh
eieDqU+pyaDSzdoX3yMC6+h/PEUQixFGBaFgTIr6hIrlvjCel3K5mUaCrGtOW/1+VY7qNwaqUO4V
PKStSXwV2EhQMSHyZFN1xaL/jd6m+Kmk4vf8EE2DO21CiFrNC1DJbNQi/SrbjPE6dHFkq8MQbg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x216505751838EC0"
last-modified: Thu, 12 Nov 2026 00:46:33 GMT
content-md5: idRJ+Oab1VEdwuImqYeKTw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 586729a2-df03-42d3-a28b-b1faec45e78e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-e938a282-c086-a746-baf1-f3c486624d12/test-blob-6708fb44-1985-fbc7-cdf5-b3b0dbf8a7b9

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:46:33 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:33 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x216505751838EC0"
content-md5: idRJ+Oab1VEdwuImqYeKTw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7af92a78-fd4a-4561-9f52-18aa5710ed07
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:33 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: idRJ+Oab1VEdwuImqYeKTw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
4WMKtuv9v4q8o4ApNhtUwBy4qoUMtLY9cf/HyvmMekS+CB/lfgU0hOOtLeI/HHCenDKozbjIBS2t
zUXrNvSQLyk7ay78bkIXgyWiX4bT/VSOKC3G5KyM9QLyOLHASE7vHP25BLFCoi7wkEqSJqam2c/w
XQ7GyUp8rnYrCjWRVzvXs0KJGvijS4X/1lRi+s9cS1/hz+tAKFOyPVU6F5j4XzkOu3NjHL/WTRGI
x/P2GbSmzr7Wr4hQlorv1t2jaDTtBnYaVD5c+C6gCoHZt2FfuyOhlEnaIq+wvSTodEbiM+Xdm8B8
3MV1SdWPNqUGd98pjxu5AtPqE+TGapYadITovtac/Byg4t9eK0pzSusKqkZFv+QrKDER8ojctnEu
W9VQpnjOaXrCia07W9aJd8j4vL9Q1bWgvZWliwqUwyxtL891IqRzO0HLgjU278xaiHu/5Pmy3YYg
sOniKN1wLsWBzSwHFFQkhIB+hFJ/ac3JSwOO1N8yu1FJVHK6kBNjW1NwtSGgU3Qnm195NFkzoUcb
Gd3a4VrlThLavb/iafRtGyn+DrOrKPiPZziAuYf4FrMqn3c1iHn5imcPxpW0RDJrDBgwNJKUb/Dl
S3ohZZWL4qcMt8l9N5KvBYNLnGJi2iIGFaxux+EgljCGTz3/2CTRg+PuqI1o7dSFgS8PSNKOg3BX
G1DoHRrF6yGZ9+hVsC1eehh+dDGVnifY6EayEU5d98zMp73U6WbJKbxszvbsMNACsM65Dw4/wn0p
DzTTEtrSO/8biQhwipCxtUt0KM8w7Lh1sGCAo+i9jOQ/qtky9hbimZP30KbIkiU9B1rDypmu+CJ8
XWJ5UpcXXfwjMN+2f740ko87ORsRrR47QpuN+cJKkbK2tpi0aEb733OppGFGhoibjzcKcr8Haq9D
PhD7iWM52J4tAMklgClJQFmoaAi89LwT8mqLQB/yr0vpcCo2/1YPb8vDGIa+dQ4NwDJlXgGmh0lU
6Jf4rpd+OlB9PBD/E0ADmfg9+Ns1VHxcfYDtjFFKQujg4he/FsAzRd02QTn+Dq3xYsQJaY5uHpMa
nDEXkK7+M/onHjApQ4I3CbP9/xNDXm7S/CmMQNhZcsOEpHmPG7QvNw0+1u98yB9B0WDbcB9/1z7C
RZSEcvIhzaxtpZ8JqO3+zscGBId/VTMKSm94fgKkBMw7zdYfqsUaHAhDDyN/OCly3KFXedK2QvBh
eieDqU+pyaDSzdoX3yMC6+h/PEUQixFGBaFgTIr6hIrlvjCel3K5mUaCrGtOW/1+VY7qNwaqUO4V
PKStSXwV2EhQMSHyZFN1xaL/jd6m+Kmk4vf8EE2DO21CiFrNC1DJbNQi/SrbjPE6dHFkq8MQbg==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-e938a282-c086-a746-baf1-f3c486624d12?restype=container

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
x-ms-request-id: 36c9628c-a55c-46be-8d38-e147c700a9a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

