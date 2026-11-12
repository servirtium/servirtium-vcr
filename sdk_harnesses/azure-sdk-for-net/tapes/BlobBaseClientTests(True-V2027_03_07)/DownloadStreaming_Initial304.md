## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a1105152-397d-2f88-9785-9caa1b633de8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadStreaming_Initial304
now: 2026-11-12T00:47:58.8042696+00:00

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
etag: "0x1ECE9E4FAE2E420"
last-modified: Thu, 12 Nov 2026 00:47:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f76f7e3a-5241-4dcb-a2d2-287e9926a89a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a1105152-397d-2f88-9785-9caa1b633de8/test-blob-24d95e4a-5638-f5d7-e43b-da9125490ff1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
x+jIKuY0Gki2thu35N2zXEuB53fV6qqep15ceaC9jagASN7c29x0HTfI6scd0Uu60j9emXzGEt09
KoKI2KCo+Slzt5z+1oFvDck/Df/jgNYSoaZgXvMsOTUBn7FZ60WXH/GdqhqvvPu+74yzhgXdWams
dTb5R5o2Rn1m/TfPFSKDqO0ORdW8Y+Wrom5neLMvJEUHrXYPndhWZ2OcSL7D7tpqMN0YzhPT7xFR
TqUrzs7KN9nyyGerdAsVt95yIBsm57SU/UjVF1UxM75kvU8yKpiV0RDk0SVyvrvSAhY1Yc/2Kmbx
ltGF9SCEwZSpR7a84oxF3E4KQhaOIj6NAhQ++9LubpPoQZPGENzwYBCRyHcFFh+J8ISA7OhPYnST
+PMLRcXCutgj06H5fsxyGeEG/VrHh+v0tAtNboGrmN4fMxfp5RtKzg2e4UJ+kHK4DtMHSWUay3AH
FpC6dUxXeDrD2Uq0iTPFvC5MKKapdiSZlF+uo094BWen4c+LkFnBR2kHurcnA4WfQY02zaLKXp9s
IeDsqNTrStTiDadkOivVi+E8obxscZHaD2LCQTfF3IMvHm541J6VHG/jRPXeOgdhYELBjbzj/69P
EplyKAmcHTAjNBy8XbZCp4RMiS2b+9RbYeD0BE/GSx6/KcEFIvRmRibEugbqpAOLfuY4l3aBsxbE
F8copxnhXOj9/TP1PISQ5UIH10HOcLzdaYVpjrSoPXaqQQssPp4M414d7afPlkFhp7EzetzV9qYK
Sz6TeM00Vb+9Svt4ZKek+vPjsIIVDdJEB+cCdMKa1UplIvNfeWqQ6JjnEktF6EMKj4Do8kUk9D1s
T3DmMeD8I3WwE0GzRIGJU8fqLvuH/h+j9+VCseIFQC218yn6qbe36u7WlNQBVkr/X599OcZC5VBQ
Qzn7unGSq9MU/lBXjqoQMkMMsGlLoaGaQlJDhwZncw7ZqWV9vDB8Q+kB7Vj6qND1bAeCNTTmBaGY
YXcfTyPMrYpCfeVEknUTj22ASrRIoJqCThr/5D3a8qTE5Vu4XfPGNT/NtyrrsNqSbqXGZbvsUMDd
nQEIzMhNaIpBgK0ZWjJ6uhR0euhwl51AbHaYE4zo15Wa27/xvWh3gE+fqTAteBRyS6umeNXYbAZk
x19StVT9WKgXf35yiPys/fqZ0O1sE/RhJcfhQl/Awm65jfUIJcv6oVGHFfmVAMOu+XvaPpwZ97Rr
8JCMHBVJV7wQufsHpNcvni+b5P77zCQEMkjk5YPSoJVBnDU6boQ7Pr08hUfHp1Wjq6BsfRO2byNr
h+nMZXI5PRhlxgei9DCqYKZAv0fdPIvzQDniZSOBiiwRz+abbthLAkcuYeBNAbdwwhxtdrDcjg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x209F5755B5490E0"
last-modified: Thu, 12 Nov 2026 00:47:58 GMT
content-md5: LZH/zrr7p100OvE/YVd57g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e01c49ae-b305-4395-a6ea-9bd698e65381
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-a1105152-397d-2f88-9785-9caa1b633de8/test-blob-24d95e4a-5638-f5d7-e43b-da9125490ff1

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Thu, 12 Nov 2026 00:47:58 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 86e0b683-dfe2-4d6e-baf1-62c9a4c90554
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:58 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a1105152-397d-2f88-9785-9caa1b633de8?restype=container

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
x-ms-request-id: 1e260ba4-b2f1-4a32-9f48-108c912951f5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

