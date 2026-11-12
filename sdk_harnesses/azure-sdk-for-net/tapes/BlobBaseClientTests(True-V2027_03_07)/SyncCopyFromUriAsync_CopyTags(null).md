## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-10d7e17b-6ef5-bbe5-c20a-452cd25e614c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_CopyTags(null)
now: 2026-11-12T00:47:29.9028260+00:00

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
etag: "0x256A39B209C7420"
last-modified: Thu, 12 Nov 2026 00:47:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0d9e3a9-3ba4-4d9e-84e3-3fba0f2b17c8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-10d7e17b-6ef5-bbe5-c20a-452cd25e614c/test-blob-d2e32bff-1d8e-2d59-e788-1fa9375baf85

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
hCt0iH9fmZ9EThSrCu/xXrT2fM0ejEddh6kpbU88g2ZbwKem6tjNn5FEjkAJriL3l8D0Qd7hZvjk
FgDVNixPB8qtUElISnTcKd082f0HVNmGMdaPSEKIeVqvwtPX92hk9Yd2XF3Yr0xLFxgBpYz63MIm
TgRWv76HJdbvmYehBDF01+R2kfd8rYKJRDEphtTNteUQsalkDjXI7jeG6BbEqhPnjM2og0vKqqCC
zHuNXp4CIuOikFOIEMmuraPA9cRsxZkdQvkHJDGaRgYI4kG6O4+YhMYyIhrAXnwD+dWoCbXbFQfh
bxyk+/2yB0pNgC6H9HITJ3D+OqN/XeN9Aytb8TxQLMw62Mtz9InIfxrPc95OewVjleJE3dtkYhI4
J/fSVhYN/FNhTBymnzPnNbqIr+oEL4cl+FxaDE7x1nW5Os2S9SkEwnaL7C7ovPWuXacg27IoNPhv
rV25s/AEcHam7WRmVUCRhO1zeUJZPTxnq6+n0PvDkAbUIkjLSg6Ghnu4Qs6QSAdnj1fFtLu1Fm8h
UgdBXZ97411ekTL3xTne7PPGoPtt1mOnP0Gj/ttLHwzYqvgGRSjcPV5xMrbVb8ke5sjI7nZ0tHuk
mR1d1+WBEnEmHhtA16fK6mKc+6Os0tB4hRcTgzGWY/V8YqsKfmZ58CBErlGu3Q4g/QMT2LjX98dN
5VLNbY5AkLolw3X8v2z8IwuDaCN/yqcJ84Utg4s8pGvjvZgUq4KRBB6WiBqZJD2XFrWtVI+kzhuq
xHoIEwwv6B4JGALT6HeI8mQE6EGNb89IlW3Vj1DcPu59aecIiPARZp/7kAs7wy0+JWEroOXZHVWr
wH2fWVnOLdoTVn+Pf2pz8oKhkd/DDNE/l2rusZ4Jo0ySXcdzcQxGLWIwKG2trqX3t61jOIt157Sr
YMLu33w8CrMz/SKiAIB1W2R8kuRkkenF9/nwpWvAHHYSxxFKV03m9B25erCCVLcs7dwm+VTQR87Y
KeeCS2RIcuGsjzhvKgMWlp7GqhY4QqJCw7iOmSMiQoBCci5lY6m5cQjP1sR+vcPYEGK2CZy3n+ZF
QIesudm9iU24LLjVsDP0DDkOaWvewwb0tYnAbDnki9JHICIiDbcuEUx3xpAKA18uwfxjqDZ6Zn2A
twRP/B0T06Hmjo8R0v+B31gfZvx16bIpkqo8gOKbzLqloVaz3xQvY/LvJHTPHe/94cjeWwCAC81R
JWpz11O+SsLVbDCozQBD8AIKhcU+WnS6Pp4ZvXC5JJaIYrmpu4yfMdqx+bG/VBTImmv9doUIE8v2
uJi0pIxSG0eaIGtHmjR1alTqjGDC++qKUSMEvK4RgE7tsgP064xNX91qJDSogAA3hwsxHYdrNA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DAC6BEBF6CDDF0"
last-modified: Thu, 12 Nov 2026 00:47:29 GMT
content-md5: vnJKlgRDRRFGFY4hWHiH0w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1d3c4dce-2a16-41c4-a09d-32df479b479d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-10d7e17b-6ef5-bbe5-c20a-452cd25e614c/test-blob-d2e32bff-1d8e-2d59-e788-1fa9375baf85?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>source</Key><Value>tag</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f52cba56-66c6-4855-af96-9f4cc975187d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:29 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-10d7e17b-6ef5-bbe5-c20a-452cd25e614c/test-blob-5329aebc-4d69-995f-88a0-1c59e731817f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-10d7e17b-6ef5-bbe5-c20a-452cd25e614c/test-blob-d2e32bff-1d8e-2d59-e788-1fa9375baf85?sv=2027-03-07&se=2026-11-13T00%3A47%3A29Z&sr=b&sp=racwdxyltmei&sig=sLnz%2BB7jh5J2k6FyOPZfIcA380W4PNOnUAuwjTnHkOQ%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-tags: dest=tag
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26EDEFB39B2D320"
last-modified: Thu, 12 Nov 2026 00:47:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 020acd04-844f-4c36-b001-c31c256f3f48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
x-ms-copy-id: ee1761fd-1755-443f-b978-de0e097aa90b
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-10d7e17b-6ef5-bbe5-c20a-452cd25e614c/test-blob-5329aebc-4d69-995f-88a0-1c59e731817f?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 423dca9b-34f0-4472-a0fd-e168a96182f6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>dest</Key><Value>tag</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-10d7e17b-6ef5-bbe5-c20a-452cd25e614c?restype=container

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
x-ms-request-id: b9502c36-e79b-4bd0-b5e2-ee3a0b527432
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

