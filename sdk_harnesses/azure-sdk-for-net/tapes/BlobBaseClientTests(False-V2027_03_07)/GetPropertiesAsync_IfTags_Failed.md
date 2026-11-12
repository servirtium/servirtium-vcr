## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fb3347f5-b75e-76be-0359-faf3559b0af8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_IfTags_Failed
now: 2026-11-12T00:46:56.0316736+00:00

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
etag: "0x2235B7DED66CCE0"
last-modified: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dabb1a81-1aac-4b4e-ac90-ff19f1a85317
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fb3347f5-b75e-76be-0359-faf3559b0af8/test-blob-c593e67d-80fb-a199-b95b-95afde20a415

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
oWxGxZQl+fgPEyDKwwnFNjjxnoNujC50rpFCAiIOmOK05VHpVERkV+2btudgz92wll537IIhphQ9
0hcC4/bVAXs+Fd632+LzjUeV0tZGFN+0kWzElqxgkj49q4EsYXT3xbVsIrn/+bp7hF46jNM+9744
TlGKEWrO3YKfeTBgxivTnQwh2fIltJixSBJNJQZq/rTD9BMibbRKnkQ3X3+KGr0zZ+7GHR3LEpm4
2MlXgbd7NXt7ndIXsDBY1jut7lUZJi5VGr4Yo+GX9+F6aZTq8xyMuykEDn3rG7e+bkbhHSRDn7Kb
AWf5Y5GZ5KXwnUabbuIfITIrFBiwav8GWjWatdm8N8riT/G1kleYainX+n1wIgBkwvzxF4qa6pdn
8glc/i7LM2V8uR7xaY7bk6ru2W+Bljc1NvPdyx8/SGVaTaBNPGv7C8cY9GjhclhuFoPgqxEo5lzR
Jsg77mhGPXC4lxvtjVc+8s2oaaHPU8ObbrSbXpxUMWZEfBWjwB1e0bb3Kds8gIgsorlEf326AtIE
n3+zqt7UY2W0qRFBmjKvSZfr1yrnXu4rb7vjELLpiXlCniCdqifXI8V2h9Z36geGlDbmzyqoHUGR
iDsj8VOyyyCX/vwSEp5wE7RkcNYYtIS0XXx7ArpPmoHeCyLrtDJyw7y14OsLc4GXdrx2RKxredS2
b5PXN8lmSGR7Mwd7hF6C8qwaYtOYqOn75Iv+2VbUc5JONUWem4zyT5eHkEB6G/Jd81H/URYAHsaq
3FI9Z28OpsB0LE8Y5FcgJxI7ERipgMiZoOUE1SJ7ThZ/8785tegoeOl/Be6jRQ/63ykExA2tAVuK
o8eJCtGd+d44mPCY5nIqE5guKXvZ9lrWCfX4dooJ0fJjrxEgn24Y4gwQaqweYvi32rF0f9fgsK1s
swDbpYJULsf9NDdgCXQpFUduyYuut6b8QJzZlVIag/5js+tuPTyKvDzlIC7BV9A9S2mQcecivvxa
3mTle5l047A4/FWIu9cK4w1OyZZ3OunLnEnoihEXQfXvE1/YpEGicD1+iVp7tI+RhY3a0/Rl4qN6
Gd9Pi1ieILpfmad4MT/LrFhY+bGOUOe6VwSEPW4BiTG7XopiUuXk32ifGxvoGVNODiebDOjy68n3
lTRUGuNMXg91vNO0aVlzdBpI7zXM0T6wNS9GZX1JyXLBar2wkMWFU7wMclyAmqTOKJjNqfyUK8P2
o+S0BfmRLPNg8v6bwuNVwpt4v1/hMJuKeDzlex92LT/5uuzg0U3DekVoH6elMmW0eOdgG2tjFHJJ
KYy8rLHT6sW/ogj2dfFNtEUaeRHz5UbXMAM4FRHUlaZ5l6fBB82UlTTi5o9cvQL1EmYlSZthVQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x254496194333AE0"
last-modified: Thu, 12 Nov 2026 00:46:56 GMT
content-md5: wHeBOKNXumUpfwPYQt1DPQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4db4e517-3f8d-4808-bc2d-db455fcb62d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-fb3347f5-b75e-76be-0359-faf3559b0af8/test-blob-c593e67d-80fb-a199-b95b-95afde20a415

### Request headers recorded for playback:

```
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
x-ms-request-id: a7de5c56-6c51-468c-96e0-bd9307d1253d
Date: Thu, 12 Nov 2026 00:46:56 GMT
```
### Response body recorded for playback (412: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-fb3347f5-b75e-76be-0359-faf3559b0af8?restype=container

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
x-ms-request-id: 52596001-e7bc-4dc3-abe3-9eb146e03816
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

