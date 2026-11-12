## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c87adabf-dfaa-6de7-3ef4-a793eba9f5a6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).GetBlockListAsync_LeaseFail
now: 2026-11-12T00:49:42.3544972+00:00

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
etag: "0x26E7EB3EFBA8760"
last-modified: Thu, 12 Nov 2026 00:49:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e42db5c2-8df2-4c09-aa0c-0866835c250d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c87adabf-dfaa-6de7-3ef4-a793eba9f5a6/test-blob-64586056-6d99-c346-4c11-708a044cdb29

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
etag: "0x1DCDACC64FE4CE0"
last-modified: Thu, 12 Nov 2026 00:49:42 GMT
content-md5: f5MXNvg/NktrvADcycHbsQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b6ac893e-c892-4c6f-b7d0-9458229c70ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-c87adabf-dfaa-6de7-3ef4-a793eba9f5a6/test-blob-64586056-6d99-c346-4c11-708a044cdb29?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-id: 698b17e8-17f2-93c1-2309-4d0399321592
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 14c731ab-fab0-46d4-898c-00785e90c077
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:42 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-c87adabf-dfaa-6de7-3ef4-a793eba9f5a6?restype=container

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
x-ms-request-id: b005967a-ea63-4865-a45b-97741a5abfd8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

