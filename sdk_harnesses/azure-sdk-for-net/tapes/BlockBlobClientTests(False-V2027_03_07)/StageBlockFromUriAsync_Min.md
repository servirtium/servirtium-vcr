## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f98bbd40-7bf8-de30-bb6f-6d8baa144f6d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockFromUriAsync_Min
now: 2026-11-12T00:49:45.4959766+00:00

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
etag: "0x24020E455085E60"
last-modified: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9e99659a-c542-45d1-9a72-ce491ecd1ee7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f98bbd40-7bf8-de30-bb6f-6d8baa144f6d/test-blob-f75c6b72-a9a0-2a53-c51a-bb8964612772

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
KOJVS6nDczK5zhqL5zN7lkoLHyXqH7tbtzAlAUQf4Mv0RrJzbtg8fUpZQCpgpfeH9NZAnvUpgwgm
+ZN5nXHtme1OlqGABydyz6HbkN+R+xE4nQxt30LWysKqTHVEw+DYa6Y8Eg5VB+2vzc5TTvIplf6B
QP9kf7qqeMze1ruyLgzAAyU4VOkC4pYfvhFzgnvQgLd3woLhc+zskplCdzAy/Z/CkkvN8EAVfl1o
RcCpN/ZQDVUEOmyJ3484TMJPwGtm7cFxsO8wA5B2YUMkeC4rQluj8WnaLcIzOLK7lKN9xb7yAlf/
N4YGIArFjdkoZGdgDQpnrM8Bi7//Png8dG7t+JuFMnbWKwrUnNFeFaDpCtRLWoeZFhnu8HaYAPkO
yquc2JQ9ozLwiuH/kg/9onYeFjOj8RrmU+KClkEAPisRxtImwj0Lq2ehWtClmoMJ8E7/eerFatmQ
tYSyug3w8Ey27cs91+A5E2rMApZJQbleeKXzAMRBS1z5lQy4WfBasWqE76y3zBluxmZ/+WhCR3TL
U0Fn/PCHdKJvQ0LTgLl5clAsxVEMpqyMhTlewVH0tk6Y7QWv8rR5/XoKSIjXmkasBocXFoEivqyV
23e2KLNQe43zOpOzyn+cssjWAl4ktOrzsbvK3KDNdS5YGRY8w9THus3741+y+TsHe2S4TLxOcSaN
wnb3hZ7tJsVlWrBpX+7zD0eQKNGKQLh/w2E7FClxCqjvrwBd0DQvDr2aTZ6Lnhx1xT11vUhVAoK9
d8I9sRKb81AHea/ulj4TYRoU7/Ma9CVExk7s/Exgmq1+oFhy8Vyq/lpNgyRthi/+YVwtQRKPo4Kd
+OvDr/cEp98BcPXmoG+9afCYzHEA1z8f7prwMlib7vzV1fhx5k9jSdtFaxY5F8DscNgh9tYQnCGs
o8BcFHWHZoH5EMt3TIKhNYOWu2so5tbZBMGAefglxDjXxEOOBjVmvQWVPwb1dSNVgMBTeuC2g7zp
gxCzB+yI1EuToIc/Ei9NL/1mk6fQ5I6eKvk30UpXIECGpYMlsrYYDGu6YdScFm2RBkrjUPAVGZ6B
FdzzUAIBO39GuW2rKHxGTYc7FYK6ARSLpsv/dNBQcIvlpJ3aJbtouSZVVVwA5t7NnAJp2QQbxhPI
Z6o3Asav9kjhxoPfbCjM0lxcZKy3ir/tMdjN55aHyd2KEr0QMbZfpV8UHh9a7i/anQaovmJnENzq
StDu4g+xWv2mVVpqu6Gl/b5MomugkkOo8kqQ3gp7IgHgJefmcMNPYsQitJnVb+FlA8GjGm1wSreM
Re/FIXzyKzJYipa5voz7/UCnfd6q04NoKttJ1wiTcNowWSvUikFIMIhmfOVLrEQ0px0tyM3Y4g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E823816FC8EAD0"
last-modified: Thu, 12 Nov 2026 00:49:45 GMT
content-md5: JmyKGz3QuFwTfSThkXnZPA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dcbfe854-5215-4fcf-bd7e-d181cc747a4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f98bbd40-7bf8-de30-bb6f-6d8baa144f6d/test-blob-554d5ffe-5643-1d9e-7d97-142fea65a70d?comp=block&blockid=dGVzdC1ibG9jay02OGI4NzY1Ny00OTJlLTg2YTctMzUzYy1iN2NiOGYyM2RmZDI%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-f98bbd40-7bf8-de30-bb6f-6d8baa144f6d/test-blob-f75c6b72-a9a0-2a53-c51a-bb8964612772?sv=2027-03-07&se=2026-11-12T01%3A49%3A45Z&sr=b&sp=r&sig=99ehLM7%2F5FUcSr7IoOcjSbMNW7JcXs0aeXlagngKtps%3D
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
content-md5: JmyKGz3QuFwTfSThkXnZPA==
x-ms-content-crc64: MUh2ULnjznU=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 76b546fb-87bd-443a-b8d9-3c47eb097ede
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f98bbd40-7bf8-de30-bb6f-6d8baa144f6d?restype=container

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
x-ms-request-id: ef5b3013-8615-45e9-8846-10affb06de1a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

