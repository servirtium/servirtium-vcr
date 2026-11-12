## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9f32e9ed-9d59-c0e0-1c5f-7c4a5a442295?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync
now: 2026-11-12T00:47:49.2420698+00:00

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
etag: "0x1DA19C01B62A100"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a48a01e8-d1a7-45c2-b521-d14b471fba5a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9f32e9ed-9d59-c0e0-1c5f-7c4a5a442295/test-blob-a65948be-23ad-0e20-2064-552af1dbb706

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
3oT5zDMJKlBZdb56xnFLWdaPzDb0Q+NPxGCu4liBxxbVB0XdGkYv477iRuPfZvmrEyNzynjsoJqg
qQfTWkj4166npb8rbj6PYOl3Ev0AcF5mA840Df2e6GaqPHA+W4l26m41OMA6f6Xl42qOdI6doDmp
bVd5w8qwCLxYgTHNUQRgASePyjidK4QpTimTEHTXDZw3le4y/CajhC8E4v5zGJJlLnJnDdUBC0HS
UHWgHfhIgXOUlbsVLgUB60YImUmFtTaWLeEBcP/HNoqtX6uwA2Y3vGCK34LXTwBtZSKP+HH3TZs+
CfAXRhFzzV8waM5ZUOjf0d3o+tazv97glArdOD0YtRIQcvl2IHVPFxEjpuYyExU5ryeUD1LEikoR
NrEGlpUhGLO8SN7vaLBnmePFkBj3roD1pIgWhKa/TOeuZOnDSYF7AY4ydcs2SkZ2LHVu//oxGogx
EfENC5MN/fz3QATHo1BiSY+KxDm1vllCn1gwUEzsfUpgkjiPbvb6JHfOPwpCr4glDLZrp1VPe1KY
y2w73aywCsO5ZhAY09qZj5/B5n9P/+/PCkSWgdX1ERfl96OJv0fLHjRGiUl3DTjb0Re1jpTSSMt8
a9JnGYjtw1T5Mtw3D9BY9chKCHalWP0Mu6++QIOCE67XDVN1ZASsWcX0fdtco8JHXJjMhz9V1hPV
W17YLoPRdx8tXwF845DDnq+wsNoirxftd+PqtotvgjY/nwmm0ypCIwa7L0PAynkICOiQpCY5sqxG
67ef58CTvt3LPEOHHcuEbo3TZn/ULKxq4q2j3t0QBu1dX+dzojxFKHFl9Y02gOsdDDaYZUwscr8K
NQQT8N8AuzZWKr3kEMtRjT0ObjcfNGLChtKmd6CgMOwoaGw3MjiSZTlX31UtOftqR9gOHgSI6gGi
UWkNWUSVtfrQu6heGVsEfAj9yFQMlE3WOzDIkhLon31rlODOhAv1wSpbXH1TCy18CaL7iiKtlrwc
Nh0UzSPn6Bwq84V6Nvf8CAYpsTfQgzACS4hw7BRbvv4jsU7u4fQHc3RgKRioAtOq/4Ibg+WFTLPt
EYGad/sHzjWGVoSoDiYSIj3Db1kXWUi1xe2SPzoZnmWaAM9ybfx4WVriIaxPAfBbCWGnwd1Z1bg5
5bEOdY/7bbcfDQ1XoLVAShX/NTecZsT8NjbYcdyHQSsXOYhLaeTK57T0MPPjBGisZnfHWqCAnH/t
Ej5YIvzal8ziP2cs9eAxNE2DqDXQGTLNLAplv+eKlp0JXlemcsW3GZgnAMQBf3GWliVT/PNJHfkL
ivXxddflV6jJI5eJi8KHzI+dqBhuzK2YzynBN5qpv0FemufQxaTBQqgbN1vaDQpjyzBkrHTgnQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C61526E46A9410"
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
content-md5: OwWEgofEOpacOCIWWK4szw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bd340a71-bf01-414e-9de6-3805c9c73402
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9f32e9ed-9d59-c0e0-1c5f-7c4a5a442295/test-blob-a65948be-23ad-0e20-2064-552af1dbb706

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
last-modified: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:49 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1C61526E46A9410"
content-md5: OwWEgofEOpacOCIWWK4szw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2edbed36-b426-4d5b-b3bc-c3850c5792a7
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:49 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: OwWEgofEOpacOCIWWK4szw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
3oT5zDMJKlBZdb56xnFLWdaPzDb0Q+NPxGCu4liBxxbVB0XdGkYv477iRuPfZvmrEyNzynjsoJqg
qQfTWkj4166npb8rbj6PYOl3Ev0AcF5mA840Df2e6GaqPHA+W4l26m41OMA6f6Xl42qOdI6doDmp
bVd5w8qwCLxYgTHNUQRgASePyjidK4QpTimTEHTXDZw3le4y/CajhC8E4v5zGJJlLnJnDdUBC0HS
UHWgHfhIgXOUlbsVLgUB60YImUmFtTaWLeEBcP/HNoqtX6uwA2Y3vGCK34LXTwBtZSKP+HH3TZs+
CfAXRhFzzV8waM5ZUOjf0d3o+tazv97glArdOD0YtRIQcvl2IHVPFxEjpuYyExU5ryeUD1LEikoR
NrEGlpUhGLO8SN7vaLBnmePFkBj3roD1pIgWhKa/TOeuZOnDSYF7AY4ydcs2SkZ2LHVu//oxGogx
EfENC5MN/fz3QATHo1BiSY+KxDm1vllCn1gwUEzsfUpgkjiPbvb6JHfOPwpCr4glDLZrp1VPe1KY
y2w73aywCsO5ZhAY09qZj5/B5n9P/+/PCkSWgdX1ERfl96OJv0fLHjRGiUl3DTjb0Re1jpTSSMt8
a9JnGYjtw1T5Mtw3D9BY9chKCHalWP0Mu6++QIOCE67XDVN1ZASsWcX0fdtco8JHXJjMhz9V1hPV
W17YLoPRdx8tXwF845DDnq+wsNoirxftd+PqtotvgjY/nwmm0ypCIwa7L0PAynkICOiQpCY5sqxG
67ef58CTvt3LPEOHHcuEbo3TZn/ULKxq4q2j3t0QBu1dX+dzojxFKHFl9Y02gOsdDDaYZUwscr8K
NQQT8N8AuzZWKr3kEMtRjT0ObjcfNGLChtKmd6CgMOwoaGw3MjiSZTlX31UtOftqR9gOHgSI6gGi
UWkNWUSVtfrQu6heGVsEfAj9yFQMlE3WOzDIkhLon31rlODOhAv1wSpbXH1TCy18CaL7iiKtlrwc
Nh0UzSPn6Bwq84V6Nvf8CAYpsTfQgzACS4hw7BRbvv4jsU7u4fQHc3RgKRioAtOq/4Ibg+WFTLPt
EYGad/sHzjWGVoSoDiYSIj3Db1kXWUi1xe2SPzoZnmWaAM9ybfx4WVriIaxPAfBbCWGnwd1Z1bg5
5bEOdY/7bbcfDQ1XoLVAShX/NTecZsT8NjbYcdyHQSsXOYhLaeTK57T0MPPjBGisZnfHWqCAnH/t
Ej5YIvzal8ziP2cs9eAxNE2DqDXQGTLNLAplv+eKlp0JXlemcsW3GZgnAMQBf3GWliVT/PNJHfkL
ivXxddflV6jJI5eJi8KHzI+dqBhuzK2YzynBN5qpv0FemufQxaTBQqgbN1vaDQpjyzBkrHTgnQ==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9f32e9ed-9d59-c0e0-1c5f-7c4a5a442295?restype=container

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
x-ms-request-id: b878149c-5122-42e2-afca-b71d16c031b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

