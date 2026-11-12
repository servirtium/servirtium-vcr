## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d6d62858-253f-e495-e57a-e7364ecc3e47?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteIfExistsAsync
now: 2026-11-12T00:46:32.6363208+00:00

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
etag: "0x245D0A756F5DDC0"
last-modified: Thu, 12 Nov 2026 00:46:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a904d707-c4a9-4822-b3c1-38965b4daecc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d6d62858-253f-e495-e57a-e7364ecc3e47/test-blob-e0c7047a-5c1c-db1f-9e1a-c44ab1037be0

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
MbBv9UYphr3TI7cLn2aa/N1LW8P+Xfv8Cfs3JWFLMuH+BwSeXUkAUH0KDfikEzw4f8dsZqi44tS0
cutL8mFbh/HVDZdh/J+USgpF81ADV/a+/qaZ3sw5RiQw6epdtV4croUGzgak14Io2Budcu6DsBr0
jPO7wqglnMdzMBO0NpWsKETL/YnvGicjcQawm9M1rDjPaChqYezc4TI/MaZvc6KG8UqpuLORBXLL
l1CidADzPYTa5M1sQcdY7htWr+iBs/1jKqqJjPSEPmO2n8mcOmwxS/QilY7UGbCCUcqYOlWJSuRS
PkpWarGPVqZptqH+vLOuJGT0Xx5vjhD5Bjop7AMNLFXlSfsi2+BDkj7na2MOg5UW6RXxlerF4686
XGR2ZmmjW4lMGXK4jEmDsc3fhyOs64KlEwLtHJdqH2ZL5398zCzVRA/awWojXlzMbuMd5VuMjnHh
0VJntT/x4vkLbKXKBuWgCkIU0SkYgrSlIa60TDkKv1gNm/rZbo/P6N9wF/K3Amf+fNsYd7xIyE+e
wZORPZXAAaxMvGvqx5yzROlJqGrC7R9GttBe8kicxdKrO6z7PqtKsBZFa0X7E7U+ZTLT/h/k29N0
SofFYQ5ksPeYPozwtwY9//hUfYLZS6IaIIwVyMazxl/YhvQjhU4H4LpOY9UpTq0slf8nj15Rm//l
qkCCT+cw5XcsFzERGXmpTZzHi+fN8dHf6DLHizYBh+v1PtoNhZHTHn1d/Dd8GnuFfULBiQ8XGLlv
oma1aVlBK49FHNufm8gL9Gxpb/SaY822QQ30P/7b3iYhnuIqHbUkHNCnNv6g5uJ5tZSirajE1D+Y
/idMTOyQaT60ffzm4da3RVMj8izPFVoreolpODB+XMqikR+N2M/kFs3A7Gnlk9S+62dUoOETyejM
INFiJzANNSAyQ0+3Km2EPtteDinxRue0q03IKrvoj8c2wbf9gu+dsrdIslCEBsH60GEFtLq/2tnq
rXviRQtkSbOIgWi1hrzswVtyqZSWMKSMzlpZ49sMdubeE9Rzum2r42id/IVYREmkGfNfTTBFU33W
VnaxCmbXewqC13LoeAbuxsYr+TMfM4kQtcrorSi1mL9WnWT3+tgCxYF61mzXvKDscYdqGllKtyLs
oFWc783hzD6zktui9svuKDSypF0dOfgp+zyhS35lC+ZBClmCZtWzmAktJCnFSXq7fPElmBLEz2dc
cvOQQIHATYf0YOxya8Jf/gxU7xXPY7HC5c6NQHPTfTrxJfPhIliIbdah0emNSRAuxpoGcOBSjQ9B
zluyMgwUIeOxgEbOfduzzIE+LZLINZu+XnrYzQ1an5jjn1T91TrJja8G28nKYEi+UqReFF99eQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x259FFAF57613580"
last-modified: Thu, 12 Nov 2026 00:46:32 GMT
content-md5: kjm/WeEu1teaUuT8/DRKhg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3bd6a389-6135-4773-b756-eea5b88d9e96
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-d6d62858-253f-e495-e57a-e7364ecc3e47/test-blob-e0c7047a-5c1c-db1f-9e1a-c44ab1037be0

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
x-ms-request-id: 722dc316-e9a8-45a4-a936-7f326651ceda
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:32 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-d6d62858-253f-e495-e57a-e7364ecc3e47/test-blob-e0c7047a-5c1c-db1f-9e1a-c44ab1037be0

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
x-ms-error-code: BlobNotFound
x-ms-request-id: 8eefc776-5d42-442f-9df2-5527e42fdeff
Date: Thu, 12 Nov 2026 00:46:32 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-d6d62858-253f-e495-e57a-e7364ecc3e47?restype=container

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
x-ms-request-id: 724b8292-c545-4a68-8151-d7e57580ea23
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

