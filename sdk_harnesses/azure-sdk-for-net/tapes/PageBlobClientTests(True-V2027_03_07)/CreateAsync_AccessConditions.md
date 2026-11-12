## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b86c40d6-45da-65ba-4adf-583b567f8255?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).CreateAsync_AccessConditions
now: 2026-11-12T00:51:44.7135302+00:00

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
etag: "0x1D3BCFE126C3DF0"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cba3e55a-a32b-4469-ac44-a6b35015ccc8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b86c40d6-45da-65ba-4adf-583b567f8255/test-blob-c3cc32dd-6952-352b-be40-968f2d4da5f0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x2174389D7FC4520"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 418ca9da-3b5a-476b-a5eb-2e7ffce076fd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b86c40d6-45da-65ba-4adf-583b567f8255/test-blob-c3cc32dd-6952-352b-be40-968f2d4da5f0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-content-length: 1024
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
etag: "0x1CA05C441F49760"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ad50714a-24c5-4540-bf8c-4ec79142df87
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b86c40d6-45da-65ba-4adf-583b567f8255?restype=container

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
x-ms-request-id: a21d795b-372c-4631-aa5a-38462fcba4a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-80f141fe-a8c8-b7a5-3b12-e9888ee88661?restype=container

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
etag: "0x26470FD69CEDA00"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6505f144-2858-4781-9a4d-66290f6b230a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-80f141fe-a8c8-b7a5-3b12-e9888ee88661/test-blob-ffa3576d-3153-6d3a-1436-fa99ae2a38fd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x232B232A0655DE0"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0b7f342a-bbec-47e3-b73b-52cabeffe35d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-80f141fe-a8c8-b7a5-3b12-e9888ee88661/test-blob-ffa3576d-3153-6d3a-1436-fa99ae2a38fd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:51:44 GMT
x-ms-blob-content-length: 1024
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
etag: "0x1E2C89A1F18BD80"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bf8bc7b0-4a24-4691-802c-bbb955556c18
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-80f141fe-a8c8-b7a5-3b12-e9888ee88661?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: 64a8aae1-f645-4e7d-8012-06a04a93dc5c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-153c673a-028d-358d-8d15-873f7fa3a7d5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20BB64922C56B20"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 04b47f17-a7e8-47a1-bf85-56df5cb24e41
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-153c673a-028d-358d-8d15-873f7fa3a7d5/test-blob-d52234ba-a5a9-cd9c-0684-6c91ae0b0811

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x25AF626433CA180"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 78fd9dad-a524-4945-8012-b3d8a6e63970
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-153c673a-028d-358d-8d15-873f7fa3a7d5/test-blob-d52234ba-a5a9-cd9c-0684-6c91ae0b0811

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:44 GMT
x-ms-blob-content-length: 1024
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
etag: "0x230FE71919D5340"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a13a8377-a571-4d95-b7e9-c863b7f1f3ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-153c673a-028d-358d-8d15-873f7fa3a7d5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: b29e5068-232a-4a40-98de-7995e7ba40cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-264eecda-71ac-6ad4-ca6e-723eaafaed70?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BEC6DA082DB840"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c214821-362e-4727-b3e1-6ea7f1276dca
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-264eecda-71ac-6ad4-ca6e-723eaafaed70/test-blob-79de248f-6308-9553-cb6e-0e0995fc8681

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x2576E001CC441A0"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1e65833-a991-4b7c-8805-5277e1360658
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-264eecda-71ac-6ad4-ca6e-723eaafaed70/test-blob-79de248f-6308-9553-cb6e-0e0995fc8681

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
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2576E001CC441A0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2566df13-8990-446f-b7a3-6c7fae9ce359
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-264eecda-71ac-6ad4-ca6e-723eaafaed70/test-blob-79de248f-6308-9553-cb6e-0e0995fc8681

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x2576E001CC441A0"
x-ms-blob-content-length: 1024
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
etag: "0x1E56F87A2B296C0"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9ebc1762-6a6f-4bcc-9b1c-5d8ff2b37f7a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-264eecda-71ac-6ad4-ca6e-723eaafaed70?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: 4a4863bb-e3c3-41ea-914f-72f5270c9a1c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-9365760c-8055-4929-60b7-0b3a335e230c?restype=container

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
etag: "0x23D1327D1F7C160"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d3566f52-fb6f-4cff-ac97-b4a692bffe18
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-9365760c-8055-4929-60b7-0b3a335e230c/test-blob-8901fb96-8f2c-7708-98b9-5b3d62cad4ce

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x22F0CAC0BC0E980"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16f62659-321a-44b7-923f-32b6f35de8bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-9365760c-8055-4929-60b7-0b3a335e230c/test-blob-8901fb96-8f2c-7708-98b9-5b3d62cad4ce

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-blob-content-length: 1024
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
etag: "0x1CA717B2BFC9290"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e903dfa6-a66f-4418-b9e5-2e8030488ae2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-9365760c-8055-4929-60b7-0b3a335e230c?restype=container

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
x-ms-request-id: 4865afa1-bc76-4f78-8fd1-86e32060edbe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-3431f0e8-5995-0e1b-fb95-18505719616c?restype=container

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
etag: "0x2595E23D59B36C0"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9b62d9d7-9905-4a8f-b651-03142b4970af
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-3431f0e8-5995-0e1b-fb95-18505719616c/test-blob-9a72024b-fcfa-7d54-6dee-fb9c25ebe696

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x1CAB121705A9BE0"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da6639f0-2cfe-4f7e-93f6-18723a5cf890
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-3431f0e8-5995-0e1b-fb95-18505719616c/test-blob-9a72024b-fcfa-7d54-6dee-fb9c25ebe696?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 42513de3-ef2c-3d76-e0f3-8e9776b81f7e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CAB121705A9BE0"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-lease-id: 42513de3-ef2c-3d76-e0f3-8e9776b81f7e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 676096b0-64e2-4b2a-b183-e62e24b216a5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-3431f0e8-5995-0e1b-fb95-18505719616c/test-blob-9a72024b-fcfa-7d54-6dee-fb9c25ebe696

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-lease-id: 42513de3-ef2c-3d76-e0f3-8e9776b81f7e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E75C67C1139750"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe2779c7-9b07-4735-8b31-8114deb42b60
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-3431f0e8-5995-0e1b-fb95-18505719616c?restype=container

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
x-ms-request-id: e995749d-75e8-41ca-a0ec-00b8ef66a678
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

