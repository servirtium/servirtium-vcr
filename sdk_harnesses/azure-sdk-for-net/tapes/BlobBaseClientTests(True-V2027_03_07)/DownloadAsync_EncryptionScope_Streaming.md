## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-28823787-7302-4c02-d115-091db41a8f2b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_EncryptionScope_Streaming
now: 2026-11-12T00:47:53.7123844+00:00

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
etag: "0x23E83FA28E0A0E0"
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 56eeeb91-0fe0-470a-ab0f-41a09be95cbe
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-28823787-7302-4c02-d115-091db41a8f2b/test-blob-4ee4884e-dd30-401a-bbc7-6e58ad384a04

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
/b4rCn0gq8jI5kh+oYl/jMM9/zvvFGhY/t+BQiLzR1kKmJP3J7CIZou6Xxwrg6pIlX1ZdxpTO+hW
0guen2ml1Z/udAj1iGQTtJmwNbVMLXs0Oaykmc8/tlyroVWk6schFIp8PA+iUgwYRsKBowYzCaSQ
aWW9ADvPrr2rSucPbsrRjiAqz/FrkuefjFMNvhNWd5ewE4BhZBNPrY1S9gclCdf4rxXlCTqzJNd+
HXTnwvCqVNNPXltJbykN2yJjGZvgeYN7FA/9cW5d/e6p40afZ+udqKEz1ap8rz/r1y4YTws7naPx
bK3hrOJk8mFsn4vibnM2xnH6rKTZ/mXPEppARK3jbUWirfs+vPu+z+NIEA+zCGm64YiZQfH/F21I
EZpIJK2ziDJFQMB3+Ap1O93BkO5VGwkwhWMlSixUo5aO9qphdqo1lIjdbcipQul9IwUUPod+8vWR
F59Kjj0F8Zwq6QJgE8UyjPxmeK1Ah0J6pyYmP2QODwO10F4L6gVK13wrflnmHQ9A4bKKGHlHUI9c
0OcW37E4G9n+qkNmJ6H2G6ExFAnpk4kX5V6yhPaKbYDOrhoeM/fK82N/53LM2rkRk/3YFTuGcjxe
//lThZfidD3Cl3iG2OepZyGlaasWSgukofD5sVdERzzevzT+dm7MnHM1CUJBirsWL64a4QiQR7Xu
r+Sm6cLlflA8qBizq/Cz2c044UDIYxY044KoKWYzTXh+D8eJJbOwT4vyBOKiY4S+Zwc7WGZ0JUzN
cgZAPFXpCVugNJsoKbQah5G11l40kn/+6sFf9/URCep7vLOscBI1CPuHAS7olT5TIdDUv07tmd+G
QlKTihFljiqxrGwBbRd+f81irZBRFVSDDNUkPUqbjSPTJi7Aon7pIXMEN+jRUbS4Vj+BiutPNSz9
EH47QVHfFh9JLUbpvdxOeYscTN1rsboha+YKGQI3hPEBw5IAreAiJCHJhyNtz5hiMhFfMuhOkV7D
GtVq1PwcEqlV5/pKTsur+ie8oSqWs5xOp+fx11IIsjE0PZIKt08lrXV6GOidGORFtDfAkvA0LGc5
HCwUKzpXTDTJFRE4oEPYlvS0HJuzsI8DqyMaSB9BABAr0ZoiEII6Isuz1APSDBPz6Pz7fxDMhWyd
EH8XPAQUiBUBDc6ptYVyefrP/9uMMJ4PJ18jRYD/X0wuhQACI+XHnkvt0f9ESjN2iQUW/IWQEeDh
BxWk8UKUAa2Cei+Fb1UUB2CQnl6ey9wsrLx76WLGnXMfIRzPI60IWdBSwc8D8RmvAvUkAHOBQjs5
d0SGGRdKvN28ZU05ROSzh0SOSwkMKbuiy+dtoZ0Ant/glqtpgkC4BwXyR4vLdr0RcXku8/YyLA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20FB24AC1637900"
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
content-md5: j4YVGcnmi/JPr9PSrliCbQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4b7f8a2f-3bda-4e2b-883e-13332680fc1c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-28823787-7302-4c02-d115-091db41a8f2b/test-blob-4ee4884e-dd30-401a-bbc7-6e58ad384a04

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
last-modified: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:53 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x20FB24AC1637900"
content-md5: j4YVGcnmi/JPr9PSrliCbQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08d17dcd-1c02-484a-a435-0a1eb572fc58
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:53 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: j4YVGcnmi/JPr9PSrliCbQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
/b4rCn0gq8jI5kh+oYl/jMM9/zvvFGhY/t+BQiLzR1kKmJP3J7CIZou6Xxwrg6pIlX1ZdxpTO+hW
0guen2ml1Z/udAj1iGQTtJmwNbVMLXs0Oaykmc8/tlyroVWk6schFIp8PA+iUgwYRsKBowYzCaSQ
aWW9ADvPrr2rSucPbsrRjiAqz/FrkuefjFMNvhNWd5ewE4BhZBNPrY1S9gclCdf4rxXlCTqzJNd+
HXTnwvCqVNNPXltJbykN2yJjGZvgeYN7FA/9cW5d/e6p40afZ+udqKEz1ap8rz/r1y4YTws7naPx
bK3hrOJk8mFsn4vibnM2xnH6rKTZ/mXPEppARK3jbUWirfs+vPu+z+NIEA+zCGm64YiZQfH/F21I
EZpIJK2ziDJFQMB3+Ap1O93BkO5VGwkwhWMlSixUo5aO9qphdqo1lIjdbcipQul9IwUUPod+8vWR
F59Kjj0F8Zwq6QJgE8UyjPxmeK1Ah0J6pyYmP2QODwO10F4L6gVK13wrflnmHQ9A4bKKGHlHUI9c
0OcW37E4G9n+qkNmJ6H2G6ExFAnpk4kX5V6yhPaKbYDOrhoeM/fK82N/53LM2rkRk/3YFTuGcjxe
//lThZfidD3Cl3iG2OepZyGlaasWSgukofD5sVdERzzevzT+dm7MnHM1CUJBirsWL64a4QiQR7Xu
r+Sm6cLlflA8qBizq/Cz2c044UDIYxY044KoKWYzTXh+D8eJJbOwT4vyBOKiY4S+Zwc7WGZ0JUzN
cgZAPFXpCVugNJsoKbQah5G11l40kn/+6sFf9/URCep7vLOscBI1CPuHAS7olT5TIdDUv07tmd+G
QlKTihFljiqxrGwBbRd+f81irZBRFVSDDNUkPUqbjSPTJi7Aon7pIXMEN+jRUbS4Vj+BiutPNSz9
EH47QVHfFh9JLUbpvdxOeYscTN1rsboha+YKGQI3hPEBw5IAreAiJCHJhyNtz5hiMhFfMuhOkV7D
GtVq1PwcEqlV5/pKTsur+ie8oSqWs5xOp+fx11IIsjE0PZIKt08lrXV6GOidGORFtDfAkvA0LGc5
HCwUKzpXTDTJFRE4oEPYlvS0HJuzsI8DqyMaSB9BABAr0ZoiEII6Isuz1APSDBPz6Pz7fxDMhWyd
EH8XPAQUiBUBDc6ptYVyefrP/9uMMJ4PJ18jRYD/X0wuhQACI+XHnkvt0f9ESjN2iQUW/IWQEeDh
BxWk8UKUAa2Cei+Fb1UUB2CQnl6ey9wsrLx76WLGnXMfIRzPI60IWdBSwc8D8RmvAvUkAHOBQjs5
d0SGGRdKvN28ZU05ROSzh0SOSwkMKbuiy+dtoZ0Ant/glqtpgkC4BwXyR4vLdr0RcXku8/YyLA==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-28823787-7302-4c02-d115-091db41a8f2b?restype=container

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
x-ms-request-id: e4d54d51-98e2-46d8-acb0-35e952e70124
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

