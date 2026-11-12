## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-85a765d9-b606-76ad-e3a6-d48cdf5700a6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ReleaseLeaseAsync_IfTags
now: 2026-11-12T00:47:03.3699149+00:00

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
etag: "0x1D14BE73BDEE800"
last-modified: Thu, 12 Nov 2026 00:47:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bba0f998-9e3a-402e-9acd-7606eda80b78
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-85a765d9-b606-76ad-e3a6-d48cdf5700a6/test-blob-33f1f0eb-5f84-2ba1-211c-82993150e380

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
5MtyEfMfV1euqLZW+1muhGwsVhEAZ7Z5xHxj6TMURZLDVKgU5e+yzJmahNypSi/Ibf4sBfnRf3wU
+E13u24kmWMjk6ewmp59eYp4ZuLa0HlMm3s05z+Z8tQr/+yiOxAqdut5hbeIF9Jfr4tuWBmZOijT
KiDy77EjiqDThZuy2z15TvD3YUvCxIOo1Di0Kpm6kcTEzhHwOIY5VvoWtZI3rdRN9AopotncEWWc
SRp5bl8HGPPW7QwsiRZpvgtQqw/xcSdkZjaPke/r572rVO5sv+ebD5yeYMDHIWv0wOPNjGZWq9jz
FQgpd4YD6gVPgTUn/P4ktZtyUhFnnETKm9ELHltXVKgWearecZgWmnW6eKA2zMPlqdfK5FnGjHjD
X9u198yq9yyMEYNURUMCXLebrCOklM4OJnSDjHBPT+0xGhK8YaOoD4Bzqbs/kGOTyIehK99VH8oM
ptFYJmu7PcGWIisxRvsU8p2jMesTz5UQ8MToriMN3PtHr7rRUOgVt2z5qG44YoGMjTlCsu3f+dc7
Rzan04+diUYw6ZZAQqG0jXl+GSYn2I5CXCDqyyoNaLbilgmybuTdWx8nB3jrS0uXjSR0YN+xE26o
ZHZus70cI4HgXquXAh+Vob4H/9AVVxDVUz0FmQfWMYKbCQltb6hhC+T3Cu2f/4sF3r8hqRSdkg1m
mF9/Fop5CS0o/PgVJzIVpfTsHUwjNlOyALpItYdu/Xf8B9ZI4vVafgC/dgOT77eMCwQfsXTAQ2IM
zRXPMFSmuf6AGCBbzcP+kZ9LY79QHhEDu6mCTkwCPMR0PBTfik2rGb0EEtaXMT5BIR/VdN+iu64E
zHSrI2qyftxb55CuHgdSn0kCSws6a4pqQS0sLcfk0YBl273YAPZSUpP6O0mtkgIYgtSWoHCjyWDq
QOE9hVEVdxYQSUNJeZ9Tr/l4QDBBvK8rE6ryTjAQwhFc7r8UFcxC5MQynUi/zwk1QvB2K4kwqIQy
EnGnIijm/4cx7IvfPposNVtsDh5ma0SgvAs/mZeILEU74gNbmsKbTJ3BjuJ9VQRWSvUtw5ply6Yt
BmUcpmbvqMBGpFyX0ZuZ0MGApd1hImcH6U+iW2ir1RZcLZRcfqY30eUiN7GnvnhalPLY5CXJy+P+
FbwWTUxXms5GOqMHPFIbSdP3P+q1YCvXSMZ20vHwk2KwXmnqIYSZy5ziYYPUU1igvJtS0Yv4SLWQ
PwWF4MjdVadBVt3oMChPXnNN0/+nAvRu1RVWnsHWtxa0WeF+E+rUBAvck/x6t4xzAnMYqnS26DwQ
Fwqyh7flap/HNNdG0UuJec7zy2749B2J45tOvgyh/nClbvzfIn1U9ilcsoO0LDEojzGmwh3NFw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5F6F82F00A9E0"
last-modified: Thu, 12 Nov 2026 00:47:03 GMT
content-md5: b75o4kOqcxIZFIQevFdmDQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3e6c8a9-76c2-4059-a255-b8c7e384339d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-85a765d9-b606-76ad-e3a6-d48cdf5700a6/test-blob-33f1f0eb-5f84-2ba1-211c-82993150e380?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f6b5c81-282d-49e6-8b26-e3d35a7b5547
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-85a765d9-b606-76ad-e3a6-d48cdf5700a6/test-blob-33f1f0eb-5f84-2ba1-211c-82993150e380?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: a428ec22-971b-92ac-2635-66a1624fa956
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5F6F82F00A9E0"
last-modified: Thu, 12 Nov 2026 00:47:03 GMT
x-ms-lease-id: a428ec22-971b-92ac-2635-66a1624fa956
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 88de393c-0321-405e-97af-6925cac4352e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-85a765d9-b606-76ad-e3a6-d48cdf5700a6/test-blob-33f1f0eb-5f84-2ba1-211c-82993150e380?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: release
x-ms-lease-id: a428ec22-971b-92ac-2635-66a1624fa956
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5F6F82F00A9E0"
last-modified: Thu, 12 Nov 2026 00:47:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e14e921e-6f13-46a8-908a-2cf808833460
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-85a765d9-b606-76ad-e3a6-d48cdf5700a6?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: 2f1b5fb1-4643-4d2c-a908-0ca06c630a52
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

