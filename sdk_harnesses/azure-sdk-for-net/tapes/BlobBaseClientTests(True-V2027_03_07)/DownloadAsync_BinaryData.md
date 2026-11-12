## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3d41c475-26f4-11d8-c013-5a0c1ea78956?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_BinaryData
now: 2026-11-12T00:47:52.6872325+00:00

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
etag: "0x25CA35AFD34CFC0"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b548f3c5-803e-4aa5-91db-f63f43c1c32f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3d41c475-26f4-11d8-c013-5a0c1ea78956/test-blob-6c392552-2c74-d999-7d1f-4a2ce698f0d6

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
RQWZU7ijRk1EiMDay3h5VRkKOAk43T5udI4nF/stcYf1ZyIYEFUC0n3z+Wtl/kVImgTzE2+AHmfH
Kt8pfC5RFxY45GRWYEXEB2aLROTSCHZJ3333Ol4YdEm6UeZ22VZOouFVLRng8jm/LgsJ9dmD9CFo
35ywWt24IHAbmw9eTi4QPKICfdtdaexENwtSD39vNlzEDfq5nUgEnQyoxFYpYeDd+Lg3gHdFCnaw
bCPSZRHwrGSzmUA0Vp5Z/uDPtKSWGtYqdRbGN7bkfgKDCTElMTf6txjxdsegqKIa3YGXdlbRGVFN
qO/7KnSuzxo9sE1tNM2o1P2MpaQOic10rFk0TAissu/f14lI/42jQqesYvhUram076JZRXStPh4i
h30beoISkf5ejVxDYNRv6GL9YibVIP+wf11mU2x7MZlrJngPiMckmtH59R9McY7N6VwSsNz3TWd+
avskrD2R41vD2DpcYF+a2MhV2yrfZA3OmGoPaYG9c9gRkB7MAO2UaBLDiZlUcYn9d9cUonI9nwbt
VhPTgXraBmRhS89BztjawHIXHNt0eSfgEvGqqNFm1PEY3qnaweeY6YI08yW5u6n/OuL/JYIqeNzr
8m6IL12T+nfdKe8u//+LfjJYP4YBJldIq27vZ65u7WbN7854ELklofiu3JK50DridKZP0jhV6csX
P4TupJPIbjyJYBAwE255Mp6OU0rEj9o0DPIHHhoteAUDYNA0N/1k5m1VMG8qsmE31qCax5aAUrCq
uZegwE8hXOgLLLKeRPqhKWzdb19qClmRz0h6k7Fugg4gin1lxCUdNNOHH4WvmZKl+J0po+NRP689
DvAHp8k2nKmjfrp9PGVHvzqL4urU4ja21JoTRd8qzkrNJ7U0FowKUILcCxvXKLw44uOoxVzFaSu6
UdIvI1bKeK9vrxSvEqmtgJJn+Nca3qzd2mP7ggjtCL2JesS62y0rEZJrZ3iniM86+kXKXXFUn3Il
UUjzzvamgqZXJpjk86RlPOZEr3czNVKTwYfDI6tMNdpSlIrkN0OcxeXSUGI3VQegZSGKEPD78hv2
YA1u4177CvG9kl4agASjp+qRYeTvXGt/Ir2KwSTqVqJu7tc1LeGG1kVxecOpheQc52gGaZA3BgSh
78ChcEnM0zu8rJIsbXoIC4qefuKo1p3Ybdm85OwRN+fTlD4h5WX8pKaH7NlS8Hru/V4GmIgh+Rgj
yANvD+5OqnWqWdg75yUkotk8IOnDhn1fzuaNC59fspol/R1ijZW3OEJjqJehshY54fWu5NkuX0GG
EEEIwJ7WSqY+FekIwhVEheenX97mvRvPVCqpsc3B9p7b3HxTrnejjV3wY5wtMB7gaV/xh/9joA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FBCFF75A6676C0"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
content-md5: /7JgtkjWmpKkT/VIycP1dQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41decec1-b6ee-4083-8ec6-8f005b07f1d0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-3d41c475-26f4-11d8-c013-5a0c1ea78956/test-blob-6c392552-2c74-d999-7d1f-4a2ce698f0d6

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:52 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1FBCFF75A6676C0"
content-md5: /7JgtkjWmpKkT/VIycP1dQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41e81565-2517-48bd-bd41-bcc10e1f67b7
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: /7JgtkjWmpKkT/VIycP1dQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
RQWZU7ijRk1EiMDay3h5VRkKOAk43T5udI4nF/stcYf1ZyIYEFUC0n3z+Wtl/kVImgTzE2+AHmfH
Kt8pfC5RFxY45GRWYEXEB2aLROTSCHZJ3333Ol4YdEm6UeZ22VZOouFVLRng8jm/LgsJ9dmD9CFo
35ywWt24IHAbmw9eTi4QPKICfdtdaexENwtSD39vNlzEDfq5nUgEnQyoxFYpYeDd+Lg3gHdFCnaw
bCPSZRHwrGSzmUA0Vp5Z/uDPtKSWGtYqdRbGN7bkfgKDCTElMTf6txjxdsegqKIa3YGXdlbRGVFN
qO/7KnSuzxo9sE1tNM2o1P2MpaQOic10rFk0TAissu/f14lI/42jQqesYvhUram076JZRXStPh4i
h30beoISkf5ejVxDYNRv6GL9YibVIP+wf11mU2x7MZlrJngPiMckmtH59R9McY7N6VwSsNz3TWd+
avskrD2R41vD2DpcYF+a2MhV2yrfZA3OmGoPaYG9c9gRkB7MAO2UaBLDiZlUcYn9d9cUonI9nwbt
VhPTgXraBmRhS89BztjawHIXHNt0eSfgEvGqqNFm1PEY3qnaweeY6YI08yW5u6n/OuL/JYIqeNzr
8m6IL12T+nfdKe8u//+LfjJYP4YBJldIq27vZ65u7WbN7854ELklofiu3JK50DridKZP0jhV6csX
P4TupJPIbjyJYBAwE255Mp6OU0rEj9o0DPIHHhoteAUDYNA0N/1k5m1VMG8qsmE31qCax5aAUrCq
uZegwE8hXOgLLLKeRPqhKWzdb19qClmRz0h6k7Fugg4gin1lxCUdNNOHH4WvmZKl+J0po+NRP689
DvAHp8k2nKmjfrp9PGVHvzqL4urU4ja21JoTRd8qzkrNJ7U0FowKUILcCxvXKLw44uOoxVzFaSu6
UdIvI1bKeK9vrxSvEqmtgJJn+Nca3qzd2mP7ggjtCL2JesS62y0rEZJrZ3iniM86+kXKXXFUn3Il
UUjzzvamgqZXJpjk86RlPOZEr3czNVKTwYfDI6tMNdpSlIrkN0OcxeXSUGI3VQegZSGKEPD78hv2
YA1u4177CvG9kl4agASjp+qRYeTvXGt/Ir2KwSTqVqJu7tc1LeGG1kVxecOpheQc52gGaZA3BgSh
78ChcEnM0zu8rJIsbXoIC4qefuKo1p3Ybdm85OwRN+fTlD4h5WX8pKaH7NlS8Hru/V4GmIgh+Rgj
yANvD+5OqnWqWdg75yUkotk8IOnDhn1fzuaNC59fspol/R1ijZW3OEJjqJehshY54fWu5NkuX0GG
EEEIwJ7WSqY+FekIwhVEheenX97mvRvPVCqpsc3B9p7b3HxTrnejjV3wY5wtMB7gaV/xh/9joA==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-3d41c475-26f4-11d8-c013-5a0c1ea78956?restype=container

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
x-ms-request-id: b096145d-1e9a-423a-ad7b-2bb7c578b6ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

