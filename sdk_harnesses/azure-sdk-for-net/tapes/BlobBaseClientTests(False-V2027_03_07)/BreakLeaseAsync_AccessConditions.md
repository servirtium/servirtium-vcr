## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5d8736de-083c-0a6b-6ea6-cc6598ece28e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).BreakLeaseAsync_AccessConditions
now: 2026-11-12T00:46:17.7407519+00:00

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
etag: "0x26285B7CE58FA20"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2d17790b-3d1a-4669-9fe8-2971e521f419
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5d8736de-083c-0a6b-6ea6-cc6598ece28e/test-blob-64c25074-1a77-8443-26ad-104f19fd87b0

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
8RueOQJXbIS+sL1ugMEaK/p9WQWPr9nE8gI3jvgb8HAfG3R9TqmMHOM9psdc1QRlkuRUnKOBIUJC
2kf/IN6Mor9NT2RNnd1R8T0iUggRZxz90vwTx1PMnfoyOnNhjPwFsQMHD4agF/QHA6pmXs85MHIr
Ak7heNtrgLFqG2Jp8GVBHKAFCViVXboIDMOpZj8q+AoBNoquJDkom4/VNfyRnRNEJEEuNCcalaST
2GsXwhlyPyJYaLnbk/hn3G3JwCi+dm6wZEL9/MTi56DlGkvNENl1Y/XZODVZaZFJx1e5UNV71WL8
Zl7XdENedoAZ9XitmcyUU1wy5D44V/uwtDVtKJbLaUXp0Kl7nu6ye8K1QHMYmy2KJf14SfAjxA9i
JsAN8E3qTYszxMkjGLVuf2l7gxaHmBgI4gOYUiBVxQyZGHctpIp1yvLn5dZjZw1HCsmGp0D4246n
BQ5KUftr3v+8iQA+QNreBrkkn7JCpHr1UUdWzh3MoTzohp98Knj2fAbXp94MCcrvp6GG1DvbZWGT
VAC0FRDh8OfDVbo7YtxBLiOsav2c6Ud8ZyZ8Rc0ADCA+6NZ3QWf29bb2SbMQtEXFRaYYL/pk92u5
OK3qZaoawkmZ/XoFyey8tXVGpaCTbLPhtwAn6Nwl2fFrvgm5DJAM24Zqd7fKv3y5XHqFHlHKJcz6
Ca2q89pscyOJmgriAqnkOckZKfX8FviDbYtioLufoJk9vgLiYeir/gOTQSRx11nQoOSHsfzX/vK1
JoZOCdNn6fpxpESmAtjhbirxaNTTEpYykv/XGO+cZr8QLDphXPQwLFgq/zIUKp4LpkLR5ZYd4hTw
HHfTj9AK1D6EltWdfxE2wTt8qBNjHWhgzHKsy4Ep8komcUB9XJ2HHyrzkJPJbiYxmyRboTkAjP8P
csNeXgm9W6OKdg3RuGSd9Ynob43Ul11LezBczVEQJuVAbunaKMEhNjTwP/cYX+K/vauwFxxyOttl
EuPZYI1SeVAokEp6w8zIxzlZ5FhmMxtNnRClYA7IzjMNdRXdR9amnsWn78+YRPre6FDjGFaD/9/H
jMN9rBlCX8EXbU236oBiskWSvkNMtFgVx3i95bXcinY2FbsTKPKsZJANgNesJ/3QgGYQ8UCbe9dq
Z+SghHkMO+PXgNTET4pT5lmzPjSBaZ967WRPy5g2mprkqMANC+AWAUX01aYpCzHbvQrm6Dyj6f5F
JpYVvG9KoeU64KbJRtp5nT3ujJP4UOEzcw6OT7JdQb/Cx+VJAUTVqjTA7yuKEnYvbUv+tFxrTNW0
4Uhhu1Ez3Z7nB3/1L5v5GOJfN2G2qWGXXuJnXoxiV3oQlSD7dO7ijRKNogv3Oj2vBZt5CxVz/g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FF104C6DBC7640"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
content-md5: 5MvnKT3EbpetUbX+KVnr2Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 913a9d4f-2110-4bf4-99fc-897e9027ae93
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5d8736de-083c-0a6b-6ea6-cc6598ece28e/test-blob-64c25074-1a77-8443-26ad-104f19fd87b0?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 5dc9e737-cb6f-117e-84af-04e59a7bfda4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FF104C6DBC7640"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-lease-id: 5dc9e737-cb6f-117e-84af-04e59a7bfda4
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b709a1cd-bcc8-4010-b34c-c51bf60d31c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-5d8736de-083c-0a6b-6ea6-cc6598ece28e/test-blob-64c25074-1a77-8443-26ad-104f19fd87b0?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FF104C6DBC7640"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f23a4d3b-3472-4eb9-bd22-949c30cef8d6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-5d8736de-083c-0a6b-6ea6-cc6598ece28e?restype=container

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
x-ms-request-id: 8a8b354f-d637-4707-ab23-ba716cc3a7d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-4faa7df4-0729-a055-23a4-b858f0e94b65?restype=container

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
etag: "0x20AA757CF84BD40"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91c8d0cf-170c-43e2-bf65-5a3e344321a4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-4faa7df4-0729-a055-23a4-b858f0e94b65/test-blob-14e8969c-90aa-c273-937b-1d5bf255a333

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
CPeFjmoj1S+SKTnKEyYgm2SeSAOS6flkCei8ren5rc4AhFD5ZL36eMG5gYFWqK5tWoL3VAygoB79
IISCZydFmHtryY7VJzemo89C2Wd4DWE5T1NnAlnBYOMx+0M5eBGZc+kG694glzJKULA8Xse3hRMj
SRfU3pYiqWmqpCvzbSu9qGV+ciKCGLggHLGohQEcenYwFi76xZVS5EF0dvIGVuOFfrZhORLwoDBf
s8HkeSRnjSq1w1f8w+LQK47hDaLFGcXOIgZLukBkQHX9mhLUbmodDejIUZOLiLrUkQ2ED5KOmZn7
FlcdHNPpUYPh/inP/L0kwwC5/ccyQplLdykz3zDjbwB42FcT//AU3wAPqoqRBJVQYEuR1JzRyNS9
0qSqtnFS/o8oViNlEMQQpR3HIpgPuXKU4n/lUZpkpxCDVS1LaimPvav6aa1x60+GgS9+CqU7rRgx
FtPxbaz0w68T4ruXxDr0N2XsFE/EIvcwXtBr5ZxqR6cUGVRVnVD/BqX+XgmU77z0itJATpnIbPPc
wA7bid4SqZoTgqrmn5kV7Q2qxsTunG4TdlvKKfkOS6xgedxBI33G7LRvgGwSDuo4KmGLHqYu7SSf
xxKDSH+hBTf9hSa808mQ49oQfxsCAWdwkf+XgiwGMou4oltqQ6M1zXs1FInEe1aX+jvMHm4Incar
E7aACYIL91OaBDFtJp822rGgzezeqxWo/4fwORMcsAWVvy/ttcT5KR02KXckKtSblkS9aM/ZzWig
1wn6Gr1AflQs2GZwSCXspqPPp4Geg9WyVKPPX0c1u/LHTN26/g9g9qsj+FJuK00e0MEsCiXmAlM0
R8UZcB8M9xx0qPxIMqiUb7HWe4uDRClWsI6GCLDN4UqJhrZJRoWMFgA1+YJR1p4ZmJtzEIbIsQKc
w8CQhe9sp8exvqzxSigsSWSKTUumBdrvbXAUWdDDwdSzrYLF+5ARyVK7nxfyJ01zRsYiPWO39b7l
oBh+V0327v3XPZ2lZ03TeYT462XD/UUjoRMKoYNx/LfE31t4k3IExLEaG+mvzd95TsTevgpYIaPS
W7U67E15ZUHm4YfyW+US8yazqeJcc9QzkVK+kz2ta764pTe8ythkoLWoyetYhvLey8rkpHjAdufg
Blv6u9IEOXXJOrauVilNTwgstKrp2wpf38dyyMZF9y5Q28N9aeTjo5B1j0w8MHWhllVvk8I99ytQ
mtsLkXCvg0KHXnplz+UkSRAac0u+Iq9R0TFx1WNsEuOXLc8I2BIfxgsJtdL6O8dvS0qyIoTfkncs
ucA+Pa7eGkuXzaIWG3H++q1AtG3cVpVqAYkZuu9ft5pX3B5R4YhcKpqGY24kWTDYtCjXnt0KTw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x275D04391AC08C0"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
content-md5: wCdnBDXLiSpoA1vYgwiE2A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 69de1ccb-3977-4c4d-a9b4-0bda865512d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-4faa7df4-0729-a055-23a4-b858f0e94b65/test-blob-14e8969c-90aa-c273-937b-1d5bf255a333?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 3cd32b62-c525-5b60-3815-07bf3e52ac19
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x275D04391AC08C0"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-lease-id: 3cd32b62-c525-5b60-3815-07bf3e52ac19
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 759dbbf2-171c-41a3-84f0-9bce39a33cd0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-4faa7df4-0729-a055-23a4-b858f0e94b65/test-blob-14e8969c-90aa-c273-937b-1d5bf255a333?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:46:17 GMT
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x275D04391AC08C0"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b2d5b6fe-0900-4a6e-aed4-85b16c8af4df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-4faa7df4-0729-a055-23a4-b858f0e94b65?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
x-ms-request-id: 8467c652-25bd-42dc-86c6-dbd8497cc454
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-d289e424-f355-4527-a858-4005c78719bd?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x216E1975B49C3E0"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 406ac568-7c16-43fe-9df0-a11fcca022d7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-d289e424-f355-4527-a858-4005c78719bd/test-blob-26bc8c4c-4c0d-6537-3a2b-2b581d99f186

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Bw6yulM4+W4DjpPMhFqTsPxKc7KVhgzYrSSXKsjPJw5muv651V5pE5JNIn+4auDfl3pb0yY/8IEC
2g0voM+mNGaFZcpc2tue4V8fR2ONIEJEuJJNc1TnJ8l8t/pROXPDp+0YMgUWg72fvfLHIKkedLnL
6+g9WcERnT4B4CPgTafrXKB2dO08LTTUrbZiIAcfXkJBhk6KhU0sB5THFKKav29L28MIpwDLjr2z
aKwKr3024YHhnsdYYdZTSW1YdRmSOu5GFkRDF7ZBdfeR1x2hIVcXkDMhuSCo8nrstV6SchikIS2+
xJg588rLnynPx4q5sScWQeTlcYHNnSTJVmFYrgLe7bXv412+3p1pVRn32SvwMwM2fDE0vrCs8CZ0
b5xoc/Am8NrUyc7KV2NGfBtn1sP52SNdITLRqi4FQvI3Sm4BAeIp0OlQHGk1bCXO7UKVRBlie5Z4
ClG+VUWrz4bbkw30RXs5PgXaqL25KLUNArzscP3Y1M/YiPaQanujpE3iWdgY2qjGWwYTiNLZv+Gc
sFKIv16JAr49G7yEqdOKNgNv1s/c9SgUJRT3xUz8/8kV87kpG+XuWVYa2r7rQrIyiVHOaegSwLsp
dJlKkT1yQRvzb7UZYRsdgXx4whppKONixTv6LZbgAzP+/6ZMo8gYp5mj+NL9GCg2sedsmf2hv0u1
6MwBeBOEEmyCG2F00d20XxqBxi8RZawTw3yvdGk1XUBbl7v7Fy6FHuZmev3GwuAJtznjH/kcpIMg
7rWW1Z4CTL4hGTkiuEjr+6hJquqvTACcpbwwUj1HP/M42yh570hHYy4+pamm5/7w9yNR0vmZcaG0
+jDh0vqA2tpG6t0fcgxfAUe7cKdX9b6+P1sZ9Wz5nmqHxPQYZpE0vcvPYPwh0IQX8dCy3QD5XARy
I5OfZuRtTEtzmK0XR5u2h7LciJXBnG7WAgSbR8BpjWjvpkP9lFbnYROwrTjX/6o1+1ZNHdRvsIYk
yGTf0QSKCgpFKKBYuPJc9SeBEO82/wNZZktqG2+TgPW82MvyB48OJqMtkdcJ3UNj8Sit7Z+X7slg
hmu4H+6asaerm98mae2XcupLCG0sUIkIBylH5pJWJeoCkoEkVQa1kuAvXkFjPYg6FXq1S+VbMzbh
sBjEU8oUVHX1JNdschzklnaN/fFHpMqhDNAYodoEpl5LQqXt8D4VGgnMbhixzqNd0bVvzTZEmgxO
I0f5/LOb8H14ITB39qU3eOLnejWx8D0tus8kldgoBqeYnsz3Gx1WMH6bOK1z5toPN1VTXR/WnTMJ
zELjdlukUBqI3lfZQFzFkUq3FbeQutT1FF6D1KmIwQGZ7k/bcroi9+iS6weCNvb4jsvVH4d7eA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A92912A3C8320"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
content-md5: N24zGNoGIrAOlHo4GGAEDA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d062304d-35af-46d7-8959-6ca161e1ca66
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-d289e424-f355-4527-a858-4005c78719bd/test-blob-26bc8c4c-4c0d-6537-3a2b-2b581d99f186?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 62ee6e12-21fd-717b-ff1c-563f520dea1e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A92912A3C8320"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-lease-id: 62ee6e12-21fd-717b-ff1c-563f520dea1e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce466a7c-5717-4032-b9b9-aa4dc18e04c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-d289e424-f355-4527-a858-4005c78719bd/test-blob-26bc8c4c-4c0d-6537-3a2b-2b581d99f186?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:46:17 GMT
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A92912A3C8320"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 285f67fa-52e2-4733-aefd-ff29b6b61e69
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-d289e424-f355-4527-a858-4005c78719bd?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
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
x-ms-request-id: 037c9c8e-63aa-4984-aca0-134dcc005d20
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-cf1e948f-cefe-72cc-de67-8a46ddb2a279?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x241D4A100E11700"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 304d05f7-503b-442c-8052-367116989bfb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-cf1e948f-cefe-72cc-de67-8a46ddb2a279/test-blob-6d3d751d-5884-d525-6c20-ebea2bf6a4ea

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
pK1FimmreUOhe4OVljSTTHrdIdzQfZo3bkhi3ePiRufCoKIwbRcQcfv5ywjUkD83jZ5wTtTHGScS
DRsgSZxfvzSb0vaSY99iza/h1rGRY94JK1BEcvgT+4Z7HV/77yhfmgzUOL1IpSm+DYEk5kJ1gKo9
Fh5LGkw8iNdwF0WAZt2HgTykvSohwIUnhmR27hRDBZ21vtgKFH+/l7Dl2I3kPqeknWUG0cJ/HFaY
JJToxZnDLRGoy6cEfG295SZ5O+f3Qki80lCvPDTaNaKCcu/r1tEWIqt8PHL/oCH3SeucBuBuoOFM
LPNJE/DdzZYFgQl90g5UYhg8ewbVvDIvt/NIPS/BE9IOnqrezQ+6nm7c+h4XenfdSKPIMiTbd2/A
Glv8lI9mQ243bzNjdZUJgdyX+MIUFz18avWL+eGtMic7HbOzvgredrav3wpDetINv7BIQ3+trAId
gCqa2kqNijwLKFjiVcPSuIILZDczOPAifTkwZe6ojXGwlT3gRJtsIlXON1J6K2ntdYv8okfL6kc5
d10QXSRNY5rnMb+F8nTnnkLhZACdqFLPQu9jq+sp5Kv2psw+XMUwgNS3k/qqaIMWFQMF6YVGm88K
QBo16reuvUwUj0yoqUJ8sOQs5hRXJdlsTZXoI/olrwr8Mxyq+5UcCdWtltk2bmzBiTihGrW7sxtA
yJ0ixppR7t9Cq3Um0bVOD9w/qo4ANt4pJprBhJRUQX8AajP4+kI6W6f59ML2m7eDUgvZewiMQJK+
+Z8Aj2pK7mr2JWeCVhWZBE/mBkEcMovjPjGJesV3dCmhOgGiOss8rgZXAHZPAfz1P3e5pTlQocYU
HVE5wXOkfrA+4BwU98mDqlc7xTEUkzw1kztNvc/wUJg6jRx5A+2SsoHFECDf4UiuNfvhFNyVAIkU
Ay03V8HhTY+D2WmsCaZqqRKvT4IcVbLzn4fTDjy8pI2TZQDAW1vA5MOQXAffAStVd2vK5bAG+K17
RLc5DT9TxzTbGaSmqU2272q/i/mqFJ5bfpbR8r/djGxSRRekh9aDPZXSBOeHr80dE/ZFRmy00C8Y
3Y6ogtV1/Y03U2Q2EWeUPE5k1xC31M/Is97Il0UAnnTni6lH2rrAXQZaT1tp5wKOsQodUPgfYQm/
4M72rGZHN7XvT4W+TGGTo3oKXYV0X8zcOuU64k17xyqgiPrsybCfEhemeZd80GSpiqx+FQSDSoAC
GnKADFVnc4dbHsNmp9rKakptzuY0YGqAkVih/bImHD166q49HgXCPgUQILKhQuLRs6q5FnyazboI
/3v8xnbUNAGG7LwsjEtFq4/gIz+43091z0kHbQbA3xzzNR+KxXePPOuwG1UlpSdfc2rtual7UA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263BF11B9D454E0"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
content-md5: UpNQPoOcIJfrQVqcJ7oocw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95fff885-7882-42dd-823c-6fce81d6f099
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-cf1e948f-cefe-72cc-de67-8a46ddb2a279/test-blob-6d3d751d-5884-d525-6c20-ebea2bf6a4ea

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x263BF11B9D454E0"
content-md5: UpNQPoOcIJfrQVqcJ7oocw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca385633-dd92-45e3-ab8c-c3d8bcf845ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:17 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-cf1e948f-cefe-72cc-de67-8a46ddb2a279/test-blob-6d3d751d-5884-d525-6c20-ebea2bf6a4ea?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: f6872b20-cd2c-fbc7-c50c-a038572cbbe5
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263BF11B9D454E0"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-lease-id: f6872b20-cd2c-fbc7-c50c-a038572cbbe5
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6d5d8676-b5ec-4f2a-81e0-1ae479601e06
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-cf1e948f-cefe-72cc-de67-8a46ddb2a279/test-blob-6d3d751d-5884-d525-6c20-ebea2bf6a4ea?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x263BF11B9D454E0"
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263BF11B9D454E0"
last-modified: Thu, 12 Nov 2026 00:46:17 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bdaf93db-5d37-49ef-b255-48b5373c7048
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-cf1e948f-cefe-72cc-de67-8a46ddb2a279?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: 4424bf15-e0b9-4811-b765-710633876faf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-53e75117-c407-4ff9-2a22-a8f99bd32673?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CA5DE014E03740"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a713bf43-d1ba-46bc-82e8-696ff8585b50
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-53e75117-c407-4ff9-2a22-a8f99bd32673/test-blob-5efee478-813e-6f62-24b5-5548856dcf32

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
uIXVaMIoSVsxN8wKJM5f8eYsv3MtXKeW7ngvUm6xybxSdUAV/r6wUJujLAa0WEpVVWNiWa1cBFve
P3lJ+fbsgG4Pt66OSfMoe2/XijCg4ZYu2fwLTnAO9XHkN79EZ1akt6uYpaCbxgtwOd0+hHorPl3j
Gx/64TH9AME9qRI04xQYM9OECDz1kxPwmhST0HH2uflhYUw3qtV6mqTfXR35PFXIJVGnpzUh7YgM
CUYdai9QR/AY0oLI4Yn9Cm2XFjX2916+yqsfTxHDQHPEK6COXC90jhYs4GnTAETIqZzHiddSFhLo
XqCEMffeVZIPBLXobq0+I4gfyRb068lnV6V1+7ebcRWOpv6P8F0eTYvXw/yO3zvviWVPM0z883LW
HNlSaVnac5KgWciurzMqAXyKHSfN2XdqhXJRTD7IkrKMuNODy+My/FBp7YVyQNoyJDLQcdZKCUNi
6OTniSdU2McWIvZgpzWYVyDXY+vx90SXHycL+CDbQa+PIeP/S3MoFRW+XB7k0nz9OBm2c6VXcPCf
T2n/Sd+mO+FG0IZRmAysr07WM5sms02qDsAHJM4JN7DyYPsKKMw1FyA9nQH2q58MCcRXgD1VeZsc
VTofnxYSPZjVXzgQooaCoRt66RZLtGMg+hoKsrdzneZg7dORFngKKmBpIEtm/Gc91d8h2pCF0aDW
/qX7CIrhYsFRsLWy8Iujb7624ZMXuv2zzN3XUsNW2hsyuhfSDyHVh76KFUuyi+RUfWrRz+8Nv0Sn
RzytCQ/++taZfzVz0GCd4VrUjaSyAUH4g9VYhQssJPvTK8flJ32vixp1GAuu4awJM+6VOTGf9Ub6
tYY6pnXKbVo6n6WZt7ncJAKKPOk2SaIoTlEdluvKNDaA6nL3deWlq6uwdEEGcHw0uRQvFbhdxGvk
EVcjrdZvcGtuGMxH5a8d5JE9hdVgIt7V6N3Xmh59IyYGEmSNgf3UQATWmFev7dRkETAnHz6WhO95
TsT5mNVM8PWmQNJLkGOTaUTQiYmHJfsJconuVgPncI50FDM526guiadhCKwBGYHNk7b6xfpl8SjI
7yZLXprxv9BE1nwwWo2cof/iJRxPCFgHIMJN7KqTDyIKcOuC4isMb0nbvEIFnDkoXiP6gswMeefN
RD3XpNIlscdaJuqhGb7U1bbTc0sVAoSJJI6GmIxV/vYEtJ7uNcp2tgt7q3ZPh0RkJq0WOAact0G5
ToBDnhg6BCfznWUg5qDrXL0/mVYNOp1KInLfP8XwZ/xcNOZKMxfzQadOXOnfREAMKtxIXR3rrBTi
+XylWsRiAjVow7G5oCmmS1ivvt2za90y0hXpqArfcYjSZzmaTebi7FmzdoGOU4myohHFO+02Lg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23C6CA936F583E0"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
content-md5: EknddyCvFX3Oazwp3K/mpg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6b42952-146c-4b6a-a227-caaa46e91a2f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-53e75117-c407-4ff9-2a22-a8f99bd32673/test-blob-5efee478-813e-6f62-24b5-5548856dcf32?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 88739f8d-79af-2a5a-8951-28e638ef0bfe
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23C6CA936F583E0"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-lease-id: 88739f8d-79af-2a5a-8951-28e638ef0bfe
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64b773e2-ff9c-4189-9de7-4c7d92ab61ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-53e75117-c407-4ff9-2a22-a8f99bd32673/test-blob-5efee478-813e-6f62-24b5-5548856dcf32?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23C6CA936F583E0"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c21d0493-cb11-46c4-9963-bb3df92fe416
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-53e75117-c407-4ff9-2a22-a8f99bd32673?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: a3cf7566-37a6-4462-b0c3-b3a446e27337
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

