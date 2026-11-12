## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8d120f34-591a-0247-a3cd-7ab4dbbb3ef8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetSetTagsAsync
now: 2026-11-12T00:48:12.7857462+00:00

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
etag: "0x243B13183462000"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dd43ab99-0086-4f84-8a98-4424e129994c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8d120f34-591a-0247-a3cd-7ab4dbbb3ef8/test-blob-0e89c657-7e92-f18d-a2e7-faac61140c36

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
34+bNz5lI4tmedOjRWH8LW4f4Q9nSRO1gSDrMl6aoI/AQ9VMHwa58aP9qBmq6axA680+QjL8z5Z7
5bYdevAtzNhE4wGMsA1oZe9saaD6C5d0q0eQXF5cw3M+0DpPnHey0NxAZgaqszrA1txDkGb1gdoe
qM6pnHB55yCNTd/SGMh3upjEuaSRyfcM0IWBGTMNSU9gMfSpCDRsxn7mHWVb7b0Uy9XNMMc1jN/W
nMvq+M7sfwSPcebUzrFkWPImq6ySseLHbU1dQBiHK6QU0mxogc6v+Z1hy3vXQP0kaNjUDuEzROvp
IoqBjz/sCEZBv/xF+9Ykd7EOMeVm8CxQOddAshzD4Y6Af19DLmpedcM1lYAB3mwBsJcwJBMGgjFe
MVVnq1Upft1uxHx34EhGsLsiMVurTlprPgGFkr16evwt5fwU98ltCxajkxnwitBO6XRX5FHWsuL6
/G1TpOwg80qASvpMMrjytCVECLtBerQxNqlJI5aqVjMaGftcGmcqg5/Pb0DVAre7ZC8skqkmuYG4
Im1C1s+z1vPHMRi9lpq+GYUbcQt0WzTyjb5mfsSK8196o/f556zQG5lMDtGe/s6VbngkCkh1Q8Y5
UEkRTVcvPD24Q/KixDHYS1VyJ01jU4/w0BBLZukXBF8xwJdjvs5BHdGT5bvb86lGS77yAxx41fy5
IHxH49ZUoD6ScAOadY2HMAp7z27UFN1mBBoqJQFDuOqaqZ1S+jn6P0R8SYKmrNUxa9MR/AaO5Qye
4N68KXs9TrgY/8zvNDbRgZApV8tawFhF+bouMrvkDMORsxlaPhXJP/rKjawJQjacQHt1ZI1BQyCG
dzDADxz8NPIIXYEddkJ6XxjQkDKrO7aEkfJAbqg2UG/41MflCS/ezlm6AOS0f8k4+wR1cbPu2jt5
PH0pvMVK0g0RJKJ7lVbo8cHY8TvRzxEoB3Ojwd+8CfmMa8yytBKUby7Xo1smvWaujH/xFugAqGxs
ALVSpxEuVBqo7imJNj2vRIIM+iu2AUkN9DRfyvMRjMNgRbNdQscdqE5Afs48JFVCQdJl861Atf9r
RLLczoonl2JmKfCJUgG671HddoN60NDfHYghq5gVH5C08f0VQdrEGOZs1vpkuO/QqwRcYz978XTi
/bABBuzJUApg1GEEpa12GF6dDvnWemWZUP+UubtROQCIMkQpwxL5oobvBOSOywVW5Uvg3eJ6C4JL
Z7XsNZdPD5tge3JpTFVLo2tz5nWBC4X6PdNvcFsdDSfB3ltcDW3vn/RILU+S7Jj2lTp3ByQMylww
8vfD4J8/Q25LqG7575b9g0eBON01Z1E6edshpQYCtBP+LBt2K79VCOrhR0Qp/KWjeYPdi5J/+g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD6C0B2EC80040"
last-modified: Thu, 12 Nov 2026 00:48:12 GMT
content-md5: /Lc7e7JGXalecvCi2fA8Eg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7c8fd581-c496-4014-af47-e83d4b36b600
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8d120f34-591a-0247-a3cd-7ab4dbbb3ef8/test-blob-0e89c657-7e92-f18d-a2e7-faac61140c36?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 307f9a92-cbc1-48a9-a0ef-5b2c3185e9ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-8d120f34-591a-0247-a3cd-7ab4dbbb3ef8/test-blob-0e89c657-7e92-f18d-a2e7-faac61140c36?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 0c0872dc-22a9-4b46-9a71-30221aba1548
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-8d120f34-591a-0247-a3cd-7ab4dbbb3ef8?restype=container

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
x-ms-request-id: 921ac88b-fa43-4b49-8770-a25e31764740
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

