## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-38871b49-aba7-779c-ff69-1e47c2f3dc63?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ChangeLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:47:38.9973425+00:00

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
etag: "0x277150BF73C36A0"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ebadae9c-8476-4ece-b0d0-4f66ea2b227f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-38871b49-aba7-779c-ff69-1e47c2f3dc63/test-blob-3e8e49bb-e440-c9e0-0018-b429afd2f635

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
4LLTfZ3wKP5BYq1+snTdvQelppq7D2JkO704j/ZzyC1z6GYQH1/FyyGQ/N43YhaLOvYhCSxcedFP
b0Lft5kHzpqACsoOzZ6n4Np5KxKELdinrVT/Ub4BF2+UwbAd5RSHiC5Dt1dMfW1YeSlR402/ykJp
OApECHzbf/JaeQvtivrG8aPkQHWAWi/npteVrzQi1fZts6wJQ3+xaDhl8QNhau8ui/Gp24nM6N3a
XWGkRs++OKQVgNZNvK0kMtg9G2gshTvoZiRCePpsocvPLuYeDCFop7lfTOoY4c5Ehaiwj810rtcl
vOCqe7+qqN8Lfo3HBSa31HSvzDhRz4VV/vJRvBH9WoAO+FBBvSv6taQLDWJAfX+B+bpZxeGf1Oxb
VH3MWOzNDSQNuA3WdhZItBeURcIiFYFz0MJXpJSebyRj5mmuLVy4Pv89M8Ryq4OjEBDJCo4qOD/8
WYcpdWmQbknocpCtmoe73AbC5eG8ACU/tJOD1WSVOa0pstTUjsmWrcV6ijjz9XaJDi6IZ1JeP1li
6cHVDJjkUznihOez5k09LDgcQnbsTL4d+sc2DdJaynN7caUIwKAslTb/EHGO1ifgSjoaQv3idpwC
uBLRrkZmh7l0OHSnNWyX76w/7TtNjiOfVsKYQIh1mPsIBQiNWufwmIm3Gp6yOBXNg1JQo4lhtCrv
MliEzkcw/p95ny9kCZXET1SxlXOF7B2syrw2JPVxp1DdniiPbMpChxz+OZnmaXm9jFM1rx+2aUU6
1wOK+tmqB/fehmpsNeOJbw5Xh7OExmFCeZihPPcxJzXiVJTHuIxCUzGhB+IPUFdwrEAQX+KSthGh
R4BACcv/rV81ieBOwbeBFDSB4r5/MyhBMJC3IchTUJ6DJnAMAUlmoVqD2sd3IeqJjkquEdRSIRRY
/9g6SIuW4jlBy5tGdRLqGkBk/FlhyQ+lLpJ+pT7KMARbswJxK1nO7PeNNVZPQhg3w/aT7iW79zXJ
lRn5GDz6d5qW68IQeO/nlQ9h05O4Vex5RuFHN0LeoLzMqJZA1dO7kr67uVZWJksHrFgWWSOhED8s
f9JbskBXt0oFRNBYpsA8pkDV/ZyVIyCWQIrqyEaYKpdXE1UBX99+YwEMUOF6rwWX2bPjzBKillyx
xXK1be8EbRo4AZNrO0ZgVpmbidI+G5GFU+6TtV2FtHz5T5ptyfYRB+PHQa1xLJ5sgnZ5BgyJc6nh
LxoAcLi8s0wWceus84yjioHvdtrjEyZQJjLnC65vcNvxi5rcEZcqCo5gW7qywI/p1XyLmfzP/hvz
sEqG1aeepgAQu2jyx3nqxWxLg7hrnWai/jUx5NfeIox+6GBMpDTmwbS5ogUm9g4DoNSQg3tjhw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2580AA7B0F05800"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
content-md5: Ke0lqcdQT7rs3a7CPSMsTw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed0af303-c586-460d-a6e0-b52ad11f80bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-38871b49-aba7-779c-ff69-1e47c2f3dc63/test-blob-3e8e49bb-e440-c9e0-0018-b429afd2f635?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: d7e3e412-6d72-29c1-3198-db73de189e21
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2580AA7B0F05800"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-lease-id: d7e3e412-6d72-29c1-3198-db73de189e21
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2fc34c32-4377-4885-bd33-d01d471a5e49
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-38871b49-aba7-779c-ff69-1e47c2f3dc63/test-blob-3e8e49bb-e440-c9e0-0018-b429afd2f635?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:47:38 GMT
x-ms-lease-action: change
x-ms-lease-id: d7e3e412-6d72-29c1-3198-db73de189e21
x-ms-proposed-lease-id: 03c16537-fbb1-7b60-0726-2e44024d9e11
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: d9d98642-2cba-4c7a-8a73-45c3fc6ec17a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:39 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-38871b49-aba7-779c-ff69-1e47c2f3dc63?restype=container

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
x-ms-request-id: bde9d45c-e735-4221-9dc5-bdadcb92ce4b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-684e611b-5dc0-5474-f290-706c4b8330ea?restype=container

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
etag: "0x232AD482C33F600"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 449e06e3-efba-4277-89b5-12202d41a57c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-684e611b-5dc0-5474-f290-706c4b8330ea/test-blob-1d59b301-5fb9-16d5-8367-d04b3e7d26e3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+slXfck2YNrxbRAhi/QwhPZDQk/0gVi8izjkWYwoFnVpjHKBK7Ihy1J+LExPs4qPNkxU+jrX73hx
m/GQUQZNyFeauP+CrlhDInf9dlQMbditVSJA1Bs7kZ35EI/BkHlLMWP1tPqLDYfzENjC2XgkZC4Z
4/zkDPM7XydhiJ7JgpH9sUTwF7jdIkeaTcRCeLck1atgp619ZyRwuVXTKoTpKY1GxSg0M012O8G0
Sr8v+eZvPbPyaNrkgEoggF1jCffDsCM2+7OP8KFd6mvsyB1lQL9uZOzQ9sGyYkTeE7LvEjLJ8Zmb
+f0y30wRlH1v+Lcsu0Ce9KUL8rlig5husNzvbdg5IteDyUfCO4Sgv2FDQ2qNsVhxUR2Mvv7fOXVk
xC9vIialNdXgqPH427kgajNYH0Au4f6EfRy6rGTYpJDSXXdVMJ06nQ2UrAhmeXVkbFPKhxo1NeIw
6qQK64hxBwRhJn5ByjmWHYEymjT1HgSmVUAQDh12nCeUJUb4MLKEI6UEBFL3I6EZNGqYAputOsyf
ZJVIYPnm64lXrKXznezPrXaP8RqyrjKe99qz3ZqL5ut5WMscPMOrHhnIoHb8JpZ9yVQlHkiy7bVj
qWkfMw7vy8a5eUUhsnCz5NMB6g68otBDNhNFZsiix2sVuZNajOoK2NSwQ6xRWxfkcTl1sQOnpgeY
2/36qmT9FrHZC/jdWVfo9hE5C18k8tr8YfSOLBZobhKMwbHtEC5vsiz6d08eBhjijbrxbZqnc+gj
/UhwbuqbcJ3lUZem++XiyVgyKXuK3lvcrJ9bdgB35E7IyhPm/0RCXwaxOLSBO5LVDqRBdUptmB/t
k8FKP/mdbW1J3jHS/MkU8Mp02KWmW3EMhmhbNW8DWzHz+GyD9yAMFMpHN11hAxLaLYR/+MB6RjhQ
PrmRQTf+RYL/3gNdkfiqZ8TaXyMUq4NWgQjqhGNwebI0M7lme9KSSPLaYSQOfJyM1ZD8n+YUO5I2
O8AvFMAfjmVRKV4/Q+zxRxcxOUleRwRrXq7SdNnLH/cmMD8RYzQxu9K+vVM+TJKjCljP4wJJ1/O8
w7YSTBmMhglmGBKt4OTi/352oIqwLREcL2qA+zz13VlLVZ9+H265MjdJ1zR/9Sl07eOD0jdpC5Wk
9R2vC4rNcTu4YopEZOAQvW1TZ1XdnTlADA5YcQoi4UoJ2SpQCSasfGb4xpOfMIgDcxXJFaNAx1fk
bv98df8xloBAOoq1wLNHp+vv5NalodyFVP70WcymyRLSa5snMAZmxzATXvX+TrJhgW64UOKBP8wi
9yABPDyzmnB44lQYH3fkiRylkUPmhgZLk9dd7XkvUSzOBDnmZIv0X8SFhmtdSGH308fF262JPA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EFA94D23BCE730"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
content-md5: C4qgr4whvYEoXwR4W5hM8w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c8844de-3240-4153-a34a-083a20dd4006
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-684e611b-5dc0-5474-f290-706c4b8330ea/test-blob-1d59b301-5fb9-16d5-8367-d04b3e7d26e3?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: a8b61970-5664-f7ac-4891-284a1b3dfe24
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EFA94D23BCE730"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-lease-id: a8b61970-5664-f7ac-4891-284a1b3dfe24
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 02150022-c4fc-47bd-a992-b705775cd54a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-684e611b-5dc0-5474-f290-706c4b8330ea/test-blob-1d59b301-5fb9-16d5-8367-d04b3e7d26e3?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:38 GMT
x-ms-lease-action: change
x-ms-lease-id: a8b61970-5664-f7ac-4891-284a1b3dfe24
x-ms-proposed-lease-id: 7e32b191-0060-ed9b-4a75-6519b16a757e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 0fde015b-3f2c-4c14-9244-0fa215c8ee1c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:39 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 9: DELETE /devstoreaccount1/test-container-684e611b-5dc0-5474-f290-706c4b8330ea?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
x-ms-request-id: 611e6871-4fc8-4240-b7fe-c62150386601
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-ccc8c744-e2ae-098f-188e-3ed935fe46b9?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F8086F2C201C0"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ca27736-b64f-4fee-8e71-030e5e33aab5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-ccc8c744-e2ae-098f-188e-3ed935fe46b9/test-blob-2a34a3d5-0a7b-70db-7ec8-5eeef09245de

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
G6oFU3Uxda4hKGbSwsG4Sy+sRA41SwI57FhO5oSgGIVIX76K+PJEpC2FCFKkCa28EBK/RE42qNCn
zGcc448qgRDgimIDLVM9Z5/hsEKwleKqkdZx4dM3Ebft4yyLJ8GdW4dCw35LueK/gt2uVfiO9zaE
cVG5uKA9qXirFUomsUDeQ1W6btJkX9fzsl72iby/X+v1BrVv5KLnBBoGoKSYmNCdzxGi04lkIBJ5
xQZBRh+867ZeMauKbl+y0mm4Xb8zWxmOWbmqHIthkeWj9h6bpr36SbTtOWckEmCy7wAgrMNTRWrs
su1lEs8q/KDF53hAFyyrvRMLRiKyaUZY9yyKQeUiULC0rvPQlTfkwzzHXivocdjUde6vSP9HOkim
DBqjoLu6o5fIjGg42ijcJoPm6wsbcIZTtsz2cwiwbHSrKYgdQSKADLuUH+Vvm5rG0yF8YU89i5uU
T+nuxC+OFx/0jbGfvuRgZd9PhlCg5BoyMKDmNAskbZ3siPI5kkeMBQjGew7oJhQ8HPtw7gRK82vP
vJOPqOMTzx8UsjXyJ9OXwoFI2mgMSgqLqRcPtH+YopSHadW0/F0lsqvu1HPeSvUo2CuDAhkCwnKJ
A/7LAxqgexCha73948YjIye9HnWWrF8i59xTFJ96hKdjKvleWa+QTVliPd84KvVlX9/yRaT881af
qBw+TWZxJuYVmbjMxcl4LNAcM2+A6rzm7rXAiD8DZzeiv7CSUgDy8Rf4IpE9mJoWehjT37/nH75f
WF6xsZ2mEjGBKgYY5drQKkJXh8crqVUaqQ4mMIh3u5/xM/qhQUB6UhBfvG2T/pQ+ArV9j5j3NK4I
lgePf+KpCW9mJrLfLukC3TS2y+3ohqt56C3S+isH+v9Lmao469IutbL+LNfiXtPMe7JjQGjBIA9b
FZe01g5EXyuzlJU+yfJiiBU66VnTl4lZBn95o7mWiXia3NU7et+kus2rL8o+jbG/AbhShza2h30N
Ws+PyrtyHAsdpOwcJg42li+MJ2i/G3nNuaIBRAJB5FVYLR8PFe8RORO/IOjFotqpG/AHKV8VTj5V
wRAZcdgI28CXxPnuJ4FAeu5VAPqRCBfHVygROrr1Qt/guVPe+Mg6tkUnLd7huvRvxq5xwE1DxLj5
URmv9qAGooIZDm0tYYImGkm1ads55pwzonMLg4GRnPWb5Keui8CkIYtbx6yGQmUsS6YDjlrdwGp9
fFMs+h4AiHF4kXzbd4+JEEdP3R7vrGAO3zjbjQ6avSQ8MA5seCdsWz86DrDoUdMXen4SjeJLjc/z
HRvmJPpj3tRYnkaAHJgg4oHftZ6wJo1kxBOPhzBB8KM/eVoLhjdE1y/bkLKMl13l8aphbNgwQg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x278EFF84075DE20"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
content-md5: oFvsk0CSIH1mGbukdfV6Hg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 556ea2fa-1f35-4586-b142-51ae31d25b8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-ccc8c744-e2ae-098f-188e-3ed935fe46b9/test-blob-2a34a3d5-0a7b-70db-7ec8-5eeef09245de?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 60818df7-d3e7-a356-16ad-a340a33e155c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x278EFF84075DE20"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-lease-id: 60818df7-d3e7-a356-16ad-a340a33e155c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 83ab20f0-bccd-4e58-b075-0efee8ba809f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-ccc8c744-e2ae-098f-188e-3ed935fe46b9/test-blob-2a34a3d5-0a7b-70db-7ec8-5eeef09245de?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-lease-action: change
x-ms-lease-id: 60818df7-d3e7-a356-16ad-a340a33e155c
x-ms-proposed-lease-id: 6edd9a4a-96d4-d8da-2db5-aa9585e083ca
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 730837cb-9c99-42b8-98b1-42e6e74b3f56
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:39 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 14: DELETE /devstoreaccount1/test-container-ccc8c744-e2ae-098f-188e-3ed935fe46b9?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
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
x-ms-request-id: 43d69db5-13d8-4864-9858-2f67b10e6464
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-7e63360f-d605-035d-d837-7905e956b9a7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E28F76BBEC4BC0"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc6bdaea-5870-4bee-9e31-1054ef7aecf9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-7e63360f-d605-035d-d837-7905e956b9a7/test-blob-d2164edc-c1fa-606d-b2a9-333129c11e36

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KdgwbNuWVnM82pWcHNXu1vsDuDbJsc9NyALLXKMr2hcZQ9sQJU3LRvejlSAr0UPdulw1JQjnbHgI
4qPYy/rPEAB+g9n63rCuN3I/JhuvIve/7qFH9rQPMdZiB0Kp8nr804QfrU5q4tyrh+2VqEZdWcCs
GdxYiBpLb1ECl9ZtBUT3QlKWj3WpVQvFm27GeYmQBa6C/dmdpEpp0z78Z0sFPYGpnmXzxslLAsTR
ku2shfXIcpIo6whrWp4ILLw3re3AwF3sHdsjnD/lN/oUzBFcvU5IM/S53VJ5PUPH65kNE1XXEdKQ
v2capdZSQ7QNV42Mq29t73n4BuMKc+CXW7Cl2COlPbo/zP7mLY4eZpqebOa1O0AqnyTc3gruhUyH
g0klrWqQaBnTTd5whsLq2qBJbAb54SBwezj/yF+vUEeyXqlE+LkvDQTM4u5huRhi8QNqpRlFjaIp
tTEykZ+6I/yXvScYpeLnGl4CLP4xDsEfnNdbRaoubdAHGkKH/HxkEr/xyfvwSkshgou6QmGj96Zv
EvTIXt1RaVBWEYufYB3inho/QEXFL1KLOsIfcypvYyKcF+qHm7Thn2CrmTjAgiJu2KRGZLdhqeOi
PCMbMvUm561oA0gzWgJlXqDkGpUZy7igsZuFKf9rOm0G5V+Qxm1qhLKLWH7aO32i4QYWfI9OiHFr
e4FaoL6u/MjbLHSj1JczepbijnI5xXUd40f5VL7euFztJUvsEOP03Fu2/g4I/wxu4wL4a/r+MrUL
Pb12tacK/HQXta9MRmqy7rEXg8dnFOM7inG75Uxi7vOW4NMmfiezqwGa8ElcIZyXRn1I567tpCjZ
Oyo2Thcntce8tmWXi2+JY9jFzCOa3mnUJJ/PGgZEqDyqTEL8fFzqczuCn2o2ALoNvoTWKNgFP1zB
Yip4V5rAeA4p7D8sjOZ721jnGD7+nSPkwVuCbX9kpQzmOxoxcRugwSdcDRN64DGdW01/HScew8UG
k5Y/PgqOxUczRlHMSWk9RlYXoo8QaeEp5BIy5YjkyHhVK96FYYIdzUjLR5ng0RHkQdbQByA19iq0
Fln3XN+/Tn7Zdx6Kt+XU+dRHRCJHSBMBTqOxE8FXHzW00EopJXBoDPkbB1rzWYnx/A1M7bEIbc1G
9g47Djq9gVfp1ueaq9Rj3zgoLEG5DvQawBezCzKDrGN94y9iLP6+XYUCCoKiVlE56A5530GLjOgZ
IU0jCXYkZSqDHcikAbI6as68tgNyd2nGeiMjCswh8VZHSQqwm1MP3aRXHjmIlOZbPnVzz9bkpqrk
XY9TAVpdYitxXbioic56rNhfGlgwPeY8yMtXriKAY6JgzD7Eu9xJ+bwNFzYus7Wm+CL9hIxRsw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F65FD649E30CA0"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
content-md5: QCqBQ/tP7v+y7XhY0IAmGA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce16f5cb-ffb4-4c3f-a070-786580c4fdff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-7e63360f-d605-035d-d837-7905e956b9a7/test-blob-d2164edc-c1fa-606d-b2a9-333129c11e36

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1F65FD649E30CA0"
content-md5: QCqBQ/tP7v+y7XhY0IAmGA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 524acffb-46fd-4ff0-8614-203aae3d1f50
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:39 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-7e63360f-d605-035d-d837-7905e956b9a7/test-blob-d2164edc-c1fa-606d-b2a9-333129c11e36?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 3817a81f-068f-08b3-f1fa-1548bd90b5f0
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F65FD649E30CA0"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-lease-id: 3817a81f-068f-08b3-f1fa-1548bd90b5f0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 491e9656-1308-4438-91dc-f9d23a197503
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-7e63360f-d605-035d-d837-7905e956b9a7/test-blob-d2164edc-c1fa-606d-b2a9-333129c11e36?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x1F65FD649E30CA0"
x-ms-lease-action: change
x-ms-lease-id: 3817a81f-068f-08b3-f1fa-1548bd90b5f0
x-ms-proposed-lease-id: 9c2015fb-2622-0daf-1416-b1b6ff82de15
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 62893ab7-4289-4391-97b0-e610e0c2964a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:39 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-7e63360f-d605-035d-d837-7905e956b9a7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: 49746220-9e42-4be7-989d-dc7c06ab8e9b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

