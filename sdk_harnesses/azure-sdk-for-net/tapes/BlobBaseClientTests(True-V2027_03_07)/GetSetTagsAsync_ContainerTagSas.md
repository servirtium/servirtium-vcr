## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ca81c1ef-0115-09d6-f1a9-a59a702fd53e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetSetTagsAsync_ContainerTagSas
now: 2026-11-12T00:48:13.6600797+00:00

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
etag: "0x27842FA12B31000"
last-modified: Thu, 12 Nov 2026 00:48:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6b39b62f-ce9f-4242-bb5d-3695e83830de
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ca81c1ef-0115-09d6-f1a9-a59a702fd53e/test-blob-52774831-ced0-53ec-da27-719158f247dd

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
vtHdfY3eJIyFjtDEmzxs1jpMVF7QAe0g1S7v7Y9FsP5hyNyfUlewUyTqzEL+KLeeu5pWDJ7oDL3k
vKhf7jf8QN3RYtNfzYTjmwA65jWqIqx2UTH176RfeLseu5auUWTs7YxlLcbkPu4WcnCdriaIOZr8
6J0FB1A4cekXQRLuNUqcTfioRfTlkhND3n0zwsqVloH7sWnH5+Y7LLvczf3cKDwmAWAu3/OlFlWJ
wijTBa8egqqQ8oPg1GYSbRg5CMQVZrZADMBpZreOVpsTPSW9aCcLvUtSTDW4RS36G3Haaw2Qc1tx
kvjutRvzAZvozZZBVAXxLUt5wxqBh8aTb0pFs+qNgsnJS9UvHAgvX0qZ0HiWucds6T7CF7BB8Aox
W0XQrU6xWkrMdwgvwhBCSmPP57dO/LaD2Mmsy2sZiFvL/cHCXrH86HUuykG+PSctgM1McQhT41+P
TdWEBI/fs++tY8RPf+ux0/9BIDJ0xZqhf0qezBZTdxphMxHcd+TmThdRENpi3QDhm54JEsMtGoc6
4oREQObYWuuq7UvZ1VwaWtEaI7TAP6JJvDF4SWVWNBiKoZRfoQ4weLbuuO+1CMVB7rfyEvfSeqPi
+oS1YBCGU7kzTjTHurjC6qr90oaylLNrNlquZCIhtybwfaeKehimaGQ2gbmReTT+LydN1agcL2XQ
SSm11+6WEZcN1z0ROG+RV2oiexL62rwmsDX60+J+001BuTHv8JB1n3Aig6L27Pa4vH0++rRS1m9s
jia5nD61jgPvz34+ombZrNui11YaMMM/QhdlQNmZ7+PCgmJpvAMxbfWeBxx3ehkWZE3Yr/4YUV5i
elknUE0qVuCbfB8Eb/DYcWpheymnx8j9TtyLwT/lqTADB0KpCh2nc7A83P76EfVd/z6UttY1u7KR
KQFxn5ShttLvAGitLmdNugh4a+rJAzznLcEAUfJazkuPGOAbNdQcmiYrChGMr9HXRvzNvVDIxybF
inHToWTflDIcHhaGMYQzW9DDnvgrWn7vKQr2jBH7x1C6VqpiSPnBTHXeb5G7UBR3mmF/BCktmTDz
43ha6QghIVbFzNva0BPXAVGDTOrsNNj1fvKve8MmjLx6b2WBZ2NtvU469YQ5nclOqALYqk1FBq+f
ZGoWcaaTnz8eX2GuVpruFY6csj5TvOAoYdPATuFvNGi14QL4V0ynplZEGj1nn1Jn6ZS+qVRxTKeJ
7Q/T0lFdrir5+HSX9b5C9AvoD6KiwMGAWGRNsYsTRJVbb2k81NME5msTbqfd0PTWe7RJiDwF5ixO
UnrsEP2f5bTfPIZVBiA34yg2j1Iao4hwdjXWyrtYVYg87oFZF9Vtc4jy/ZNugXWUEaUUz1faMw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x254BEE4FD4530A0"
last-modified: Thu, 12 Nov 2026 00:48:13 GMT
content-md5: 8OtgJU0Sm3+1QYrE1wEizQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a1ff638-2f0c-4517-8173-c41a8214d6ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ca81c1ef-0115-09d6-f1a9-a59a702fd53e/test-blob-52774831-ced0-53ec-da27-719158f247dd?sv=2027-03-07&st=2026-11-11T23%3A48%3A13Z&se=2026-11-12T01%3A48%3A13Z&sr=c&sp=t&sig=wU17Nx1Mp5XE9TzgHjdZG2wnVAx7C%2BZiP%2BPPRrNVvMc%3D&comp=tags

### Request headers recorded for playback:

```
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
x-ms-request-id: 0c95ba65-44f6-4b76-953b-ae4e317520d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:13 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-ca81c1ef-0115-09d6-f1a9-a59a702fd53e/test-blob-52774831-ced0-53ec-da27-719158f247dd?sv=2027-03-07&st=2026-11-11T23%3A48%3A13Z&se=2026-11-12T01%3A48%3A13Z&sr=c&sp=t&sig=wU17Nx1Mp5XE9TzgHjdZG2wnVAx7C%2BZiP%2BPPRrNVvMc%3D&comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 98bd2356-8a53-4ee6-8c7b-d105b76aefef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:13 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-ca81c1ef-0115-09d6-f1a9-a59a702fd53e?restype=container

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
x-ms-request-id: cfd76984-dc22-4770-bda0-9ab76f0e4b42
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

