## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fa8ed74b-8c48-6b36-35bd-9402e0f481f3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_EncryptionScope
now: 2026-11-12T00:46:37.9881288+00:00

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
etag: "0x1CDCA47E5FD21A0"
last-modified: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cccc0caf-ef67-44a2-ade6-dcc644f93d6f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fa8ed74b-8c48-6b36-35bd-9402e0f481f3/test-blob-878cf8c1-ca2a-f8a8-4e25-a263a715621f

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
rIL752AZbIwtcVJ9C6weM9Oj6VyJp5EuHZKj9Nbq6l10kv6zlC9lMWoBzNY6uF+JnmEvPAokagTw
zMrNdXi2Q4f0CXmua56jPbfxh9q79GQyGlV0uq1SUCf5wshll7zySolPRa/m2jPCi/5TMuIqNNdl
m1sjQYjZorhRtKjWPqX7/zxRbK+1TD8isi6u/x1Ez43w//xhzwgAdaP2lCaK7E1YVzKl2MgosE8b
AY9aKqKbDeQa5T6pmjAzUPYLvrcZl8XhVajqnvbFyE+sRs55pkoAW4dBbwcPr70CcYjRHPGXAWnJ
eNX6sG7tVRzu/FRiuqmsCmMw1ye+0abq6C1u86tdFERkry11BqoZVBrqILJpoLfeJRKOZypCC6cu
D8hBf2FxkecP/Qt8NwO4F4MM1LHzgUh1kM6Zzq0ZIqOGRvfi2NS4eI7LWaKrYu0O1k+nNTf1O46A
y++T2MI69ttn9fAM1T+uVFsiKCelyS3gi/hdcu1skAtpYgzlJaDMkGPGRGz9AQAQ+ODb0xJm2gHB
skzK3IPt+mTko3MyyC66VpfE3oXB44n4THoMkb35A4gLJHNTArTg2UoHGF2M3jCyIH16oft8/87D
0o8J4Wmn66DrJqO7Z1Pj5AU7ucsra25JWXBAfmGNjyWkkDAl1vfgYCy9obeM97kpl731QEUDl2ch
v4f5Zm0/Xpd+FtYjvg0OWlmebsm2vWK2F+akl07foPjJAxdw5/q+fkMgDeDjBdmv5ubsZCmdagEl
Qk6Hm8ZIn3XdWrr1nnNe4O+Flq+B0xIM9LBo8jzPK5kVS6SrN+N9125rBaofuUhyjYQ5F9NSo288
eqYV4K05DS8g4FPOs6gMCL5BFs1n7Tpo9WS3lhPFw6c1br08Z/bBMfd7/tn1pNrcLA8UEYyh1Yxs
retJgXcbWxyrmUXr0KDHgOTW7O5gclGJ22kEsLIak5gw0LoLd7B/X6O8SQqU8FxuTZCoyumeCzqa
v6YNFqpqkAasuv/lvAg0VoxKoylG9OoNlmMhcsivksSAcbgJckn5UrgE6DZciJCIdHRdU2cQU8q7
AIBGSB49/Cg7ZEpPKuRCUVFwQgy0sA3Smf5UUj9cbx7uTXLJsgmaxuwNISNGOUmPGgEWoBG9B09y
c68g6Knp3/UsYN1xeZ5H1nsgpo/qjF+0xDg9Rc8MMEYjVz5Zed1CJEEuGdhsHaFizsqWnWC/h+dP
ayRxq5klHzCWTiFg7Vyd3YJOu3KHSKaX2nYFdpLlY89XCQ250XioCfqo1c9/AuFt+L/dccx0yCJ9
2dAiH6idsepSCONO4wwKpbJ43nPXGNiVmH7SCPID4kHrPPenhelRCyTkLPr9HhSz08sZ/Omvpg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F32463BB59A130"
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
content-md5: Ina/hFnyQMJ+8CXPnLXfZA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93935bd9-5f3d-45cd-bc7e-8e0e21ff88c0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-fa8ed74b-8c48-6b36-35bd-9402e0f481f3/test-blob-878cf8c1-ca2a-f8a8-4e25-a263a715621f

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
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:38 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1F32463BB59A130"
content-md5: Ina/hFnyQMJ+8CXPnLXfZA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4946790b-e3c5-4824-afdf-b2a07f7d7477
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: Ina/hFnyQMJ+8CXPnLXfZA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
rIL752AZbIwtcVJ9C6weM9Oj6VyJp5EuHZKj9Nbq6l10kv6zlC9lMWoBzNY6uF+JnmEvPAokagTw
zMrNdXi2Q4f0CXmua56jPbfxh9q79GQyGlV0uq1SUCf5wshll7zySolPRa/m2jPCi/5TMuIqNNdl
m1sjQYjZorhRtKjWPqX7/zxRbK+1TD8isi6u/x1Ez43w//xhzwgAdaP2lCaK7E1YVzKl2MgosE8b
AY9aKqKbDeQa5T6pmjAzUPYLvrcZl8XhVajqnvbFyE+sRs55pkoAW4dBbwcPr70CcYjRHPGXAWnJ
eNX6sG7tVRzu/FRiuqmsCmMw1ye+0abq6C1u86tdFERkry11BqoZVBrqILJpoLfeJRKOZypCC6cu
D8hBf2FxkecP/Qt8NwO4F4MM1LHzgUh1kM6Zzq0ZIqOGRvfi2NS4eI7LWaKrYu0O1k+nNTf1O46A
y++T2MI69ttn9fAM1T+uVFsiKCelyS3gi/hdcu1skAtpYgzlJaDMkGPGRGz9AQAQ+ODb0xJm2gHB
skzK3IPt+mTko3MyyC66VpfE3oXB44n4THoMkb35A4gLJHNTArTg2UoHGF2M3jCyIH16oft8/87D
0o8J4Wmn66DrJqO7Z1Pj5AU7ucsra25JWXBAfmGNjyWkkDAl1vfgYCy9obeM97kpl731QEUDl2ch
v4f5Zm0/Xpd+FtYjvg0OWlmebsm2vWK2F+akl07foPjJAxdw5/q+fkMgDeDjBdmv5ubsZCmdagEl
Qk6Hm8ZIn3XdWrr1nnNe4O+Flq+B0xIM9LBo8jzPK5kVS6SrN+N9125rBaofuUhyjYQ5F9NSo288
eqYV4K05DS8g4FPOs6gMCL5BFs1n7Tpo9WS3lhPFw6c1br08Z/bBMfd7/tn1pNrcLA8UEYyh1Yxs
retJgXcbWxyrmUXr0KDHgOTW7O5gclGJ22kEsLIak5gw0LoLd7B/X6O8SQqU8FxuTZCoyumeCzqa
v6YNFqpqkAasuv/lvAg0VoxKoylG9OoNlmMhcsivksSAcbgJckn5UrgE6DZciJCIdHRdU2cQU8q7
AIBGSB49/Cg7ZEpPKuRCUVFwQgy0sA3Smf5UUj9cbx7uTXLJsgmaxuwNISNGOUmPGgEWoBG9B09y
c68g6Knp3/UsYN1xeZ5H1nsgpo/qjF+0xDg9Rc8MMEYjVz5Zed1CJEEuGdhsHaFizsqWnWC/h+dP
ayRxq5klHzCWTiFg7Vyd3YJOu3KHSKaX2nYFdpLlY89XCQ250XioCfqo1c9/AuFt+L/dccx0yCJ9
2dAiH6idsepSCONO4wwKpbJ43nPXGNiVmH7SCPID4kHrPPenhelRCyTkLPr9HhSz08sZ/Omvpg==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-fa8ed74b-8c48-6b36-35bd-9402e0f481f3?restype=container

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
x-ms-request-id: 373bd219-6fe7-4b01-9743-03dd29cad274
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

