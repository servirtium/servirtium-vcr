## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-76e8e109-efb7-fb12-4ceb-9b63e353cf7a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_Tags
now: 2026-11-12T00:46:57.0582038+00:00

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
etag: "0x233E6A139DFA760"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 00d988da-5292-4973-82cb-f203ff39dab3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-76e8e109-efb7-fb12-4ceb-9b63e353cf7a/test-blob-f5e7b82e-5982-31df-8b4b-ccafd8679a8e

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
dsUQ67SUzVoNqeRqwpwh9/cyo12AJsawArbqbCNjIuRQDO0eQuPFmeuN6Nl1dG7vKtS3pcQ9DlD+
YOn+qmE2qob/GravArQTbAlx8j7tO41H+0JOq3wfE/2cIOL6x++KVj1SdVm4PycgpDi7yxwSESVb
tq8e5/4K3we5EuLSGKUa55wAmsU0j7saLgZDZEfhiQ69nxE/a24+SJZS/y1FTouToOSAEndfJyfz
BLn4xnq/14jTFHmU2nwtwVIu4ZCO1eB7sMNjYXeXXXjpS2a1RoEbkiekcTkS/8ZnU1EkMUWXZS7Z
fBa3XHYRPLcBqo4Vd3rRE09o6mSmabD9+w4mciwyUuU33MpqZDWxkjSBEFQ3UtvWUx72LnvKMhNm
uWFo68mLzleo3ZuwZ64Zt1cvJVhbxqgyTx8NPCRqbaq3A6rUSKdr9UH9jnU/Jutv3Hckmwy6CvO4
NZupfZIzPnDx+WMDRG6vxC8XXjgz8yk0nl+tRtKd/Pm3GxIMwXivyU8FTi2Ia5gIdNbdo6u7hUJy
dd8zhvidVPxpSyhbowO3aJXoLaT7qzLHpNH7v1lO/JbQmUuYe0JWZ/oxHh9vrNDTJjsV0ledd8qs
a+EmoZSiG0+Siwq3HuxSkcaqyowSV/gBKJkeOCo+MiKB7BBhL8VmjgPQ3CDFGwhPw0CR8609mRPo
JXn6hOIkU1jnNjHc8WEARDuJQnvYOw2Rz3TprT51Q1L8eApMawohq4nH3eTWctLeka9xtFeYEOlr
abRtO6YZcvPf33hXs9gxaJbxEF0pu1yiCxyPA4/6Y2cg4QJVs3DirWvx9pNZht3WQEzBpwCMQa5Y
yi+Kim5j5XwRNtLW27QlDmLyOMTJSYQ+uMNDOLtmlJ9T/ehBWCP8jRAWR1AKAGWXnJiemgnpjoGr
S9KrIKzAqqIzgt7M5LY+9aq0swE0NLhdq5wjyPqVam5mlgxRUW1kVZyt132GyrfiX6VeNdt/dhca
TXQQneGonhdwZU6p7aM9T11kh1w61+DlQWlVNjWS5h/0NwP5U7i7BThmFmVpOHEBIeV+G++633aT
K1t4U2fh3X4utLafRPulqYIk1MB7ewn3UxVQFMsvOleNZShcQrHRhDnmOoO7Ydzp2HFtlgu2F69S
gP9SkMmz/npeEt7SSWfQUlCGlUGFPPI4ZzxawqNM1055CcKxf/NvMzsJXU/+Fo4KnUS7L4JtzUMN
GSmNWDzWEjuQWD+kHtNcF2EGe9+jOlGtTyVfkafLDDx+pGXJ4tr+MkoTbb1OZX5wXhghZlFkat/X
4AkXd4CTxUwDJnptkzSGB0mUj8yUXuqn7jKPqqXqGjmG8gLR57vKgKhwSj8DA8vjml8Iz9sSQw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27CE717E799D7C0"
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
content-md5: D4k1GCmVYZAFbM1CucKZ/Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d1e9b352-c1e9-41c5-a9d4-f4ab7f38ae6f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-76e8e109-efb7-fb12-4ceb-9b63e353cf7a/test-blob-f5e7b82e-5982-31df-8b4b-ccafd8679a8e?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96b27e62-c299-458d-a2fc-6f7919449a78
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-76e8e109-efb7-fb12-4ceb-9b63e353cf7a/test-blob-f5e7b82e-5982-31df-8b4b-ccafd8679a8e

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
last-modified: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x27CE717E799D7C0"
content-md5: D4k1GCmVYZAFbM1CucKZ/Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3a978c06-1b6d-4705-8557-02db207778d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:57 GMT
x-ms-tag-count: 2
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-76e8e109-efb7-fb12-4ceb-9b63e353cf7a?restype=container

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
x-ms-request-id: ed331e2b-53a9-46a1-af7f-01c815269913
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

