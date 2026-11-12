## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6211852a-4787-3e2b-6bb6-8e8db02fc82c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).ClearPagesAsync
now: 2026-11-12T00:51:43.4274323+00:00

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
etag: "0x251AC4522556D20"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3e83545-0ad3-4e09-a43e-20a98ee6a1a4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6211852a-4787-3e2b-6bb6-8e8db02fc82c/test-blob-5ddb4c11-6284-13c1-04dd-adaf2d9f259e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EFDA479D57ECF0"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ce715748-825a-4c67-99d9-1c1558b9fbef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6211852a-4787-3e2b-6bb6-8e8db02fc82c/test-blob-5ddb4c11-6284-13c1-04dd-adaf2d9f259e?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
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
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27B0DD411CEA520"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-content-crc64: NNKVRr9MH10=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e3e20a7-f1ad-4e2a-bf3c-02594609c276
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-6211852a-4787-3e2b-6bb6-8e8db02fc82c/test-blob-5ddb4c11-6284-13c1-04dd-adaf2d9f259e?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-page-write: clear
x-ms-range: bytes=1024-2047
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EE98C4AD888010"
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6918a180-7e5f-4637-b73e-6e36b9d1aba0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-6211852a-4787-3e2b-6bb6-8e8db02fc82c/test-blob-5ddb4c11-6284-13c1-04dd-adaf2d9f259e

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:43 GMT
content-length: 4096
content-type: application/octet-stream
etag: "0x1EE98C4AD888010"
content-md5: 03QLt2lVo+7ToJt9crpAqQ==
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 095b2fad-badc-4406-bb1e-eef7e4ba3604
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
nWQZGmTPi1LWcTGwudWcl0IwcvfVtE/Hw/1eqZl8EcuQ7/BLFa3HQcGIhxMwEVkuQRVs/SwtyegV
UVdnceK4WV9lH8rlUYGVaDE2TCw7lrKjL2iEEBSfYiYHNcNVYNDf0C20y/KPSO+U1pT793282buk
w0F5NElKxryj3hu9PwdhV3z/h8vAE+Z47zmApGupSlsIsZ2OZZvjaQQ17GrT1paNmZ8AvVLv5K9b
AEQQyiJR+pPAtY5p0/LgGx3Hiid8pBmj8wrLqI0JGMzuMmRW05/i4/HWEyEHI8atH6I0KFmH31sr
bNcXhVIFtpzBe6CNikd+5Kc2pZH4m89DHojr1fBzZ1MIKmbIyl6e0FyERacmH5VatkOyUDnKM9EH
1GfKGuGrThRMhF/gtRpJl9Q0c1UoHf7ykB+swBYZPveVwfb21LZ72PeT2Zs1egApabhllb9837Zp
14nC/439MkZoS/QkUsMeuZpelERjvRYeg1ddtKg3GOE/jP0sudlplaZUzS8MBRb1R9wlHkpyBhpz
o3s2n36eMDIS5cXG8f/B9P6dDu/nEn5AaG3MEvqXzIbiuRZdM/Yotp38+R9RLlXcYylL1fcqi5D9
9TYQ0h04exg/4zfpY8EIdVhR6hle7zoX767QS/eOuC2FYD2/F+SAxH4HEUse8gBoQ1+f2aB3nwX8
+eJuZy8hsCsJZAKESV5z0SaaV93v+PyuaAiX7t6MDsE3wh4BElxP5WAfFY7+4/kBKwd63EcoDQDl
wP4nisJMfFZBTIdAcr/JS3J8z+Nur4QOlsLXEjF5D7QdG1FdKFue0pg4vJdywLlIsJHVqz4cdxB6
GPP/dWklyD3SIlZtbCMW3v1LNvPtnNUJj2Kfo2R2AaRB4w9nn10uE/Ran55j2kRuvs1A0EAdjHwe
9eYHhSTZXCCxLIgTrz6fHCP+k/w2prQdMeSXNTBjJFeTSKl3Jo3PgUN9sa68Wg+OobMdHvmA508x
6VM/QibvTggxgGaVKPaVLhG4ufQGYdbVCJR9RQVdE2FZRTw5kD8djmOlitqo+Hi9h+/nxy5aK4h8
ajmScggC020FO+K5W57SmiqRYNb8LQ8bv74VdUsy/xq0vSUFihtaordtor2VBCxRFCwDyMqxgDwp
drNK7V0h0jzIBJ55zRAPN74fj4tShbqRxGEeLzZQAz3o3BRnELVZS8+AzQCN2Ecc85EMkfCx1/H4
uCj8A6MGeABhkPD7pyYIxUS70bi6BOwZATukRHJMNgUibliMXUcselUALEdWIEtrA8us9gU4PrM8
4gJoYjSOFFnr2TnOfGj8j1ZjudekwuDvOECmoED/6S+kUHpFxBghcRjua0cSnYdjr2eu1YTclwAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
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
```

## Interaction 5: DELETE /devstoreaccount1/test-container-6211852a-4787-3e2b-6bb6-8e8db02fc82c?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ac974bc-a1df-4998-8b75-d73baaf6570e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:43 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

