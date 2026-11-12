## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0f925277-2ed4-be87-5a3f-5f7d2c9ae1d2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).GetBlockListAsync_Lease
now: 2026-11-12T00:50:04.4272307+00:00

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
etag: "0x1DA1820A55CBFE0"
last-modified: Thu, 12 Nov 2026 00:50:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f5bc33e-990f-4863-934b-08aea637c3a1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0f925277-2ed4-be87-5a3f-5f7d2c9ae1d2/test-blob-8cedbbf5-26c4-a1c0-7edc-fe9776d8a383

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
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F5135AB0614E0"
last-modified: Thu, 12 Nov 2026 00:50:04 GMT
content-md5: BsJY1dx5k01h0siiXpxhNA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c65fe6b1-f474-4583-b529-6eb1afa9d60c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-0f925277-2ed4-be87-5a3f-5f7d2c9ae1d2/test-blob-8cedbbf5-26c4-a1c0-7edc-fe9776d8a383?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: a2bb9c71-0005-ca5b-875c-ac6895a4ebcd
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F5135AB0614E0"
last-modified: Thu, 12 Nov 2026 00:50:04 GMT
x-ms-lease-id: a2bb9c71-0005-ca5b-875c-ac6895a4ebcd
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 83b317f9-9c36-4306-bc0b-1d7c114705a5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-0f925277-2ed4-be87-5a3f-5f7d2c9ae1d2/test-blob-8cedbbf5-26c4-a1c0-7edc-fe9776d8a383?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: a2bb9c71-0005-ca5b-875c-ac6895a4ebcd
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:50:04 GMT
etag: "0x22F5135AB0614E0"
content-type: application/xml
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1125be0-87c1-4328-a493-92b19067d5ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:04 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks/><UncommittedBlocks/></BlockList>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-0f925277-2ed4-be87-5a3f-5f7d2c9ae1d2?restype=container

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
x-ms-request-id: cf076f48-57f8-4bb3-b431-21a6118df466
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

