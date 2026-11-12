## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-960e6219-8909-89e9-7ece-333b58c5f75f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_CopyTags(Replace)
now: 2026-11-12T00:47:30.2206974+00:00

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
etag: "0x1D3D8B85A4EE6E0"
last-modified: Thu, 12 Nov 2026 00:47:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7d3ca19a-cb24-4286-ac13-c809e112051d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-960e6219-8909-89e9-7ece-333b58c5f75f/test-blob-06ba056a-d2a5-e742-47e1-5051ed896c9b

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
QWb7ddsigabocmnJzTm9BxCh2v2/E71HICdOJzmYnPRil/nxyoGDSIMUHTJpeBkNJEhAS69u2y2p
s1W001psUNZ0ZzVAyz2OHpJ6q/WK3qcNQQPxV1BF87zLSBYsznQpp81b9BHkzVgKsiwc9DA4H9Wt
p5JWe/mFL3N5dIInYU8dUAMoLumVKHSr5qQkKP6LkylAfyfi0yzU1sWea1nW41Hd/6MsD/DsGH4e
q5VUYQZ17eFZ5uIoO33XVFgk970b1AJTRilaX4M4VGaoxCeWf3S+KX53fP1vtMMmVbuYxyHBA9aS
ABrdGo1dIJJ7f3dVQNTjZs4/o1cF5JJlNArIoIxF58FRBH9Z4Q7wGlxr8zVM0BTmtGFTgV9+jRyI
d+WDlX8FNpe2BDxVioS/Toj7mvBcGWT14esr8mVh03dj0WopbYTcZb2elczYkSrclDPXg/MrLF2B
jbSU2UMxVTHF8rgaleEDHjQzvoSYHU/AT14yiVCDOKUMp9/QSIx5bECaE59xwf5S02S+923Z6W9k
04rl/8vgQboTDu0BM9anuVFD/QqwT41f37brxUA3M75vbHQCk211utHkXbMQUaCOFz0blexls4T8
hh8V9Xx53NovkcdhpSbkzkM4y/HaT44VXa0CG53SCrjwBg1OX8RVaoHY4L/ZLHEXN8epLOiSITaQ
/5fOd8A8XYYOcJ8YlW5+4mBwAW7PPDA86+PWKd7QXuTWvV8th/PAm4M5yrzS/qJYKkmHIh/IwcNm
kozcZjSnPhG6QdcOUFttr2brlXF0aexBff6VSTzFDvycxvVn4zVPkYuqGL3KSdnuGXK53CtS8Sig
mug2EvXV9TLbcoplBsswnATlylEvdzQkpy/JCzLQSdTNx0lMGH6W1CKK7tZPiBOniUAnbCfXcSO0
EWvGDOkACii1mD+C44OFT/UupIhd1B4cIoLxqd2s9VYlmAcTz8g5ieOtmvDUJaW9oR0yqMyaVj1N
qupnD2FLCKLpXEt8cn8s9RukrzouR/3dNAfAeU2Ji0LJxiXe0XqCYpFN68haQC+dBrOw9aYDHmLt
itpai45VX9EJsqxZTSOhIk2o4Vw0g/PXInOZ2JWbxqfD8UefKNYC94v3UY6DRLmQD9JZWj0FuAfn
gmkbvIY7bewEllvbAfp2penQPTFkVN65CcnCQWxqvTlAt6Vt5zsFu+Oif61etA3Y4rRUNXvVgi2L
YrK9eCyAmtgim0pUCb6ty4FOwtUwW1W76l63FYi9azV44oSJSEO2IuTVOxjDg9n2pmn6hr9YWgZd
AY7NyIRQZDAV3CY5JII9mKDwWx88+GaEwG8ew+R1IId9K0e16FlghNforqezvILmvO4fZ//nIA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E2CF1CD7207540"
last-modified: Thu, 12 Nov 2026 00:47:30 GMT
content-md5: cARGIS1S6IzbNYydLoC36Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 05a17084-9e24-4a78-93c5-386fccb3ee21
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-960e6219-8909-89e9-7ece-333b58c5f75f/test-blob-06ba056a-d2a5-e742-47e1-5051ed896c9b?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>source</Key><Value>tag</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d4c5ef4c-5b64-40e0-84b5-67723a71446e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-960e6219-8909-89e9-7ece-333b58c5f75f/test-blob-08492708-3114-4ba0-9fbb-9ebbf83b88af

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source-tag-option: REPLACE
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-960e6219-8909-89e9-7ece-333b58c5f75f/test-blob-06ba056a-d2a5-e742-47e1-5051ed896c9b?sv=2027-03-07&se=2026-11-13T00%3A47%3A30Z&sr=b&sp=racwdxyltmei&sig=iEnrwFT38jnngFVDsqo40FKvS3HjehnEzesAHIqWKjo%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-tags: dest=tag
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2299AE43C696F80"
last-modified: Thu, 12 Nov 2026 00:47:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a387083-cf30-4a83-9489-9e042d6c8961
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
x-ms-copy-id: 007f97a9-cdfb-4a3f-b841-e9a9777dff73
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-960e6219-8909-89e9-7ece-333b58c5f75f/test-blob-08492708-3114-4ba0-9fbb-9ebbf83b88af?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 362b5453-35aa-4c22-b8d5-416ab9c26bbb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>dest</Key><Value>tag</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-960e6219-8909-89e9-7ece-333b58c5f75f?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: 2056e4cc-d071-4893-92ac-c9c7fa6a324e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

