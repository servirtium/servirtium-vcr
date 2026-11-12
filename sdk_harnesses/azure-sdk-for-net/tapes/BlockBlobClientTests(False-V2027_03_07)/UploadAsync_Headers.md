## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3319b30f-e021-beb2-0b88-512875f1b556?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).UploadAsync_Headers
now: 2026-11-12T00:49:49.7229769+00:00

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
etag: "0x1C4199890A388A0"
last-modified: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ff29d5c7-6642-409d-9cd0-2a176e128672
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3319b30f-e021-beb2-0b88-512875f1b556/test-blob-2e1f7305-b0f3-665e-1509-0fdbf2128bca

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-cache-control: xuhdhnkhyrfxlvjcdvew
x-ms-blob-content-disposition: xgkglkcfslgtoccqmmud
x-ms-blob-content-encoding: jubjtwxffejfpvlrkarw
x-ms-blob-content-language: lfomlkjjsspqabmcealn
x-ms-blob-content-md5: WXZ+7YPVLytjvKxZrla5Bw==
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D1C8D23433680"
last-modified: Thu, 12 Nov 2026 00:49:49 GMT
content-md5: WXZ+7YPVLytjvKxZrla5Bw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 482b9515-9db5-462d-b23e-bda4b472ef14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-3319b30f-e021-beb2-0b88-512875f1b556/test-blob-2e1f7305-b0f3-665e-1509-0fdbf2128bca

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
last-modified: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:49 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x26D1C8D23433680"
content-md5: WXZ+7YPVLytjvKxZrla5Bw==
content-encoding: jubjtwxffejfpvlrkarw
content-disposition: xgkglkcfslgtoccqmmud
content-language: lfomlkjjsspqabmcealn
cache-control: xuhdhnkhyrfxlvjcdvew
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 773a6c3e-74f7-4608-8192-72437bf0bacf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:49 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:49 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-3319b30f-e021-beb2-0b88-512875f1b556?restype=container

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
x-ms-request-id: e259f7a5-3c5e-4770-bcde-a45d4e42cd18
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

