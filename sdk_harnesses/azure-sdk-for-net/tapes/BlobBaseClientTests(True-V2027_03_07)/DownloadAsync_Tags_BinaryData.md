## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a5356f40-3092-fac9-f815-e2ca087ec3ef?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_Tags_BinaryData
now: 2026-11-12T00:47:57.2432211+00:00

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
etag: "0x1C7DC7DB04FA7C0"
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c7870a2-3b9a-45bc-a3de-83b33205b2ec
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a5356f40-3092-fac9-f815-e2ca087ec3ef/test-blob-2dff5154-4a01-07b7-ffc5-54b0447808c3

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
aVWrK2UxU3xUI8MKxipz9ZBMPifbaZWo29T70x3T3FW4uHBzmQcrDhy5UG9svzPNoe06vD+cFP/A
Ak+RNoBegEZuUQ66/1uIIS8LIhklPBygLTEwmR8WHKRws5a4mdibWs8o/W0lE6GRsZsPkPLmmsYy
8QhOLucnWDVqSUzF0IdXb8dJ/D6vexqPnueEBouxihnQhajPTCzoAaU4u8pVzOATuCArnJ2Hg3bu
v4//olKpuL4z9UvfhyOaYfuZd79POtIHcE1rhu17SAEy4Y2d6F5TjgILItaVNDH9kDqi7gy2noS8
+DIEPjLQt6xJrKWV/XmcRei8RBj7cTscbfaz2Fr1fEIJ4O8sT1DQOmoqS4eLaJPBBqgj+VprwIb2
59A7Hd9SVDBjixyJcPaX7Amt0SW0kAVi8tKy0YLnnR9oNWeAlB2L1/ZWJ9x2N5WxjA1Qvu9hQlbK
2SsMn4Oue+78IDuPF1fsIvkvXWgp67o8AER1l98wB/IQtbvxfjdzqKzuehZaInS1Y5v1MuXtoe1w
0J8+OOQPyxlIfmGb+6PBu7S8OnGk4d7QvzRDO9UNIhPOga6YNG/I3q/9EqQSGmj4M3YwMWZ8y+7B
bnmvy5BDO1tOzXn0KYdF9FzCp886vaXLSwdf3PGtUrbA18X2GBMeudZIxE3vAwru6z0KuiQehrDU
5ICJ5F5poHvDNFHBTttIo+358fhY3Ef8cPG0opeSolAVIjSTldV33iPRLM+4LZxhwhY2JZW3ewc4
jHNttf7jMJIBrCyntQ4YgRLVhrB4RENUU+CBW3y7XaYsWwhhCikl7vs9t4BwuQ0IHaSC4vVWv0gw
GGIeYdUVRU+FeloFtnbpsJi1O4zC5JnSeT3YOXqx1ZvAMfHHBowlKHIx6j6zAmctmDJdoYS7bTPI
S+iXPAzU1KW+RYWEIqkLjxMakPpbH3bWq6BHUzQWBMO+/7qjjutlXBWZ9L3hqHWIURFxodw4bCxx
wJFrjIBwqEDCxiPvZwEntDTlwiu59QMqvwIjpGPmhZKOMs1a+tCUKEt9H+FSmekPSeyoU6oAuMuO
Qc1+TQPc20GRYDU0zbpkUJnfPNYh2CUYE1t2PTHnjXkBzLgCFdpIoEOgwTi023wyRAMRIHz1bGio
ZjqoZp0PqdK8MgEBYTq+l5uSgBbsZDjfQ/ku1m39DF9QWq+gnzmlkRdm96h6MOPIUongY+tRuwIC
ySKk4NJlviaisQeLHfhi7O/+hmyPZBIVZoPkHalz/p6tntYWAbBFADmB2H/bPTSQfXb8UjWVcmQP
jnpPgaB9LrNo3X8hS+s+uYUyDYyTOihPU58yd6tpFytxBnI29n+YBKnMcl+1bzKLvZmvY2TYfA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23412B31C4B7B80"
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
content-md5: /34oLYMwm8ACoUohHd5sHw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 46ced017-4d8c-487a-8425-cbb9c61647f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a5356f40-3092-fac9-f815-e2ca087ec3ef/test-blob-2dff5154-4a01-07b7-ffc5-54b0447808c3?comp=tags

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
x-ms-request-id: 30c4bef9-234a-4a9c-8d28-132365a091d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:57 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-a5356f40-3092-fac9-f815-e2ca087ec3ef/test-blob-2dff5154-4a01-07b7-ffc5-54b0447808c3

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:57 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x23412B31C4B7B80"
content-md5: /34oLYMwm8ACoUohHd5sHw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 02b25686-fd61-4bf0-8667-a8911a360626
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: /34oLYMwm8ACoUohHd5sHw==
x-ms-tag-count: 2
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
aVWrK2UxU3xUI8MKxipz9ZBMPifbaZWo29T70x3T3FW4uHBzmQcrDhy5UG9svzPNoe06vD+cFP/A
Ak+RNoBegEZuUQ66/1uIIS8LIhklPBygLTEwmR8WHKRws5a4mdibWs8o/W0lE6GRsZsPkPLmmsYy
8QhOLucnWDVqSUzF0IdXb8dJ/D6vexqPnueEBouxihnQhajPTCzoAaU4u8pVzOATuCArnJ2Hg3bu
v4//olKpuL4z9UvfhyOaYfuZd79POtIHcE1rhu17SAEy4Y2d6F5TjgILItaVNDH9kDqi7gy2noS8
+DIEPjLQt6xJrKWV/XmcRei8RBj7cTscbfaz2Fr1fEIJ4O8sT1DQOmoqS4eLaJPBBqgj+VprwIb2
59A7Hd9SVDBjixyJcPaX7Amt0SW0kAVi8tKy0YLnnR9oNWeAlB2L1/ZWJ9x2N5WxjA1Qvu9hQlbK
2SsMn4Oue+78IDuPF1fsIvkvXWgp67o8AER1l98wB/IQtbvxfjdzqKzuehZaInS1Y5v1MuXtoe1w
0J8+OOQPyxlIfmGb+6PBu7S8OnGk4d7QvzRDO9UNIhPOga6YNG/I3q/9EqQSGmj4M3YwMWZ8y+7B
bnmvy5BDO1tOzXn0KYdF9FzCp886vaXLSwdf3PGtUrbA18X2GBMeudZIxE3vAwru6z0KuiQehrDU
5ICJ5F5poHvDNFHBTttIo+358fhY3Ef8cPG0opeSolAVIjSTldV33iPRLM+4LZxhwhY2JZW3ewc4
jHNttf7jMJIBrCyntQ4YgRLVhrB4RENUU+CBW3y7XaYsWwhhCikl7vs9t4BwuQ0IHaSC4vVWv0gw
GGIeYdUVRU+FeloFtnbpsJi1O4zC5JnSeT3YOXqx1ZvAMfHHBowlKHIx6j6zAmctmDJdoYS7bTPI
S+iXPAzU1KW+RYWEIqkLjxMakPpbH3bWq6BHUzQWBMO+/7qjjutlXBWZ9L3hqHWIURFxodw4bCxx
wJFrjIBwqEDCxiPvZwEntDTlwiu59QMqvwIjpGPmhZKOMs1a+tCUKEt9H+FSmekPSeyoU6oAuMuO
Qc1+TQPc20GRYDU0zbpkUJnfPNYh2CUYE1t2PTHnjXkBzLgCFdpIoEOgwTi023wyRAMRIHz1bGio
ZjqoZp0PqdK8MgEBYTq+l5uSgBbsZDjfQ/ku1m39DF9QWq+gnzmlkRdm96h6MOPIUongY+tRuwIC
ySKk4NJlviaisQeLHfhi7O/+hmyPZBIVZoPkHalz/p6tntYWAbBFADmB2H/bPTSQfXb8UjWVcmQP
jnpPgaB9LrNo3X8hS+s+uYUyDYyTOihPU58yd6tpFytxBnI29n+YBKnMcl+1bzKLvZmvY2TYfA==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-a5356f40-3092-fac9-f815-e2ca087ec3ef?restype=container

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
x-ms-request-id: 86d270b5-3ad5-4658-a881-7cd378cc7b30
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

