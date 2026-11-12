## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7d371357-ebb9-a1d1-5c5c-a8cd086d2ba9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).CreateAsync_EncryptionScopeSAS_GenerateSasUri
now: 2026-11-12T00:50:35.1425894+00:00

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
etag: "0x1EEBCAB14973690"
last-modified: Thu, 12 Nov 2026 00:50:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2b5b524d-fad7-4ba0-ad75-db0e8a8745b6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7d371357-ebb9-a1d1-5c5c-a8cd086d2ba9/test-blob-edacff3a-b8b6-3a87-7f36-bcd87250a6fd?sv=2027-03-07&se=2026-11-13T00%3A50%3A35Z&sr=b&sp=racwdxyltmei&sig=Ja0sJ5OQmjxkvRtmEC7gc%2Fvqfiyca6YyOWqjOB6YqWM%3D

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
etag: "0x2170725D21BA560"
last-modified: Thu, 12 Nov 2026 00:50:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea634662-3000-412b-8c9d-b0b460411a7d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-7d371357-ebb9-a1d1-5c5c-a8cd086d2ba9?restype=container

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
x-ms-request-id: 6334e599-4eea-4f5b-a40d-0fc0ca51a1cc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

