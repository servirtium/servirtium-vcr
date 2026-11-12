## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d6aff322-4320-888b-1d18-e0f6e625a688?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).SetMetadataAsync_AccessConditions
now: 2026-11-12T00:45:10.7140829+00:00

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
etag: "0x21CDC6FF79AAC00"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3d067dd6-e5a7-4c47-a06d-db56255c6d6c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d6aff322-4320-888b-1d18-e0f6e625a688?restype=container&comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x271A1A428ED3D60"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f45e6df-2bcd-41c8-838d-3a5ee04f18ad
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-d6aff322-4320-888b-1d18-e0f6e625a688?restype=container

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
x-ms-request-id: f39d4967-f1ed-4d25-b0ce-ef160b9fe9a2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-814a5560-dc25-8e6a-d2b6-ff8ae6fae12a?restype=container

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
etag: "0x1FAC7907C83AB30"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7543dc09-f0dc-4fa8-8b49-7c4a6de2f6ac
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-814a5560-dc25-8e6a-d2b6-ff8ae6fae12a?restype=container&comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
If-Modified-Since: Wed, 11 Nov 2026 00:45:10 GMT
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2515900BCB15B40"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e66a9a24-cf9f-4ac4-98e4-e9183e3f3481
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-814a5560-dc25-8e6a-d2b6-ff8ae6fae12a?restype=container

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
x-ms-request-id: 74df2937-e1a2-445c-b5b4-eaad288ead9a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-14052f2a-be43-73f9-8599-9571e3d8daea?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20766FFB3B32660"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e33b17bb-c14d-418f-885d-99b5c4ca06b4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-14052f2a-be43-73f9-8599-9571e3d8daea?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 86a39fd1-8e60-45e6-8820-03694400a123
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20766FFB3B32660"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-lease-id: 86a39fd1-8e60-45e6-8820-03694400a123
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 185cc4f8-6b31-4ea4-a242-4e0bd996f2ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-14052f2a-be43-73f9-8599-9571e3d8daea?restype=container&comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-lease-id: 86a39fd1-8e60-45e6-8820-03694400a123
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x224E66FD0D46D80"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d05be57a-99b9-49f6-a2a5-ca53ed0b55a4
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-14052f2a-be43-73f9-8599-9571e3d8daea?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-lease-id: 86a39fd1-8e60-45e6-8820-03694400a123
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
x-ms-request-id: 64f7023c-74e8-4d36-a804-0b5f5b06a165
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

