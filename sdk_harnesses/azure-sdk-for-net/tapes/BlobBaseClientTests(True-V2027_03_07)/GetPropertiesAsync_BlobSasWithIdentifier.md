## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c4adf3c6-f5a0-1f84-3bb8-601937d2dd4e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetPropertiesAsync_BlobSasWithIdentifier
now: 2026-11-12T00:48:09.1487921+00:00

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
etag: "0x26A47EAEAA573A0"
last-modified: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f041a4d7-956c-4c62-9bfc-d956e11a8dba
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c4adf3c6-f5a0-1f84-3bb8-601937d2dd4e/test-blob-7009e1a2-2c00-19cb-5f95-34ceb2453a19

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
EqmxmSeTZQrBtW31fUetpdXx0AMlnqf4gMn3As4NwEaWqgbC4WPD6jmwqRSatoTbryFRHJqqaXMC
uBhenGM8tPUmX9NA68NxLubKdPWTXspFG1Ksu6Or7ECSvyhLZU3VdPQfc1axmsRe3+604PV+b1pN
GYARj/hRenKSriubJsiY9AAAdOpzk4GNTty09wtLFFDO/UvMxOT8zfjkHuuYw7gmG+v0ffpw2oX+
g0EcnYNmRpnazCl8zC8bBKbxj3WV9IsjjtsgVpZVXiPGzUGj4DB1fdhSvvaPqU+82HlUfkoQaY62
+A6nRu8ChG4Gtv7ueCR2fBKdQzaUk+WMZH0dAd/YtmSz7OchzTboTzmHifNQzWBU3QI3cyVXIWUp
G+Jy5YOOLQCZO4s9Va7ctPT9DArxO5YdySTdoUI/W8uC97FTdWq1+Vzyt5LUF4dTW74xWhRaN99M
VBtfsYy9Wt/Aul79iD6JRxOt/4QDSbGcikWEDQG2J7/RByFOVkfQNVyzE1wpVtJ/pxIBrDhbSAtq
wiZGOEzeCpOeK4EdO/DL3cknUDVVcjRyBGbutHqGdr4V5JQgifwQ1AjIiipRYmshNc5vM/jVFFDy
0zTl71UYGLTCB1dcqlTMF3ssjOcJIaL6zH+rFkLGQM9DLrbIKuWzsHJ2j1oUxYp6ohx8qIho6bKR
6yLWbAFy+8eHGHyeBO2Wedx1k5FI5Qf0MXQlSpdH20QDNz7C3ENwA5STjawN3J4u5S+r81YhSQUa
4TuNTLAvPz04ms2u1JyZBI/9tVhb5lTV9mVnm+ju4u05p/sH47bjY01v1UHRgBGSEu7GI5Stv/rn
uFVLyKRVSrjfdSyhkSDZGVEK7BESA3ZT1Yn5J75Zi+gAICtgmJupGouJ8grl8YDN7QpCo9Pp1LTf
9/MaWyL5helDoHH1eIC2YNKGiRFrbuMIKzqzF+gVF0x2gaGoj75oj2whoVAO2HSJi0IAYkqjc4gP
ES/nRW4BLoklfvffDtETHfmkSs2T+lPGKoumFLQB0w0YmH2PgUr+IHLH6Fl9qXxw7UVR/im6fBfb
IRviWhrUJKvpx3VUhJyvpipazBH6SIAONSZusNTkXRxls18uG8VY8sSuk+IGG2mpolj/YLAG4dmb
1CXzZXTWBWlZ79A8gIpkAtlMS7SdBxm9xQ575f1sXtGGkkagZYxQ1455rSyYbSHNml7WupUk/swL
NaBmWh9s7JH+tu1ExJxN/HMmJFntJVfsrkqflaQ7YpR6lDDr6nxuDMCbmbYzidXBib4i/tlyHhBJ
eazUzVbsw1RZyS9sYRL3txeZUYuguSR13QzlGWO6B3YgonDQmT9prtZi2b+mVSisKkbC2cyEqA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2377D790C63F2E0"
last-modified: Thu, 12 Nov 2026 00:48:09 GMT
content-md5: B9tHv1BNOZXpaqoOqMgEjA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eec7a93c-3162-47f4-aae3-9bca49772ffb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c4adf3c6-f5a0-1f84-3bb8-601937d2dd4e?restype=container&comp=acl

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<SignedIdentifiers><SignedIdentifier><Id>vuhuvcoqheygtddaujmj</Id><AccessPolicy><Start>2026-11-11T23:48:09.1487921Z</Start><Expiry>2026-11-12T01:48:09.1487921Z</Expiry><Permission>rw</Permission></AccessPolicy></SignedIdentifier></SignedIdentifiers>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23D45BB292C7A00"
last-modified: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 548d32ac-6f5c-4842-8f76-1cdd10b8dcc4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:09 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-c4adf3c6-f5a0-1f84-3bb8-601937d2dd4e/test-blob-7009e1a2-2c00-19cb-5f95-34ceb2453a19?sv=2027-03-07&si=vuhuvcoqheygtddaujmj&sr=b&sig=KWJsBP2iOVsMddJTXfwgR6d7scFl3ynRLIhSnLvxMkc%3D

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
last-modified: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:09 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2377D790C63F2E0"
content-md5: B9tHv1BNOZXpaqoOqMgEjA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 76d728ca-476f-43dd-a2e8-3b342db11559
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:09 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:09 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-c4adf3c6-f5a0-1f84-3bb8-601937d2dd4e?restype=container

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
x-ms-request-id: 525e1330-ee6e-4ba2-954c-f83d2d7e4453
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

