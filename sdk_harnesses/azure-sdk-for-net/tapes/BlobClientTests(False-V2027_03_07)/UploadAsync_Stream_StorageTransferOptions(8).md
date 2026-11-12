## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a7e9b083-b025-dee1-3aa9-0a186c89d432?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_Stream_StorageTransferOptions(8)
now: 2026-11-12T00:48:51.7974341+00:00

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
etag: "0x1D10F866A17A620"
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 66397f9c-1445-46d3-9ece-a314528e2bf9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a7e9b083-b025-dee1-3aa9-0a186c89d432/test-blob-2484a3a3-eee3-47ab-4d3c-d9a69eee0750

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
UAZCNVwyKLF21NZyBlXL+Ra0mnGfJhmUBaJZ6dc6P0yhusdlR5/VcHrTrQ4XOED4ceCP6lOWsCrt
rS+62D/aO5WK0UyOZrJ23in2zHgKfc1iYXj2q1T4Cgmdd5pwG5c7+HJ5jWfzaQotGQspoOSx4zBi
V3fH45BAkcZD8e4YBsOSu9MGkO9lbvdtyJFJz2ol65NqDsMgcxXhOPuhsHgbFRNHl+UQqlJA/Ol/
Whr+98JbHQVbrvcAcUe+JFj0xL1+UbN+ATeFFEBAKRHZoBn640A4RZNzwGcbRyWdUob6SzgsAAhn
f/aK1gnEGoTmJtEtw0EXu34qC5BLY7oS58G6Rt7YraARk2NKrW+JrqbjNCBUcI9E45C5AfR3HBw8
eO5HCtSmDXkwHDDdzQ0PoF3qZy6avncydWJNHqurmXdHDjWAQaTSPSamI1RfZxaDqmCXjLTtorp3
FJRxWO/NhIK4lr7Xj165GCoH85oi0w5MynRKFA3CWWx6CCwPYOQ32Z7SptFXqxoC3XSK5q4fVUGF
JI56gnB19jxSXYYxqbdFzxr7UC099R9ZSDaYOHO9WrPriTxWvVYtXa+UBE6U0DS8RBaUJAQUSC5u
ITk63L7IlQLTRiB77hLDzfN9qfDRxXgC3PNdKTau10EN55wc84Hxy29MwIkTQFUE0FYRlp89nVvB
OP/Ka2vLJW/fbgZ1p9pyi92BhQXu7pydWVjgnECiz0pAWruBJ18DgJoaNNJPjil8nwvBvBhW00lj
LBIT6okvPZ68NUwe8GR9fQRq07nJTssvZPw04BMx6odxHvpN8JUR6/czkljcXa+mRD4U6/+Qmd1H
44aM+lyLikrErdFpL4xuWOjBlrtyUgdNjpvUHf6I4YUdBgwPhPGapwcOF6/dPRSxppMXzgIi1JF/
P2zAt21MPMtMTCmAXtP3Ju60ZDpXb1CHIndrcROC+zF7kEWF2vCawdvkkPHqMUe/H6cUbXBWJ88b
OZX24Mu4ylH3BM6OcUz+GaJfc99fnPAvrFFsbo3AJGh2aaBbo+APK8Wg8yx5MK1aFlTO97TvvJyk
xzR5TFzENuBlGAisonbBT0cZvqnDtnujEVc58i20hqwDttysld9p3LxMExilrXPdDKdt1v3z4BC5
1joEikSysZFbqOyaFblnr+LtdqJj/WTkW+WFRq+uENXL87+lZFF3mmKGSQWGQ/fuBSYbBWltVtjW
Hy9eLGrirJgWziL6wkuQddxA3LNeXhful0GJkwprXZ3mzkUhGW34pJ1tb3XV9ELbipCNLXkkd8EX
b5UoWBmNq3CEE/MFb1tvSDcW8e6iGKL+rQh53jAjwVeDCqnYz0yD38QEUOBP1Rs0HuVCDobTdA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2502B1837B4CEE0"
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
content-md5: 3qDS7n1hpDI1b/nS1Mzubw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 87f988a7-aa38-4e35-885d-7af986ba9dc9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-a7e9b083-b025-dee1-3aa9-0a186c89d432/test-blob-2484a3a3-eee3-47ab-4d3c-d9a69eee0750

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
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:51 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x2502B1837B4CEE0"
content-md5: 3qDS7n1hpDI1b/nS1Mzubw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08b9b7d5-3c88-4582-b442-1e93dbb0d4ce
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 3qDS7n1hpDI1b/nS1Mzubw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
UAZCNVwyKLF21NZyBlXL+Ra0mnGfJhmUBaJZ6dc6P0yhusdlR5/VcHrTrQ4XOED4ceCP6lOWsCrt
rS+62D/aO5WK0UyOZrJ23in2zHgKfc1iYXj2q1T4Cgmdd5pwG5c7+HJ5jWfzaQotGQspoOSx4zBi
V3fH45BAkcZD8e4YBsOSu9MGkO9lbvdtyJFJz2ol65NqDsMgcxXhOPuhsHgbFRNHl+UQqlJA/Ol/
Whr+98JbHQVbrvcAcUe+JFj0xL1+UbN+ATeFFEBAKRHZoBn640A4RZNzwGcbRyWdUob6SzgsAAhn
f/aK1gnEGoTmJtEtw0EXu34qC5BLY7oS58G6Rt7YraARk2NKrW+JrqbjNCBUcI9E45C5AfR3HBw8
eO5HCtSmDXkwHDDdzQ0PoF3qZy6avncydWJNHqurmXdHDjWAQaTSPSamI1RfZxaDqmCXjLTtorp3
FJRxWO/NhIK4lr7Xj165GCoH85oi0w5MynRKFA3CWWx6CCwPYOQ32Z7SptFXqxoC3XSK5q4fVUGF
JI56gnB19jxSXYYxqbdFzxr7UC099R9ZSDaYOHO9WrPriTxWvVYtXa+UBE6U0DS8RBaUJAQUSC5u
ITk63L7IlQLTRiB77hLDzfN9qfDRxXgC3PNdKTau10EN55wc84Hxy29MwIkTQFUE0FYRlp89nVvB
OP/Ka2vLJW/fbgZ1p9pyi92BhQXu7pydWVjgnECiz0pAWruBJ18DgJoaNNJPjil8nwvBvBhW00lj
LBIT6okvPZ68NUwe8GR9fQRq07nJTssvZPw04BMx6odxHvpN8JUR6/czkljcXa+mRD4U6/+Qmd1H
44aM+lyLikrErdFpL4xuWOjBlrtyUgdNjpvUHf6I4YUdBgwPhPGapwcOF6/dPRSxppMXzgIi1JF/
P2zAt21MPMtMTCmAXtP3Ju60ZDpXb1CHIndrcROC+zF7kEWF2vCawdvkkPHqMUe/H6cUbXBWJ88b
OZX24Mu4ylH3BM6OcUz+GaJfc99fnPAvrFFsbo3AJGh2aaBbo+APK8Wg8yx5MK1aFlTO97TvvJyk
xzR5TFzENuBlGAisonbBT0cZvqnDtnujEVc58i20hqwDttysld9p3LxMExilrXPdDKdt1v3z4BC5
1joEikSysZFbqOyaFblnr+LtdqJj/WTkW+WFRq+uENXL87+lZFF3mmKGSQWGQ/fuBSYbBWltVtjW
Hy9eLGrirJgWziL6wkuQddxA3LNeXhful0GJkwprXZ3mzkUhGW34pJ1tb3XV9ELbipCNLXkkd8EX
b5UoWBmNq3CEE/MFb1tvSDcW8e6iGKL+rQh53jAjwVeDCqnYz0yD38QEUOBP1Rs0HuVCDobTdA==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-a7e9b083-b025-dee1-3aa9-0a186c89d432/test-blob-2484a3a3-eee3-47ab-4d3c-d9a69eee0750

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
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2502B1837B4CEE0"
content-md5: 3qDS7n1hpDI1b/nS1Mzubw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4367f85d-c11c-4174-b1e7-1b1c5a528420
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:51 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:51 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-a7e9b083-b025-dee1-3aa9-0a186c89d432?restype=container

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
x-ms-request-id: 98b56f45-a6e9-4274-96d2-4ab4bba0e13b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

