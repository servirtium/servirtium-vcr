## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-df52fc83-b675-a99d-c65b-3c526f305852?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_Metadata
now: 2026-11-12T00:47:16.5506885+00:00

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
etag: "0x203076E277E4A00"
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 572af59d-38fb-42b2-bac4-a16d57108926
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-df52fc83-b675-a99d-c65b-3c526f305852/test-blob-f5fc3d20-d17e-d9b5-d694-133989baf4b4

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
Bkw0EjeGRK7qd0E0XDktq9FE2GiDL1GyRnkJ4KNjHwtmh0wi/EUbmvlNCgaQgX2cZ2doReKMMdb6
gcy9fGMLh1g1zdTtCq6LKT1vNSVLIcT8bXk7+too2lZ1KHp5XR6VQoOuWrOorly53RykHfuwr2AH
wQ7qz4x9DfN+d+I0Ecsf2fOinMcRU74cgh29g71axHkacZsQq3L3ME3AKTd6hMtQhUMIDhKZ9m5P
zkxuwIk2JLJpGqAwDy6Aq2x5UCqHov5Sbf55UbZmgHstwN0miHDDigWEEWkrH3YViGOlH6VEyCxO
HFKLvNL8ApklA05QWiL7tcYkApCUJ06IY8hSwGHV6fix12weOM0yiA7QBhsnxC5BqWnfH8WbuvUE
AlkKqkE4TxpWn4K23X358nqBxCEyYZ6aERb39skzFR12GjZzKN7NmLYB0CWriszs5S1KGfbU0aG7
b5gqQFlQI4plP8NHhsmctCtqMZB57oZKCxGc6PwnokiUuLhFoldcsK2bRkoIpV5jrWTKaaAQQYAR
4DVItDqNPp17ss0QVxLUDoHj3qg8QmWyOTuXXTmohHY4M8IiFPtyDQitjfOQUlZS9VseLWPY1Z7P
lnr+9eBk0i1X2CNPsfqFcNCgjrRyIeflRWfdiVcTYF4kU32AdBcnSbvFOXkyAkNhmbySN0bpXHWT
GbB5hknWQ3jFK158BPy5eUX5redts0MjfPCagCgXOvYI7VpnrcNx7vUAbNbl5JTA2L4B8K+NJmZs
VglYPMNQrvBodBehUsuCh77xbEZsPphb2qdpFUpHesf0+la5GbIysL7lfHB9Hobzf2jwnLkfABhx
/WEb5pimIPlQrFd0yG4Lv7yIhsEn3rshdpbhVt4O1Po+SBtQF8klP1t3LHEvfrb65N38l3lWSR+m
+nACxMoaQthcNYBSu6fzYkdlsLFJ8fff53IBET2B6P78qh1YI3uRXOqZ0kg1pyk1CDUy8JltXQh4
ItxXGTCb202CVhCKmj/L1FTGrx+vqT9IywgIT/dljk0V3wCeOUK5/vf7s1EYq271ZhxEp63pyXmd
Dk0nkoxWHcfDdLs/LJoRDLEos/XuMCCaEujbIOefKxWGASv1kmtqpJaJVTaztTmCMpr8wRWDrt4t
jYCje/zgI0mluCtvHHpFvQ9fZNrp51yvWe1Mo2r/A1JMxwXrxymaqDHtDf0OEhUftwMGJEoDQ6Uj
9CIOk3/epbXYIlV1WfblxLup/NlfoEbYLexm+d8ISIRfyNIHixWyDmhHNe/Aql0NIV+OWkfLxFPb
NmaTeKzW0NrQFZEj3Tmm9+1xF2tWF4KPWNd/ee49lAN+K1WuHpa7cWUV8JTL6UMm6GNZWazohQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2599257989A0B20"
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
content-md5: uXp4H6VP71yjN795aQBlyg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 097915e5-aece-44cf-b34f-c1295ab89798
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-df52fc83-b675-a99d-c65b-3c526f305852/test-blob-1f03e41f-56d4-ec56-9381-8da5b2e3f8d8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-df52fc83-b675-a99d-c65b-3c526f305852/test-blob-f5fc3d20-d17e-d9b5-d694-133989baf4b4
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x201BA7E9E368560"
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 07ab3190-621a-486a-a52a-4cbf4092790e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-copy-id: 4e40ef75-7ecd-47a8-a1c2-8569fa300f38
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-df52fc83-b675-a99d-c65b-3c526f305852/test-blob-1f03e41f-56d4-ec56-9381-8da5b2e3f8d8

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
last-modified: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:16 GMT
x-ms-copy-id: 4e40ef75-7ecd-47a8-a1c2-8569fa300f38
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-df52fc83-b675-a99d-c65b-3c526f305852/test-blob-f5fc3d20-d17e-d9b5-d694-133989baf4b4
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x201BA7E9E368560"
content-md5: uXp4H6VP71yjN795aQBlyg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e247dea0-0ef4-4a72-a5ac-3a505f7437e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-df52fc83-b675-a99d-c65b-3c526f305852?restype=container

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
x-ms-request-id: 10385f5d-b2ed-4582-9be0-98ddb51989e5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

