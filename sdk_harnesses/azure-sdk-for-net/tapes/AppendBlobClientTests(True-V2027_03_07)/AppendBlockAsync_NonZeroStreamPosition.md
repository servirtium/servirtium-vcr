## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ff1e474a-3ae0-78f0-b024-b37c5d79fa53?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).AppendBlockAsync_NonZeroStreamPosition
now: 2026-11-12T00:50:45.9494300+00:00

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
etag: "0x1F3816EF2E51060"
last-modified: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0150f342-ed1f-4070-942a-48aeda677b7b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ff1e474a-3ae0-78f0-b024-b37c5d79fa53/test-blob-1090c987-ce71-bfda-dc43-b0a2ef0d3bf8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21B447429F14B40"
last-modified: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c655d7f2-6a66-4622-8455-6f8cc3bbadd2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ff1e474a-3ae0-78f0-b024-b37c5d79fa53/test-blob-1090c987-ce71-bfda-dc43-b0a2ef0d3bf8?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
m+VbgLQox3qsiikvx96aJc2l2ww4qocIi7DuXi/cD6B4KPAAY3qFiLE7KnRN4v/ZIhCAIndrpPFe
U/UEOWlL0HqIt5/umsFTH1Ja/X8SuqiwFTwfW+0pDIT/ohCFgU9I8Fr5xCtg64dPLQIkEadxS5hM
UyQsK3SNX6oa7/ewzp4DEgwlGfV9Tym0zy7qBPvcjVd3OS0qG8Tla2WARfyQnl5kIf6aTDGjzgP6
eFxGo1qvPmGgOZVw2PdIP66Q/QotJDHPhuL9QkAl1GoqL6Non8gK0Qea72TJ80kHUg2DEtD5zVMq
dxx3sfwhemUqRqhU35/lhSwCkjTMBZKZ9e8yosGaMGJPPiirkx8LeHT/n62gs3NtnY2k9joeXXGK
3rwM7tikjxVGBaF3OfIN9xnAzWXk+EJ8xQQ09TonMOC2IbRj/4qcWw+YWq7R9WSbl/8hXpAMpuZ5
jynUb5naH9TBwRg9qfiPJHJVS52Uq8+gmV47BdFQqXvN6W9gyOt1vjvZEDRLXe0HkTodtlpI5eRa
M9Y7nxkDcRedb8CIL1yH341iu5qbVDtwM3SXMvMghQSKBpQUOh4h1Z8cre0tfmLeldbN5ilJvt6b
ymulbD4kfeq7/SjHc6VuQOX7f6dOQ7URuJwcUp7aQUe1eW+yfGlg+DACcYA5FiIxXqVETj83TIY=
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x279E32906593780"
last-modified: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-content-crc64: 5fIR9zCd/nw=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31387d84-6032-4fa5-81f6-f03bfed6b69f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-ff1e474a-3ae0-78f0-b024-b37c5d79fa53/test-blob-1090c987-ce71-bfda-dc43-b0a2ef0d3bf8

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
last-modified: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:45 GMT
content-length: 512
content-type: application/octet-stream
etag: "0x279E32906593780"
content-md5: PrYgFD/bfv7/yXur21bTZg==
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3ccbc5c-f9b6-403d-9a36-d56633a2198d
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:50:46 GMT
x-ms-blob-committed-block-count: 1
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
m+VbgLQox3qsiikvx96aJc2l2ww4qocIi7DuXi/cD6B4KPAAY3qFiLE7KnRN4v/ZIhCAIndrpPFe
U/UEOWlL0HqIt5/umsFTH1Ja/X8SuqiwFTwfW+0pDIT/ohCFgU9I8Fr5xCtg64dPLQIkEadxS5hM
UyQsK3SNX6oa7/ewzp4DEgwlGfV9Tym0zy7qBPvcjVd3OS0qG8Tla2WARfyQnl5kIf6aTDGjzgP6
eFxGo1qvPmGgOZVw2PdIP66Q/QotJDHPhuL9QkAl1GoqL6Non8gK0Qea72TJ80kHUg2DEtD5zVMq
dxx3sfwhemUqRqhU35/lhSwCkjTMBZKZ9e8yosGaMGJPPiirkx8LeHT/n62gs3NtnY2k9joeXXGK
3rwM7tikjxVGBaF3OfIN9xnAzWXk+EJ8xQQ09TonMOC2IbRj/4qcWw+YWq7R9WSbl/8hXpAMpuZ5
jynUb5naH9TBwRg9qfiPJHJVS52Uq8+gmV47BdFQqXvN6W9gyOt1vjvZEDRLXe0HkTodtlpI5eRa
M9Y7nxkDcRedb8CIL1yH341iu5qbVDtwM3SXMvMghQSKBpQUOh4h1Z8cre0tfmLeldbN5ilJvt6b
ymulbD4kfeq7/SjHc6VuQOX7f6dOQ7URuJwcUp7aQUe1eW+yfGlg+DACcYA5FiIxXqVETj83TIY=
```

## Interaction 4: DELETE /devstoreaccount1/test-container-ff1e474a-3ae0-78f0-b024-b37c5d79fa53?restype=container

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
x-ms-request-id: a7140da5-a414-4680-9631-6ce400b29288
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

