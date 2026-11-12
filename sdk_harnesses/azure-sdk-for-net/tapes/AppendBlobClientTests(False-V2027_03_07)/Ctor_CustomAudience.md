## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c20b659b-35d4-5253-15e4-ce0acc733ac2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).Ctor_CustomAudience
now: 2026-11-12T00:50:38.5092385+00:00

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
etag: "0x25791E64C9CBD00"
last-modified: Thu, 12 Nov 2026 00:50:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eaf63169-83bb-4bcb-9f2e-7f727377bbd2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c20b659b-35d4-5253-15e4-ce0acc733ac2/test-blob-8b7fcb70-5a89-b774-212a-859f639a4698

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
etag: "0x227E24194F78500"
last-modified: Thu, 12 Nov 2026 00:50:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ad5c8b2-3442-4049-a342-f324fefc4e87
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-c20b659b-35d4-5253-15e4-ce0acc733ac2?restype=container

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
x-ms-request-id: 2e3cc163-7181-45dc-a4b1-5ce604a004f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

