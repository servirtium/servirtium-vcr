## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a0a60342-c288-3ef6-9de6-5b45945a6d1f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_SnapshotSAS_Using_BlobClient
now: 2026-11-12T00:48:11.5453448+00:00

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
etag: "0x23D821DDEE30340"
last-modified: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7edc3822-541f-4dfe-90b9-5320efc75936
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a0a60342-c288-3ef6-9de6-5b45945a6d1f/test-blob-9cee76b4-c531-2485-f2cc-81b0695e3943

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
/xcwzTpL6UkeJpzWo2efSOnsYxPvi/l8foGtvEBF1T6sGEZ9KZ/laY2lfgoproGLLTjGfPsmVHQd
tE64ni0I2FFdKYshIR9JB/qFSgzuU88AIY8Hf1lDhcTRX3VRLMpgnKa5y4T2agsZfXQAoAlnL2B+
t3yeAFn3GqPGT8Gp+NsvJa5lNYdKCraD7gHkQuW6aTAU0nVOwptNwbHgLxtKb4WZ0XpbAvrZM63G
GhJXE9e+DOWQlSVm4WMSGHPWadubOH58S3FqX2c2O5/HiKeJ9q7ZIiI1udpfM+8XSemGA8nSKuKT
2sdmVK1+WVmGnlm8iCLE/Ee4Zn6kHBeBUxV9sDjV9V3E9hvmc851tmCA2ZSWWsHHwQaCGsRj7r2v
5QCXAKkhsKn795EG3ol5Qq8eI0OD6vlUtu4xU9uZYQddNo3N3ba2XyjrmmIvweN9CNcURct6LPoH
Qkq78F3NYpaKqKf7rGT5aMQal1CWJfQKs0oEhBs84wmTxZpr+m7KHTjMpRg8gltyG90HX5WqcR1V
sTwSyd56TsWdZ+fKjW1VUHkYyoDczjHukWg+NIN06VN9FUkxt1NaUVdTnhp0qI1vsQ8bkqedeeML
Izh1PBlBKH2TTHgkI5glvXkpiC8Weunbz4J0WFes35tlJpMb5BU9Enac4VsVSo139tQtdPG09alO
mmyWzNAm5mzcvv0ECdhk63a4eZiOxYT1/WKDfmuqsTHpzUqop0WldvvuOIyQcuz7yYh7+3sRwNTo
oc9tomcBMg3MGjyOu0QwEgOdn4z4ZIp2iLXiL7a12Ax2wAV2ONOT7QZ+w1ivbQ1ESuh3dCFI7zxE
9xqyHgNXFkEwF/s+udovCbKFeaEyxhunnuTNPWTrLtDJMkG44c8DJ6wWf1USBpANSGpvwnWbETD/
C38fidjdROkqdYeZdijiglL0G0fFlZhTv/X5fGtbLSAQudVP5J7TODpr55EJdNFBjD8jpvbpOXbn
y8nj5Mh+z0dniL1Sk560IOMMWq0HSkskt+8sOIYqJ39fZxjU8FRx7RhJoesT7vihb4YT3N/I4IF+
vizZUZfAPWE+8yuF3y+Om22VvahfEMj2isgAF0ugloeXVTEomJuAiWSK1fvNG49WhEBxMyLZH65j
4sfOvyYWnVyj7or+ZQLSFDND1TrNKW85qpIKLmNlvjWDxLbUsso+dDeeKS0EWB4+nx7vlUpzlblX
lBWTC2/5PjBVeqFM/mJpBWACLv9CNVFzzI5EdijrDy/9fB20qmjIpev8r9198aG8hZDpcGe5FV/D
ID7gtMgHamtxT4JEtFr3OogTRYV09tvth/CYAZ7HQ2a98Yop5/Ei9ERyC6EfeNA18TbepdDZTw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25302FAE3DEE780"
last-modified: Thu, 12 Nov 2026 00:48:11 GMT
content-md5: foYMnSUyz0tEyDry7lW/Xw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e45d7aab-85bb-4335-98d7-3f54e4d3c15d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a0a60342-c288-3ef6-9de6-5b45945a6d1f/test-blob-9cee76b4-c531-2485-f2cc-81b0695e3943?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:48:11.6040000Z
etag: "0x25302FAE3DEE780"
last-modified: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 480fc4bf-04be-4105-beb4-771a2f0a5ab7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-a0a60342-c288-3ef6-9de6-5b45945a6d1f/test-blob-9cee76b4-c531-2485-f2cc-81b0695e3943?snapshot=2026-11-12T00:48:11.6040000Z&sv=2027-03-07&st=2026-11-11T23%3A48%3A11Z&se=2026-11-12T01%3A48%3A11Z&sr=bs&sp=rwdyi&sig=%2FrL4jz3qYojTmHAwJ2kPp%2Bcnsd%2BCPKCNMWfzZMm9mo8%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:11 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x25302FAE3DEE780"
content-md5: foYMnSUyz0tEyDry7lW/Xw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa5d2e4d-4eb9-4082-952a-8db360b03caf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:11 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-a0a60342-c288-3ef6-9de6-5b45945a6d1f?restype=container

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
x-ms-request-id: e7948ce5-672a-4a37-a20c-2c74bc3c512f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

