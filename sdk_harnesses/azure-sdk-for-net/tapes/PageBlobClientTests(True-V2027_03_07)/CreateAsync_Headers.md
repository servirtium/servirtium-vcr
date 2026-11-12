## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a27f8fad-d2e5-a582-6c4d-3a18c7fecb9b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).CreateAsync_Headers
now: 2026-11-12T00:51:45.4409474+00:00

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
etag: "0x1D469FD10F73300"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 265ad037-448a-4f5a-9824-579c4d4adebc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a27f8fad-d2e5-a582-6c4d-3a18c7fecb9b/test-blob-6f29fe5f-8922-4241-e18c-ed8fdc93248c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-cache-control: control
x-ms-blob-content-disposition: disposition
x-ms-blob-content-encoding: encoding
x-ms-blob-content-language: language
x-ms-blob-content-length: 1024
x-ms-blob-content-md5: BUh2kiAW5omL8KBvhn3asw==
x-ms-blob-content-type: type
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
etag: "0x20FEB6E480BF4A0"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
content-md5: BUh2kiAW5omL8KBvhn3asw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8e0396c5-cbde-4029-95fc-7b36f136e3ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-a27f8fad-d2e5-a582-6c4d-3a18c7fecb9b/test-blob-6f29fe5f-8922-4241-e18c-ed8fdc93248c

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
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: type
etag: "0x20FEB6E480BF4A0"
content-md5: BUh2kiAW5omL8KBvhn3asw==
content-encoding: encoding
content-disposition: disposition
content-language: language
cache-control: control
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b01494b5-a362-4f5c-b9a1-e4fe421a1494
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: type):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a27f8fad-d2e5-a582-6c4d-3a18c7fecb9b?restype=container

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
x-ms-request-id: 38ec0e6b-6d23-466a-9780-9733d4c5b3c1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

