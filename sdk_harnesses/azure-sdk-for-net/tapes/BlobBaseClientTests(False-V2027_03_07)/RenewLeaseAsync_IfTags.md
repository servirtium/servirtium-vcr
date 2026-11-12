## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9ffd9a45-4f2d-8346-6cb1-0409a02ebb7f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).RenewLeaseAsync_IfTags
now: 2026-11-12T00:47:05.3760434+00:00

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
etag: "0x1C72F7DD9AD3AC0"
last-modified: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 497c844b-697a-4c8e-bb6b-58eb9634f193
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9ffd9a45-4f2d-8346-6cb1-0409a02ebb7f/test-blob-180e389d-2d0a-f71d-740f-b1490c4bcd92

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
5pw20zbHWYb3TQKw33KHJywIEWE4XOQYfQYrHZ78dyDjciMD9+dJ1t+IIL0qbRcBh4odAzpsWYm4
HlYvnDvn+tXizGxPhDBEvzuBsDsn7RDuKZUU33TmdxmZStiQGjmkoCbnR6CrsgJa2ET+6qhNkTBF
QHOl0xth/FRTtTpXtKQC3RAVP6ZvQ3aSugcv6I1wTLmoStnG/swKhktMWPzIAiSf/AyYOFGK1vz8
EhkUMRTH4mmBr2nLO95DCrlbI+t6yrfij+uA2BNnHXTdyuuy9lQ2hHWTR1O71MAuVC2XL7IQgkhi
MaEoRwlVGZH07XDykRNlJJ925oJjJ7sqUoTm0O7CzEijUMWyDjxrPS7Bx+ZPO8MZMgsTmpvF/grm
/fWFbkijMSEoT0BOsxZiCqhUomDV2hbAzJ3irzGt3lG7yxBH5c7lHpXEJ+uCy371sJDycFypESLe
xaKqwILwe3Hvk+cFGyTab4PLELMrPgEf7f6hum31EbrtaCAsOl0S1Kx6kziX75VrGAHY3gFvs4eg
i9OETsAD+YEtF7IErTQmuDsHsKrJh/1oNaJrHDK5frWZjK6Jjobrdpm2adjjZ2vMsSbFZwPc1gPV
Gxkel91OdJj9aiCGnCm1HDkREx0lhc02n2oM8xaxvLaqtHNszN+8Z/U/5vxKRhX8EEvJy8Lmr5VL
6PhyQoCCS61q2+i2SE9aVKso5p7Q61lVD+LK6PHzxATdIOTmSSV0vJtO4GotRcf8b3YXvcn2evyf
HTKet2K8dhfj2SdrcwuGsykDgQvuKMobznh63AY65qbnRyzy1gU4kmlTSWyfkPtrkAqf8/nxsPRo
g+nqQZoQqPKBgyzflNwky++hm99dez18D0v8mvOs9pY3iVMcTlDOQqB6HgzPjPwteygJTxQVCwer
bTJPEw7/1I2VpwqJCHye01g/4lwxrYNPzx/Ko6eBIX5LcOAefy+Sekl/OeTxpHOrany81iireb+u
/0TuNDHlE4WLPZebgFMprGcTsXOeXiusHzgrxUtWoPYhb4Dqo0YXmSZeZWbbD+kokinAl8hMD6EZ
QhT5uk06NZygehHTPgkh/BdNQPjE0BBOAjMhlQku1F/f0WAyHt/YIy/JOpTYVVMgn5uw/s+oVHEE
qrcaGaCTcaax822o7903dBzI+pV7da3fAfZtftWQNnzvLXQovQqPNsjuJ2Hmd6+9eIqy4FrciDQJ
OxipJfPQIL3wucFpD7YSOcTMjU5M+IlGsAVL3VYiE6U/H4Lx5RDVHgaj9r7uVGnToKeVD/rmvUKO
Y3XthENnzaYcKu8zIFOz929HqALLWFuceD2vjAOqWWFAY4Ka55nDPCgX0ip5n39T4ReLnhU/wg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20AD84EC4935960"
last-modified: Thu, 12 Nov 2026 00:47:05 GMT
content-md5: YpCKlxg4ev9fKZbh+ZcURg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5f9c7f12-7f58-4b40-ba7c-69a84332f97e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-9ffd9a45-4f2d-8346-6cb1-0409a02ebb7f/test-blob-180e389d-2d0a-f71d-740f-b1490c4bcd92?comp=tags

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
x-ms-request-id: 415c575a-9270-4c55-aa1c-f5a7954a5884
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-9ffd9a45-4f2d-8346-6cb1-0409a02ebb7f/test-blob-180e389d-2d0a-f71d-740f-b1490c4bcd92?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 0b50190b-b705-a241-71d0-8df3bdd1190f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20AD84EC4935960"
last-modified: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-lease-id: 0b50190b-b705-a241-71d0-8df3bdd1190f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0338312-4dd6-4b8b-9e77-09ce050a24e5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-9ffd9a45-4f2d-8346-6cb1-0409a02ebb7f/test-blob-180e389d-2d0a-f71d-740f-b1490c4bcd92?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: renew
x-ms-lease-id: 0b50190b-b705-a241-71d0-8df3bdd1190f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20AD84EC4935960"
last-modified: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-lease-id: 0b50190b-b705-a241-71d0-8df3bdd1190f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d45a2e9b-a9c8-4ecb-a7ea-5807d20d3a0f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-9ffd9a45-4f2d-8346-6cb1-0409a02ebb7f?restype=container

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
x-ms-request-id: ff78fee8-8d13-4821-b6b4-035e2abd8531
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

