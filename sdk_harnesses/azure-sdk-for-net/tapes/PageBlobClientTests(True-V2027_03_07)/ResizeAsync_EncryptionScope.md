## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1ff5aaf8-771a-967c-9bf7-412afada4670?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).ResizeAsync_EncryptionScope
now: 2026-11-12T00:51:58.2684283+00:00

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
etag: "0x1F526811C8E2CE0"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bec66faa-c6c1-49a5-a85a-ba930aec1823
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1ff5aaf8-771a-967c-9bf7-412afada4670/test-blob-73a795c5-5e13-155d-f8aa-8eb88cacc1b8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x228942793AC0700"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 12fe084e-502d-4774-9a7a-42ac002782a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1ff5aaf8-771a-967c-9bf7-412afada4670/test-blob-73a795c5-5e13-155d-f8aa-8eb88cacc1b8?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-content-length: 8192
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x279D47A7B849AE0"
last-modified: Thu, 12 Nov 2026 00:51:58 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d5b8b29f-db6f-45c7-92ad-519cfec8f3bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-1ff5aaf8-771a-967c-9bf7-412afada4670?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
x-ms-request-id: a8e81db8-2c01-423a-b358-5c3e1ad6497e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

