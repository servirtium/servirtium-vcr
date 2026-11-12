## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f3e936aa-13bf-429a-1aef-6f10f5193028?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetTagsAsync_LeaseFailed
now: 2026-11-12T00:47:10.9933106+00:00

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
etag: "0x23E4C7C01D4C740"
last-modified: Thu, 12 Nov 2026 00:47:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 244e2830-053d-446f-9dbc-bb0c90cdf493
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f3e936aa-13bf-429a-1aef-6f10f5193028/test-blob-d46e5b7d-6dc0-e34f-95cd-8cae5540afe4

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
xyBpmw2D4XPObA/AT+Ahz+ngewohdIg85gZe8ofs7No/i0nUsJQa+nn6BlRdjpO1q73FdcSlw1KY
LLUHJe/s4n81gcSXTB5UxYGQJm4z31dyqEbKJ3YVmsf2PIPfE9SJDiTUJw3PHl+ecK9DFJzkZExd
lHypIboJIOb9oBCbdbKsBxhKX7hKo4rnLLbH0YUqEdc2gn5Y4OxpywYm0n1PA/r9lg2DmgWUEvHy
wfQDQU5h0o84ZPMzVCYs4JOxI9EMlym8yTp4pnfRom+MZR73ZYm3xf/uFp4HykLnV7ly4+8g5SnL
R3gU6CwXZ8GEpu4HNHsK+V3RHoGKtf74kU6+X7+AbID0LB0Qo93T1q/dgyNT3yM9aOmRTsaoQZJ5
HFfdWQcCBDpuEghd+VaA/kjSrTHapLErgPfV7h25TOqLloeF9X2n2n/p5c0a4G6TEE9+1pRgn3el
sdgPLBUctcYd0mLO+wnLKtKy8b7kEaCIQt7NO3ZWKvcP4ESkmK1pzTAG/A0MxBVGsqzBra64wKA4
huk3TnlPxqdqvxrFJ5IkSCOO3RSSfH7Ih4jKlX1JVh+jbBHEMn+2tzZmoQX6gYsZnGSKKuKMpQpr
bsfxhTEpIGj6IbuAYBak2CbdLNt5zgX8sPgYvyw9F8YHWMS3xDEFPICcAGDQmTtO5lG7rnku8qDB
9NU4EWE8vQr0eQhR7BP12O9b3M2lLBe9ytnagWhN2GYk9tBczCseYEJV3B8z/Pk+xtWJ0xXSHMi+
e0eIYTyhp6GhLfZDmQzEPHuLT0/3ic3fm7qTwwRRUdkHnlHklv8GtDV+ks4C+y3JxZeZR8x4xvF5
qMWBDeOcUNscO/u636Z8hJoaefb+3KCNyv1ttwoMjtdfau05haZR4ULy5cAxDuXwHMIyXUz6eswl
80PmLpjREKwjW3W5Q//0yZi0C/bfXLsXfZtI2jGLZO8gE5JjarOpIdUTDrNwN9nDPZS0Rm7VRZeH
zrH9iTV7l/aFmC9skF7kC+ohzE0IpkXBhJyd1x6AS87625wBrJigmHa8656pVqw1zzqEtHlJfydr
OwSY3r/XBExhcrXC4l9RgDPWS7unGC3vZwjj+5dUsFx0lnCTB7q35eZRSOT3cuzbMzNGczNsxCPX
qHa39Ai1DMFYTkzuvXl5H2bVVdBJ+PQcCMhkDj0oB9FNvF5D//DdnDsjniSf7XW5zVPMlm9SjrCB
muxAUf6DL0Z6oAEbNR9197iUJVnQfBpTqkHpXHFi+y6uwmUEnUo9n27dJUx0npc0V562vWhWsB7R
7Ka8mdPVF6XSbHO6cFptV4bq81fN3guptQTSrD3GVxFGM7CjgAWaCA2noTEkeeZESGXibL3GAw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2434093E40A6740"
last-modified: Thu, 12 Nov 2026 00:47:11 GMT
content-md5: 6G3Av85UJX5a3WG8/OIAMA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5120c75-a6ad-43d1-90bc-8a5ce7bed318
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f3e936aa-13bf-429a-1aef-6f10f5193028/test-blob-d46e5b7d-6dc0-e34f-95cd-8cae5540afe4?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-lease-id: e4129b0d-02cf-686b-0c15-62733daac9d7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 7411a568-fbb9-46aa-8779-2d9846e05779
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:11 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f3e936aa-13bf-429a-1aef-6f10f5193028?restype=container

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
x-ms-request-id: aa56c3f2-b46f-4a7f-ade6-071827a05217
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

