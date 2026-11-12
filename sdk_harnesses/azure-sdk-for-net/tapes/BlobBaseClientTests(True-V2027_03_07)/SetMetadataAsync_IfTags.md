## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-941263be-7967-1c5a-cdab-14d62b2c636f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetMetadataAsync_IfTags
now: 2026-11-12T00:48:24.1776262+00:00

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
etag: "0x1C68AA931113E70"
last-modified: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eefc2fb5-bf30-47eb-9936-232b3ae9fd55
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-941263be-7967-1c5a-cdab-14d62b2c636f/test-blob-588e40b5-d67e-c38d-46c9-cc85bf6aee18

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
J378n9jsEhbZX/GSAOU+S7IZj9+3QFfn1U5NnazUXWO8+6+tMMOWyS14fx/k+8Nhi4DTpdoPYecm
FMqJnnVpBAGO1QQ2kRvugsWxPsE4A9mL7BIrAbiIrZnHhhv4DSu4DnodVia+Kvpl5CIVXSIl7hDx
/rFiPQJJBShrbgr/9XWa+TBGGq2zzMEYxh2Vc1B2oZgKBw55VtB31FD9U7zvZe6temPy39NjPjHw
SXfls5HY9Mxx9O5mIKJgzkVctXkFKGEu6PjshMLEp8jdiQxZkiG/JV7vfnH/RlrAkhCOB4i36yAW
tsuY628KrE0miZeWBjsknZAbFarvLqKeK/KxNqA/Jp7rQ9xVJjnu5dEj2b3CKovVaWn4nNV2Jocp
+b99WHat5mP5qsNfznZWLC/YzFXk3AFn3Mw2R4nIdB1ULCx5cY1bdvNayYDHdZryoXCmnlkyRB2+
FXupdp/ZMTWmC6FK3LqifFVhihKAn2cxQ6UZIdbDIegPu1sRsf9UgJhKIWn5qMW1BCEE0LkKPXYU
dzP5wA9e4um5OyFfkMpVDQl6Nn39OJrfYx20vlAuBH3l/DrMWsCI6z9/QG2jVnNWr8OwkAf5Fz+Z
GlzyqiOZijekeZSQibNI8ko+ffgtPA2qXQ+NfnR17OX6Mz9klkEb5rU2/9zexiUPZ569uplGa91O
R0wUCwzDLo2ullZz5FsIIpZC9jwxy5fpfhbVuDFLs8diFU71B9upc9FOMC/Pm4NCtJgDA3WhHXy0
Ko327XVcYuKOEc4MExu7mYNq4ptnGuKSkwOYSK9SwPjSQNxOs4Zc8s1NQIm0NqB8R2rxNjvhTBCq
Y1lxwxoyPFDWOdM+beb9Du/NGtlY3l1jGwFFYIm88fPMo1As6i6zGwM43vzNPtqD9CdLEzI2UYT8
DqcZ7NzHGUjgccmW0STAGv7VH/9hld0mwmxicN7AllHLL9uHmi4nccSz7cwR7CIDivgzYTKFm3jK
8ipvZahqH9t3y6FIOYDQra07ragQFdVJXuXljDUfRZNjvKcEuAwbSM3xmiGBu1F3Y7OESu7Qud1V
JgbDhZKmV4UN5XzZy/WgH2TaH3uzyKOUbSmBm/ulkgPJr5EGWMM7S0Kcc9XUnpe94yqJ9ZpioV5j
LhdpJLuJaFJ5DxxjmsagntM4F1TNwM6RxLjRG5xoZw0zoiqs0iaHEguDWo97WUhj6VbGKokJlm1J
12ADuEy1EagPMPec9MytsQVJSmY/FmpvbTJFoTyDKgy8Y/rGg1m+zUjmaylQx/SKGXiEv0wHCcH1
k0sZcG9riwXr4JHR5i2ri3wdWKpBH6U+u4jD/mrAtVk50fANpF3Ze+AjZedjuDNL2TTP6bAWsw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x278EB13E350FF40"
last-modified: Thu, 12 Nov 2026 00:48:24 GMT
content-md5: 9XS94zLcMr741VKDXQFiVQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 542e2519-f46a-423b-8537-c1ccaf11992a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-941263be-7967-1c5a-cdab-14d62b2c636f/test-blob-588e40b5-d67e-c38d-46c9-cc85bf6aee18?comp=tags

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
x-ms-request-id: 1cae48a1-4f1d-4f08-9c42-6db772b9cd1d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:24 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-941263be-7967-1c5a-cdab-14d62b2c636f/test-blob-588e40b5-d67e-c38d-46c9-cc85bf6aee18?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x210B42802167540"
last-modified: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 12fdbe0f-4222-4881-a84d-65f2c6a0df10
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-941263be-7967-1c5a-cdab-14d62b2c636f?restype=container

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
x-ms-request-id: b4137e5a-cae7-4ebd-b97e-cfb48d557b74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

