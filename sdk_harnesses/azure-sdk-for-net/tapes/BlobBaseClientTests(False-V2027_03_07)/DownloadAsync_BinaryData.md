## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f213ba98-24d1-ab40-5503-84171ba33796?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_BinaryData
now: 2026-11-12T00:46:37.2303728+00:00

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
etag: "0x260B496C593C200"
last-modified: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b5324350-f152-47f1-8044-69bda1ef4ac4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f213ba98-24d1-ab40-5503-84171ba33796/test-blob-8546bd81-b051-c466-a3ef-b0376db1b349

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
XZnurnLsVq4Zi5egzvFmoocGel7kO13+JULvdjFNXKGjS+N9PTcMrGNk2EWNoNxkneKPFSjZsiI8
74kw/N99zC72/IMN6GVP+c76f2MXcYVli9lPvUd4ypnBQU2u26+E5wsWlqNYVrR8Pxta3jO/JH4D
y3AFLQ7nfjLpS6cYoB0edpdXANvhDDQl0n0rHetmAh3OqhA+frn8LxdxbwsNZJ79O2ibZyOiIr47
31uQvGBGg0iKSfUN4PfeWtHDcJ0pGG7fLeKDy5r5LIhSAp5ea3K3KuvCghqo8FtwvA1R37EgEsft
sY9+wriukB1tut1YgO5fDEayZ5VTNjyGEw6Np0zXMfDXcbnjOGcyFPL9OzV+Fzwe8tNrbaoxmXtS
+K+qIOnQlYjsgA40e9PegFOjVvoGB/vRbrR5bMRFptc+kUC4h/MILKWskZYt6ncAjO1XjUOBS/Cz
2LI0VynEp9o39uqSJfhfmilUWnZlpIM9ed/W7hiTvEVQBa9B1NV85+q89vSNbWb19/MaLfF5TjQu
9t1K7rjCozmkQSBJHsZT13KLqa2PsAt44fYleY9U1rZ6E934Mvkx+VK66CxGrNksxlV+7qWGnkbR
0QzCnCmqUGpqzgvoW6V4Wa9b1cffMjUd+LM51egR83SXJmDsb10oD5jB293NRGuvBpT2K8h+8p/X
paR2cHqBWNuWUTVEi+pRMsUvHVZXT7NIis9UG8erGDPBFcq5sp8eP4MCN/M1a3qppPkDT9RIf1Xw
LuarLD0T6jkBgnUgmH8mEd7TVRjAEh5Uq3bOqMlfeZZ0yIO4chNF70y6NOgEiQt53D72dSk9LxzH
V4HGREJvoQnfq9D8bZ7LjWbLBt02TyFrVMuLaQNsNpln8BuRfqoKSpPfJd07fW+fK+fDcSg/kQdf
W/B25DgFc3Q2lHyDOQ+7wbxKVipEL9Zc6z4cqMRwJ18UMiK6k2Va2bFoBOjyHPHYCLBr9DvdGysZ
Gvn66cqvxmwdbwfsAS5X73142yvuac9MRKAUBDMkNhb3oXhrYPDnuD571a3q7AeCFAW9ZD8AK7Ep
raUpm8E5+Tjw9V+164+MkSLscpMiYleZkvAtZtLW9nbHQrJLvR19Qdx0+fanzSh2MdIdFLgdB0tN
jwnQDJNlGf7p7ancQdQEbzC3rWhg8sXItzT/ueK9qjtn/i0UrDVJD9/4vd9+mfD+GKWIZVni7J1E
CFReZmAcLENudUOm8ML6bp6JaDTlSR5EAKA8NEThhBGPz6Th66h/25GcECSsWCfijve7WYNoXr42
GWW/3/f+jPAxFiEdGIP1CY2jSTj5l6h5WqZNJiuOJ3Hlq9FCv/uZnoM0e0EGxHVzxU/2xRWFPA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223C24F0E1F3320"
last-modified: Thu, 12 Nov 2026 00:46:37 GMT
content-md5: pyep8iZA1xH1VJdzblAeEA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 61622cff-1bc3-45e2-b7b7-34ca6b3bbb7a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-f213ba98-24d1-ab40-5503-84171ba33796/test-blob-8546bd81-b051-c466-a3ef-b0376db1b349

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
last-modified: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:37 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x223C24F0E1F3320"
content-md5: pyep8iZA1xH1VJdzblAeEA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b8f1f7ec-3874-44ca-9617-7d9b12a8de4d
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:37 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: pyep8iZA1xH1VJdzblAeEA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
XZnurnLsVq4Zi5egzvFmoocGel7kO13+JULvdjFNXKGjS+N9PTcMrGNk2EWNoNxkneKPFSjZsiI8
74kw/N99zC72/IMN6GVP+c76f2MXcYVli9lPvUd4ypnBQU2u26+E5wsWlqNYVrR8Pxta3jO/JH4D
y3AFLQ7nfjLpS6cYoB0edpdXANvhDDQl0n0rHetmAh3OqhA+frn8LxdxbwsNZJ79O2ibZyOiIr47
31uQvGBGg0iKSfUN4PfeWtHDcJ0pGG7fLeKDy5r5LIhSAp5ea3K3KuvCghqo8FtwvA1R37EgEsft
sY9+wriukB1tut1YgO5fDEayZ5VTNjyGEw6Np0zXMfDXcbnjOGcyFPL9OzV+Fzwe8tNrbaoxmXtS
+K+qIOnQlYjsgA40e9PegFOjVvoGB/vRbrR5bMRFptc+kUC4h/MILKWskZYt6ncAjO1XjUOBS/Cz
2LI0VynEp9o39uqSJfhfmilUWnZlpIM9ed/W7hiTvEVQBa9B1NV85+q89vSNbWb19/MaLfF5TjQu
9t1K7rjCozmkQSBJHsZT13KLqa2PsAt44fYleY9U1rZ6E934Mvkx+VK66CxGrNksxlV+7qWGnkbR
0QzCnCmqUGpqzgvoW6V4Wa9b1cffMjUd+LM51egR83SXJmDsb10oD5jB293NRGuvBpT2K8h+8p/X
paR2cHqBWNuWUTVEi+pRMsUvHVZXT7NIis9UG8erGDPBFcq5sp8eP4MCN/M1a3qppPkDT9RIf1Xw
LuarLD0T6jkBgnUgmH8mEd7TVRjAEh5Uq3bOqMlfeZZ0yIO4chNF70y6NOgEiQt53D72dSk9LxzH
V4HGREJvoQnfq9D8bZ7LjWbLBt02TyFrVMuLaQNsNpln8BuRfqoKSpPfJd07fW+fK+fDcSg/kQdf
W/B25DgFc3Q2lHyDOQ+7wbxKVipEL9Zc6z4cqMRwJ18UMiK6k2Va2bFoBOjyHPHYCLBr9DvdGysZ
Gvn66cqvxmwdbwfsAS5X73142yvuac9MRKAUBDMkNhb3oXhrYPDnuD571a3q7AeCFAW9ZD8AK7Ep
raUpm8E5+Tjw9V+164+MkSLscpMiYleZkvAtZtLW9nbHQrJLvR19Qdx0+fanzSh2MdIdFLgdB0tN
jwnQDJNlGf7p7ancQdQEbzC3rWhg8sXItzT/ueK9qjtn/i0UrDVJD9/4vd9+mfD+GKWIZVni7J1E
CFReZmAcLENudUOm8ML6bp6JaDTlSR5EAKA8NEThhBGPz6Th66h/25GcECSsWCfijve7WYNoXr42
GWW/3/f+jPAxFiEdGIP1CY2jSTj5l6h5WqZNJiuOJ3Hlq9FCv/uZnoM0e0EGxHVzxU/2xRWFPA==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f213ba98-24d1-ab40-5503-84171ba33796?restype=container

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
x-ms-request-id: 377f6e72-8ed9-4422-96a1-1af65685e5f3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

