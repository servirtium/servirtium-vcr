## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-add5f103-a83e-6682-29c0-3159842d2334?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetSetTagsAsync_AccountSas(Tag)
now: 2026-11-12T00:46:12.7214711+00:00

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
etag: "0x2375307CAE75180"
last-modified: Thu, 12 Nov 2026 00:46:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 685369cd-0192-476f-9937-729f257833c4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-add5f103-a83e-6682-29c0-3159842d2334/test-blob-0da6385d-d84f-6a77-1bb0-ad4682f23fa4

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
eZcS0sP+nubuiB1mcvoXDH0awj8OYCcqeWuRjfo75DaAjODsGlBxX5rAHse7EfghmaHJaC8Alhlw
6FhYbBDrsqPm5eUaKvEsqWOkTkFfb2hzcPRZcnwHgPbGfDL3GPKK1Gsj1CwSBm6wnL7MW0fYEHjw
5fwbkkAn32TvVK2+NJBwGnnVPJo8YGmFqdW9OiWu7mu5BzP2bkIr+/XHIrLB8WguW0HOAtPetISS
lulqaqQ+QWZCBC1deaw3qkCkdD63xLdtj97k4OuX21OuZNdYwJFQieFLf+w70OGUlleTOT9G2tIx
/dvGWmF6qinZrhXU3uqvVOtda0XKMr78T0mTBKETaIkFJ8K2ii5/0dTDYSHMwLdt4+VU6W6MZ8sc
yQsX5qWIxUaMzrcn+Mq83ZpwB9CcMI6RJSC8vn8aeMD3mcEjZ+ovOpvbP/IARusbmAvUHF/6gJh8
hsCEzAfHcVX3L14ImXWvQcw0wfGckN81oSZzRlxg/BkopuEpqm6UE82cCRaNEv6VJNuTxr+n4PXh
TyvgVCv4lzNE4PKUhZZdoK0j/4fIp44n3SGBzTZagcbrSFtDtL+ipHHjSDIMAZ9FNSURg+BtGaec
uHYJd8n86l4rqD07GuzugFsV5F9cG9yCPJgQSP3lfS6zp/tImSyo5l3T4FhhCRo5IgOFVzRHP52a
hjsx7KFgRioOh3Pwpucvbf4BiTqEIDJ91yX6YCb6a2derRLwdvq8c5otU4KnSXwbVuo2RrZjFmUJ
sxV7ZeUEFBwLkvjUPvYDRRafVs2w1o2p3gk8wyWx+pet58LlQA21KD9mm7aERxjzMwCgxL+YWd2H
0obcyFD2WpdgJ1Y0HgUI6i6OSTvXJZfxSJAlETbXFY7lXm2G2F/ub0AeIx/BvxT6l9mRCQ+ir63v
6n/A0UlhiBLITsCXgRHOoNr6uAJ3L4l7KnlcRgt+Q67Al+3fLZ73vZoN+HBUYxXIw2k1p/erd7v2
RafQBEIHSQsR1uoj7nI8A/pnaTYZJsZjlIKhSZy2FR8y6ej2J7lXBq9lQ4wrpNX3+KT8Qw2E3B7g
bHC/Zf9vWsHK8QSJRdxBD2OHs+M6OO+tqlD3utIRrgzJFrpIl6Gv9ujLYLPQbbPHujOq/Cg7pjOA
Erqud6DvuEL3vy8h+XjB2L37b9c73D2dMP+eZ7LjjnCHx4XnAH9H26dw2a2EpsG76CNrQDZbRTV8
EUehUFGQEzG/mjHy2tg+s5MwywOQGYk943+OeE45K4JQa+43potW4MV8xAyQyA1LLIyiK3kx6/i9
ZG3SApvihW+uom/pBg0I2uo+FFR9rBpxQkvBlv8IHn/2ekIdg90qmT+d4SaeYiZ/mlGP8tejQA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x220D1F0026AC900"
last-modified: Thu, 12 Nov 2026 00:46:12 GMT
content-md5: quJ2iBkvfge3/GSjFwAguQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4557ee9d-5885-41f9-b134-07cae3745817
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-add5f103-a83e-6682-29c0-3159842d2334/test-blob-0da6385d-d84f-6a77-1bb0-ad4682f23fa4?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A46%3A12Z&se=2026-11-12T01%3A46%3A12Z&sp=t&sig=mZ93t6pKN8FfK31yrW9DkMTiUhyoRtKE0gn%2B%2F5xlPaI%3D&comp=tags

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
x-ms-request-id: fba759cd-2c59-4803-9d9f-190906305c1f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:12 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-add5f103-a83e-6682-29c0-3159842d2334/test-blob-0da6385d-d84f-6a77-1bb0-ad4682f23fa4?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A46%3A12Z&se=2026-11-12T01%3A46%3A12Z&sp=t&sig=mZ93t6pKN8FfK31yrW9DkMTiUhyoRtKE0gn%2B%2F5xlPaI%3D&comp=tags

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
x-ms-request-id: bbb76fb1-d54f-4f56-9cfd-97fa8ba26c7d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:12 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-add5f103-a83e-6682-29c0-3159842d2334?restype=container

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
x-ms-request-id: a412fd29-9152-43d5-9d9f-c206c1721d3f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

