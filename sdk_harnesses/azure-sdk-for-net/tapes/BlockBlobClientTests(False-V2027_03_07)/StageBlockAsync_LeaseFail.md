## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1239f982-068a-5a47-9916-2c01578efeb3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockAsync_LeaseFail
now: 2026-11-12T00:49:43.6917413+00:00

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
etag: "0x1E57AF219CE74C0"
last-modified: Thu, 12 Nov 2026 00:49:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4fc4d5f-6692-458c-a32d-dc7d972172dc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1239f982-068a-5a47-9916-2c01578efeb3/test-blob-a0ffe5aa-7659-3292-c4d1-f7e6e92bf5e2

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
etag: "0x23DAFD23F827E80"
last-modified: Thu, 12 Nov 2026 00:49:43 GMT
content-md5: BO2cAqqhOlV6v9ek5TMdFw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9938e162-fce3-4ae0-91f8-86e2cb9d9b11
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1239f982-068a-5a47-9916-2c01578efeb3/test-blob-a0ffe5aa-7659-3292-c4d1-f7e6e92bf5e2?comp=block&blockid=dGVzdC1ibG9jay05ZmYyNDkyNS1kYzc3LTExOGQtNGRkYi03MzU5NDA1NmJmYTM%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-lease-id: 72c25f3b-baac-7e61-59c9-33a6f0078ad4
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
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: d1d9c9aa-df08-4770-9829-b1379655ddc3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:43 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-1239f982-068a-5a47-9916-2c01578efeb3?restype=container

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
x-ms-request-id: 102844f0-2691-4630-84c5-d74b285d3c14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

