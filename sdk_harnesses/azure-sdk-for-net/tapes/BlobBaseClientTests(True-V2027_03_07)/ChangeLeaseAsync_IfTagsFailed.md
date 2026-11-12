## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c9688b8d-8777-e2a0-e0f2-32848db03d52?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ChangeLeaseAsync_IfTagsFailed
now: 2026-11-12T00:47:39.9306939+00:00

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
etag: "0x271E6333D262E40"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45bf47b1-e3c4-4625-b692-445f803b7f98
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c9688b8d-8777-e2a0-e0f2-32848db03d52/test-blob-fa91de35-3f28-062f-cbe5-64cd0cc5350b

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
AC94jfOJKBcSH2CbidqWSbYBsvar2sFOXGL9kSLT1Rq9JoNdOK9erLV55wjfk3zxTxsXCxM+YCVu
KjGRi5f1PkpF3mNWOREGogVBMfO4bsjlDEIHvMoHf8Ze7g5+zSEeg6m+mrUZmxUKEGkN/S4ytrtp
rH5U7oJ/PV+d90sCiNTkI65J+dQSy3Es/ath+YKXKzdSFCGiyZUnP1xWfKPKB4iUKdqA6LzmVuAN
KPDWHkPdBcwTsHOzQVkYIrp4vE/OYfYjzNCoF0J6bL5AlaGkUSAYeXbXt1cU4OeAaMYCbZmRP8b6
slJzNO6JmEO0c6u4c9GaYELZ9qqfD+voJ658eP4kr1baqp7OpESHTR4TX207x/T0Zw1Wt0gbW6Jm
ig0/DB9FkMNV3ckyy7v+UaiLi69+rGC6iBDwzfcOvk78aBo3R0H/zs+p5ukrwZtSWGafkNDy592t
hYQOVMLMRx57NmOhxwlnjL3g1cZ2jsZ0nnWQby5+CYA8isG98HkN3J/KsIs3sJFcNwQSEhIXNve9
mbVMO9fw/S3jZDxHqZtD0vgmq947Pe3kNDcqa/ZtJVPKAFbEwKHH2rNdVExUFI1ozz8a8IsYgVzH
aAegxpE2dj/pfalFfxJWX9Ar3eihjx+pwpy2UjTHsn75/FeaJhQhJ94MapfkI08txJG67KR0Jtjn
9wT1fyMKIcorS4O6vDi8CrYKlCWIxJ5MiI6jDcXahdZ/si4QK6e6AknMuNfMcwdY/uLtaZGzXzJl
qPaUZxQFUcWsOwkJq94OT5LcuwzHgBWGSg7j7BxFy1L8q4OwJpo0x2cRHzj+T1IE3hn+16QmnSjh
DRwGImSpZ2+2DQBbXin4p/OktWDdiPu73g0CRvSu1Q1bzxh9LqUCaLfIR0FSqIDvBjCwgejHBIUh
SkNXpiF7CDfz/48RenhOokypFEG5aTWNE0DE/lQklMuSXORhq8GWTT8KX6nx3Yu3Yd+bHe9EZ+EN
yZPgtgnjzmvEfx6U7PaKEsYCrwqMmzW0DJx0iHbbTvQDVOEutZY1JpA9LV5tInToEAspQrjXgC5d
K6ltbkX16DAqkZgUXF0vzIh5T27WR+onjHdrsQw7LNSz0InsyLhKSEQuQpHc1LSu+nUvXTHAhuS/
ReLOiTcj7mXEYIvTQgTPLgYpqARZS7fDvbeXDM6j80mlLYLWfL4MClQrGHMp2rdwXy4qlt7fZvoq
C8yAjOGWIW1BLRWC+bJIHJ6vLTJEmuL/JqyfeF1rxsaIrHHxjH1ylPcG562i7mZ84Xk/LznH5XHq
gWY196gP1WdO+k1AVpAhPZg7PrI1XDhGI5bjLJaNwMYABwsXPZ1P9hFFVPQYO4vpHvKgjKe+tA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CAA5B0B9B0CC90"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
content-md5: J5KSH1NfthF/T62qfskkhA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24b37039-0632-4e37-9440-db84e313af92
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c9688b8d-8777-e2a0-e0f2-32848db03d52/test-blob-fa91de35-3f28-062f-cbe5-64cd0cc5350b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: d4ef2d24-2c11-d0a9-c039-87404f8509ff
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CAA5B0B9B0CC90"
last-modified: Thu, 12 Nov 2026 00:47:39 GMT
x-ms-lease-id: d4ef2d24-2c11-d0a9-c039-87404f8509ff
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef087a08-d015-42b1-86d7-fa95adf58839
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-c9688b8d-8777-e2a0-e0f2-32848db03d52/test-blob-fa91de35-3f28-062f-cbe5-64cd0cc5350b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: change
x-ms-lease-id: d4ef2d24-2c11-d0a9-c039-87404f8509ff
x-ms-proposed-lease-id: a148ecfb-07ef-2d43-e70b-fa0ea4ed341e
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
x-ms-request-id: 93db766b-7846-4f5e-b165-db089b1d5ffb
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:39 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-c9688b8d-8777-e2a0-e0f2-32848db03d52?restype=container

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
x-ms-request-id: 7c935c92-bcf3-4f38-ab79-861214bcf9ff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

