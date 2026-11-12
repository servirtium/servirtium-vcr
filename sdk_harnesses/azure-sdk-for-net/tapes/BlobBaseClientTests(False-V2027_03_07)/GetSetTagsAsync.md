## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ee354585-4313-734e-2dfc-34a1ce3c72fc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetSetTagsAsync
now: 2026-11-12T00:46:58.2783086+00:00

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
etag: "0x27A0F3465BEFAE0"
last-modified: Thu, 12 Nov 2026 00:46:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5463670b-3c62-4ff2-a1f6-1a7201a4e814
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ee354585-4313-734e-2dfc-34a1ce3c72fc/test-blob-8f87d764-af49-c53f-7829-06d7506953fe

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
V5wECh4rg9J/gT0D4HAWstaLf8CnYDTWBXB26T13I8SoNkkxN2fdOVO0EMdxPOQHElMBxemTV/Zo
LgWutJmVB155W6om5XturkZt8k9sZciLbtfpdV7aFd5SyQhhLoS5Hwlp9+A64S3YkhejJmWm+8g8
I0bCq5L/n0bL0xtyDH/Bs9NGA23oUY2pEeJHNu95q84/JQs+93N2aViabg0SZoaX4nKRX/dbVNG4
GZqvuGlWUidMMudzg7tf0JkVTeKAl6tcr1R850vX5NA5hd7Zx7DuRBzlxTOeJF63Mo9dRQfvOIHv
UwkU2mrcdU0XOf7dhgjoJgnGmtF3vov1xbW8eZ/ISkxc6XSn2mmyCVDlhupg2auGdB7+KZ2wd5R9
HhW0H/uuTu+xgZ2UQUyfFJGBkTehlesJNQSAyiGuq3HfKrtU/elUNzf6rlgO8jPSXxUML+Zd3Ikp
qur3LYTOAtUrtReRSxaoLFr/pueT+0PRrmoMonyLgk0yKlL+XQmzLKuC4zwcQBP+YwKMXTWhlq+n
Jn8Zwl9YoDPJXyDEqc9QTHo7EBgGtG1XDT96/yQYkJSiVzaJmWpLKUMJU+HzOboyOxG6ZoWXoHER
wrQg3qEOsM6MIVGYxrMQ7+bV/GGLY9SESMMTXSoPC7fFeNa1Kkui+qITZxhomXReqnaewqMQhl/f
nJbd+1KkfRWa007cWsSbMwK+ePy8G65OtLOzcEkTtPJ31Y61xP5QbuoCzsUlgU+xA46hUg1iI4Dn
jkae8QzMhx9cZYQ25W4DbgoSuU3pKDNkAWy6cWHkFLIOzja3sX3dNkamyRvKex4gnuQCUGoz/mUT
Ou+fERa9d1DSJxc4S72NNYMGQl8XmoZOmtJ94cRI28/QpHaNPSQw6FHL91MH51MndRvmLLsF+6Bp
UXZEQJaLikxHaKZG//de1VoOTKIyR7J+VWypYa4UyqnWJOyt7Ke7QG0Hv3+t4XYjh1Zg96/+NgnE
xeop4SmeMp39cNsLsOmyUws1K4cy0XT1htlXs9P52O3i6Sa8kV5DaI3isHCbF9ZtraSjyAuBkfR2
NFtPRn7KA5jtKMfD9cGt8cL6UCADWm4C6gYvVg/iYFgxRl0D9CIOGK3Yre4Pqbfi9ddIh0DTctns
TFt4mqyICshvka9kqv2g6zhzK6x/80BOTGA4mtkXXdSDFqfGln0AT6MmnxgIfUvZqJsIYEctbVgb
Kk5LUHDuVzPa4JNV2VW7c9sJWVMoRc4VXvE9D/2NVqlOq2sutP8yN0jkLp23hM5FTOxsIxQF8+R/
NvF+sUg2TYnqBi7qjL7b1iELQxcxXdoj+MIRITKVSbiHr30Ns4b/ruATzX2gW8AtkE3y+a/NTg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E37735D8D161E0"
last-modified: Thu, 12 Nov 2026 00:46:58 GMT
content-md5: 1FjrO0GpN9ZKQqYm2uQhEA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 867898db-3ffe-4b07-b181-06291aa09f26
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ee354585-4313-734e-2dfc-34a1ce3c72fc/test-blob-8f87d764-af49-c53f-7829-06d7506953fe?comp=tags

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
x-ms-request-id: 6ae77003-5490-4584-b412-68080c47b6e9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-ee354585-4313-734e-2dfc-34a1ce3c72fc/test-blob-8f87d764-af49-c53f-7829-06d7506953fe?comp=tags

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
x-ms-request-id: 7268a3c2-e6f5-4a20-b34c-dc9a4acfa931
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-ee354585-4313-734e-2dfc-34a1ce3c72fc?restype=container

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
x-ms-request-id: d0ded8e0-d81d-4ab7-aa65-bf106cd6690b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

