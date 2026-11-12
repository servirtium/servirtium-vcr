## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-97f10591-e742-82d9-8cfd-d3c889c09830?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_File_AccessTier(1)
now: 2026-11-12T00:48:49.1013122+00:00

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
etag: "0x2179A05E7A556A0"
last-modified: Thu, 12 Nov 2026 00:48:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0c867f5d-964b-4a23-af46-516e1a36da08
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-97f10591-e742-82d9-8cfd-d3c889c09830/test-blob-207a64b4-53ed-8033-75f0-0309520474df

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-access-tier: Cool
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
jfzOJPyYDbVo1SCCn94fftpSyI0sPwU+0XAhUuPPMIeI8zqM8nMzG1fFuBgyseGW0IUvADvms072
kFKLdrrRmKSY+aujkoxmHqw2Z4fsCyCPi4FeoDBLoUDslmEhqKWc8x9zmrg18j74yOGPr0vHCYUy
/Os5c/d0TFdrt/wqRXUHmnRneHFoWZhCZdhOvPL0JIzc7qu6YoAo/01gyjtCzYJshxXXX5EUyqNS
9g0fJo9ldpJwTlbKTTfzP3kjB45dAJhV4jTcHcT7xyQIZ2xzCNm9+1So0X4sojrd4yAX8cIU9fV0
yUNbiFnNdIcywebLgDafZQw6tC8ZKUD6/zmk49Zh9HF2/j+VYnL62l33+uBUEWPpd4u22UDGW58D
YIgfKZGw0Mx0VYH3CgKZP9rRIi9fpe7VumtKqxowr6OfkgHp27HLRikT37vh8m2JHJpm9Dhwo7ua
Sm4lZSSyQ6XeV3cAr2QpBtsFS8Uy9Mf+wY+AyrtqL+5GT5BCpuAFYZwWA5v1iGw1PO5dalj1aFan
J6SVMXjqcyeJuWDT52D6AOopG/ArCDkiSo7MDcSWUec6mn88cC8jLI9za84MYVWOYmpty0xlex5q
cubqHWZi82h4mEzgvY+6Bu9huJxrFuk4PqpaKIWb1R9h0v1IOA4oEHhlk8gJraTas8VcA8OB/1v9
st+8CMvj3cMsf+uScs3hOackBYIgL5EFgHW/P9Jc39KhSoYvawitgrYF3C24SED4esobXPrZ3YJN
t4dVI53w0KAZ8CdGss2edoLMGlJjTDg0x8QHQILYyG0D4bSAV18YFAyNn1cZscj8feZ3DMIw6mpP
IVvZ6Y8dQCe5Q9AZHR8itAVF1azgGhb8C8OcYLyq0/ZJMTUEPyt9cF4vX27341/GVFi86hS9bwdF
3N7MgOBrDm/Zz+zpHnTayGVOsLqoBCdj1Qtk7ejii8Euv2JNsO9+xFD+HhNz3Tbj4iGvb75MnNi2
aarUByCG90Mqu18SjBh2z+xpqeYU7/jVgAvGMxsD4iKJl0dEqbwwdybPSCLW0VUJOKDS4vLyoXmx
/4YVwMQnJ9g8iPXQMSYvOTK/RKfW/q+1vfp7MP8vl/XNk6k2GrdhpyBJmkhgOQd5oqjAM13S2gHX
YALKrPbYDfH/A558+R97XZyGjWRmVITyAo1Xb2OY+7ioXrq0l/spcIxXYDVp/KmJRdXATE2dcQt+
16lpgZ6NZwjl1JtlxsahXBzXD/NOiQXkzimO169rC+2uNb9RwO/uyfktgycOI34PH+8wxWEXME6k
hLN0/49ZesmutpEGT5st6UX6IAXd1aqqf7i/OkWLlgRwrTw7ecpp1AheYGztCM9UAtwbHRBJxg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x269D0C84E4B5FC0"
last-modified: Thu, 12 Nov 2026 00:48:49 GMT
content-md5: xudLPisIrlo0+MyPbjYvpg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6a0c8352-ead5-41f1-a551-332b1465163a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-97f10591-e742-82d9-8cfd-d3c889c09830/test-blob-207a64b4-53ed-8033-75f0-0309520474df

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
last-modified: Thu, 12 Nov 2026 00:48:49 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:49 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x269D0C84E4B5FC0"
content-md5: xudLPisIrlo0+MyPbjYvpg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 83cc717c-08d8-4e75-a438-730d5fc3ed32
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:49 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cool
x-ms-access-tier-inferred: false
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:49 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-97f10591-e742-82d9-8cfd-d3c889c09830?restype=container

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
x-ms-request-id: 7469b6aa-b69a-4bd2-964c-fef1798af5c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

