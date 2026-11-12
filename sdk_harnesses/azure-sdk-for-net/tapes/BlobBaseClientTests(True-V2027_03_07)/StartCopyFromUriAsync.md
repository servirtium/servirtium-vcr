## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e4f85b02-0f83-4a8d-cd1d-aee33903653b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync
now: 2026-11-12T00:48:27.1817200+00:00

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
etag: "0x2160BCDDCFB27C0"
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20f7e1d9-fb50-4968-a69b-ef37bb656505
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e4f85b02-0f83-4a8d-cd1d-aee33903653b/test-blob-301b882a-ed10-d4dc-401c-99e9a7fb5722

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
91hCcheqCwpx4oEosmrR9m6GLWsm+B4UfiOkZnWjotHFi+vgwfMjf3wRvi1rtCLWS6J6IM7s/P85
LfTzBqSUzkCwYyd+8DV7Yq7uFTnxqcoBzRvSKYIC2Y7sp5T+MHjYfPDtu1H6V1tt/r0g/ubGSIQq
8jmJwqW9rYmYkkmgfTI1FphIBO14BnbAZCrE4tuoJl8Q1D0/TrpLLw7HYsUSzIGL6udNfUOWsevC
yV16+Mqu8GzpkKn09sfe/NTfsaSxrZioOffzWqgbeSJRfIVd0TZDGHFYKDzYlvQgb4Bvtv9HERvF
0b/Su5bDzhaGonlBgSudnJkyWIVb0KMD0uoorMMiCmpqmP93cFzblFklUvN63u5U0RpmFbmVaQEc
z+irmyJTY5gO1+ksJis8VsMrNn6vifT809qpu/Sx1S7+W6FzMPk30e5aawcEKKruKr71aTKCbEX0
rshHqaijXQK6LsuKyCXJ9GSQVB3s+Ksvu5E2u2v8e+5bfoIx7ydGtw4ESvrfZGKZK3TN8hcoCLYc
F+4XbaGWvbLcLkmjmAU9Sp0P562wUFYunY/2LonXM3bMFNc4L0lsbo1HAzUZ9ZNvkKh5GSAIbMeY
6NARoI4pBPrS1oQtBBtUonkgaE0gFaf8hp7gXRpWw6gQoEZ5W83+Hv47Rh8PQoyNJXam6AN6d9Ip
FBnwSKbgfBPbHGPU2kesIUpO5c+I7UMSUzijr9qklilzUEazDtVXWsoLMyUouEov+se4K5EDoCfV
3fVuPcw4N4Y5YIoA+BN09osFfLoe6Zrtc7QT62uYcK8f3TDg6Rz90vuf71i/LwK0RDQF/iRst/Ra
gMkXJUsbofDb4RrilA1uCKm+fvpCLkSyX6c2knGKsiU7hWlT5a2whE1n5E3n0a8nl/Z6rjn6GFKE
Zcaj5A5+UC70pw+jGyL8Dfqs20n2y473D/t7EATsQW0Xzn/nDJ8/6JMf8iqgg3vTfqA+TjwIjpk3
q9UTA0AqCGWhjEyiFABbbfK219ljV4x/qJFkrvIwD0Dmr2HKK+VT9erE//YvMGmf4+FKUrbA1FRJ
lFuuxVlycH0MvGWfkUEMYuLvn1iVUHcoxMsR5ryJJdsMgJeKpS+QUY55InME/1GfPe/U0TT8s0Tj
hgCOYIrAg5eJkxCqgr2yXk3JHC0EI8V5cqjNtFSmEM1Tph8uAvADuJ/cemtB9bsyInLnMpcW32I7
FO7i885C44NDV9udg1xcxmOOJ6hZOHztmpLhv901PMe88+0BIcTQmZfo/p7flJ4Wimwzh7i54dxy
9Fg8YSSlDRoU4ZBuWqSevY0RcTneDgbzyjRwArQPAxERjy1slDhzQvGDyrMOpy/HlMkqqHCikw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20D2A602331D860"
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
content-md5: RAxs4BWVz9Xelr1Kc4Dzdw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 538c9aa7-bba4-4f22-a354-35769f1ddd5e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e4f85b02-0f83-4a8d-cd1d-aee33903653b/test-blob-964852e6-34ef-650b-05dd-7e5dca773229

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-e4f85b02-0f83-4a8d-cd1d-aee33903653b/test-blob-301b882a-ed10-d4dc-401c-99e9a7fb5722
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2382C1A33A47260"
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7766e6f6-935d-4b2c-870c-5b5b6d1c4888
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-copy-id: 646f30c1-1e43-4854-b595-b84c618de5d0
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-e4f85b02-0f83-4a8d-cd1d-aee33903653b/test-blob-964852e6-34ef-650b-05dd-7e5dca773229

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
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-copy-id: 646f30c1-1e43-4854-b595-b84c618de5d0
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-e4f85b02-0f83-4a8d-cd1d-aee33903653b/test-blob-301b882a-ed10-d4dc-401c-99e9a7fb5722
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2382C1A33A47260"
content-md5: RAxs4BWVz9Xelr1Kc4Dzdw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a88de2e0-dba1-41ec-95be-be10a67ac10f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-e4f85b02-0f83-4a8d-cd1d-aee33903653b?restype=container

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
x-ms-request-id: 42e310a6-4d08-41dd-bc13-5174bd5a07a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

