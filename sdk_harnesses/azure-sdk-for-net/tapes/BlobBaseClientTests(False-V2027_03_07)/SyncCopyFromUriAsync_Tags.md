## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d2e94bcc-4923-2b30-f004-6413db80ffd5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_Tags
now: 2026-11-12T00:47:22.7321439+00:00

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
etag: "0x25AB4D86D212680"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ffcf4bf-0195-487b-96e1-fd8b22fa9f73
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d2e94bcc-4923-2b30-f004-6413db80ffd5/test-blob-6d86c074-9db4-fa76-2208-325702d2c73d

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
4OUs6XfA1/2vkc4MUvnr8xdH3xJCM5Eu1O+vGxfZKB48JjP1UxZdtOmJvSPPaqgpHD4/u/O0+q1U
/RSIEbvm1miwzyvG9aAB6SopuXZtX2pGhf/Ymm0qiCuGoVUB1aMuoue7Hpp9YiadPdHIi0E2556q
QYu8DTv6hUf/QFRLABSH+xaOskHPySPYOlybYv3qT7m3V5MYcZWrwJlSfSLRUj29QJArqDVd2nhn
49LfXyJKFPGalKiAb4mA4/GnfUsBBuge3SFtv6aEWXwbsI3CzGB2CGkwN76UPdAGqsVDtV0sZt3q
wIEA3FVKFjosZb/7vRaQMHTi0M8piaBRZhThQaQf7kmw2AvfdSsT5iCDaNcRC+yusoToSpYOwTfg
r3ZAaNSWDHd2SuULsbtJz+mupSHJP1ooM44fNqOyohfT/sa10n1M7VxgmsAGogDJn3utXxsWF28b
GDVFdtXTw6jON7L0k/xrYrfEaaWaIZCOVZcoBUL7vedWmbpIBnaGjNcXN2pO1At+Qf1jUa7Kgfak
tyA+q75m0nrLnvpCI1xBPtzNgukmP4CLqcREmGw5jBjDo05VSOEZsWXwgzYRPB2hIhLR/P4Mfnif
sgH5IToNkhLifn8N6/X7tNGENbxKem2mo3VZZ48ZtyXWtZbgH48q4vEkLr2dkzcc1kgth0i7VTeT
Un7EtCqCyMdaNzVfGpRBWlLLJUywCQ8+PJFG6y/cGmBeTcwRZS7GoWX1QlsCvbuz7C318C/r4klu
hXeZO92YfR3UAc3IL/QkBITmusazPH/Vk/8B5yowc2qDo+C2LWWIXcU+Lbvt67w50eurBSeDukn4
w6jelpbypI5jRIwUbdceXV0BdQ/D6KhCyBU+hG5CAOiWvmq9qsYuS4ktiqYvJWQTjafKgUU6NNr/
m86Bsx8gIESkfa5tYbOX0imFll4CEqOxK/fHeH6jXIqPvQ74rZhpDWlhi6e1pizzMq8ctJ18/Ygr
z4goWajGASEk3qOlniWQHIn1oYf7+4TL00XOhqfsE8CGzN0PQbPBmoqGkMiITpSKi5cUh1wBMNQD
XIVi93p5OMrjH9FHgdvVNAb8dGq8Q4WxRPsP2ItjhJwJC+QuXqIPDFj9pC/CQgq8PlNVBLtpRxn/
sbN/aWA/f5o1PnX2p9Vj7WcSv55W7wLwU5k4DYDhoMTLLq3vkKP4viSUjAOUxZd98hdTVod7qcGw
jhbGBnEaU56wK3goc1zEGQF5wWL+XI0Cuhtojkk8T4XrPgGMMreyejll5JoeVX66jzyGAedfsjKI
w0xWscVVc9vyPTRbN+dJxkcomXjz42Wcrv8Mtk6ei4zPBG9rXMl0D3C+LBdJX1dVPDugNhi6lQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD2E05D8E205F0"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
content-md5: 5lQtYQwhAC2koXmbpG4sWA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c8898e1c-55d0-4ee0-911e-43ab7d13a960
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d2e94bcc-4923-2b30-f004-6413db80ffd5/test-blob-03bae6df-49c6-8dbd-54b1-a78b3378de6a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-d2e94bcc-4923-2b30-f004-6413db80ffd5/test-blob-6d86c074-9db4-fa76-2208-325702d2c73d?sv=2027-03-07&se=2026-11-12T01%3A47%3A22Z&sr=b&sp=r&sig=Z6AIW60pssrExGv1JMu74LkASzc8FYFpBIavMqmYPNg%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D645913BDA160"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b06bf9c-7375-459e-be1c-511bd371cb26
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-copy-id: 5d40b6e4-103a-404e-b708-da6bbb577baa
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-d2e94bcc-4923-2b30-f004-6413db80ffd5/test-blob-03bae6df-49c6-8dbd-54b1-a78b3378de6a?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 42ea1ce9-4098-446f-97f0-7b582d25cfd3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-d2e94bcc-4923-2b30-f004-6413db80ffd5?restype=container

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
x-ms-request-id: 17577842-7ac8-428d-b913-19e629c46018
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

