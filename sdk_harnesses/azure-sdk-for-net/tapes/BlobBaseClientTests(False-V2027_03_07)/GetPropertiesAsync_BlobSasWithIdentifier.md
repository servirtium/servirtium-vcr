## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2c97f121-859a-1622-6b8a-3f9d816eb90b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_BlobSasWithIdentifier
now: 2026-11-12T00:46:54.3032307+00:00

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
etag: "0x2139ABA05431300"
last-modified: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ad2ae20-9dde-4fc3-bb7a-dbf315632555
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2c97f121-859a-1622-6b8a-3f9d816eb90b/test-blob-4c5a21c4-6a07-a939-ceb7-f79dd5bcbf95

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
MibGtrfuXuKNhEGuyqrTMjaEnSi44GtQo1+1OPq8EyYm+2Ojh4F9gD2F7Fx0GQ5JwooFBRJtDFG7
dRNXOCXn0XAbh89GMKu0Bx3qMvMO24lRa3Zwtg4Uue8R6BJuJkcXnRvrWZE/ApHfUP70gtlerJmJ
BsyvdxpiB87gNUiZRuHW0pTYI4L4EmjkkWYQHzYVszt45B96aCYAiFLDXs1JRgocHq9EhYgXkPRk
yua0UueXyoEMIGHBW2lu15ovNbObm0tb8wCG0S2yYFQrFp5ATDZqK5NMPCWpW8JG1a7u51tAyC6b
WF7nEfhUWcANlkXLLotjxQogTl4lspg9QPx/xHn46k1vpfPYgxqa+ONlnMR9e6ciiiJRIHrQdabG
qtD81JVGFKz4W4iXi0LvhVZ7wBbTwMVUXDpXp8nSny9NEdhJnSNNHocYhCAeiv7fYZsjVbWP8ukL
qHdb723iJbtZSnlppecyLaGOujulNdI7d0Uur0p6vR/vPvWs8i4aNl9kxUCFdruz8CcTATiuZXOl
H3gntHZx3o1aemfyhjpydITcQG+StgCJer4iZ7vmQNiCBtK28oHp8+ayKvxUwWnsoI2z0iUDE2l4
njm3TnfRczmOb4BnvIED802I34sENLhUNcYuM22zfvNpPlRHMaRv4bbCxlHphOMLsN/YejTdc2mB
YxiwokDL2/CM/n4su8GoGf7UQW5marDjIoOO2wS/jMrrxs6Mvj529uthXIZk3/UdL2E1CDH7Gvhn
zX+9PQDszXK0QPTzHFrAXUuDBQ0qfkOOcKujiYOY8KvWJPG+ubnrdI8UsJ4AKhMGdarmeBXqPU48
L8xUSETvHFBJHfdpAaSSl5B+Fc6ljUaXnRTYsXiW6+aigorslitLJZRNtg0cnXMGVOCEayiAl6GG
vasvFmrYsjERxn8ZpQFkM/A6V9c5e/+g0V2YEYC+IuvpZth/Gw4pdQTbCtb07K7eHzc4Rj/KTEKs
j0UNP6CxU6SUMD8p5BjhEOHSXXAorOSuufJIhdurHxmW04vJHDVjKrcyYLxvtTofVjVe9+/Rg+Ng
XoauaM3I6BElkxGMGPSrbzO59UwoPwS3KC6mTCcqxFCoaL2vtMHpaneqSSIpkj5Bsoe7GI2XOB6B
9z+eIpzp+87A4683+7txz4vUffbijZbwZZmgbqvCETCeLr2BSkjbwU1TaK6OCrfMSkgBwroonmmp
rr0CSY0j/dJ/mM3974RD+bypjyTnYVri0yRjwE91do9T2JyL2XfAMGrcD3HpzlrDvsj+fw9Ewkxi
H3Vovz2DCiI+qRfotyBE6F66C1Lp+QTJnwGGdvZ/DxZPKbkBV3AtWQRPqyRD2wenupaxirf6eA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A3247AB39C940"
last-modified: Thu, 12 Nov 2026 00:46:54 GMT
content-md5: 4boQB30BZdJatM4scrtzZQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7248a7b1-bc87-41d0-87fc-b01b23c173df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-2c97f121-859a-1622-6b8a-3f9d816eb90b?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>slwcowhgwfrqvqenwirt</Id><AccessPolicy><Start>2026-11-11T23:46:54.3032307Z</Start><Expiry>2026-11-12T01:46:54.3032307Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DFA0B92FB275E0"
last-modified: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 09755ec4-d63e-428f-812d-db1abb12d368
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:54 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-2c97f121-859a-1622-6b8a-3f9d816eb90b/test-blob-4c5a21c4-6a07-a939-ceb7-f79dd5bcbf95?sv=2027-03-07&si=slwcowhgwfrqvqenwirt&sr=b&sig=dgGWbZR8ejLiBmzf0%2FVK5%2ByuDHUJBiv%2BgZxB40eQL5k%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x25A3247AB39C940"
content-md5: 4boQB30BZdJatM4scrtzZQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4792cff9-eb12-4271-866c-dc514c901f7d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:54 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:54 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-2c97f121-859a-1622-6b8a-3f9d816eb90b?restype=container

### Request headers recorded for playback:

```
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
x-ms-request-id: 36a373dc-4d99-4be4-9a09-5ae081c1c484
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

