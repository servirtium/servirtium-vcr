## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-41152a5d-6d62-35d5-ceb4-bdb0b8204718?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_AccessTier_Cold
now: 2026-11-12T00:47:19.1280299+00:00

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
etag: "0x24AF272A8AFF400"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16a6a38a-1e7d-49a0-ae60-909c3c3e0a47
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-41152a5d-6d62-35d5-ceb4-bdb0b8204718/test-blob-5354713d-7dbb-904f-62a0-0c09794b9146

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
PZPvrls55cKHfLLPspw+YvO/RmIEEvDf24TewmHMvIIid3MkMZm8BIyRyz/Kf93GYaoWuQQvQSuj
D9LXWiJhu78wrDspGjBZAkLWckewFFunGGG2tgJ98zVIgSHG5alpMA+AmtOhnUd5vLfCWM7j8vp3
L0LBqgW8srgG4ZgOkxyZbUI3MHqIBnsZPPpLu5tmZI4nT7Zmp4UKw+cam7uuayiaKOuMq8GA7ynH
p20Lcfcdn3wK50RmMsW9LW2SbWq/a9HRsJKv2rjMpmCNn/8X/lHv/Ps/pIPkNPUlzn5U7YG+Bzyc
OsBlbcXDPUDj2ZPFpS4bonFvgMZO7Hycigs6eLnfzpfDe8SRio82e2ZCAFphXyhPOEoQTod1TU1D
yOO5icSHBAr8AippiRjhOAVfDOsiOiri6z9uzoAPTS13TsKrffKiuvxQZF3+5q4yLhaCFkFhIY24
156EGTWK7bX88jtVNrsTvVHv0dXM5ASRO6BpjDfsFSw08qVUHaHGxneoAfNy3Pdab1jwck+47PKZ
892UIGB9ENwPIUMVv6CwKAteJOIRHl6oDx3e/KLdfAazuinDMaUWKvAXY7u0RbC4P0lDWscQiNV+
7BFDnhQ6MaU8YgR27fdmR/rx+rqj9MltJrxYmiI/ojJTREWU04vc3TIVd+KsQVJS3RLNHo0b2/dH
1nhY4ZeD/b/RIqix0nNuFRyIjXznwOVpBrwPcYSkOGhOTP0ThPuaknoi2x6qoAufXghxk016YBWS
7tvadIs7LOo/Y4V1WpEh7fsCxOXGv2WxbxN7M6Ub0+zogJUgwB7u5640aj2FKQN3T6VSd5svzC91
KQR4v/hEJI+Yjdr7AC3cFN02kVUnK0UPA+QAyFxRuLRmqpYZdie28EWt7Jwpe094dWO++TraTv2+
abwURFszR9QmlVWWw562gKEPej+p5YiUh1P4kr95jFyZWwxroazpeaTHA+X54bLFCHiYytO+FYMz
f7wIOrQVrAn5/GeRSt71JQCa4eGim6agM4pG4cGI20aJNyLv4T7vslfcAORKNL2ao6XTIzOhkeQW
aAcpzspIcCEhCBO8BUTCqi+KxpvBVv/NrD0ctbcS56U+2Xk3xeOMk4/DKCyp3Z1gEXkEF8tIVRII
XCGNK7tqDyBtfSvKiuRL/jIM/S3TI86gu6Q+Dc/a9YRnL2nB/2jTWRkLPGBxlYaUuRmZPFfkNDhT
7HAXKwFRkoinY1t6if7KOKQTx+duLiUdqVS2QbgtgvoxbhL3vC0XuqnXyjIqGS8azwSy0GxQ5L5K
+YKsmlHPeeFhSRrs0nt3/A0+l2Pz8o8knHKze7GN4IpTrcOqah9XB1BQydAVLfyJOtRfEk1aVw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F0DDC14A95BBA0"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
content-md5: zf3JE/BW4Ckd73BztaFRcQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d048524f-307a-43cf-9f94-72b06b6772fc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-41152a5d-6d62-35d5-ceb4-bdb0b8204718/test-blob-fd88f306-1bde-2ffe-d469-8f9824b7cd91

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cold
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-41152a5d-6d62-35d5-ceb4-bdb0b8204718/test-blob-5354713d-7dbb-904f-62a0-0c09794b9146?sv=2027-03-07&se=2026-11-12T01%3A47%3A19Z&sr=b&sp=r&sig=r5GeEBizFBSZh1TCxSnKpW9uZCb5t13%2BjggSiC4z4cQ%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22D074B7FB88380"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6832184b-b410-4bf0-8ff1-4de39038107b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-copy-id: ac503b43-2877-46b1-9185-667ce8598b61
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-41152a5d-6d62-35d5-ceb4-bdb0b8204718/test-blob-fd88f306-1bde-2ffe-d469-8f9824b7cd91

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
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-copy-id: ac503b43-2877-46b1-9185-667ce8598b61
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-41152a5d-6d62-35d5-ceb4-bdb0b8204718/test-blob-5354713d-7dbb-904f-62a0-0c09794b9146?sv=2027-03-07&se=2026-11-12T01%3A47%3A19Z&sr=b&sp=r&sig=r5GeEBizFBSZh1TCxSnKpW9uZCb5t13%2BjggSiC4z4cQ%3D
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22D074B7FB88380"
content-md5: zf3JE/BW4Ckd73BztaFRcQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d07bee3-fabc-4d66-b4bb-9770820702f6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-41152a5d-6d62-35d5-ceb4-bdb0b8204718?restype=container

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
x-ms-request-id: dcbcaa2c-10b0-4fcb-a82d-31b6ececbfa6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

