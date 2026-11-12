## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c8bf6e64-be58-a10a-f943-1e095e4618d2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).RenewLeaseAsync_IfTags
now: 2026-11-12T00:48:19.8362074+00:00

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
etag: "0x1D09EE98E795AC0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a936313-e3bc-455f-93a7-ba026bdc2854
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c8bf6e64-be58-a10a-f943-1e095e4618d2/test-blob-8f2bd249-c445-58b8-80e9-850c1dc7a393

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
iMQmU/a6PZwOOfcZOJ0BOVq6CcwlT06gtmdIbzn+gzKgi4GZH8Xcj5WPgAzNnh/i6EyxYr3XbTl2
hp2Pcs5jELXFea0cZxmV3no3ls5C0hdHZYbsTCB0yB1II5koTB3GK3BWCCVyxoAyHIRDoNdqM7OF
SAxHdsOUULCP00R/bZFdcGpe68ry1J8GuTCcMShG3u/logQQf7Wtwrh04/I8s6/z5TBsC0jpk3Rs
QLyS+B6ISfVUmsqMTPC1sCkRffCsygaBqEv32dKn/A+QpD/4GsqZ7Jn85xjkZplAt1oe1xWDwHa1
EE/TkHAjrJ27/KiwvJVfeJFWr+LtnUGxtyF3iCT6DePJQwp6xlsp2Tt7KWrxj/vEv1+DLBCTx3MN
IdhOrCN5wO/E53iL5LI1LdancnTXwCclssjFduDTNXuWbKWC2iwXAWh7LaiCOdutTf8561T/NmCx
KfpatEkO8bH99HcMslKpkHELW5N+onntGCnhmUomlzZE0bEyvE0ebTz3hURjoJqskFvj89rNMoaB
bZsgLFdn111AyOGhd9Mj7O5Whx00iXeONAnuQqNcd54rsU6x/kDkkK3nI9i5CxiHwAbrdqtoTOQk
kvhOeJS55FBCdsWFcu6ucvZvTWaf1CnwZoKccQDzwmVqjWtHlhcZLT6Hd5VTAk4XPAS1+P5+hL3O
XRISHHNQT7NgGuSDZtveVh8nGF2UnWM0hDT7Pslm7AmteTgFBxHLNyfh8udplNUo1qLeVmxgOsCu
3Zc+VBHp+S7b1e2j2U8OW+E1sqp7yvBe02cnh5WcTT93Vil5jOIW9/i5jr/ohfxTz/uLKocVMhOn
34GpwnKZPoeuK4Illc7+H7qxwjwwdk5q1LeaESO3YiMV0a1hbDWGIE84OVl5LTosjAvMY3DWd2gz
Pu66/ixk9slfEMMhnbKFK6Hs+Dz08KZ9bYUX6/6zPlpELS5GzCEi00OPGh12Cu5ZRjjO6X4sPk1H
PJCnTArLrNFp3W+EPl6AyiT5ZNaJB2OWvqTF5FXcGO/g/5CQe4Y4xG5LDCx+1QjZTh9ZMtl3vTQt
EI5mBcd8jcWAoz/O70+dwKBnPfo2F+ic7JU1guUVaEJbYmr40r+mz39n/THJCl/Qu3I5EH859/ml
yhkyRgrgazv9c4zkpe3gwG56zxq30+E2ZMZy21fCIWtxUgimdIl1hpL1y5fS6xaFWE8Rvyfe7vY3
++FDbpDjOlEgc1LlOkzkBUiIwQdJZHmw7YIIsGJDkmQRbninMRgBEZFFsXjDnx4CLLnfVizv7pdo
k4EN24nv3eHt08zUPdMwhq91A7IA7E1kBYSoZDs4IX/gPp6W9DYHVtSX1sxRLu/mrtB8eerkaA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27ACFCAE2095AA0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
content-md5: +sMcc3aAGZNYoEA288UXGw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5e0e291a-00ed-4076-9c6e-11bda16d841f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c8bf6e64-be58-a10a-f943-1e095e4618d2/test-blob-8f2bd249-c445-58b8-80e9-850c1dc7a393?comp=tags

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
x-ms-request-id: 407e5044-f19a-496e-8773-5b8cfc7e70e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-c8bf6e64-be58-a10a-f943-1e095e4618d2/test-blob-8f2bd249-c445-58b8-80e9-850c1dc7a393?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: d6a933a6-4605-a578-b5b2-4cf3fe349a92
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27ACFCAE2095AA0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-lease-id: d6a933a6-4605-a578-b5b2-4cf3fe349a92
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a3aea1c-884b-4bb0-9520-c64033e79638
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-c8bf6e64-be58-a10a-f943-1e095e4618d2/test-blob-8f2bd249-c445-58b8-80e9-850c1dc7a393?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: renew
x-ms-lease-id: d6a933a6-4605-a578-b5b2-4cf3fe349a92
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27ACFCAE2095AA0"
last-modified: Thu, 12 Nov 2026 00:48:19 GMT
x-ms-lease-id: d6a933a6-4605-a578-b5b2-4cf3fe349a92
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c964a91f-7c79-4389-862d-f57eaf76a023
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-c8bf6e64-be58-a10a-f943-1e095e4618d2?restype=container

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
x-ms-request-id: fee54fc1-4d74-4c2f-8a55-301e38798ce4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

