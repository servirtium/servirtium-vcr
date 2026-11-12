## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c268a2a9-0305-ceb6-fd35-d99a9e692225?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DeleteAsync_BlobAccessTierRequestConditions(False)
now: 2026-11-12T00:47:25.4881210+00:00

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
etag: "0x2570C0E563B2D00"
last-modified: Thu, 12 Nov 2026 00:47:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f4afbece-53f9-4ab0-aca9-b60932d964c5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c268a2a9-0305-ceb6-fd35-d99a9e692225/test-blob-0d1b562c-5524-13a5-b79a-db2aba22c0b0

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
xiTbZbp0zTpbKWMw4D7UokUWhOk4XiVT/FQKaiiME9p0KNR6jr1rt4nhsfrxdDJ5xjjkpJ7WeGj/
h2hlamIRzxaJu7hqWhSIq8xgVqwrYogikKTvqG87nrBregZUBU0mz+LkaLh6D2wkW/nSdSG80yXg
Qtm+IiamTR0H/t8OM6V+OobJR/nPp4E3y0x2aSmPr6fgdMJ0aK28PRubchCNFShUUzua84wsEZtY
hlbaMOP0eE84Lr7iCtLYDQneMzRwqrUjIRXu9LsatGMnG+FX4Qw3p/rBVOdpcUloweaDTt1m59yg
tg7OBoOTHnlbuu7xgSv9pos6r1XOurDMhTLVlmaFwTQEtiv9aaF2LTZtDrdad0C6hqdSLDiG0vxe
AYBRvYcT1fm67MoA/z3qw4EeYKv5cg3yGxC+M5T8fuQvn2cgJW+vWTi9oIt1uoZqZ2i2Z3FQZY9z
XqJ2VaJkvW3m0V/VyZ4SbwZyO9GBfWGKU8ssRhZy3jrYrcbNOQSWWOIdj+knlZ7Jo/hr3Sm98eFB
7AHWN3dXc/Il/BzXRTUB3OLvY+13Yr4tY6IdBwAQG7vli00DwCBrxRv2AZiB8V7CaQFGzo3zyYlC
qNTUOmzxFOFg8rno/hvBg53SgWElq3FDWp3/yUwt8cLDwBhMlouuBOy3IP+l2WrlhErwIUcoHfxj
kN/P8kuUMwD3JD4DdewSI310botynoAyGUQCPdB6m6Ib6QWs3xKhIu3+rrQr4g9d3f3Ks65x8fJe
nNgGkvYvfImb54zmZkNr0kudc/DLBjc1pF/Tr+f0qvgTTUM5m5D3zzErkPqDdne5X+Fi030Ck5Wh
0O6WXMyhpz2U0xgAMTa7pqO+oHY8si3nGVAGkdZ6Ebqtl8qhYXNkiui97qNeuC2qpy3aQ/MeZR7B
rkJ8mhZnGsFeU5psGUUwWRWOf8OJiWAiXOmpn83HjjKs4LIw5+/RVdThAGWTPo3oqendkOVaNyXh
Wj4svnr0l8RnvzmSAHEmvCnvp4n7jx5cwPbj6f5MUqiNTo2wpZda7WigK35TVal4ttO8ao+c5ssg
z/2DEK3GG2yQBbHkdReRlbogWmOfCGtNazMqj+cZ8WjCkNWa1t262Q8Rw1D4k0G8KtXVe4tngMeS
NqR6nIuFdxRIIeRB9r/cZYBTjUUaVdfybWQSQ3XcWg8OCJ85QD2DjEs8r3JcezQW+BYKE/OBd+HM
iC8nczOebMbVM+4foyVDzwH53qVllfIw+0pf0UccjJG+bLcOXBkYnUKrh0hF9lXwx0TyiJg7ZvI8
9nfoP5p/uKZcYTZtNXLn4UFjuQ6p6wT1bgoCKgT5ggXF0WaiL12nLM6h6JUeg5HRCqZW2K3jkw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2734030DC1AEEE0"
last-modified: Thu, 12 Nov 2026 00:47:25 GMT
content-md5: 64+qUhHydtfdOaCcnrtP9A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d21dcc82-d7ce-4a2f-8bb2-df9e07e1a0b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c268a2a9-0305-ceb6-fd35-d99a9e692225/test-blob-0d1b562c-5524-13a5-b79a-db2aba22c0b0?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cool
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
x-ms-request-id: 5f61c289-6cfa-466e-87bf-8520798213d4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:25 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-c268a2a9-0305-ceb6-fd35-d99a9e692225/test-blob-0d1b562c-5524-13a5-b79a-db2aba22c0b0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-access-tier-if-unmodified-since: Thu, 12 Nov 2026 00:52:25 GMT
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
x-ms-request-id: 18c1936c-2d02-4495-b4e6-e686bd5945df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:25 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-c268a2a9-0305-ceb6-fd35-d99a9e692225/test-blob-0d1b562c-5524-13a5-b79a-db2aba22c0b0

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
x-ms-error-code: BlobNotFound
x-ms-request-id: 7098ead2-cbef-4fa7-92ac-0e14434605cd
Date: Thu, 12 Nov 2026 00:47:25 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-c268a2a9-0305-ceb6-fd35-d99a9e692225?restype=container

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
x-ms-request-id: c0eae48c-3915-4ea3-93cb-4786dc7c0d80
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

