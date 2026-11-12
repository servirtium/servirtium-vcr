## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cefa42f8-1713-1f93-3aa1-7c8301b4912a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).Ctor_AzureSasCredential
now: 2026-11-12T00:49:39.2639710+00:00

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
etag: "0x2605935EC8AE980"
last-modified: Thu, 12 Nov 2026 00:49:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1521e29-c814-4b04-a629-ab6f49b79f5c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cefa42f8-1713-1f93-3aa1-7c8301b4912a/test-blob-f1113f3e-f845-97d1-3df4-2975bc75591e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C22B167B8A0220"
last-modified: Thu, 12 Nov 2026 00:49:39 GMT
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 27707523-6d2e-4753-9fd5-d6dc26acaf51
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-cefa42f8-1713-1f93-3aa1-7c8301b4912a/test-blob-f1113f3e-f845-97d1-3df4-2975bc75591e?sv=2027-03-07&st=2026-11-11T23%3A49%3A39Z&se=2026-11-12T01%3A49%3A39Z&sr=c&sp=racwdxltfi&sig=uxm%2FV%2B4Gq0uY%2F1BMfZzmgzjdYD6dSfHRyX3BJQtRB8w%3D

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
last-modified: Thu, 12 Nov 2026 00:49:39 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:39 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x1C22B167B8A0220"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0d9f792-1eae-4a1e-9a2e-dc63df471b80
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:39 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:39 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-cefa42f8-1713-1f93-3aa1-7c8301b4912a?restype=container

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
x-ms-request-id: e179cbff-34d5-45e1-ad3f-0a526106592f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

