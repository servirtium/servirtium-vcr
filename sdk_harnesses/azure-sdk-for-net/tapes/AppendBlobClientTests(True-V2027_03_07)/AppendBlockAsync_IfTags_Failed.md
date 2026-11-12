## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c40f5294-8a86-2236-8742-78cf9d9120e1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).AppendBlockAsync_IfTags_Failed
now: 2026-11-12T00:50:44.9404258+00:00

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
etag: "0x205600919A97500"
last-modified: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0fc0101-aa3a-4baa-80ab-268f0bc133b3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c40f5294-8a86-2236-8742-78cf9d9120e1/test-blob-28a55ac0-f909-c876-4600-9c9601281b8a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C386B752DC0A70"
last-modified: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d95e45c5-d4b7-45e1-a8ac-125aa8861900
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c40f5294-8a86-2236-8742-78cf9d9120e1/test-blob-28a55ac0-f909-c876-4600-9c9601281b8a?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
285vTA8qDsY88Zkon7u5yuv/nB2hGjmb20Z+he6fIV8n7fPOIdPSlkve6xhfTimKR9KrAYv96MCV
1HHIq4nYndA6AbHI6qgXLQbRwi8gO40c9D0b9B/TKQUyOE1hCerCBk1IJUx4wlwpk9SEKyaRdZnk
rLdLvKmwZtislbJbtSMcD7zh2BVApDHg8mBLTv3eocO0fV0ydkqkl790zCyqzt2waBtpr5yDoweF
aspIZRfazfTupjjG6ZlxPUFWzNgENiODmubhdfEnMNpVrAyAWzGnmv84vCel6X6C+HJaLdcvgDSm
xcsw+FgCx3ZdcD2N8eEQrjHZzHn83rBoX3x/zAMDJivX2ZZldqKmNfWxR3hB9QaQSn6lVbS6quYa
yJjbg/pyWkoRtRdLqjePMpeESpY3Jml274GFXtB3HC+vS64Jy7H6P+0uMD/uRaBHFSMdNl9Q4qEv
ZZR57fx5mZjom16JhmbliguoCfYph6rgPUitWubPX2gM2mYdgFHxtJanBqlBvY68OKxTp9mrBd7q
mK+zzD+yGDz1fawAxwm6t1RggoEAn4C58CE6fLePYNSHM+iiPehX9O1tS0Diu3CjmfCFS4Jd6fkv
+tsdeJyEZhzXeZQgF3lrCI6TklM/1zWxl+LHChVSKknvckMMOXxQ6eUkCkLcgoF2GUL0yVem7yOm
bOC6vFwGhU5KMaU1X88RQqltG8zy1BRgUfHTXmHySYMgZs2cli2JHYX0kVHcQLpy44atONNWs5fL
WWpqMiftWOchFfgBdax75P5G/kLDhBE3YHvaRBGvybI10D3CHupeBzlpuyrBcW3aMVPVELVVCNVZ
M9KrEhPWcUxGy6VuucYT6PcJWsjmde8NABK92rn94MdoaeoYsvQlkkneeqXIa3iMwSe+S64Mc77i
nhIBGJeSSevdBk/c+zUC5Md/B/pKRJSaMBmRPpUZW/YsNRPiJHqyTDG662QosMbxu2fnjGvDmFl9
Zuh9AApWxKtZsMUhH8BNzLvJkFkwcX9SoIMuMs6KaJ26Zb2SNEsnYye5zgAAz5unmr+w+ggATPVo
K2CGKJHcz0coZ7oCu5hwoiwyd6J/UtDnhpgO2W6UuhnIKQnqoDuV3f+512jhpN8nQFjczdVS6NiQ
n6H5zfbYk62hOpGOhQHwnZqjxXpoBuK555kWuOxDdUEwWgGamw8J4UO6QGpNmLpW6zA7ryNeJ5i+
QOVcwdvBXcRQXisAVQKKmuQ2rcV3a07ewMy8CMYd0jJo3FoprB9o+eOm/TqPVZYusBU+J3rSRtWX
fgEOBFT9Mov4mHmnYO3FzrTi0W0TTmo2jlex3qq4lZWEki4dWfSOqMuvlr0chk8neVnF8HRogw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: abfafc8a-4025-41eb-a998-d5955ae119e8
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:45 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-c40f5294-8a86-2236-8742-78cf9d9120e1?restype=container

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
x-ms-request-id: 244e7df7-a58a-406b-9532-956377637c5f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

