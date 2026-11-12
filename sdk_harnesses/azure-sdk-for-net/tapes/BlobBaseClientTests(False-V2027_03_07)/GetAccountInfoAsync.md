## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0e004f70-8e59-9ca4-5a14-1473b9e06cd4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetAccountInfoAsync
now: 2026-11-12T00:46:51.9065715+00:00

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
etag: "0x1F15342841042E0"
last-modified: Thu, 12 Nov 2026 00:46:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9acab89a-c542-481e-8e25-10b368c61825
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0e004f70-8e59-9ca4-5a14-1473b9e06cd4/test-blob-0317ab06-67ff-f108-0d9b-17261fc02111

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
AssfjSm39fNDXqhNcant/wuQAiytS1EJRw4Bvnd+fZnzAnHuwd6rT7YkwKC+u4BkrRcbjr70ZLd5
FUYatjd8xOAPWm43/z4s5bN1iYqxS4uOnRBfYu/b/p65dKuYkJl/p/u/r2ASLK7Y76kLftssyMm6
jBgmHGHxNFvPfoqSk1Qa9uGO8Zwre3FihnNFz4DCjavi3QSAWIuaznoFQq0jRltV8Yj6ntctjxCm
xJXuq2TaDPHfsLZPmZ1V9CIhJTjDPkAY8N74yO7UtE3z2pT1rCIWKja8RJWkBVfqpKq0C2rY4oVV
1bqF4kQCCvtoW78JYEj/CvoCBvqrc+uGDSNEH6njG/cPoNZnkUjxujmZPKmY4URitABv1dyKqWLP
/tQgvetShEDH+b9xl3myEEzBETdB7Szf4mqoc0UbhPZ0mJJz0fxNRrdp0OeE8B2HvcWQyZcqjhCo
QNuAqhD6rHXI/P/nPz9Pc8t/1x1EWvFNIbaAi7tfSQmBypAhzZumbiRyvPMdn32GQFXMq7fzY+bp
M4laeiG6abP2ZnSuLaYv2Wj40p7+MIE4+Uplkp5SjWeqOJkSTPQCt1JAJjkJ1xOvnNFO+5BH6wII
IYDXVNYUpNgMBPUMHY109hpLvQlHLyI2tfbNA5LWYkyWCStzK2N8K4Jg/NIeo39E2gR1/C35wPFe
oJ7gR6BGNqKodRNhAMu3z5GG5jJPGBJ3iCmNYGYenUk5FYrEm+ThGsYwdS1r4to5viycctm+DoiM
ab93uNU8idjKKOpB8zStpMtsHqLlC6VOU6I5gipvegYBODIkamLx9OxVoLrv+Mr47s0NUu/mpl0Z
KGQyAgatW63kP7sBiDppeyq2kGvrX1vYQZRcYSgWG5HVC0H+vvHlp0QMCrkP9mWTpNfFMBbxLskJ
WcFyUfqFzSQqLH35a7w50Ogm3lSiyUouybxRUet649149GQwc1ZKhj2U5cromjkai18uy090ZpB2
Q4g9NHw5r0mggXZYCVyS3FcXDeSARi+DNsWLTBiNA43TuTDODVLBWzWBSBjCwoIDm+73XVms9vxY
uf22rWIwEn3ohE8sxM4FVbGu//4WwXRDiLAplaY0J8MzdVRUCq7SUDWb2T0y19cg8gen/fb+QveJ
cyWyB3zWtFyM+E56sEoD26/Ieuc2ELHZCaOfjCnMNDJcy5eIIEi5xCXhpt6IpkG8pCJHNscPUmJ0
2P7ZNyczv8QbHeWzertmDrbCVWrSUGJh4+cHhf5rTHk0FEdK3439ruYabIhcCClm4ScRTfz4oYib
eFQ/KzrGsNFsfmZzGy4oxKeDuOPaBNq+oKPWWf58O3K/rmc4vYKrVLy38IrD88X46IlVdemkwA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22B01EFD26B0180"
last-modified: Thu, 12 Nov 2026 00:46:51 GMT
content-md5: jelv0yenHpHNtrX6T1SKKg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b91184fe-e61f-414e-9397-397417b72603
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-0e004f70-8e59-9ca4-5a14-1473b9e06cd4/test-blob-0317ab06-67ff-f108-0d9b-17261fc02111?restype=account&comp=properties

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
x-ms-request-id: a8eca5a8-03f5-4f81-a275-6c0e6c2d091a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:51 GMT
x-ms-sku-name: Standard_RAGRS
x-ms-account-kind: StorageV2
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-0e004f70-8e59-9ca4-5a14-1473b9e06cd4?restype=container

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
x-ms-request-id: 8196a3a8-c87f-41d2-b29b-80ebc38c498c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

