## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-206a48f7-66dc-4db2-f7d3-8f0a755f3a24?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetSetTagsAsync_Lease
now: 2026-11-12T00:48:15.0037334+00:00

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
etag: "0x202ADAC297BABA0"
last-modified: Thu, 12 Nov 2026 00:48:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7d69177e-0d85-478d-8182-36228de75988
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-206a48f7-66dc-4db2-f7d3-8f0a755f3a24/test-blob-b9658988-ce04-8d57-ad91-63b6ed43ede6

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
xsX7pONVWFPxID0V0wGNnPym+8uO5KEp8d1zSwL7X7TlqEOwZJZBMzERx+OQQbmrA8e6R0chWOEj
0rIF4QxQ9cCJMCq93ThmZciafBy+mLAjyEg7QRhsw09ijZHjO1EkwdEiBhCP7SWPU+J/h9zEZTkC
4hnDFbSoHWzaW1Cmgyl2dbpKm5GflNoirO427TtznSdY4Fk3YasdeumktJHV6NC4CBIhecmnY00/
oWnGcS8wZ74oTqLQPxQOLSGn+uBITMMdfuQpUSNesH0L+L9CVwi5c0zTrZot58n+EkyoAGht9lSm
qPNLBxWayZ0lxUZUzNYZ7YaTdJ4o75YbKj/XtrAUnQJrnK4Ubmw3OOP8CCGDqkV2jhLh2oG1fbhc
L9zWwxPtEChE6DAnBH8aXDu7K+d1mID5YCeeM8OAth72tz6QYHXQD/j5P8EVToqSx35F+lHR55dc
3WLsT91kwzIRME1AivvG6hzue1m+4xGcC2tFO7vNJdCnM4MS48AblHuOAx09Uj2Cfw814ms+nflQ
T0NxH4h3RAt9mFZ4tAdb0+fdL+D0X7guwrurl0JkaZaJwZN8qnXzF74SwLnnCsoI2g+EYG0ZXPCL
Ql3My63JGC+/7vJz3ily6hch4Z/+R7jxo70z3wgocGSj8WcXJ0wRSKeKJxvXlPvmEnZV+HpQjPul
2ifwljkml36Oz+3BWsLLD5n4dB+cGQ7BTMyS0nfpU2RsckwkIbJuY5CdScQOJLiziujhWBjbCcEY
LklslMQGpXyJVed2pu3miRCP/tBJsycU3kiOB/tLkGmKDPNpAs7LlqRIhc/QPeP6+84ITArxznsh
V7Z8eJ2BPcV+65r6fYdBw2grAS5YQ6BkkwwsQkNfmT13R6oYTx4GxkcKUlFJ/31Gx4mixc1MyRQV
GOSQVPqBH1JdgzbdKHNKJDrmTvFPGpOP5nu6vdRvK36WAjc5dnJMiTP/7HxHaZ4VV6CSZnoixv1R
AW5/xmF97Vi3RiY8Ea7ImsW9Ty4WSHzdpGU03cQDczw66HUEzcLRgf4kjyN42Ubxysy1ZXfOOrnx
oiH8SQ+TtNLqAig5w8wC680w8bhZZcseQhP4TQ7Ea627Eyug1TjukdpQjdYduAb/snmqnkgAlzxW
3Qf8mmbEJZZ7fbChYhaVQWDdCdf1AIoM+ZqUGs1ku3vuSvcw8fd0i2g/ojpWXVBiFFzoIo1lYNx9
8KDLMArJFsI0sxgfZE9oaX5utV5PtZxKMQVwfJjtiOkaswFWqFpddox4Iqo3Q7ANf7kP9qt+LToE
gP4EWZkpRiouBbBOEsAjET/S15PxE+5VY/3f3pI+m4XGUSdcWBzyTtt/CD4Av2z46+Vsq1anEg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F0493E5A80A740"
last-modified: Thu, 12 Nov 2026 00:48:15 GMT
content-md5: 8TlJnPkYhFhQKufmHSCi1g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ce6ee3b-fc97-4036-bca7-a7fbaa283d48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-206a48f7-66dc-4db2-f7d3-8f0a755f3a24/test-blob-b9658988-ce04-8d57-ad91-63b6ed43ede6?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: f6af106d-4a9c-9868-f069-2a87c099c7b8
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F0493E5A80A740"
last-modified: Thu, 12 Nov 2026 00:48:15 GMT
x-ms-lease-id: f6af106d-4a9c-9868-f069-2a87c099c7b8
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ffeae897-9ed2-4970-a198-39d6dc5c8ab4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-206a48f7-66dc-4db2-f7d3-8f0a755f3a24/test-blob-b9658988-ce04-8d57-ad91-63b6ed43ede6?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/xml
x-ms-lease-id: f6af106d-4a9c-9868-f069-2a87c099c7b8
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
x-ms-request-id: a7a5e068-fb93-4576-aabf-27c32a7959ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-206a48f7-66dc-4db2-f7d3-8f0a755f3a24/test-blob-b9658988-ce04-8d57-ad91-63b6ed43ede6?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_5
x-ms-lease-id: f6af106d-4a9c-9868-f069-2a87c099c7b8
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
x-ms-request-id: dd3efabd-fa8f-471f-922c-4d4f918a240f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-206a48f7-66dc-4db2-f7d3-8f0a755f3a24?restype=container

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
x-ms-request-id: e763a42c-9c0b-411f-a8e7-6f5e96f7be78
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

