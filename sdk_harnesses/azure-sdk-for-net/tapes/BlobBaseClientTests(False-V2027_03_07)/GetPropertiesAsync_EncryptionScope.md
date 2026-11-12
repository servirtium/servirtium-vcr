## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3a05d4aa-7859-cd04-76fa-e7cb9670966d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_EncryptionScope
now: 2026-11-12T00:46:55.3746030+00:00

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
etag: "0x247775A7324CCC0"
last-modified: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae8a51e0-ed6a-4d97-9628-e8cad298d12c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3a05d4aa-7859-cd04-76fa-e7cb9670966d/test-blob-8914ddc6-fe8b-27ce-f5f5-8be72ac6a525

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
etag: "0x23B2CC8DF469240"
last-modified: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: caecf791-2ac4-4ce5-98ba-7f251c12d680
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-3a05d4aa-7859-cd04-76fa-e7cb9670966d/test-blob-8914ddc6-fe8b-27ce-f5f5-8be72ac6a525

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
last-modified: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x23B2CC8DF469240"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f77d1046-3467-4da1-be50-69914354c9f3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:55 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-3a05d4aa-7859-cd04-76fa-e7cb9670966d?restype=container

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
x-ms-request-id: 931147e8-062f-4a79-9d51-3dd1d5030622
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

