## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-596b1633-95be-d9be-fcd9-3dc410972545?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).AppendBlockAsync_MD5
now: 2026-11-12T00:50:30.8207347+00:00

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
etag: "0x225A3C73A9DA9A0"
last-modified: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3426d0c-3c60-4bb8-9bfb-f8021ac4fac5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-596b1633-95be-d9be-fcd9-3dc410972545/test-blob-7fa0c80d-08b8-389b-5a48-adce17ed2e55

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
etag: "0x2665F7DACAFAA80"
last-modified: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13a97db9-808d-48e8-800c-82cbd0924c98
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-596b1633-95be-d9be-fcd9-3dc410972545/test-blob-7fa0c80d-08b8-389b-5a48-adce17ed2e55?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-MD5: WywMQIOcycZfrjPrb7nU2g==
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
aUXg1uoHA3i+T6apszY668DTbYPLXTErejL+defvwQ+r51vKt05aBcQnwWhi8oUkDcEOQ4CriQsT
tFu4CY6Qzo2W/cvacDRxeWe+o5zJyYis2mcm4X6PAF1QtgPyovw2l/Lby/S6SZ2NncoY7OVuSurT
Cy4mau0PB/1tirkxftZriAyp7f6T8pDJmEOzdxN34WsYHpfNDy0FzMP3TL/kXB7zrGTZxV3sQBid
XNGpW5Dp9ahNGV8/nXjfoyE6m6XR5Twlv8qvnhwOK95+MLNbXHAzDVYWl0K/tA/s+iE7saVyzHeU
hJvGOleMPu2BwG3Fg0exB41Puk75ZQu6w6T60nk5C2M7x9jUbNP/iVhVPfOiJnbaiqoXIxEpmh6Q
DHezkmtzSLUJibtv3Ju6TzD1pCcXF5wtIEjPIehSEi25Q2BcTPfs4fU+mZ27aq4PXdPgM/X2ePTa
hXEjoybMt3eOtZg6XQM5CMIy2X7+crWawMQUcd43w8psgcaFyT7PceEmLLUV1P/QpyozxJ912xO8
ieNiuEWYV/LOztw9sz+EY2ec2EX/hOzFQ8qzA/4r9qWyyT9abLmcjdXCRwUik/PrrmE32ALOvAT3
nXR75VP0otg2iur/KfauAEtwPT3morDWyFWd8x2i5Aw7Y89EIKeCzqQt6wgJ64VqiNi3Xn/GEPrD
pBz+Vq+6lKbdxMUmat+j7W6ZuLaozNzQMmpF64WNdFLUgHyKhHf0c1dhLCa/Qx74E3AQLVhEG9hA
LSREdKghT1ByUupjGWn2pEVeR5+2Ee5MTdgVfEb6kGSjSlZTr/6vQNzVTPE0lPoGGYkT5dQ4iRw1
+CfQC9IKeMKFv84TovRGrwfC4MT9GLjeDmO956qQa8E5HrfW3jQKy9MvrtUs83aUzDbMdahXOOBv
8f1vTJEY9FQM2YQ9cNDSuBTxzmnjshrsKRp0w/UY4ebWZu02mn5CF7qAHxnyVlxl+ryUZml3jD/i
gyN2ozBe9PidZwnjnB2WrreuYpMA+dK+Dsk4hHt8XtqtUxdby3OKIiohVO9SgV6e/beyySms4olR
t5VmJXB8IQgvNkgGOuJEJEBo3qTibIxrmYbDyZWwAHGNCRTdI/y6pDPmI0sVmMPUbqTpRAPkbksI
+ovpuVdzfjXWeTHOZgFErTlx/EhBVQHD7lvwx7xuqJvI1Shw0Ovcc6UVPx+SBgijpJbJc3IDx6WK
Jsv7grZ5aNCVBpHY091OlYijKxbiMehTTSIlpDUoxA6D5qog4PHunNZO/P93ytG5e93qYJuOp/Xj
qDSTU8SabUGCVewyLrWXtI4/kzTo24NRbChXPmRy9D60PTe8W0kSs4+99HXkhk0oU6wNThTA+g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27A9027A78CCFC0"
last-modified: Thu, 12 Nov 2026 00:50:30 GMT
content-md5: WywMQIOcycZfrjPrb7nU2g==
x-ms-content-crc64: RzYsAq8lB6Q=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3f8bcd30-29b3-4148-b9c9-30dfcbad5a3b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-596b1633-95be-d9be-fcd9-3dc410972545?restype=container

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
x-ms-request-id: 575e297f-be66-4085-8161-a6687322ac25
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

