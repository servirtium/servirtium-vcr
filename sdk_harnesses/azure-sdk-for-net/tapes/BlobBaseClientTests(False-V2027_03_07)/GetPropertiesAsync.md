## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d6670503-c6ae-bba1-6491-471a5b119395?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync
now: 2026-11-12T00:46:52.1909524+00:00

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
etag: "0x23151A775641D60"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f248f12-eca3-4df5-b4bc-354b698c8324
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d6670503-c6ae-bba1-6491-471a5b119395/test-blob-e09df124-3432-736f-e848-edab756c6405

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
bkn1c21eybx6pZEOnKyYh4zGKTc+oYHPlvPtZtj2RvgtQqsSGx8oxifhZo2iYdc8sGYfrkItxs3H
Jd15cWPjg1+Z4VkAhmtsnmMPXTv0LDUcsbZy1pe1/3veSvZCrlXE/eItCX99Oyn6sxDfHWmS0/mo
Xb+scazH5OHeITt1KfAOS19YxiO1nnaMeCOH1eIRTHf8mlCVF4w1ZiSenxnuhIkf0dEJOQzW8r9J
IPiJQA7+zNXDeY+feDPTImD+F/9cnfSZZwQQBxJrJqeRTPeTrCYVn9NEKgv6gFieNhas19u/7YIE
79gK7sTCWFLnDiw8QHY66XgsGHPpn+esctH7vk/M0V90jrxNC7EOgdG4EnErYfWfce5ik9QPG0/x
XXvyx5kDGj3NyLG57N3HHZahMY11gBDcW01gaj2KZXNtXK01HLo3tPc0XplE5oQQm3Y9berCe91q
FmtMorD/Q2M+TJAvkQHcanyVQSF3mHXIUM7HTPeJquHQygZP6xFHNBs2Bpn04Al1YQNtLTm78371
g1LiOPZrtKGvX8f6jX9rTgwGQZLc1G/FUev0G32nFNeIWWe+Zfsky1H4RIFCetOEAd8stbLsGa7j
HOYLdpkkB0vvcjQXregR4XVA5JDug9cXcBmeel4lnEC420gVGVS30z01UgefbFT2G9Q8qzUe9ZkP
8wV/hYzsytbzXtGg/MchiRBSuDDQeATEqF+J6PELmuauBSZOOE6wSYcwqw2DVR8NGyEkyzxoPnoB
ut0tY+Ll6MTr8fah0lDBom+pn832QVI/fM3P5s6pRcarTX1wg+WkSsNJl2Mpa0nRYynNv5+tC3mK
7eYVFgH2Qqwv9oXTUR+JBFUJranuFhCD/YOl24Yn/UEE5ZX/jzPBU1W3+nXE/REJRLpKpF7PnNfV
kRh+UGYlB/hDzmuJinUhSFpUNxybv/9xm5fL3VnjNUm+Kf0bQwLvkfJ8gC+mgLpFKVsDe2S6OtEY
DLXPWimfX5khy2F3BQRYZKUpHz/QyhvchbT937rkA+8sAjZMIDbI3SCWhbRZziNXqxa/kRqSSEKa
8tV1oX/fPMhySwPOC0RuYUIeOkVmg7aRpjSjJXLUmbr0si1hUzuht0ns54MfiKDSUDDYdA38M24e
5PtLOxZVnbFJ2lkWDQ0GfYP8epwycR2T0dVC+yWs93+/Qm9AVXsylknR1q5Hu0Mi0veKALjS63Ld
t2lBE6KMnOPZV8qexicHyeRSYZpvTBWSHykuIvbG7Fb8Yp0R8YKnRTnKbWR4gwzPgjbTf4rYbmtU
rvN4XnrsE2p0omOK9thiqxxgpN+xGpwdXp+/823LJPQyvUKOLua/3lr6BOGpRYxecdNud8mMow==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2498D078556C040"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
content-md5: uHYELaDPwXiaJSYnPEv2rQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6bb4d777-705c-4c20-a918-f4f78dc37f71
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-d6670503-c6ae-bba1-6491-471a5b119395/test-blob-e09df124-3432-736f-e848-edab756c6405

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
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2498D078556C040"
content-md5: uHYELaDPwXiaJSYnPEv2rQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d779dc54-39f0-4c94-9fd4-c069ed52d0e4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d6670503-c6ae-bba1-6491-471a5b119395?restype=container

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
x-ms-request-id: 0b2f294d-e893-441c-b1c7-abb819b7aa54
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

