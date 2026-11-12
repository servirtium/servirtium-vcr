## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f61be5ba-5871-8a7c-13eb-205c6101068a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetAccountInfoAsync
now: 2026-11-12T00:48:06.9731306+00:00

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
etag: "0x23D118175C5FC00"
last-modified: Thu, 12 Nov 2026 00:48:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 579f2f33-57a4-4f17-9f39-f58f0f497e56
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f61be5ba-5871-8a7c-13eb-205c6101068a/test-blob-2a7e1ad4-e8b9-7388-bf5d-e26f4f90af44

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
M52HYaAIQ4Vm5D/js36Hxi6WfbVF6PrSXac3E3YNOoI82yjDeaXpy9b4w9SppcBB1htAuRP6/0uj
tQT40S8PWam8p9dVxE2JrLHeTCQmKbfn9j1azIFuQdzdIMSh8fqm6Woq7P7o6xLOtw1iG7InfItM
ENvytIwoTWX7eKOJ6Lu3OGO5/Dy5/worjBRzDCYptqM4VOAetDTdAZ6Y7XNuRM9SquNPbYBPkhHR
xyd4tEE+0cIAUZPamYQu2/qdIBGXvEhFIWFD2Ugi6cLOTewMZUxdWRuxbvM8dxFeIZGGsXH/Ogrf
MpLf+/d53WjQDEyXIXatP8b25U5UCapQ5Li2nDdQzhLiLTK6fl4jN5CLa2rFxwAb2HGqCVS7iino
jxc/wkAwgD05tPRD88Fo0q69yZ5Aihy3m8TGpcW+JqIJ0u9H43RQWuotjBIM1+WwQjem/cGLpwT6
iCd8adp4eo5ROiHRIe45bW+zEv0Kq8PfFmONGCnhfirqTFtN0/AQtBGEup3D3iBJbY9S15UG79xj
nVN26mJlcLz359SS65p+ol3shfEmGzdDRKqZj6aU41x/6jadmcquH0rhzPdLtoL10zU3GmrqPIEb
M6W3zOEVYgN3EgBj4QmTPWanRE9A940oo7txXcnylK21gWYk91Npy2n006SBkvIro90DQ/gx2zsY
jyglpAQ5hX1SrV+ibkYSPnjmTCTppxDIRbrs7lG1g6YqDGcqQyZkuk4mL+STiDWW8QV/S44XLugY
XF9KTZYsnCq5eGLe6PpRgZHVwngrNbyFVf1MNjgXE91/EefHGmy4+pK62hDTtwgKLcr8Qmxv7Cai
xfeY32byoWWEXtYTimYkHcjlcVussp31QghtGtFxDyXAJVR1HxoryDirTlky9qNj2CSjiXvL9hNZ
o51dhIaUEk6xU2URr/2tuqgiAGNEwktlCUKszoWp9C5BG3x9zUOxFzwKgaI9Uign9s/SqPWwFeBR
93tE50TJB1420JSBL+xlcOkmOkGpJ7cahde21kw4kQWbLNXIbS/4QXlEB4GTpcfibTcMidufqM/D
KWJsEjER/T6O5QMXnQO5LfnIZCA1ht8Q02kVLAcq/IMFBETMiy5HMglCBb/Ey880Ulzh1kOvjaOD
XD7H/NE3Y+l/EZi/7aHKgDIX8oEfSwiZ4NmrSSVAVnagSS7vgDU4C6HWRLo3dWW6F1YRmJsiYxA2
Lhv3jBrEProhHqNy2gD83uffSQdOYmt08DHOL77bfuYeuVEZQH+HEgb/FVbCRz1WFLmzQxkJ6Muw
gpvo9Q/8RqC8VCCu455oVzcATk0Usqn0eBoEKDrMFNGFab3jnhz2A862BfIcqDEbS+viCJl+mw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2666601A75C1A00"
last-modified: Thu, 12 Nov 2026 00:48:06 GMT
content-md5: M80z23+8ZUsUJWAGE/p5bA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 05179b3a-d9d0-4b65-859f-ba4a2d00b6f0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-f61be5ba-5871-8a7c-13eb-205c6101068a/test-blob-2a7e1ad4-e8b9-7388-bf5d-e26f4f90af44?restype=account&comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: 36ff056f-2cde-4f25-9171-07b80e481ed2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
x-ms-sku-name: Standard_RAGRS
x-ms-account-kind: StorageV2
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f61be5ba-5871-8a7c-13eb-205c6101068a?restype=container

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
x-ms-request-id: f97ab3dc-1fd2-4221-bd04-f7f6fb03e8d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

