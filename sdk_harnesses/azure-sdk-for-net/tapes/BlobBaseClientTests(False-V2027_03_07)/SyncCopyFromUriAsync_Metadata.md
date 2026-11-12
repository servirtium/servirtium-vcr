## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-753e5436-3f1c-2823-23a7-fb9a5a7e38f6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_Metadata
now: 2026-11-12T00:47:21.9767644+00:00

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
etag: "0x247BA44E26D1980"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8de16e66-0fc2-4052-9e7f-3b495ec4f838
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-753e5436-3f1c-2823-23a7-fb9a5a7e38f6/test-blob-b05e1645-5666-e32f-0c0e-293f905dd7b8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ozeww74yPbORlqY6Trwy6Tso/skiXX/fJFtoDRbkl8bQQ/YjzXQ4E9iqHtCw9ZRQ3D8DaF4OlUa4
0J5iyS+drf/fagvFDxzG8OvweD6vLy/HGDHW4C9nwa2va/zW1UmpDHHR0IqIiswjPXdzHh0HCKFu
m7H9xszPeKleFqQf7xuiRmvN3l6lPo1ks6O39KKPp2JaaDmYq0WlAVjhKXQoA01c0deyOipDyV0k
mBMpF4MGz25BxIfhCZslJ9wFwxQYPK9VWyPK3W04F5/bcxIye+nV2loG5j7Gesc8jBJNPQVIC1xj
1LxfO/EBCa3nBZaI86zzMOm5ElZxjuBcjlBa69mak2i2zqctdZ5pBdyR33Qws5hmWg0bj/kF8kXc
A62hph7UTXIt0iQExbtKUAx54K9rK9q385HLfgNusNxhUHLxx16+vJECA+FzYZRS0T7sixKWcNfT
6bONCM5uviFIo3RIWYiuuyMdaSj4Q5H8ea3FgiXJy+CaHd6rMbTDk0TAK74fCXi1PtDveAev26Uh
kI4hqTz8f9eUrjuqAoluWtbkOBjT3XA0D0NU2lPY60I5iaEloekHxKzmilo8CztGgB0xyqOMTrIe
7Jn5p6SEvMP5cHnoSbns3XRs7FMV+AMIDlo1pyCfrDvuB7RPDRwHYs2XQprCXTdkRO0vH2FfCfSW
8ZlKTxWiWsQ9+kIEnM9XZYmFfbVpRbAi0GIzcI3Zjv2/uRyDvBO49ejWhWL1X6cd17rX2ow/LKvo
J36zbuo2Y2tEReOy1Kh2zIfNksBOLXG6FZjSArRxgIxwmpWUBYf9nyH2sBrEawMRYA0FcprrmvkM
+FhRZGG308RWQTkT4sf/z/KfV3xX9aqVwaGmbA7xhQCbhwwurDvAP91VbinK/n5GBaKoTEN8tQKu
vKLAEGa2ZLs4eFq60SK23xefAYeAy8MiYGZrSTm9HtIKgO+Y/y53nwltkYUkjDSA8m0r3bN6LfHf
na//ShuCe1mHsFAzHd/oKGJ+Ejk9/dQy61fMkkAej1L+uGJ+d1Tu6xYsnNzjTNSOQrVR/Bu3oqDb
zV/DtegYaSD+NGR9abANkCcjEGD4T56CPlCLzJI3RxbBo6n1KjUtEzO75BdwENgEQ2z0k5I/437A
QXeYjZyOx+1Ou8YHF2bx9f0tPWqHEi13hokmQ7OEgr8rNei+lYWXLR0pIVUR/SwFAp2UEaYTOS5J
IAYTZ4Q6yjgG2+J9MmB3lg9MXfDXZoldIEAV73AZF/y6dHR/g8WZ71cdCiFJiNA9HHuWx9w9crp9
tkZEJNrH7cPmw73s+BJKs22ZultnE5hv2NL1glAgfAK5Ac1/VMp9Vh1eYsUSUCRpTBNupLhfFQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E9EC775761BB70"
last-modified: Thu, 12 Nov 2026 00:47:21 GMT
content-md5: dCUgaoFbgoHd6GSInwC41w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa1f1f16-d2df-48f9-858e-b3abdf999402
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-753e5436-3f1c-2823-23a7-fb9a5a7e38f6/test-blob-4cd4aea2-d207-736a-c646-ba33f645ca5e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-753e5436-3f1c-2823-23a7-fb9a5a7e38f6/test-blob-b05e1645-5666-e32f-0c0e-293f905dd7b8?sv=2027-03-07&se=2026-11-12T01%3A47%3A21Z&sr=b&sp=r&sig=JNeWagtezkk6FGPPYkddfp8QL5SAUG5TktsuLIyn16A%3D
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22BC76A6EBC0B80"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c5cd2438-08d7-46f2-8085-f4f845e4ec1d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-copy-id: 7c637d96-3a38-4fb8-95c1-be239f675c25
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-753e5436-3f1c-2823-23a7-fb9a5a7e38f6/test-blob-4cd4aea2-d207-736a-c646-ba33f645ca5e

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
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-copy-id: 7c637d96-3a38-4fb8-95c1-be239f675c25
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-753e5436-3f1c-2823-23a7-fb9a5a7e38f6/test-blob-b05e1645-5666-e32f-0c0e-293f905dd7b8?sv=2027-03-07&se=2026-11-12T01%3A47%3A21Z&sr=b&sp=r&sig=JNeWagtezkk6FGPPYkddfp8QL5SAUG5TktsuLIyn16A%3D
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22BC76A6EBC0B80"
content-md5: dCUgaoFbgoHd6GSInwC41w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b859c95b-e7c9-49c2-a2f6-baca71a58b5d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-753e5436-3f1c-2823-23a7-fb9a5a7e38f6?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: 7ba5bbb7-7860-4635-aad6-f3ef848bf159
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

