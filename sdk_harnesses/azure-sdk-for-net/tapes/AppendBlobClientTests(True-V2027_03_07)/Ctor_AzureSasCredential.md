## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4e578ef9-98d6-5d5c-27f5-5433b1d82090?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).Ctor_AzureSasCredential
now: 2026-11-12T00:50:52.2729192+00:00

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
etag: "0x203028CCE8ACF00"
last-modified: Thu, 12 Nov 2026 00:50:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 516d05cf-919a-4cdc-99cb-a289b89ea81c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4e578ef9-98d6-5d5c-27f5-5433b1d82090/test-blob-b8ed4574-2f9a-2b16-8da9-dad826570d41

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
etag: "0x258BAEE82BBC9A0"
last-modified: Thu, 12 Nov 2026 00:50:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a899046a-0120-4dba-b55a-1e20f49ad63a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-4e578ef9-98d6-5d5c-27f5-5433b1d82090/test-blob-b8ed4574-2f9a-2b16-8da9-dad826570d41?sv=2027-03-07&st=2026-11-11T23%3A50%3A52Z&se=2026-11-12T01%3A50%3A52Z&sr=c&sp=racwdxltfi&sig=5n2H1vkMwmXLdCt76RQ1tPVDK%2F4Y7QMl3TSpWTBWRIg%3D

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
last-modified: Thu, 12 Nov 2026 00:50:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:52 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x258BAEE82BBC9A0"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0ad4fb76-3783-4555-b8a4-911d40598ff9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:52 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-4e578ef9-98d6-5d5c-27f5-5433b1d82090?restype=container

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
x-ms-request-id: d57fb562-2980-4f34-bd52-0e25c8c84c2a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

