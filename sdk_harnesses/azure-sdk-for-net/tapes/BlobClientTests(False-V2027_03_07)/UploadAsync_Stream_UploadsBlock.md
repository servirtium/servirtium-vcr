## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0e71188f-6e80-e33b-f2c0-e0cb5beb39a6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_Stream_UploadsBlock
now: 2026-11-12T00:49:03.3104302+00:00

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
etag: "0x25E818C70BB52A0"
last-modified: Thu, 12 Nov 2026 00:49:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b11162e7-4f91-4292-af39-28df58e5a3ac
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0e71188f-6e80-e33b-f2c0-e0cb5beb39a6/test-blob-4ed00c23-83c3-eea3-ed13-c58468687999

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
crHfAYXuGZlvtfNPFkD5CPvVxrbPf4oLdIMhbKm2e4lGRliqCzggNfM33w2QVNetGryJkqHDyvIn
1IwCzazvuTppCc/nT/3DtZHCl6B9eiCrc1LsLOjogntmgjerHWdHRyXSJ0oHxsu/xd0QATNSqVls
V1pZA4xSgYZUgMzFGJcpe096qlPVpK2HLGYK14FIE9nePsYN7USZgKbEs0X/+q1F54Xj1/4FlrKt
0tYlR6kEC23y59nRHI4K4SqsEfBniDK5xPD8ZDza2KgTYBtuczj8v6fYDBPUdMr32fbTWIXCRUqj
bIK5CKYxGA4wvrxym23ysFFJj3wf5FAlBItFBn8jURrQywa1Q7cAp/QEo7YOhD2I4agzeLXOg4gy
kwMb6xGODWyhodBmPGyZSOiHGkCaF4BOvSXW79hlAkd+g7Cz5bvidZVJbOJsIaU8mTDNRmlHmHuD
zS7suB6UPJ+J6Li85WMspaWqUKqd4Zt/mlWol7zeN+s0MBeN9r13tDBD4jnsgLTMoKHDnEfQ5euS
bB3I7KTiq7DNh7VLnq7nM5t6Wv5ikxqh2/cbGpqjZEss+4qgrsiMYDeIHvj+gQLy22mrVorsMNkC
JxCtx5AWKiNpH6MkR4TS7vnH2XQholr0KT4w9w3AP8uwnYe43pmmcvTVlGJezpPl2GeQJVZl4YS2
uJ1R5TIVqd/Yc6r9Gg9gIGd/TA34lVurSx+mLxp0S7sCAib7VYzCv+uChlro6L5YMAXv5ZR3viJC
ppkSb3nFYyfv+xjpZMvavIwidQ8AwmNgTv4UhWYmikMDuK7yr1BxvSIy+e2lbss6FCkIVUgTQuQ2
sSF7sN7ByHDU5asc5ww8sLjszch2ut8y2nA8HjX68HbJvP0v9gxDcDF80YkgHSwczKSQJnQcv/ZC
SNVuhKk62fQ1UisPDLmrqFyW+elVEr1DIFKQasoCrfwG7a421eyHQviU6ssBDb/r5X0XhcYN7DUY
KmNXqm8qM6QvCB8LddNwD7fxwSfyQhOSpYVM6ig2+QB5HaqIL5eIarcm0gWf33CqpnYOHCoNJuhQ
xQTp3Uh8+A4eklco6N8faFZvy3AO88UVokOxJ93Wa/fCOGqTn4xvqdn2gE0Ygb6X7rPUnVp4QdI/
1DsEytExSCdgZrB0jMnKACKWGHJ4/CCFGjgpAs2cSfaYVMpQat4IxTcmuBoNImLqCZ044Slfxtgb
f7CYB0ZZxB253Dj/eZVDjlM6UkMFd/jWP/gwY2jNOI3xNesub73xzPT9VEUp65AH9FLVJXSUFgi4
wcdOKWC066OrDUOqFR+VSYVPByOyrFRnKG4V9xMZXR/jdq31oqOUSGiift5MXN8zQNvvRQ7lBg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25181D2D1A5BDC0"
last-modified: Thu, 12 Nov 2026 00:49:03 GMT
content-md5: gGu9ayzXA4TUdf6n6gPMjA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd8066a1-87a0-45e4-9f7e-82b0c84505a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-0e71188f-6e80-e33b-f2c0-e0cb5beb39a6/test-blob-4ed00c23-83c3-eea3-ed13-c58468687999

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
last-modified: Thu, 12 Nov 2026 00:49:03 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:03 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x25181D2D1A5BDC0"
content-md5: gGu9ayzXA4TUdf6n6gPMjA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 767e4432-5028-40c8-a387-07261962e8d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:03 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:03 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0e71188f-6e80-e33b-f2c0-e0cb5beb39a6?restype=container

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
x-ms-request-id: 5be286a5-d3fc-40dc-a8fb-e78f963426b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

