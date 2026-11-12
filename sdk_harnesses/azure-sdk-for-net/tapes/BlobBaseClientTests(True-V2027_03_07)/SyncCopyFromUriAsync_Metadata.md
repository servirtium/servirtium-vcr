## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4685f4dd-6a81-52d9-511a-94892446f1d7?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_Metadata
now: 2026-11-12T00:48:36.0172804+00:00

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
etag: "0x25497BA3C7C4F60"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2fd043eb-981b-4520-b5ac-612490c51d83
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4685f4dd-6a81-52d9-511a-94892446f1d7/test-blob-3579d00e-7ce4-26aa-2990-b8d49fe43000

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
JA2qEr62bzupSvAsB7HteAnbwfxbxRhhSl4c8LEEsm3qk2UWm94YV2A+i5qMfR94oz/LwyIzpF71
Scdfmn+JpJiDQXNM1t0qw2qcHDl+1c0/pExxOe5Kt+8GIVIXuL3htecCCDusK81ioQC4lockdnT5
IPYzF2upOYqDRrSLEgqsu2dSfMySknh+D5jtkSBo4ardHZjHrZ58WM+xKOUZ1472DNsf0vqnZ419
tAjSvKhpG2QJrfRx5A3J1iP94WqSZTcK94RESA6vNbYKSfmVqZwnRw2ADyqZhCfOVvvXqoYj6k7Q
yMQjJNNVWXc+ZpsTMyyH1pldElYNcHJddvES2Isv51+rxeDXAyM5KrWyWh2MuyLPT9Tsxtj4w1hS
xa7hQoHsDn87aG5LsNJ2I+egWhVV0brOQ4m2QyCGswKIhT50WOc0xkyeUFO0g58CdqLwV2hC/fTz
Ev/3NctetbRswyqTAcv/bJTJtoFnGsDqtMx9lluZRohKgUXoPJCAP5ueSMB0bnXX8OvUeUZyi/g+
DYH/4B5Z0nyiSX+FFy8DSHflydEAdUVXpqVwxMxC1/VNqi8OgV58RXVD0ST1Udm80DDOjMImPZc7
pzp56A6wYHKKOGwA9ccYaYRcvaQhYlTLtPScc0ozJmyX0tkkAlxnk3Gyahhsu9tptSM9yoDzGkXl
rTQaFOwnVhL/aCLt9GYn9Coybvc7XvgYMr0n9Vvso7eUPlUoTX+EihQGbVO4fMG8FtVVwKxNqU47
AeEuAGC3E8VqWLYR/6erruTjNfGlYLb8at+Fl+ILR5QG7UudVYmzTlmOTSMLqxcuqhLIanRclqEr
MpaBMXviXxAhChJbDVhaL+aXFxKS8b/IV+3QQ90gqVaqciPzMh3eq+4S6aAF0py5bTqNxH+OmEDW
udmOERwzAWC7sJs1Zv3JuWskfwgewoRQF9Wik+XXHNriHHhDT5nR3+g/SSEAgwc8wwoTaRg4uPZV
PvpHkG1745TBUkmEhWrRUqAf33hiT5PNZs/axLLBqmSC7hGfik56xGaNPzG9uD6gQRd3GNl98u5n
eSqeoR/h/6jlApdZMshSpRoS1RBiEK2ROoKbSZGLBfwiOBEj2yJHrD+I2LWnRg9PJXO+ah3eBGl8
DWecRrUWWf2aNvq2Lsn3yyjQ2Tf46fNzTCQezZreRDOops27qmaKcX64DBAUmPapxp/0DSsxhCNz
KPmQ+Ixiu/HGDof8OyDCRWe5P93jXrMudAb66jYIdyKpSIFs+XnxVlAeTYpurYp/McjDeEVGkMpF
YoOGZ9G7vpdlUvOeVkzux+iMxBApv8d8e7huRP/cY7e3Jpb1a+5/Y4/zCFuW4Nt71bBcucu5HA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D7B41B7D0B3B40"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
content-md5: h+XTOgeidqZjXTcSz9N3Bw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d9558d47-94f9-4efc-be29-355d1728d580
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-4685f4dd-6a81-52d9-511a-94892446f1d7/test-blob-ec09bca3-4c18-977a-89ee-3ce62fb5f95b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-4685f4dd-6a81-52d9-511a-94892446f1d7/test-blob-3579d00e-7ce4-26aa-2990-b8d49fe43000?sv=2027-03-07&se=2026-11-12T01%3A48%3A36Z&sr=b&sp=r&sig=J0YVzI35XcttLM6eIpl6XcFccORvkb0ai6Brft5HGaI%3D
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
etag: "0x25613FE06E4BF40"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ad2b7e69-e464-41d3-b230-4ccf6cef446f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-copy-id: 148efa8f-27ba-4e33-954a-9e22efe5b334
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-4685f4dd-6a81-52d9-511a-94892446f1d7/test-blob-ec09bca3-4c18-977a-89ee-3ce62fb5f95b

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
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-copy-id: 148efa8f-27ba-4e33-954a-9e22efe5b334
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-4685f4dd-6a81-52d9-511a-94892446f1d7/test-blob-3579d00e-7ce4-26aa-2990-b8d49fe43000?sv=2027-03-07&se=2026-11-12T01%3A48%3A36Z&sr=b&sp=r&sig=J0YVzI35XcttLM6eIpl6XcFccORvkb0ai6Brft5HGaI%3D
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x25613FE06E4BF40"
content-md5: h+XTOgeidqZjXTcSz9N3Bw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: df4efdb5-691c-40fe-97bc-ef4e8e0ed04e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-4685f4dd-6a81-52d9-511a-94892446f1d7?restype=container

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
x-ms-request-id: 57ed5b20-f366-42f8-a23e-8773ec72105a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

