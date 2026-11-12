## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-da62a8f7-3eae-1f34-cb4c-316feaed3dbf?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).AcquireLeaseAsync_IfTagsFailed
now: 2026-11-12T00:46:17.1921146+00:00

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
etag: "0x20FBF574EEA07E0"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6928eca5-1d2b-4ec1-bf16-bdfdc490e0ce
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-da62a8f7-3eae-1f34-cb4c-316feaed3dbf/test-blob-be1b96d9-c917-49b6-7d5a-2add1ddb2987

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
p0FWNbxwDvdoSfTycRKOJdrtJizc+vMu8hhdUxRXAfAjqsiolwgCaYcjVc3Uw9hqywQCMLT8qqxO
J0KkErvjEUgEz8dK5Y3S6r2luaUlWS8/8ocQVdE8Jv8cWm/FXVfMQESF0PMRIOZ2MEX3V/AGKM4T
ZR8z0rx2x6jHLosdDI1l2HlgoIg7LtKhmSSLRM8OFTGhsfg3mG2IDghKSfFaWCO4kX53podF2DZN
kTmX6oPZuBlZfFqULj8M15KA8OTgRkAA07NQl26pW9nB6gc08SSFcZHYAdzII2M/a871xedRbEv4
lhbQiSCqryCB0kM41+Zu+39TCEVjOLBPESygtJbxcH28O1oNtOdwLVG8R1AfBpPnh8lo/WQFlF5m
gHj0CvuJj2LGfJyLYEaX49rzp/BfMAqYuCzMiHIZtqb8pjRveyNWMrfuWYn2WyaD0RqJEe1tB1Bt
W1LOvAbvrMX1j7oSKGi3nXQ4cdaAolwGSbdYj6S5jp/jAR/Qh3ax/qzEAMxscamy0nR4NZV57bn2
yHNPlxwhPAAbLiZI5hb+h3MpvKGPmtgOprwwQVkJaRRm2r8CYWaQosTMUEKCaexdea0iTzAYZi6a
QPFf8PqmEsQS4gxW+yUMmRncw0mVjDzQ0sis5hnjTXSQZyF0MLLJJT5+b4fgBn2IFbYXO6PlBbS1
jx0y+iuqL5SYxpMEmGlmEp0KFh208MtKJNFjzBHRq2Jsv6CVlysS1D/ySEDpg31MsCkF2u+XAJ5R
59VaRmODxxoxl9jI0Xty+ELdwaiLYaBTFxzoy9Fy1b8CQ69VuI3cb4Alt+ulg96tkuKsuT71xoY1
Bi9HmvtJvsIZxo3MHD+1AVInZam1rpM9OjjvxhyADH0oILFdlNSF3Pgpi71Q4Xai97fszWDdgFib
CWDCWvilmLkQpPyNV2x9ooiwiyLV7FnCTM5klD8cS6BZwot0w4L/g/MEQD15FKBKbivXLPQ1xRwH
/w0qQAR681hcNJXhCd4GsAcv0awbSDgtGiUTRR6rI/xubcN01ULviU3kHeALaWVM0XvsBvRw67bV
/CbeZq46sBGZcpsbkdvEQEdeNytYIrDAxnOivxwH/oIMn9gcECOfqWzOcvfJMT+gJ8asEbOLfdp1
HqA6mPH0kXMZDvIDqC8kv42+ia+59pQ0AZdWW+zOgSL9pvKCZRF72uGDsCJMnX6Xh1IlzPQquycL
BZZZnjWGSo3QBQE8oVp8Q6/ONkVy6GQYvtOaqLQu0urLd196Ijur/GaUfJd9WuX3qYlEXIXimR0x
QN9i7KHZojIXcSr6ASBzIzrf3WvMm2Tto/8q6XZl6N5CSOFbSBDEutpkZui7/Kdo0ThKA7uxZA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x241506F0DE8E020"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
content-md5: GFCIC+Ty8uhe3a5E9vm4vQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e04d60d2-c46a-45b3-bbfa-65042290678d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-da62a8f7-3eae-1f34-cb4c-316feaed3dbf/test-blob-be1b96d9-c917-49b6-7d5a-2add1ddb2987?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 49747ba5-afa1-bcb9-b188-4cb8b83f17da
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
x-ms-request-id: a85f90ee-89e8-4d86-8e5c-e2d6ee56826d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:17 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-da62a8f7-3eae-1f34-cb4c-316feaed3dbf?restype=container

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
x-ms-request-id: 4b8896c5-c175-4f94-a8ad-3fa7d468e690
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

