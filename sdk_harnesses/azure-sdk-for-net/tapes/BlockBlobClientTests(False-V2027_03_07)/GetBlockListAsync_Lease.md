## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-55e6087d-1793-2cdb-c2c8-23807db1497b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).GetBlockListAsync_Lease
now: 2026-11-12T00:49:42.0825563+00:00

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
etag: "0x1F4A3EE7BE5C510"
last-modified: Thu, 12 Nov 2026 00:49:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b710ebce-c249-4aa7-9442-bf08e11c725d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-55e6087d-1793-2cdb-c2c8-23807db1497b/test-blob-13439bdc-1f67-5229-2932-04c8bb745d85

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
etag: "0x1DB11D3EAD13A50"
last-modified: Thu, 12 Nov 2026 00:49:42 GMT
content-md5: BNUe0HVZjU5WeN5NmZXtCw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1bc6d20d-85b6-4836-841b-0478d228a06c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-55e6087d-1793-2cdb-c2c8-23807db1497b/test-blob-13439bdc-1f67-5229-2932-04c8bb745d85?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 37d5afe9-bb1e-6b39-2658-df2d37b48478
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DB11D3EAD13A50"
last-modified: Thu, 12 Nov 2026 00:49:42 GMT
x-ms-lease-id: 37d5afe9-bb1e-6b39-2658-df2d37b48478
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1af72335-0238-41f7-98b9-2e2c0dc12221
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-55e6087d-1793-2cdb-c2c8-23807db1497b/test-blob-13439bdc-1f67-5229-2932-04c8bb745d85?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: 37d5afe9-bb1e-6b39-2658-df2d37b48478
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:49:42 GMT
etag: "0x1DB11D3EAD13A50"
content-type: application/xml
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 74b4c138-3529-4b4c-9c2c-b9002c469af7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:42 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><BlockList><CommittedBlocks/><UncommittedBlocks/></BlockList>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-55e6087d-1793-2cdb-c2c8-23807db1497b?restype=container

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
x-ms-request-id: f2dcabdf-3829-4927-b69d-7f8f2998146c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

