## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a53c0c97-a8ae-88ef-a93e-b68a6ea05e2c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockAsync_Error
now: 2026-11-12T00:49:43.0496334+00:00

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
etag: "0x25CE4A57E618100"
last-modified: Thu, 12 Nov 2026 00:49:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f2e06b9e-c4ae-4d5a-a420-5a0ed3f72348
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a53c0c97-a8ae-88ef-a93e-b68a6ea05e2c/test-blob-0e6ce58e-1a61-1f0f-97fa-669cc8bc241a?comp=block&blockid=test-block-095fb971-6dbe-d5d2-7357-40aa1109cdbc

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
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
x-ms-error-code: InvalidQueryParameterValue
x-ms-request-id: 6edee533-e309-416d-bcb8-60aeb9723d5d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:43 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidQueryParameterValue</Code>
  <Message>Value for one of the query parameters specified in the request URI is invalid.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <QueryParameterName>blockid</QueryParameterName>
  <QueryParameterValue>test-block-095fb971-6dbe-d5d2-7357-40aa1109cdbc</QueryParameterValue>
  <Reason>Not a valid base64 string.</Reason>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-a53c0c97-a8ae-88ef-a93e-b68a6ea05e2c?restype=container

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
x-ms-request-id: 5db7a430-e121-4b37-9235-9fad7d8d8a22
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

