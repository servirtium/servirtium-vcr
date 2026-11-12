## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-aa018ee0-73ec-70dc-a952-e664e3e48345?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).CreateSnapshotAsync_EncryptionScope
now: 2026-11-12T00:46:25.2440584+00:00

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
etag: "0x27D2A0108198220"
last-modified: Thu, 12 Nov 2026 00:46:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: edd5915e-6970-4d5e-93f2-348ed75d6f3c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-aa018ee0-73ec-70dc-a952-e664e3e48345/test-blob-484d9077-e0c0-ad45-60ae-6be72b01b496

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
etag: "0x27421681BB0B800"
last-modified: Thu, 12 Nov 2026 00:46:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1c59754-c788-4f9b-973a-b338b7bc72c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-aa018ee0-73ec-70dc-a952-e664e3e48345/test-blob-484d9077-e0c0-ad45-60ae-6be72b01b496?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:46:25.3460000Z
etag: "0x27421681BB0B800"
last-modified: Thu, 12 Nov 2026 00:46:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0f29e0bd-0e59-45fd-a186-e4804ed83f48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-aa018ee0-73ec-70dc-a952-e664e3e48345?restype=container

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
x-ms-request-id: 0b67ac59-128e-4cff-901e-43256c49205d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

