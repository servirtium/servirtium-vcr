## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5bfd131b-f156-0b75-9f0f-3487d04bdc1c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_DoesNotOverwrite_Stream
now: 2026-11-12T00:49:11.6457763+00:00

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
etag: "0x26B55359AE2DD60"
last-modified: Thu, 12 Nov 2026 00:49:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 28dd5164-097d-4604-b436-ac4353137a63
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5bfd131b-f156-0b75-9f0f-3487d04bdc1c/test-blob-659f5dc3-4c01-22fb-7935-79ef74255f56

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
tUooj6AxaqwebhXbjbe0TlPYoZlJwX7PGNrhIXiFlnqw3dGGI0x7kfLzR5M2IJXCgCqcnIPFDPTL
WXfFT0kzmNebKq/mLSsGXBCmVnrrmPhEH6BO6fr26tDdu8rVtUGpwK67m/Xm21L/lT9zH7Z538B+
gS+o5K/cpEDeCXJgMafP/JXMMP0DXkRNT1O7g8sZY9sJVjQRAdv+3ve1B9LgnmOXpCIgra/DeyLr
WpVbISB0xKaWV9tzvfu6zVEGTlZybbDwI9+o+LUsRtsRJaZFo73WQEIrSUeIJOYnZuBevC3Leezk
a/5By8vxahAAYZdUdCqULw0TRiRpZ/74gZLVzomtRqy6YDe+lXR3Ot42iMNO0/G1yYwftzLIewP/
SEo5G5yHUhvrmhTy1ZqZnAxFM987qq6gHwT8jY568eU0v0wpPR5CrjWoYzjdw/TyhhsmgkckxJ6c
mPyXi8SMcagvvhVNb17tAoWpkkZ1w1sQCgZzU2+dD/uujaUiqyNwG/KQrQTepBe8OX/CejFXJ9Sg
h4C9GR04ka4an+G5y1dhOHdU5BVXMWbvthrv2pXKV2XRgSOiswLUVxxVxAQ1Am0oYEK5A0K+SVYa
zmICSbYZT0h76Eozv4V1f4z5AWxhubSsx3pTEFMjEjfNh+Sf0Q5lPHS8uRoj9KG8RIO2xEfpuRWu
VoI8xj70WNUSZTeh1a5+k8X3pP+ZidLYlszQbU3w5M3P8XuLKXU2x2FEEY9pG2/VNzCC8RQVFcyw
ZC9yJOuIIoFp0eMy8mpPwdyeVHdDbntc+jUcbfK4udyv28VGw6N1vO8N/0mLo0TGMzA4d8BUbPW0
Fim1a7SOsBgHgxalCP45KJeINW4x0FfwVjnCgEIbWm7Pkax6v1E6f04xhB8tICox/04oyzeGg0XS
xRR7yzDV6yio1XdRvmlGTrYf/0w3wzYOkIHz8o43SQ5np/o8vrMeW5j2hUqz4EDl4n2BZoP5mgHe
bDqu4viacIxp6RZuCY8DAaSzQD3rW7BBDhAQtuKKbg34XVJ4cHmfXBW9SfYpdtjufmXeRVnE8xGK
bdPoibqp3nsJdqs8ipArFOQoLRG6F5g3Ijh9qyizNGpB7QOlttJaFGt6H/8ssfPUszF1nMX/0FU7
sWeBKzJSVUJB+5yNhV0SzRmlP/iYCnFFqfj3PpilQR2tagVq2eg4KMq967VWRi7TY86rWZBdoqf2
PII6WheqnLp/4BpYp/QxbRcu2h677mLJJNvJ+eeMUMhddJxl/s2yE0/712YTe7vaeux5L8eIOk4g
cDY84KLS8o9S+jJXy25Je8fPwBf7tqgf7n76EyEA1TlNRY2WdjKsKOXXwIGIgq99MLMAuXo3JA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2411A9746EE87C0"
last-modified: Thu, 12 Nov 2026 00:49:11 GMT
content-md5: EN+TPIDu6YebYgR3bIIMNA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c70918c-eb01-4622-93f8-f369273e4f6b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5bfd131b-f156-0b75-9f0f-3487d04bdc1c/test-blob-659f5dc3-4c01-22fb-7935-79ef74255f56

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
uo4c8iPX325SJfkKheGyBJQimDEk9SeWa8994m3/G78WIdMIWkCIUAZobVyPeCmcfa5sl+EF/8Rn
hYZUWvwAUgk682MOqqpUmUgrvIfKB/Ol4WW+k4PdESIPodS5NPUKZxpSVYXFjtIEF/6Z2UI8nH6T
r3mWQr+FXOJB/gjWmmVSIVRseLJu31OSunuFRDff0gVWJoV8cyVbzPijhI/KLn2YRrjuzyTLJM8m
A4dD/xiqYSwDf3Pg1q0uEau5ylvDyIz+7P1+8QPhigG1VnCdF8zg+CNjxq4JuHALv714Elp0Yjr7
RRMbK3AoIvRxKn88kPne2dI4YALd9DOMczFFaHinQfM2otK5xMyyOqS5mI7wzi/EmjiHPAE4HVHf
j7g+4rl8yeiMBu4nJBQFhSVdI1ulm6UBgc4/IAXy/YSA2jUUdFfqPc6lZMdBnHUkgrbb2vn1OfMS
PGHrPKnjmghppknf8RHOcuaN/zbdwORYG55OFiKKi6FBATf2/wElwsq+2PUsRJClDWgTZzm9NHx8
kyALlIPl3huonfDZ13PkaD1rH+jvK9cNqAi6dyNnhMy6eWvhGS1H2PnahKagyzX0L//7URWTjWdI
/ux6K2f3QBkjHl4HAk4QJEbuFKcwbNzTxkcjazK2JuwDmBtAzK2S4kOMfa3X7Cyw6yzPpXnAGJEP
p2Qf09XnbPdyBGozz1iYXDFjo+8v+9kbcoAG54FyQ4CKMSRIcg5upRC1ZejBfRvUNkhHXXSh36uL
BGBU4YV1/8DqqZ4zT+oj9P3fepbwWfVlMrA5K+UL6FF5vW6tGsSLP2Un19R8oOdeJGh2wmUUm6pr
76/UPNPb3sFMupJ7ddo5VDsxyIEh6JHJ2wd9lCXsZCLDQioVtgOSTPgSMOVV4q6NPW4q49IpSgYd
CmDMXUqbYFZvuDOvI503nnuJDrisdPhY8Fe3woBPmvgk+Kuixe+ud8+P5Sp73RnQ8kRXoDtOcJZn
c23z453VIB06iyvyldiM2pboHY/O3BI95tA8+Pq81YcVOlKCu5MxucQMQFHt3lxry8WkZVMGmZZa
tf3NmSgjfrak3FuGCh8CtmPLwZvATwhz0Cw1F3AzDqG7JwWWZCCc6cKbSQEB5cGloa7wO9f7mmX1
Wsn77mZFcc65y+IabFJCLtjYJQYGcetrj3XBQtLJwIyfoQlXoPtcVtcyRxneizVbrgz+InRf7ujd
j17wgy788ApWespJ6o7dfM8u0yrRjQRAZZTFyp4XQLIheRCca9KpNlcOiBBqEsN+IaWlMBu+DAJa
sB2ZNyVsPjoXKHF9QBD8hZzSwgXz1VPRRqn4cg+XYm0OQru0D/8yokrVUupRAOGUqap+60r9Zg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: c8f0c105-695e-46ca-a83c-9862bbc74764
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:11 GMT
```
### Response body recorded for playback (409: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobAlreadyExists</Code>
  <Message>The specified blob already exists.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-5bfd131b-f156-0b75-9f0f-3487d04bdc1c?restype=container

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
x-ms-request-id: e03daaf0-2674-4f5f-8a63-6a2b48e20325
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

