## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6112d37a-a113-014c-f968-24ec5b8eda9c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).Ctor_CustomAudience
now: 2026-11-12T00:46:28.1775697+00:00

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
etag: "0x26E05EA33532360"
last-modified: Thu, 12 Nov 2026 00:46:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8434a2c9-dc01-4513-a994-413b5fe79b13
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6112d37a-a113-014c-f968-24ec5b8eda9c/test-blob-5cd9183f-3eab-8893-81b0-bf84c1464d39

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
wdSBJex6IHYCa7HzgkgPG0YfqK10Gyu/cuvHuUddhj3rd3AM5ksJ/7ObXqjvWH+wWAimPOYsJ6Wo
wbIBs2cvpORzCAvYAzT6Faj62byD0BprFmA+t0pXvk/KZCWYB0xMbLnDe1B02FTUqyY9MU7pJPGY
lZ0G8O2aHEm7DZ4PYQ5brm0Cv1TK9z0MagwjGY0B4T80AHKvRXvMKF8GuMu1xUkY4YPg5mSczp1f
+obhdwK8uSxf2mGbrGjxNZf1wz5yVqTCCzcJIPramDHUUEv167FcSv6fVurofDUa77HNpgpf7KTh
HmvKspkxhEIvxlwd/ErlmHk/0/+62o4C7zFJDPEmdWOmE8xFkZdlbdGouLbZ/fNm5w2RHxmkJ0Td
yMNo6HdRCFH4duh9oAbh2mYtESHYKfI94iXjlVVKAuyIaMnU/IVZVq9k4IYK6UcGr0WzdhUjBZ7Q
KgVSbXP7rnT79Tc9Dd3g1Ltxc0hrMvnd3OUQl4vWZGIqA9J/Buk8aDISDvMPyaJo0qJaspFWZfcM
dZGN6xboJZDVEgkLYc3RNAsWWSQFzRJDqMXofLLR1J7ac5BYrnwbKeljOreYXXDViH2GPwvTBqh+
SkNRAKjeAz1rMO48eYWO+jA6opJbqktUE/M0S5WSBmzo2mQ5ySlBhTd5LCyCmA/390TbmWQWIp/4
/ey0qbio2CqBVJ8hVTEH+Bxb4n4e0XvkPVNQt20H0rfFQMw8jNx+0VMCAERv1qET06BHu0Ah2itx
0GxkWCG8eYHnXBVlymxA3BAqHNA2dWayPePMwBd3o2agy7xvGngyRYfCh3qMrgk0Bt4v9r1aOlsF
shs98LlqcLiuxP6w0MKY99ZJdO3rJY7amLk4R62oRZFhaWdd9VTNWBbC3ekKhDUcl/7nEcZtGo2M
YlgAMSkLBn9tTmdaOgKBfBzWKUel0BSDHLCuwTTL80/a0ZL8zCbtt9dqnTXOwV37ZZSql/FF55JE
fRV5XEVKoVsXf2hwha/16XFwOjLetFpSslyfIVxeler/t08QdFqSH/vZt0L0i9/ltK5/1KxgZcm7
JqroqoD/uOp9cc1g5XUX3ho3BPwYXiZ8um2t3sA+n1KGVE2vqXR62v5XdhkRhc45aPaRKGDMo8iD
bPATUdopP9J72ZAnZzSmvCr+wOcNajWedHbKrHbxubGFLDyEZ4kkLTZHlqs9EQHB62w2zuPgdgK6
dNxjX5Jbih/fojv4IVWg2ZKwxdSKYGJ1CMEKuuvOpLU6yfKswM6k7AuLXm/GyckWlfVQL7EtMBR5
7lfRUNA0Ef2FvVhi9BjEDNjI/gHzrj/38yT2fXUEDZjdMtJ205s7Vk1yQAxxtKHciyPYZDIShg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x212235B22C89640"
last-modified: Thu, 12 Nov 2026 00:46:28 GMT
content-md5: lN2K1mzQzpLJCXWn1KPo6Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3a5be354-e4c6-43d0-b284-e78079ce3d14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:28 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-6112d37a-a113-014c-f968-24ec5b8eda9c?restype=container

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
x-ms-request-id: 3ce2d305-0973-4cd8-ba5c-74be5bcd8299
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

