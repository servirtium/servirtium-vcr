## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0fffeaa3-1cc4-1fed-0a50-955520395f69?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockAsync_Error
now: 2026-11-12T00:50:05.3287227+00:00

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
etag: "0x27AF89A5EF43340"
last-modified: Thu, 12 Nov 2026 00:50:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4be7d3a4-a508-463a-9d06-3eff58db7ce8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0fffeaa3-1cc4-1fed-0a50-955520395f69/test-blob-5d9e3dbc-2462-ae6c-5d84-316e209ff097?comp=block&blockid=test-block-52872628-7dcd-d3d0-a8ba-a33176315944

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
x-ms-request-id: a49b907e-c7ec-43da-9c38-df89b98ef091
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:05 GMT
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
  <QueryParameterValue>test-block-52872628-7dcd-d3d0-a8ba-a33176315944</QueryParameterValue>
  <Reason>Not a valid base64 string.</Reason>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-0fffeaa3-1cc4-1fed-0a50-955520395f69?restype=container

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
x-ms-request-id: 682e916d-86bd-449e-95b6-d752ce3fa3ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

