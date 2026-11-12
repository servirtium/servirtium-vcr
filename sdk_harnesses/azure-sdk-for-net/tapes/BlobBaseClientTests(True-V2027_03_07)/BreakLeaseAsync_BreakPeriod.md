## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8d3c660a-da89-575c-ff40-864d3779e8df?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).BreakLeaseAsync_BreakPeriod
now: 2026-11-12T00:47:34.3849146+00:00

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
etag: "0x1D307D1CFCF90E0"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c90314a4-425e-442f-9679-fd4840f74119
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8d3c660a-da89-575c-ff40-864d3779e8df/test-blob-98da2e46-8dd2-8b8c-4c9d-5487e4fee30e

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
NIgV8iY5xEVm0+3HPhDl4yta+hCmMMh92bBB64XUcgFcdxmvY/W5DGmUMf+gxU08uHFcigPTaATA
mBl1+Ni/kmDrasb2Nn81oO2mEf7I3RRjBTMUd+f9iQ8V78vcRBSR1Z6etFqGRYLyJ+kWLFYF97sE
EvKlqxp57uC34Ua0WVzZFTxgKSi53MCxIlD+51y4EPcP1zEh6ymDJcV5z2Q7Pc2MPBcapM2SSzUy
84nKegaE/tBOpIErtykS3ARjPw1bduSCcapFnmsqfYz87/iguaq/9dCT7JlMYYXtB8jJLwsn1n2l
RwlcP19lJCf1LscxciJao0o9yIlLNhAlV5ajYU2A1Bh7+3KhY7ZwLshxVjK9vJWlbovB6g7zWRD5
NujIwcPZdVqvtnewuUCTzJnB2d/dZ5oB/vLBvuoKh6FhpyzNp2wEl+HYDgYe9LVLLR10MoAwG89N
x8PQF7ZvpS7VTxEUxiQtvEH+BFmT4wk9dpDMlVUhMIxdgOCoNH8qaWnYSKWkNmf4R3U+Mhd2ueO6
k6EloxDZtB6Ft0VEhIjC05vvu5pjmUAp003f4v5058b87qDeBcVZ/pSHHn8htMPtfF57hv5IVvpg
/M/C+dEgENB/R5bn487Vlr0G3HrABx+J8maf+GDIs5emfQj2lgTCZg6vomwtBZiQpu9BQnmAoPWw
OAdrgRdvtpT+QGXG3wC4RHVrEWSyXOzNDlJxh3EdJt0SRV39V+X2P+vYL8QzysbviP0EFI6Q/twa
nXLE/i8i4BqHs5miuu2QddF42S0nmkSLgf5zGRJPgUeB47pzMUG7tk6qqxcsTc4QdJ68GCWu8gIu
OH0xrsYHODFSINcyHEOQvCPefe4tXzQvY6Vzkmki0vC3RfjEigeIonPl2iz33VdbLFsBz3UUANlJ
AUshlKXHME3me9dKzDIbVtp6R4QHOIVOF2YOIAN6okQee4m7Zg7OHqreEGF/EGAp5nmbmrlVQcjG
0nw/uA9Ka9mTK1CoYO/MrCjaKCgjzwcF5TqJ3wiKyTnA9ZSRj2WalKSI6+UPgIWJzu2QehifogN1
OdPVwIvQCGIX6GpbOx3DQJSEmuMi9mW0ABEa+k4gIFKRG1WSxNMYt+KC95gbLZPQzTqEGwgfU0Jt
IcB6tg4T9scYyh/HMHvBa+MAn/7NmdJ9SSwTnARKccgTJKMSngHUbwHQAmN0CZy/wrAlHrRDoIft
/Wzh/1rCzlhXtAzXrs3hLDD9/JZuCUCPVNlUJVITz4QbJKCV8m+mDjQKHFWQ5xTjQ/KERaPwf/Mr
UquAbqkGQ+SHu4ksTDnBVu5iY+zr/mzFcOFfj4ngKqWtaaDDJqCKBNlwCCyKtve5wu+1jhsGQA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21F5C350E0E0F40"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
content-md5: mOD66Z6Rg3VHwPbXvJZAfw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1f6d734-11e0-4299-9310-30129b53d8d1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8d3c660a-da89-575c-ff40-864d3779e8df/test-blob-98da2e46-8dd2-8b8c-4c9d-5487e4fee30e?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: fdbb3f53-a6c7-5bb3-a790-e47ee299fd30
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21F5C350E0E0F40"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-lease-id: fdbb3f53-a6c7-5bb3-a790-e47ee299fd30
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5e5799f4-5daa-4ab6-99e4-15544a1f522a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-8d3c660a-da89-575c-ff40-864d3779e8df/test-blob-98da2e46-8dd2-8b8c-4c9d-5487e4fee30e?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: break
x-ms-lease-break-period: 5
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21F5C350E0E0F40"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-lease-time: 5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce2f4299-0119-40ed-bc14-8114e21e88d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-8d3c660a-da89-575c-ff40-864d3779e8df?restype=container

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
x-ms-request-id: 7883dd64-7510-4220-ae71-a7498ae9718a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

