## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bc2a4e75-87b4-4ed2-db1f-b7c27e69e562?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ReleaseLeaseAsync_IfTagsFailed
now: 2026-11-12T00:48:18.1066406+00:00

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
etag: "0x1D7296209BDCF90"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cfc67448-5a4c-4d7b-9a3d-01012fdfc2d3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bc2a4e75-87b4-4ed2-db1f-b7c27e69e562/test-blob-5d1ece71-f8d4-4933-49a4-18b1d03a6715

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
vjbLNxISw4prvKxBqk2j3xbpeclWybt8G+ByEG4gfaG4oQRHna1QXgqT8hdM8Z/7ADmb58Cdv/R6
Txsxn7McSj4LiQhJW0FomBu+wtekMClBdw80hZbhGuIPzU6RH75Xd6jYQGiWsaT4M0+l3/0d1h7y
7yij58WoKm4mOo7z1nlcZkovy+/BqsVqPFFHPDrk8fYvny+VtJDiLxb5cHcVBF3VSHmy7govMEVj
OKtzYe4zQUiYxDZJxrG6TJvYxzpOVTf0cfPBMQPrAG7qMnzkb84oxi4ufUAmjILH+KFvVmkKFONz
f/D6cQ9FrMPHX5M11d3NsAEMINf3zeVx+jlhfKoF3x2Yce/dLVQe6dF8XyzukSLEoqVo/vQMfLIL
iXfW4y8Zwn92nGTt74Ks7TcFem24gmgWndoEnOEojPU80qTcSAWhY5ytd/S+1rIjuxC9BgFEUwYO
v0VVFCWdTRBvsR3e0KUxYxfRCgpzWMcn4eHQa4Xz+H+dzYnAS053DyrkTyWURetrjKPqc0j8mmd+
LjNEzeKKe7ieQQIccRfIWvvgjwihkpz2ZN7iCYQ2oTIhQR0aMkJHWtNs9gPoTxqLIRlMGwte3JuX
TmgDp3I0Z6DP+i/5rSe5mDQ0NZyYDRTEVudr6oUnw2SCg+TZRLJhOI9jGFXqknPxk4LXKaf//0BU
P1GLyH0aqDbLdypC4FSB0/0NNPS/2cRzeVcCT5q9goSkhQVh1m8RSXAfHxpJrrMuVVap8spLlWWM
F04mGFicDfSmnltOIPyN++qEn7mpKsuj0/pDE5C5WPCf1L8g6zEXghImohBY3zVZHPbgxvWs4+2D
gkReWPlj7UVqr0s9bA+5bRymg4e6S/PE6veZ2ZL68vHSnGntuSoZwrXK7TDqHK/mJlnYBV9lyDZQ
mW0CyRSzcL1Za8+mzLTyjcDR8F7D2s5IsrI4IuySbNQynB+8FvihFnxzkLDfQFql5XielNjXjL+f
uRZhek3Qx//7cy+UNXbIL9nhUEkdaHJXkzx089j8WxBgHF3hQJwvosmx48wrEK8B1mT+9Tx1glGk
CeYQW9Mm/xgfNBkZ5u89sq1/a4WmLIKMch10/WXU6poLPTa1Hkb2iuOzC9yW5+90wUOO9RbL/txj
hOm1sgKzS0p+Dai5h5RmieGh8iCm9Yot/zwiRfSEPz9ZUZpdQNjhAMCRGNpHuzqvJ2w1Kgu7vY5e
h7PGkAVV+s1oXzX6CEgIv/FgFN2w5kQBcx2HTxUznZQL/7glG2+7PB4M3lsEtB8kLGsaW6iwraFu
xB3nzaq4NcKg7gmP46SBpNi/owfp/b7+YyKqGUHsW1EXtldS025zVKmYZMYVlEjHmLfP8QmZhA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F490A7CEB8E40"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
content-md5: 5TBm3o+ZsyG7HeBHAYsENA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f625be2a-3071-436b-870a-2612a2a5f1a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-bc2a4e75-87b4-4ed2-db1f-b7c27e69e562/test-blob-5d1ece71-f8d4-4933-49a4-18b1d03a6715?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 6ae95fc7-0e88-801b-b493-b7782c4c2fd1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F490A7CEB8E40"
last-modified: Thu, 12 Nov 2026 00:48:18 GMT
x-ms-lease-id: 6ae95fc7-0e88-801b-b493-b7782c4c2fd1
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db24bb23-f434-4513-b7b3-0c4bf69ba3b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-bc2a4e75-87b4-4ed2-db1f-b7c27e69e562/test-blob-5d1ece71-f8d4-4933-49a4-18b1d03a6715?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: release
x-ms-lease-id: 6ae95fc7-0e88-801b-b493-b7782c4c2fd1
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: a0779aea-855a-4aa2-a04c-ed1c635a3769
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:18 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-bc2a4e75-87b4-4ed2-db1f-b7c27e69e562?restype=container

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
x-ms-request-id: 5a133dc6-379f-45b2-b4d6-8780e17d4d02
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

