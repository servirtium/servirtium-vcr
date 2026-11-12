## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7ff44f3c-8718-5452-c729-ac198cb1ff41?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DeleteAsync_IfTags
now: 2026-11-12T00:47:47.0393111+00:00

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
etag: "0x2506FA27C961360"
last-modified: Thu, 12 Nov 2026 00:47:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4e70c0fd-1dbf-4b0a-b9ff-bfa635eff555
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7ff44f3c-8718-5452-c729-ac198cb1ff41/test-blob-3b09421e-0ba2-6912-758b-73a62935612e

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
aTy75AV1vCNG+JLOIXiLQXvNGVe+DVsxPYoKjRSrKpHHfa9P9Rs8qYbm9al5Q0j9/zIqWxsJcFzh
iqZ6ay4Pms0ABqTIO0tgkXDQ2BixuPpCDI7hgc91vQ1Tbmt1wT1Y11rbeDyjNMTnysmqOZdEL9Ks
OF6gLRj+i0iXdc3f69AyeAG91UC9ntjK+rcGyoR1Dj6ZyIjft6lC3ez0DL72B974eMCWh1qS75qF
1jNh98DDIWaORiJHU8FXe/dTyJEZ0/LYDVLE3ofkB9nuWeF14OUsMOpXaMG8sCT/PgxiPiYIbANB
iept/0Pfqj5IWfnf4ZoRJpimwWowG1wtxZ97gciz5e3dNFf7vjGneL2DdFcrH11xUBiNYauYEW2N
QDqjYyh2lXMMAa1DFmhn/0itrKcFAqVCCjCwJYRCRSPpbX72BBSUDd7jHx2vLTqvJmJi62TFiD2U
YFn3xW/vybyKWqjqcPszGJ/IIeOHk9z2AP4h4Fq+I+VAYaO7nEdv9FVhJdOSxbZnLtLE/WdaDc19
AcRxzeliyzbCqQ5XeHtYWS2NJm0IZDtHurGH+iZ+5lTWPpuC/SZs/1mdzxuoD7VXa6M5zOZfdJ2I
KRM32tAQRMO5gTrg1VsGIScUa5Qgn6r8MI6DRBludsr9+dQTNCSIjYpX7o17d5VHM6u/SwgIaIlo
O6pCjACqSwpw4tyH8+0Di94KyLAdgbn4OxBtrivC9ZFKqvl5RgCKraODCpS5wD++vMAp/p/ZS7nx
SVHvPJzfru1KPEjziUTefxsNmXYkP3vQr/JrmPbycV8/iP2umnEHo1ynb4T3yjJ7Sn6DzLFDzArV
HoypdBX3V8rotABGL+WpBfYafc/22eW/7013bqWu/Lvz2XzkXS9Grxe5DhUyNBuZ2ca6KE863kWn
6YTHf+klOrhEU1ZoxajG0824PcrPjboy3ZTf89Nsufo3PXSrfzAulNRd7eHEMRQe9FWBgqF62FvJ
lKJURkfl2JlcMYg0G1Odiqj2caDZbqx/wP996jdYvWQY4eqO2U6MeBVHZ/+M6dgB5Pf4g2a78Cb1
1IVHZ+1iBHQjGzlpD7BaavmLkQat89cmewY/Xzn+XfHEmATJRRAn5WOKaM2emNVHnhltL14fSOGt
IOvmI6Q6Jb5IpHaskSXoY6yjIooJiOMx+MAgkC2SpVAjGyQlQcK+T0MPVvNemg30hcyyeyVWpJgI
tSrkGZSRtf8miHUAwyLq5dJH+jLv012zLAtg4CkqzHaLHIuX2jWufaH0NxKX88KpyJZTD6pmGeLN
MO2JMdXV/Lz/dKaWUgqcmHyQ+ptLGzlJtheS173LJQOpyalIJUzLHztVmH4bE3WLtnYu1R5Ggg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23360CE84F54080"
last-modified: Thu, 12 Nov 2026 00:47:47 GMT
content-md5: r7sULPIu/BKOuP6N+/HQvw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a1e0f62-8383-40c0-a30c-9d18885525bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7ff44f3c-8718-5452-c729-ac198cb1ff41/test-blob-3b09421e-0ba2-6912-758b-73a62935612e?comp=tags

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
x-ms-request-id: ec20ed62-4635-4487-8429-d151ff8f1972
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:47 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-7ff44f3c-8718-5452-c729-ac198cb1ff41/test-blob-3b09421e-0ba2-6912-758b-73a62935612e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
x-ms-request-id: eaf55aac-614a-4027-8b99-448b10d2823e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:47 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-7ff44f3c-8718-5452-c729-ac198cb1ff41/test-blob-3b09421e-0ba2-6912-758b-73a62935612e

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
x-ms-request-id: 244632de-60c4-43d3-bdf0-6a3fb934b34d
Date: Thu, 12 Nov 2026 00:47:47 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-7ff44f3c-8718-5452-c729-ac198cb1ff41?restype=container

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
x-ms-request-id: 5133b80b-ede9-48c5-b219-c944b64cab35
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

