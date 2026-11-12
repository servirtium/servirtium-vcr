## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-df76658c-e722-b305-43e2-4adb178f501a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateAsync_EncryptionScopeSAS
now: 2026-11-12T00:50:49.7289409+00:00

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
etag: "0x24E8AEF556EF0A0"
last-modified: Thu, 12 Nov 2026 00:50:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1dcf3441-1e0c-4ae0-82aa-7b0499621393
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-df76658c-e722-b305-43e2-4adb178f501a/test-blob-733d4814-2959-3e91-66ec-c8f550e90661?sv=2027-03-07&se=2026-11-13T00%3A50%3A49Z&sr=b&sp=racwdxyltmei&sig=E%2Faya4S3ody3Iz9RVKXlEpwHRAC0Arh6a5dD7WdzPIM%3D

### Request headers recorded for playback:

```
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
etag: "0x22674AE3A013760"
last-modified: Thu, 12 Nov 2026 00:50:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 126a0774-fe77-4cf4-8d6e-e94386d8f5b3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-df76658c-e722-b305-43e2-4adb178f501a?restype=container

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
x-ms-request-id: 49b2a600-ec00-4c84-8b89-84d72b6ffdac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

