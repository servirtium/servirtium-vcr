## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cc9330e8-6362-3777-94ba-0ce71badde49?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DeleteIfExistsAsync
now: 2026-11-12T00:47:48.2487521+00:00

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
etag: "0x2275AC89CBDAC80"
last-modified: Thu, 12 Nov 2026 00:47:48 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 67b022be-0ad1-4333-afcd-a281dc9f4f92
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:48 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cc9330e8-6362-3777-94ba-0ce71badde49/test-blob-a59c6b10-dae3-243b-bf4c-482f96f5fb9c

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
7AqkKZ2U0z95UuHdqtA/fduSUGSB72oO9G8MFRtIoZ6/b/oQCbSsfJhcK5H4XnnuDctTA6SWGv2g
ljUth70kMbBCHTrWL3Qm5tTMJcPZFZX2HghQ9J35KFX9cHJ/fvTbOPrgtkA+F91XLRzQyvU5xoCf
N2m01DwTSPXk2b8Bp2ff8ezI+V9UtwYr+MeAKV5gw6nx4EeLJmS+zG1LWT4eVYa18dgIcMwhSn9i
idt0kh+XhBUVD8YgU8qICizxCV3HDKJByzeFWFPd0JXHKZ2JSTpOs9UpCEa/lJ4NgGWfL0Aimnw4
M8fnEizBOD8xWCkt/sDyo1aHngRcgjaZd9ftPaFUpI4gUBZzZqGpZ9AHjTx04IGkrIvqm/t427GQ
TppU0/qe3LObDK6qfz203TczVfT6JZdVSZAVaQmSqHRk4hgGVJPVabCI2NPT+SxONr3ERIa8ligD
/4ppiHOqCGQ5Rp0lrYmjXexDcUzDgk9jxzNMzWPuqEzvA1UIa+A93tBvmbOPKYg0IeaZeCTcQHw7
BsE/XToASp1QNaozmvIMBpJ8VOib1J2rF6x8VS8nE8LYzWUe/YCVbk8WP/PdAIf0jXKSX+uUoDIj
lEWOhPVuKSHnWs2M7QgR5uWZhZSqzhckh8e9lbPXRCwz+mk7BupZpxXR9aa6aJ9pgHkG+hudecYu
afwtsZNuEBWgWfOf1t/7P91/2Nhwah8oUxQ60EkRloCiDJztK/aBY+SQGQ6syamZCrs+HaHtvv/c
BV1/M0DMj8Jy/cpCDRPn/XT04FAQfIlqocaO0njftE6dESaYAjCkxIpLOszfVv2nViAt+d2vy4jT
FJJ5PbxKk0h8pfztTvpETxvGxUK9i0rJ53tXsbtw7kWdxO6dKobNAaaEY7AAuQgl6arB6QZGFohH
sFZA8uGNDLe3T4oMpiWV+MObOSiZyC1zMsgQrgU+Vq5lVXkwjQ7F9lb5SWp9GUKELPFCq91grugo
zMAYfF6yePjcplGrZGq11ULRoH/D9RiGi4EU+6vQBKeRB8BOrXr4RtBxoXLx2ceGjdWajw1pZden
kvDcnn1NC6GpGlyqZijH2FmvUVSmlbK5jW3VNnWZKKLpphuKHKhSJJbQR75r2yat07e0uRSCAfw9
IxAPd9UsEPK6wcANPbyxXCy91U3zTrJHKGO95G6OZqUeTPmXQ63BpDfMsBlmn5X7A13nxSyuStRd
yE9xbyuELFsa7/HCGRh//DEWJp2Y4IjNwuEQpqB5bwEkOXtdTzQLSIS+S7CjOOpEZ8j7mCM2xefG
pK1Jc4W6oX/vnt+dIaz8C94Z2pTYKon3yz/Yftfe7nSTl6uHwdT+A6ows5oLp0Yc/41FHOpS7g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2094BB9C86F6800"
last-modified: Thu, 12 Nov 2026 00:47:48 GMT
content-md5: vXlfkZa7g4KBCqRLvi6kOQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3e2e6843-70b0-4502-a3ad-58ea5d22593b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:48 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-cc9330e8-6362-3777-94ba-0ce71badde49/test-blob-a59c6b10-dae3-243b-bf4c-482f96f5fb9c

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2731a81a-6dfa-46ac-8e3a-9008b2c64d85
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:48 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-cc9330e8-6362-3777-94ba-0ce71badde49/test-blob-a59c6b10-dae3-243b-bf4c-482f96f5fb9c

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
x-ms-error-code: BlobNotFound
x-ms-request-id: 61f0a900-5927-4e31-9ab9-9d8ec7071050
Date: Thu, 12 Nov 2026 00:47:48 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-cc9330e8-6362-3777-94ba-0ce71badde49?restype=container

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
x-ms-request-id: 41379387-6e56-4835-9d8b-5712f1ca3615
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:48 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

