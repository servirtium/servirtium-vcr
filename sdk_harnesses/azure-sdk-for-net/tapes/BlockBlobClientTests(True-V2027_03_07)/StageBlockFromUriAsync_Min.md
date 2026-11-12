## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9a1132dc-6dab-b615-7a8b-c5ea311f73a7?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockFromUriAsync_Min
now: 2026-11-12T00:50:07.7545450+00:00

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
etag: "0x274194433BAAB40"
last-modified: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4c16c49c-c6b4-4bf7-9038-8c7177102181
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9a1132dc-6dab-b615-7a8b-c5ea311f73a7/test-blob-049b9d4f-1b86-0c86-d0d5-16b950e99a51

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
OhDRCWlpchoeZNqRNKR1V4eAGhWpol+dTumP5TIOF3hFIF76oWZKcsD3fEeShIHVFm5jsQVe/pix
M7p/2oznD01iSxRGerYhNahUsiYYCspnus7Eq2Vz5yHFSW2ry5gzD2z5MDhtjpy3QXxcCUxymSnw
GB+9ImTn7mTygDBJdmoQIKK5HtqS+SsyDGnpF97VU7BEurJ4dewHEkHUew1rbssSTOipuHpOXh/z
ixb7/teGHC2ABbu3l6q2sQuYvn0dx56e1sv1K5o19VyShOrWDBRqTV/g6mkPWrQ+8wdutp+h1cN3
XCcMkfCSSw9eJRK/36T3LXAePdw0jnsWtjiTxj+88a4nXrDsXrxuTp9asDWhfhRid4gvg5jmQ86r
9dq4/oTQojRjmID0Cs+zsO492t1GdTgjMU+3jW0WQBvhQWnitU8aig4BPeWTbWy5fNKqqGjwZYCh
lc00GBTGTVhlE8lm0PufI1DORDdSkMPj/hCbbJey8NvpQCCC5nH5O++NLlqiU6vXCoUYISFITwQK
UBoDKuHAsiLtfI/aHT3f1QhIxWJoQatlw2ERms+6oPEbd5VW9hAOzHs4tNYc/O1IOUwYAIqioQ9v
nmeArhhSM9ydv6WoiN74OfjmL4zUScZzyWCCoqBneNWF5lepjR1j5oH6fj1IoLBtIMaRvHKDmlWg
DOW30JE7NUbPIqGHTqzagkkL2sqJKiivFILa1bxjAksBCYA4qxXwvkj3eX0P5tEatzkod8CKFuK9
B7sPYGCJayBVhUQrotczGxuCkbGqoC6wwB2DO4qLd/KeeqNa4F7obQ1duWCN7hVi9FykCIQwEmeM
X59CBjCWyQ5RjCcz2Tq9miOkTefNItEIIEYu529tbmc8zYG+pmfdxu9SO2LuLhsh5m1gjMWAvzzO
OuXpaOKf5B2/9wy4//S8xob3e+dvGfIrDAABDOKiuw5F8GyB814Ns1dELzcPaed5pMU/iENUXyDz
vlzhntc7HTv+cg6IOtMn6siQKuq6HKMZh2gcYzPK8ZFLjjQCKxR/CRL8EPbY8WrxF557wzQ2OKK5
yBZuHrkIM4F9PKueJb+zECHYvgusQJX+K0uUTi1cFVWSSWL+EepY8910W7W+UvLfyLITXXqWDIiB
cPNtc+RTISdWC9tctf83f8ouOOTgQNhZtYZ6SLfb/D3afKD26oD4IDqOZ0YWghKz3N2vaNOjoTAb
FL1d2dhveg+egThfQJVKNReqUtiRQzJ0x2zZLJNpN9tw2tbCmkdiHu03eAHaU5tIZDO7+E5XitCK
6RFrlk58NEpd7ma/iJrQSDPrWssxmXPQkcdgrT6MGE8FN7E19oifukO2fWU1idyY67AbbDAFWA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23D9A9B548EE700"
last-modified: Thu, 12 Nov 2026 00:50:07 GMT
content-md5: oL5Xgys9pk9Vk23dlYZO8Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5e76e787-9e3b-4d6b-b56b-6115308fb2a1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-9a1132dc-6dab-b615-7a8b-c5ea311f73a7/test-blob-879f4cab-1c7b-9b0e-07eb-c7c28d71ac1e?comp=block&blockid=dGVzdC1ibG9jay05ODYxZGVmZi04MzViLTlmMTgtYmNhOS1hYzhmMWVjZjhiYWY%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-9a1132dc-6dab-b615-7a8b-c5ea311f73a7/test-blob-049b9d4f-1b86-0c86-d0d5-16b950e99a51?sv=2027-03-07&se=2026-11-12T01%3A50%3A07Z&sr=b&sp=r&sig=xW0ZZqcTa5GLFoynMf7qypiM631o6fS8pe1ZoM8OLk4%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: oL5Xgys9pk9Vk23dlYZO8Q==
x-ms-content-crc64: mxZ4yMm7wcY=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ac95bf2-d265-4a18-92c0-433e3b2885d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9a1132dc-6dab-b615-7a8b-c5ea311f73a7?restype=container

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
x-ms-request-id: f42f66ab-d25e-4511-9e1d-0cd871193442
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

