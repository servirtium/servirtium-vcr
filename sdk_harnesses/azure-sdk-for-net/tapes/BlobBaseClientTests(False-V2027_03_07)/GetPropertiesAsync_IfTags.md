## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a0096ddd-be01-361d-0c78-bf6c820db833?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_IfTags
now: 2026-11-12T00:46:55.8251178+00:00

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
etag: "0x20421C5731A6700"
last-modified: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf482933-586a-4b16-96d8-7f20e7244898
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a0096ddd-be01-361d-0c78-bf6c820db833/test-blob-22768576-c680-cf48-d51d-3ba5d63d058b

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
/SmM3Ix7P7gjcbInc+AQ8A58A8HOiEcXJTrK44N4YM9zM29Zgdyn+0W+/g8UIFz0DUqXWTlDvXTh
dLdSsFs1qxDjtD9xtm8x1Qh7EIk4AwTd1tY44AeVL3b6dwwlVUvpiFP+MGwcg1bbZYMxx63rqHGy
dNmF/coITYTIdz5jDIC9koc2OdKYwFOAXHuDZGfJD8+acuBxY4qJ9eLnVAsXeFkDdDUltG+fGrOG
BaFPhegd/2hvyZmfSy78rETvsGxHaOQhf/AypFpf+lgt6l7pOnD6ylSjp66/ZCgGKAgrr2lGP5y8
LQX46lsNEM5AcWHPE3LT9eYYo8E1YRvIK3tSNEvv56vCLQxqAt/5lZfgf/PGNhWVV7qCLpvbh8vq
L7/fu9uCUYq2DeVlafMHHg0pVOInAfVmvN2RbLgP56VBf9IgGtq8XS1oECkvL+7Gew+NsTLowi7J
eP/98eXRpiVAJOkg5wQzbfe1v/DLN4zvyvCogjVzWL2kVqHavmxHlmoD7woEpZQLWUQ7MwM9/kFy
Dif1KCPwzMwsfJFiWa6LbSiGyEeB6iRcnSjxOCW5ZldfaK9EUm5GEyI+2CkDqACVsMXbtzb58CQC
mIv7/pSmchU5AvD/Rhu6P7QkQxH7WfQoW4hg3q8hZneKQbriSxSOmGUTyaYPlmmqIHiB1K0SBz+X
0qILRpRmF5x5dARh1/Oflqqr549OGMUetr03n5HJeDl6S3hxg1HRrLEJliFkSEmE4T4CZx+vSLrc
7Y/XL3cKsPzK5ox6LRNZ2jvdRIKkuW10sr5SxhAaywK+lZXB+n06/uUlmWK8CbMrqYzk0QQ4ODQi
Y325uOnrsBqKvJh9l+C+o0acfh8Kt6gKJxyENfn+hlxhn5f/gEb7OelHMk0brRKsJi69m7kUF6vU
r5DNZ3ohizY8HPhJviP/oUU2w4Ra7nkK1w/LQOqiTIfrK9C1LtJuJqcX3pEaY2cLvvp03lQnecAX
w49rVktLmc9wXZNSSXJyx53dQxDn8HSowILwLm4zw7EQnmtCA9Bby0TCqQXUuHSHARa2SjawL9Ib
w5XIW2thPZrhQqsHL8TNgXfLJUZu0wcOaCxXfHl7X2+YJ0A6k3DZYGxr8nbIgNFR6cm+5QmMre+O
uvI/CcAhZuI7bgiEk+4H8sXaA+CQRehaBZKvvHplDHlQq9h9mVarSYuUjBHJzVbat/JEsaoO/XQK
5QMtcapo1WKPM+cViVhuLrlU/LjXkTg81QWHIVrPQq1kc7NTftjhK7auOZlvxS2a1YPxuQG7MlTL
8Zyk4LQHv/E5sRWkG7Dgc9ABKFeezQ/Y7UvX3oisqEFfh4w8PUsCpnqoNRMY9brSEEYwuQr9LA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21585F858AFA3C0"
last-modified: Thu, 12 Nov 2026 00:46:55 GMT
content-md5: iBeSk5KMkOZ/iwRHMKsRJg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f8597d6-64dc-4fb2-9273-6f5a69af7362
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a0096ddd-be01-361d-0c78-bf6c820db833/test-blob-22768576-c680-cf48-d51d-3ba5d63d058b?comp=tags

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
x-ms-request-id: 359f4c57-51b7-4457-9147-b8513301f69e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:55 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-a0096ddd-be01-361d-0c78-bf6c820db833/test-blob-22768576-c680-cf48-d51d-3ba5d63d058b

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
last-modified: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21585F858AFA3C0"
content-md5: iBeSk5KMkOZ/iwRHMKsRJg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23acb567-66a6-4e83-9fa0-af302865fd1e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:55 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:55 GMT
x-ms-tag-count: 1
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-a0096ddd-be01-361d-0c78-bf6c820db833?restype=container

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
x-ms-request-id: 7ca4a2dd-9e1b-4c21-85f5-a96cf335aeb1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

