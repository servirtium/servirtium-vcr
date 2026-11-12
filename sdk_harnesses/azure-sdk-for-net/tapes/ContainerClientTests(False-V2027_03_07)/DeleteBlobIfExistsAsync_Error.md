## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7e42c55a-8d43-b95e-c911-b15e0642faec?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).DeleteBlobIfExistsAsync_Error
now: 2026-11-12T00:43:36.7883545+00:00

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
etag: "0x260EA6E36929740"
last-modified: Thu, 12 Nov 2026 00:43:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bd117119-f35f-4d0d-975b-54579632c09c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-7e42c55a-8d43-b95e-c911-b15e0642faec/test-blob-2b08ec64-9690-627c-faa7-d566a967492a

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: AuthorizationFailure
x-ms-request-id: d8489d6a-4ab7-4b4b-ac8e-8dfb44b1f65d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:36 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>AuthorizationFailure</Code>
  <Message>Server failed to authenticate the request. Make sure the value of the Authorization header is formed correctly including the signature.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-7e42c55a-8d43-b95e-c911-b15e0642faec?restype=container

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
x-ms-request-id: 202ea3cd-1b59-423f-b11c-55432a2078e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

