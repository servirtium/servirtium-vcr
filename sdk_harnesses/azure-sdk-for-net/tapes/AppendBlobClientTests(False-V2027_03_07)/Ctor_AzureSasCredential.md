## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-59bf0002-00d4-4c7c-0428-c4a09bef31bc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).Ctor_AzureSasCredential
now: 2026-11-12T00:50:37.6709727+00:00

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
etag: "0x227BE59ED7006C0"
last-modified: Thu, 12 Nov 2026 00:50:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8fa381fd-6702-4b2d-8851-e136f8d341b6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-59bf0002-00d4-4c7c-0428-c4a09bef31bc/test-blob-07ae96f1-1522-9f28-0fb4-a4212c5b953f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
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
etag: "0x225A225909A3E60"
last-modified: Thu, 12 Nov 2026 00:50:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 99cea6cd-71dc-40a4-977a-b479c943c6b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:37 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-59bf0002-00d4-4c7c-0428-c4a09bef31bc/test-blob-07ae96f1-1522-9f28-0fb4-a4212c5b953f?sv=2027-03-07&st=2026-11-11T23%3A50%3A37Z&se=2026-11-12T01%3A50%3A37Z&sr=c&sp=racwdxltfi&sig=Hf%2Fg5GVlzry%2BCX3Euf9dDkfIY7l%2BuiS6VTfmtT5E3Bc%3D

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
last-modified: Thu, 12 Nov 2026 00:50:37 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:37 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x225A225909A3E60"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24789df2-66dd-428a-aabd-260945719bb9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:37 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-59bf0002-00d4-4c7c-0428-c4a09bef31bc?restype=container

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
x-ms-request-id: e3ca660d-d2ab-4ebd-9e2f-c0e3aa1f3785
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

