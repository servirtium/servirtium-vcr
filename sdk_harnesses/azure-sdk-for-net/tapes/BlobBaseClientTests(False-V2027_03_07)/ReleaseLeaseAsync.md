## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-439e66bb-7f2e-4cb1-5776-2a1fe7092dc6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ReleaseLeaseAsync
now: 2026-11-12T00:47:01.8073880+00:00

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
etag: "0x1E0B489CB7C82A0"
last-modified: Thu, 12 Nov 2026 00:47:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 254696a2-53b3-4660-a779-4100bce5cbda
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-439e66bb-7f2e-4cb1-5776-2a1fe7092dc6/test-blob-6af84ab3-16ef-760d-624a-711e9815d98b

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
vtuUnV9rQ9M8tf42S/PTthozWBf4sxqlWSfh5A6TtEGcn2ELdI9mSAYkLTkX1ytudrsEZbzCkwvA
70Q4iV/FqQG8maySyEGKzBAQ04bgjYL8cm1Sjk+F2gtVSoVLLr6mXoQ4Wz1+2655eZissb+E4GLB
OxfxchqyN76gPH28P51SaXQCqDFEfZa/2RW22SlM0WojifKmtexphiN+3p4xvDr7WUdKgjgwfL2A
MpgF+16VU2sSmbWqq7SImCEOxZ/3jh3au3/hAU4y8ww1JYNTY4rF6YozHiOFUK6TwukWIrceiaN7
KkDetFId4KaodYUxNTWXSNwVxHD5VWrQTj9kG9BVFpzf1zhJ5jU4FT583dsoYY20f9naCcQzgdXW
DWUSuMTVUl7oUV39TWGn3K4xfHiOqOyysJz2ew3YrFZictjPJV15p4p8QA8vtzF4MywWAQRdR2V4
YAgo3tdREKUHmtqI17dRuNXtEmfdgvlrfkfgwapRBStyVsVUUcizKi9qKB1W71x0xEkvcDX9m90P
vGCPcU77tZSvFYDy/GYMOec4c1ncFY7ra/1hIpX1dLrnRZRoJLngb3OIptnbgsjiIjZOxSiDMqfR
owVRmZP/uqDGC7bSpBUtWAPmU261EOk0fgBep6+RYxPsl4C0jtXgies4FXYREH4hIG0knN84G5Mb
HBuSoBPxNKej5QyUeMkuBsqCfPtyI26BPIZCbMYzs3vsmXG5TejYR+DPbSpxjKej9pYVtZ+YqPms
EWONr8fgbzKQqN9XdLnhqjUao7VED7DennYwHv3cVPB4DTuFS5cZ7/734eTITIHdMwtqfgVEaAGz
rhFQr1E0tFTu32d9W1+dAbO3TC7LFlL1U+rycdXrM6Q60ZyGyD+swyyQ2WwZYNerzHxRjRvS6Ji/
W1xmQkJ+A6zCQorDFjh0CokCOjzl2/MSRqVZmqaJZ+kDx23iRoHpEtbAVh1N6LZE3IKS0K1c2X9p
U/udJWgFOdugv0/LkcQIGCdlJYTWxF3uFL0k9pc7p+7tefKFTO1tuh1CrShneEu+ireF9rT6k4+e
rhCr4UNEZBhg3hfSgsw6+GpnlBc0h5xxZWvftbA58uZj553dwtna/UgPBpkz7AfrS/5Jk/93aSZz
OXvXZK5oJ+sxbpsuXTWQjZbPJIECPnlj82qx8F/n6312aoheApmZp9+tAn1svO7IuQZpqESlcPsB
c3FEtjeMSYMduPOtMor9NX2iVDz89zd86TZZfkM50fmNXI8nVfGoIbj6TgT7G4d7bHLGAhu/BHs6
yM0AM8s/5Ob5H9X71eCM+jODAqkygM2v3RLRcs/dzlcT7Ywjp+3tumkdAfyxgJaROgfnOwLSBw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F2ECE6E8EB8810"
last-modified: Thu, 12 Nov 2026 00:47:01 GMT
content-md5: NdtVjWbc6eZzNLt9KnuhKw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 199374cb-ec83-4538-ac12-6332350a3126
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-439e66bb-7f2e-4cb1-5776-2a1fe7092dc6/test-blob-6af84ab3-16ef-760d-624a-711e9815d98b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 56500047-6eb9-1771-1b51-7de7e7536852
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F2ECE6E8EB8810"
last-modified: Thu, 12 Nov 2026 00:47:01 GMT
x-ms-lease-id: 56500047-6eb9-1771-1b51-7de7e7536852
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b8c6cac3-5452-4b0e-9bb0-2f4d69a6b2d3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-439e66bb-7f2e-4cb1-5776-2a1fe7092dc6/test-blob-6af84ab3-16ef-760d-624a-711e9815d98b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: release
x-ms-lease-id: 56500047-6eb9-1771-1b51-7de7e7536852
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F2ECE6E8EB8810"
last-modified: Thu, 12 Nov 2026 00:47:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f72c3bf5-4c0c-40f4-bc5b-d40001975f19
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:01 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-439e66bb-7f2e-4cb1-5776-2a1fe7092dc6?restype=container

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
x-ms-request-id: 4d651979-bb2a-43b5-b770-176e083b36d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

