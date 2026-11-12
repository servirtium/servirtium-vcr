## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-054bbe7f-5b34-bef4-0296-13a29618abf3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).UploadAsync_NonZeroStreamPosition
now: 2026-11-12T00:50:13.2382368+00:00

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
etag: "0x20AA276E62505C0"
last-modified: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7521119-9f58-4f42-841e-b9860f249e95
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-054bbe7f-5b34-bef4-0296-13a29618abf3/test-blob-2fa5a47b-7898-dc7a-cbc9-c710810c81c2

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
j0hQ/FsBa8j1Q51kUS+B8jQBaYLV7C9k6+MMjmZUQbZaIGg1E3ZUtHNIaV4cMh+TW5D/QAYhS6MY
6xF39NxhoALmCTDGS96+rLQOjYPRSLjDeTPVVAGvOdXFHCdl3cCX5shcNSnvzA+xQZRSEr0gR6NY
tHupjEsBNs9aAS+3WM/zd6e6dBKO1KwjIxNsXScYpNWEDChF7Vl9Wv5alcrg+ujEXpoWZdKQyt/O
hWg4lNmoQlxZMkymrolNPRkUND/hQykqqP6MAj8C80JJdmfxRMYlsVNuhsecHq8RyCi4fJWg7UI/
DezaGz8dVz8KXTghXPhT7oLrc7xhjolPezkWSXesqIklsjfaSpYTUC6IksF372wwZY0TtHmF3X5i
i58GBg3HXbWv/KnAeKTs2CKN2PzI2IzM5uTpmfMPn9S4d7/2DEohwDQLx/LCb+zpJtxX9wWCmrMT
OSAp3sPBn1zVBwHk9czYbBjHvBCZCXb3AHIXuKjPNt0L49Iq+OJxSSiV7WfrBDEQf4vsut2jeTCp
Md5Rque0BtEj2BL5rXQ1VnLoAxwPDPtBBzgc4nv/aGmigMcEIJ5A4eaWyCsfFtEXt2RqunYTmiTi
D6OulyRWI2+pVy2sMTbTpyI1eUTPIvBnBSsXla7yj+aiIRD7kknCP6S7db+kaoUulxNT3SHgEu0=
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x203EF3151868780"
last-modified: Thu, 12 Nov 2026 00:50:13 GMT
content-md5: P/PN8kBOybE55yh6qONXAQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e68edcab-b7ce-4561-9578-7b9610ddaebe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-054bbe7f-5b34-bef4-0296-13a29618abf3/test-blob-2fa5a47b-7898-dc7a-cbc9-c710810c81c2

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
last-modified: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:13 GMT
content-length: 512
content-type: application/octet-stream
etag: "0x203EF3151868780"
content-md5: P/PN8kBOybE55yh6qONXAQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dc368175-dba6-4ede-8416-7f6f91828ada
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:50:13 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: P/PN8kBOybE55yh6qONXAQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
j0hQ/FsBa8j1Q51kUS+B8jQBaYLV7C9k6+MMjmZUQbZaIGg1E3ZUtHNIaV4cMh+TW5D/QAYhS6MY
6xF39NxhoALmCTDGS96+rLQOjYPRSLjDeTPVVAGvOdXFHCdl3cCX5shcNSnvzA+xQZRSEr0gR6NY
tHupjEsBNs9aAS+3WM/zd6e6dBKO1KwjIxNsXScYpNWEDChF7Vl9Wv5alcrg+ujEXpoWZdKQyt/O
hWg4lNmoQlxZMkymrolNPRkUND/hQykqqP6MAj8C80JJdmfxRMYlsVNuhsecHq8RyCi4fJWg7UI/
DezaGz8dVz8KXTghXPhT7oLrc7xhjolPezkWSXesqIklsjfaSpYTUC6IksF372wwZY0TtHmF3X5i
i58GBg3HXbWv/KnAeKTs2CKN2PzI2IzM5uTpmfMPn9S4d7/2DEohwDQLx/LCb+zpJtxX9wWCmrMT
OSAp3sPBn1zVBwHk9czYbBjHvBCZCXb3AHIXuKjPNt0L49Iq+OJxSSiV7WfrBDEQf4vsut2jeTCp
Md5Rque0BtEj2BL5rXQ1VnLoAxwPDPtBBzgc4nv/aGmigMcEIJ5A4eaWyCsfFtEXt2RqunYTmiTi
D6OulyRWI2+pVy2sMTbTpyI1eUTPIvBnBSsXla7yj+aiIRD7kknCP6S7db+kaoUulxNT3SHgEu0=
```

## Interaction 3: DELETE /devstoreaccount1/test-container-054bbe7f-5b34-bef4-0296-13a29618abf3?restype=container

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
x-ms-request-id: d3cc4728-0876-4663-8456-4f8acc9ad279
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

