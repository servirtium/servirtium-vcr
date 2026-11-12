## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7d8d6b58-c7f1-1ee7-45a7-5faf0d6e993d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetTagsAsync_IfTagsFailed
now: 2026-11-12T00:47:01.3236471+00:00

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
etag: "0x22546BC546590A0"
last-modified: Thu, 12 Nov 2026 00:47:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 51dff021-99f5-4c23-b969-969624d17552
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7d8d6b58-c7f1-1ee7-45a7-5faf0d6e993d/test-blob-32f53cea-6743-3578-2002-dae4663be62c

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
cEJUtKGcRUTiEmVkZTd3ex0K+rDrn6/w81dd7+0DuArAMz/KGeSbTfexUDACE8/pil7HXEE2QNCS
ZMFJP1VX31pbozL3rWE4bqy5Ok9/7t+Ic2SOO1zIivJvN7UjUQ6hWXDWp2+d8d39j+2UfQaBE3Xh
wcvwyaT+khk/iHWrFByeF+HeqUdw64KHkKxuNA3s7iNAQpBCsI/M1xRWXWhnUXrQ9mUlomoucdVI
aTj4kF4MU5pSa9KMXGdREtEyGY4ZID4xnj6nxku5EdG6+UdW1Ee2SgnOFeaoRJn+1I+Y+1dHL0j6
xvEgZI1OmFkB0WIf+j6Ke8+ESwtYiVmkqfK7IBV5c8r+XA1VluZ8f3yNpnI33tlRDoCHwuQ9oTyX
fLqakndDh16XIZ0wNOXpCMuOyuLnbMsZahKV8rDmwLvQvRor4uwESR4Un7w8IdmanboYrtZZsA/u
gShlrZWtsWDiX3fKviXeioHE0swO3Eg5+lX1zRHkdg0KPWDEn5yJZu5cWcFi0N+VOiRVld1C36Tg
K7I/uONO/uhqv4DFGurlOmvesoOH1yp1YJPtjuAvyF2843PpSa4KDVvY9xBezx86cFtyZCwhWVSI
yldPYW8IO/cjCDZ2/PC91KUnrt8aF5B0sh6FvGQwmoofYX9Wuqvs0LwYOsbow3RrtY+H+ap1bbLH
265Rg36T8m6sV5pwZhn5O90iAdzJi++qGQfUqaHfqvPNj9/9mk0+hUdYPGvZ+k52jb7NUmzW/VC+
pml2v0nMzK2no9Y6/KCP43uUcE6D0B65XRviEleG9pGOPvPkyMb+i3C+MVd3PJEdPW7wQYwBO9VK
vWEu6blVIKxFq72sqxu1luXexJ/HQSGJxdXplrUFjQMdmQtlz6G2aRCqMpDTcJFSO6qnInY2g3s/
pCTka4r2QB26jhIQUMZDJ1qOHA+RtlRDllsLXWqM5xaPJSt90v6Gs/JyGeJ/QuvjZPsbp2Zsru7Q
oNQv6+KyLqf7gCqbxlVcCGgcHp1yxFRvJ/lvcD+vI3c9rTEpVsgPwOs6g8LASJ6lvp79T49QXdyA
v8TpQ71nTFyyXhkjM7KgDV6yN0CRrt5aybKhstPn7E9UqJYDJXwt0zdlDuqFgovsXEIxniab7xDl
jnkLxpmIynHJz4obnefhhGQJK6D01UcmtFWRtk0oubmGHZcDIgyd3UN4u7IB0b9aUBrCkcNw8bgx
5BFD9xQkoRXRlX9P3WFXbE5cexqUJeOWNmYyZif1Fize0T76WeUvVBmdMDw/CnK5aiV1E3Wenb8u
rcCu8Tvu239ScQwiXBJoLSYA9/WnVyvzefsCgAK3PzR/zKwlgWPerlS87Jlllg4SDOZOnqXKhw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26AFB6F9118E920"
last-modified: Thu, 12 Nov 2026 00:47:01 GMT
content-md5: woUV9gRZtZ5YwaZVrVxd6g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84d7dbf8-5b8c-4e30-8888-ab1dcb35e1d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-7d8d6b58-c7f1-1ee7-45a7-5faf0d6e993d/test-blob-32f53cea-6743-3578-2002-dae4663be62c?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: 1bbc0086-d2e0-49d2-b40b-a255426c3d5e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:01 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-7d8d6b58-c7f1-1ee7-45a7-5faf0d6e993d?restype=container

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
x-ms-request-id: 434bf727-a1cb-4844-9314-6e7e543bee48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

