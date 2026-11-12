## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4f31b2a7-8254-e5cc-189c-8f16862cfe9e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).Ctor_StorageAccountAudience
now: 2026-11-12T00:50:53.4996443+00:00

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
etag: "0x27481B88F7CFBE0"
last-modified: Thu, 12 Nov 2026 00:50:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6bf316c7-5346-4050-90ba-16c08c5221fb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4f31b2a7-8254-e5cc-189c-8f16862cfe9e/test-blob-0ede122d-69f9-a798-35e5-455a0dd50613

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
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
etag: "0x270494FD5370C80"
last-modified: Thu, 12 Nov 2026 00:50:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e22a0234-764e-4bc2-8409-da814e91376b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-4f31b2a7-8254-e5cc-189c-8f16862cfe9e?restype=container

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
x-ms-request-id: cc7841e3-511a-4e33-bcf4-186a215aec3b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

