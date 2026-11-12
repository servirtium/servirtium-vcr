## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-039163da-7112-31cb-9221-e5855fc0d286?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).DeleteIfExistsAsync
now: 2026-11-12T00:44:42.6212395+00:00

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
etag: "0x1F77201B85FF8E0"
last-modified: Thu, 12 Nov 2026 00:44:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e8a5fd6b-b7fd-40bc-9497-d4c5df70b17c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-039163da-7112-31cb-9221-e5855fc0d286?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
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
x-ms-request-id: 93aaaded-7849-48d2-973e-98f68fbd1f7c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-039163da-7112-31cb-9221-e5855fc0d286?restype=container

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
x-ms-error-code: ContainerNotFound
x-ms-request-id: 3a1013bb-c62c-44d9-8297-ae34c38fc6ab
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:42 GMT
```
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ContainerNotFound</Code>
  <Message>The specified container does not exist.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

