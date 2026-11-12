## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3f62a1cb-17cc-b8fd-f72e-970bc41fd6a2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_File_StorageTransferOptions(null)
now: 2026-11-12T00:48:51.1151062+00:00

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
etag: "0x2067A5EA3A316C0"
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 73e41b04-8629-4139-b2eb-499c1da065d5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3f62a1cb-17cc-b8fd-f72e-970bc41fd6a2/test-blob-d911dce2-c418-3f03-948d-bf07b01c138f

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
U5+u950/bYL2LbHMBuy1Ygmo3i8x9BwGniKqP1f2CNsaCLgkcd8Eom+P4usTNjin11z9CD3kXV6D
qFh6lS4qACXWsv40kfEqozzAohIx8mjpAmj7+P+dNqpZocmGigxBZeHFPYQ6c0Vr0mQAJLtMUrXw
kJLFLgclOHtT2vAooxkvfjwwa7Xjro8ijyWanBLuDU4Ulvl6ezbZoAQI55lVQy9L0aV+G+f/DOED
op/hi5xpZM2hFA0gtQMGVsqx28f1zUz2T8ttb/FnFIoXd9iW9xVon4LLtC8hKxyheMQcTjEaDdVS
6zvQ+/XbOf+DCD0qb161SDtFKhkd1SSvy/ctS8VY/WkDRAzZl6ON8HovniLedwhlZgX11eO8NRYX
ITD9ru46KgrUJytS3LCXtzqe7jYB0FTux+S/YyiGRg/2wXZzj0GL9XMXCk/dE4pUXR2pHUbfFlDc
DucJesbiTeEcWxo6JCf4EvjD6cYEEbNaawUL3CjIF6sml4FagnusNbxuwLhvGjj1sAtOGyyJ1/wz
rw7B13G4VERuFI2mnpB9FrQKllH76lDNFSwdevt/nL+EJtJs611Ltmx0AQWrTxJ60AV4fkCrOMW+
88JEmtlI73fNIXi9ESpWv+DkhulKIsYZo6n1Bh1/2e0NrvebBhuSKxGO3S2avL/aIb5gxrHcc9H7
K/YwUulZTkiKsGMyurnEUlvXvESZf+bqG+RfHhI7MTomn9olYtkoNI7kDwxcp2YFnHRWBLaNYqwQ
RTcE+i82T34oDBren++Cr4i1tW/ajnN9WYKd5CyEmD0uFByhJDlfrr+NM5pMJvyF1FUu1608NbfD
hqCtmGpSpHTdsIrS4IpOVgavTVrYMTOFGA/XVcGQ8t9l3p2YsRVVO48mbnVysvTK34GmjOhc6lRt
J39ae06zTb6rbQLstaTxWhHKssO9E2YbDHZA6WX2CfNJK4mW+sBBcyG3x0Ty3SnctTHWkTiRrxQY
P27XcmNYtGQPo4oaWmBRiT6hBksiKS5MYzQ0H3e6t3x1fbpRaQC+XxLg4zmfwVrQhAj676nI9hY/
iw8vI5XsVOwOpdymAB8946c5QUb0raLZZJpvwMfSrIekEd7xjzt9845NkRt+KoTovAwCj7XPS95s
Vb/6fJQkO/lVAu5ATFRrvE23phuGWjkWhgO70B3S1MYAhTl7gnb5KVUiKSiVp3C4ltJnGKTC5fqF
4/aQaGrbgi0oQMca7znWvnzFZDERgN6TAjlKa7whPp8+9Z6AacDrRqb6bWepnaaYkFon/IHJdGMX
/GYwkRdxBwIn2/qbVVS82h6KFxN36mSTstpi+UEedYE7aWxaurWPiGZlgcGs/ToFayFjPlxPnw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D730B4BFDA160"
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
content-md5: AeDoCx35qBx1kELyiLqvrw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41a8d581-3852-4575-b984-a0eaf0e25313
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-3f62a1cb-17cc-b8fd-f72e-970bc41fd6a2/test-blob-d911dce2-c418-3f03-948d-bf07b01c138f

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
etag: "0x26D730B4BFDA160"
content-md5: AeDoCx35qBx1kELyiLqvrw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 294fb4f4-a931-446d-b3e3-181bc2c3740c
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: AeDoCx35qBx1kELyiLqvrw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
U5+u950/bYL2LbHMBuy1Ygmo3i8x9BwGniKqP1f2CNsaCLgkcd8Eom+P4usTNjin11z9CD3kXV6D
qFh6lS4qACXWsv40kfEqozzAohIx8mjpAmj7+P+dNqpZocmGigxBZeHFPYQ6c0Vr0mQAJLtMUrXw
kJLFLgclOHtT2vAooxkvfjwwa7Xjro8ijyWanBLuDU4Ulvl6ezbZoAQI55lVQy9L0aV+G+f/DOED
op/hi5xpZM2hFA0gtQMGVsqx28f1zUz2T8ttb/FnFIoXd9iW9xVon4LLtC8hKxyheMQcTjEaDdVS
6zvQ+/XbOf+DCD0qb161SDtFKhkd1SSvy/ctS8VY/WkDRAzZl6ON8HovniLedwhlZgX11eO8NRYX
ITD9ru46KgrUJytS3LCXtzqe7jYB0FTux+S/YyiGRg/2wXZzj0GL9XMXCk/dE4pUXR2pHUbfFlDc
DucJesbiTeEcWxo6JCf4EvjD6cYEEbNaawUL3CjIF6sml4FagnusNbxuwLhvGjj1sAtOGyyJ1/wz
rw7B13G4VERuFI2mnpB9FrQKllH76lDNFSwdevt/nL+EJtJs611Ltmx0AQWrTxJ60AV4fkCrOMW+
88JEmtlI73fNIXi9ESpWv+DkhulKIsYZo6n1Bh1/2e0NrvebBhuSKxGO3S2avL/aIb5gxrHcc9H7
K/YwUulZTkiKsGMyurnEUlvXvESZf+bqG+RfHhI7MTomn9olYtkoNI7kDwxcp2YFnHRWBLaNYqwQ
RTcE+i82T34oDBren++Cr4i1tW/ajnN9WYKd5CyEmD0uFByhJDlfrr+NM5pMJvyF1FUu1608NbfD
hqCtmGpSpHTdsIrS4IpOVgavTVrYMTOFGA/XVcGQ8t9l3p2YsRVVO48mbnVysvTK34GmjOhc6lRt
J39ae06zTb6rbQLstaTxWhHKssO9E2YbDHZA6WX2CfNJK4mW+sBBcyG3x0Ty3SnctTHWkTiRrxQY
P27XcmNYtGQPo4oaWmBRiT6hBksiKS5MYzQ0H3e6t3x1fbpRaQC+XxLg4zmfwVrQhAj676nI9hY/
iw8vI5XsVOwOpdymAB8946c5QUb0raLZZJpvwMfSrIekEd7xjzt9845NkRt+KoTovAwCj7XPS95s
Vb/6fJQkO/lVAu5ATFRrvE23phuGWjkWhgO70B3S1MYAhTl7gnb5KVUiKSiVp3C4ltJnGKTC5fqF
4/aQaGrbgi0oQMca7znWvnzFZDERgN6TAjlKa7whPp8+9Z6AacDrRqb6bWepnaaYkFon/IHJdGMX
/GYwkRdxBwIn2/qbVVS82h6KFxN36mSTstpi+UEedYE7aWxaurWPiGZlgcGs/ToFayFjPlxPnw==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-3f62a1cb-17cc-b8fd-f72e-970bc41fd6a2/test-blob-d911dce2-c418-3f03-948d-bf07b01c138f

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
etag: "0x26D730B4BFDA160"
content-md5: AeDoCx35qBx1kELyiLqvrw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 14de1c7b-0732-41ea-99aa-be596a20c98a
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

## Interaction 4: DELETE /devstoreaccount1/test-container-3f62a1cb-17cc-b8fd-f72e-970bc41fd6a2?restype=container

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
x-ms-request-id: bf312fa4-75a0-4bc5-a315-03dc4200bf74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

