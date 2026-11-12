## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-56eb6080-7ef5-fb06-ab81-498d35e575d0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetTierAsync_IfTags
now: 2026-11-12T00:48:26.2938492+00:00

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
etag: "0x25D13F80BE22A80"
last-modified: Thu, 12 Nov 2026 00:48:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3aea3f01-eb9f-4321-9f51-29b845108c10
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-56eb6080-7ef5-fb06-ab81-498d35e575d0/test-blob-e5fce521-7bef-b5b6-0ada-dc06c3dd47fc

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
FR4zs1/HTo/wOXHgf+6do4ymWG6FNzkEqjZMGqH/N805THgWscJwWpZs9bYK1TYcPDl5HIXZd93l
LgkpejTt8AGjpjJ1hvHKNf3XGEGC+tQAL95nhRpIYNWaMYK5R99ifwW1Zi8EprZHr+eHAV+bYjQ0
KUtVhmrmWkZc21RvEe4edZg8zZSl/IknH9YzwV51/89NhB6UDPmazgvop8th2J74aYzGXpSgjy3C
LmaUspno59yFIYzQiWifof6IvFW9xkc4OlfSrqA6rfTx0t6SBhxyAL/u27YRKN8jJr2WF9LXBGce
XHhBFTg8S3OX3reKDZviFryVz+uQJhF4r4jio5YiGc12c6qkMOqHspBCeUkomBkhswAVQjR8jjVm
yWawWafddcXpE5nwPuXRDhxaTa3HUBZuwfCVDNaZ+uV1PWeE11noZQSEPoWAMHUbRDQYIUCHnnhP
QZe3R2jvUBmzewB+TTbDcuipQxGR7pB6esihgNil7Z/uNJXBMB2blO1szbR0nPb9VK9Y3lpnvlMH
PM2gTc9ADo5hjxihAkHKDa4kJSDbBt3RpCwpTA5Fh3ZCufRQ+kcdK74mEw3eXFFtjtGrQpgyKzbw
z6mjFsGAHAihX0hNeRNnBvlitfLQ8kfbu749mUTdD469YCueehX9pvcEPf0IIBS9RDyf0HZEH9xh
yFoCQoLDw0+6jxnoyYvjZA77y7VK0puqf1UHPj4XeUBOPLK6+2N0QHmtTZD61Xuwu2xnSFQnF/W/
V8MtvIQQohbZmYzZKWirhoo7nIQKsKnaVoPSsDDsJiW8+6SfRoT1nKt5IDzu15IDu8HJ7HpxtKYZ
U2UBPvLm7XJnHC3EC0AGRgDZkI9t63/xz/RuIjqqS0b9hvMf8164kzPJh7tkP7CBw6V6lyQWrGjl
EG/9d8o3vNDnxoVM5lKhIP1co2TDjI9E7F+UMLQi5tmLOePvuxtpkcrrfXgqNdxS2HcmuggEIoPf
uIpqoowcxN+rwaxvsmTh8hKZ2A8WGbeDQlc9+yzRhxdfDwKR/u4+zriZfnMv4yYSRcf2akp0yJ7S
52A038mz2jqVEKJhUPMjWwlWfZpEU14xKrVk2hzM6kdjvheNCe/v5aM5mdKDsPXT0g9AHkoEjpMC
A7QTTgAdyCZb/pHclVEaZpj2C7qMrXrAkAcNjMv8XzCEiwU63JajG9CsKLJk9z29JbiyDYPZdVY5
U774DzxaXp5hVwlL34kBU+/p34TIXJnKUGYTSlKsqxWvAInYqwuUUsoUAp8zcUYusbmT75bRcfYl
Lr/VRhRLtKzznN4AKKfkVI25tFn5lt8g5JiZGbt/3Y+Ss31Mvgu2yE7zQNRnLogSr5oJGLydLA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F62859E54C8670"
last-modified: Thu, 12 Nov 2026 00:48:26 GMT
content-md5: hiaztChUvL2+VMh91Gak4Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f01e4723-f791-4359-9d93-bf044e5c5f91
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-56eb6080-7ef5-fb06-ab81-498d35e575d0/test-blob-e5fce521-7bef-b5b6-0ada-dc06c3dd47fc?comp=tags

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
x-ms-request-id: 385d7b21-9b8e-4391-bafb-196b59d165bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:26 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-56eb6080-7ef5-fb06-ab81-498d35e575d0/test-blob-e5fce521-7bef-b5b6-0ada-dc06c3dd47fc?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-access-tier: Cool
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: 38c982bc-5fc5-4f0c-ba30-e4a8d80471f1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:26 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-56eb6080-7ef5-fb06-ab81-498d35e575d0?restype=container

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
x-ms-request-id: 714664b1-ca57-49bc-9536-ef6d3464e89c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

