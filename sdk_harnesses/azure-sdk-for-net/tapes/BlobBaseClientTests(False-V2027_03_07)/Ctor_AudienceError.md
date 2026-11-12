## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3097f405-2718-3d1b-2777-209e766e8d3a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).Ctor_AudienceError
now: 2026-11-12T00:46:26.3593149+00:00

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
etag: "0x23101AEA60AEEC0"
last-modified: Thu, 12 Nov 2026 00:46:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3f60cc0c-2997-437e-9b4c-d9818e94c21c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3097f405-2718-3d1b-2777-209e766e8d3a/test-blob-4b823377-ef10-295e-b570-d62b62e1b6d5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
ITihqTicA2wMlirN0Xs/8BuTSxo+WTPohl8mSR+ikspT5IU0+VO2afErJIH9TmyrODCC4iNz/McF
uSLYdbpMagRfee31CvfI3eEpEjWx6zjyehDuH7Cm4Oe+Lz8w3fQ23rl9ndV/ti05ugRBSemSU87q
5vqqXUpUuJgFN9u3mADt8zN7NE1ic8PitWSrZZf+K9txRfb5jIFvKeQ9eX9SgiIEU1W1Fx+Ah3M3
x6jlqFMABwsARlIJ9GeyDAppJflEkDNCpxFCSBO78L2DwcXYiYCRPHJ0UjvP+l7uAgsUF2J58zZ1
owBBvr73RFWVhTOi2oOJ2OmG0D73c6yzU0YIptlbCs6OYuV/T360fA3mOnQrTCiIiz558yL4fjBU
jWp47518OXtkE3edCYhq0lMwETg4hwcdgBua4harluS1K8ETO4xvagH4xziw6oG1DiDPx233GwZj
Wm+C4VZkuH2T593HV5bHwaY3P8DPbZWa5dT23M93vRC7sOEd7YmqlA+7HAKj7reKBwXGwNxFk+zZ
6PyCbtuuHCrNC6a1qdQdjauxFFCS9/Yda9TJsP0zdRz0RASMJyUzDADY1eIQ1F4xqDIxlH+cRvEF
ZQIG5GssmpWJwWXPkGWFfQdPuSETDJd2mAjLAuGdWP0Th8IjLSiVrDtNhhL5YhfMrBZ4TI3P8lhr
j0xjYZe07GlouwmjYlDfug3mxoaEfTbw/lbLJAtwRJRpt53bMkujmJqpkaYNKUnFmZF/6SzS5hIW
cmJB6Mdd93Z1OaqzA4fCQi3s2+uP49UMBYt58Ftol9GKxcDoYq/SS5kvmO+fEZUKvab+5gsmho+N
NeM74wcbDaLYKT7H2eB9GY9SX0vmbPP2bzO0abDGYz4xWyzMlmeSFItMxuhXQuPGgcx71CdDpsjv
RXTTZqPxEsX/ln2zsIMnwEu/maYLnixQ7ujkSo8X7bRk3VHzvq3nWrQiV6xlEtBJUxPbhA0i46ZH
g3i7Dcg26KjJT9MxNAGe2D7y6EeA6tsXmvZ7PGmnQvmqrDs0LE3s7G8DnMP9Fx8SPKvOMPpfxpmc
o3LRuqw/IQzZh4fGaavxBfzXfE0YGoLXaf+92RL/S+WimInaGjHDxHu3I5CXTNMA3Cr+h0pLhIjw
+lGsgkf62juiJNEiFuvLFLjSYPbxPx0rvfzoAcObVhMA6iDfFkEzvElU9ScB3cU+MnKSeSOR/rs0
gMVLEdh4B82+ISzK7P52nqOsnUr1Kt82qc5QCdzvbuxlqpV86Ktw3O5aQ7uZdEZ0G9t/5GFwP1bl
FGgKJ/3wzrNAZUFp+bX4O8BbmuYjnTWH3O0Bb4mL9Go+ltRCZrTwaXUIWQ4FCiIlhqigFaRwwg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F76838D1671270"
last-modified: Thu, 12 Nov 2026 00:46:26 GMT
content-md5: z4MVzWqc6O6oeZi9aqOubw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4677a54a-bae3-4511-9007-cb1bc4e505db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-3097f405-2718-3d1b-2777-209e766e8d3a?restype=container

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
x-ms-request-id: 182c591c-4c1c-432f-a094-90b5d4eb3048
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

