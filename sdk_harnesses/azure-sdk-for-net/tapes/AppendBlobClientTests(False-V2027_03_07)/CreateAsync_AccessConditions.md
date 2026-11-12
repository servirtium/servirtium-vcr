## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cf314757-677b-9f6b-5b02-a1545588193f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).CreateAsync_AccessConditions
now: 2026-11-12T00:50:33.8591435+00:00

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
etag: "0x2378A8A76051E00"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6bb1caf-e807-44bb-9749-e5c9c2363661
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cf314757-677b-9f6b-5b02-a1545588193f/test-blob-74252531-a687-40cd-2c0d-205bda3b97e1

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
etag: "0x1C28D037B1AC400"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 710afa18-ce8e-4f41-a394-d27f145cdb5f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-cf314757-677b-9f6b-5b02-a1545588193f/test-blob-74252531-a687-40cd-2c0d-205bda3b97e1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
etag: "0x1D83D34DC7C1410"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 896aa433-afbe-42fb-8a33-27e2e34b198f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-cf314757-677b-9f6b-5b02-a1545588193f?restype=container

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
x-ms-request-id: 05644253-193f-4bf8-9888-fc1a45c049b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-0d923653-c148-4e80-f4f1-ef257fd77a6a?restype=container

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
etag: "0x1E90E85BE5DAB30"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f7d74cfd-bee4-4ac2-b7e3-2ec7455bba00
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-0d923653-c148-4e80-f4f1-ef257fd77a6a/test-blob-b6bd01d9-14e9-b1e3-79f1-a36e4610c41f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
etag: "0x26F9F940227BBE0"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6216b677-1d00-44b3-b5e2-5ed73a3af990
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-0d923653-c148-4e80-f4f1-ef257fd77a6a/test-blob-b6bd01d9-14e9-b1e3-79f1-a36e4610c41f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:50:33 GMT
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
etag: "0x25618E601588440"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45c4f93f-5339-49b0-b7d8-d4ac721a4af1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-0d923653-c148-4e80-f4f1-ef257fd77a6a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: fef57636-be47-479d-bf25-7ea4d0181cc2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-1f00c06a-0cf5-70f6-a4d6-7f95b6a8c055?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20AE07BC1F03AA0"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3629902b-f8e8-4c2e-90f7-21a064e93e32
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-1f00c06a-0cf5-70f6-a4d6-7f95b6a8c055/test-blob-d981b693-e07e-3ff7-52e1-93571d1208e4

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
etag: "0x1F50439BB3BB690"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 445ac20e-b826-48a0-9080-729ba9c827e2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-1f00c06a-0cf5-70f6-a4d6-7f95b6a8c055/test-blob-d981b693-e07e-3ff7-52e1-93571d1208e4

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:50:33 GMT
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
etag: "0x252E73F5AAFA420"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5aab4207-93aa-459f-82fa-f55c5a5881ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-1f00c06a-0cf5-70f6-a4d6-7f95b6a8c055?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: a948285a-f400-4887-be0f-300042a0c9e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-bfbad02d-5bd6-cd74-0a4d-1212954efad1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23885DFEC659580"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 476f53a7-7bb4-4e9c-830c-fd58ff95f070
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-bfbad02d-5bd6-cd74-0a4d-1212954efad1/test-blob-8fda4e31-ea8e-8aa1-c8c1-cc14789f5292

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
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
etag: "0x20D6D4C6FFEF960"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 03151640-f5cd-4f7d-9ab8-622d41d8ef0e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-bfbad02d-5bd6-cd74-0a4d-1212954efad1/test-blob-8fda4e31-ea8e-8aa1-c8c1-cc14789f5292

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x20D6D4C6FFEF960"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc9b0924-50be-4ec1-88a9-8b330a830d75
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-bfbad02d-5bd6-cd74-0a4d-1212954efad1/test-blob-8fda4e31-ea8e-8aa1-c8c1-cc14789f5292

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x20D6D4C6FFEF960"
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
etag: "0x24D019CC8687FE0"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24354bbf-247c-4008-9a31-7d768e7f3921
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-bfbad02d-5bd6-cd74-0a4d-1212954efad1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: 791c4868-ec5b-4b22-9ac6-bf17246bc96c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-e6689ace-00ed-387e-42b4-cf31cee4aa04?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27C74DED457EAA0"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a4e7df7-3cb4-429b-96e3-e94dcdafabc1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-e6689ace-00ed-387e-42b4-cf31cee4aa04/test-blob-cf26c2e7-7837-4255-2f30-f7158e60556a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
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
etag: "0x20564EE4BFCFA60"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0f74d703-c000-4d32-9937-70c7dce43b05
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-e6689ace-00ed-387e-42b4-cf31cee4aa04/test-blob-cf26c2e7-7837-4255-2f30-f7158e60556a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
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
etag: "0x1BEAB1A3F3418A0"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0d73c6f-7659-4082-9426-93c128addea7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-e6689ace-00ed-387e-42b4-cf31cee4aa04?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: 1d803ff1-e6d3-41fb-9a63-bf624e77b30e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-fa4380fa-13e5-30e3-cfa2-4dda1b6fbbe3?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F88C5FDF8CA510"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 052f1f2a-961b-4812-a835-ca789a7bb2da
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-fa4380fa-13e5-30e3-cfa2-4dda1b6fbbe3/test-blob-b52dc817-8279-565a-4425-b7bd0969a9e2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
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
etag: "0x1CABAEB0FCDCE60"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9318777-2f32-4924-a710-dc7949ae0e2d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-fa4380fa-13e5-30e3-cfa2-4dda1b6fbbe3/test-blob-b52dc817-8279-565a-4425-b7bd0969a9e2?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 4e36655f-afa1-d31e-dff5-ff952b7b27bf
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CABAEB0FCDCE60"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-lease-id: 4e36655f-afa1-d31e-dff5-ff952b7b27bf
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ee6ac0f0-cb6c-4e16-877c-a6ecc88923bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-fa4380fa-13e5-30e3-cfa2-4dda1b6fbbe3/test-blob-b52dc817-8279-565a-4425-b7bd0969a9e2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-blob-type: AppendBlob
x-ms-lease-id: 4e36655f-afa1-d31e-dff5-ff952b7b27bf
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2753D674E7596A0"
last-modified: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f3d7fa5d-b4d4-49b1-a037-7192a080b71c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-fa4380fa-13e5-30e3-cfa2-4dda1b6fbbe3?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: ee406130-25ed-44bb-8939-f152495dbfe9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

