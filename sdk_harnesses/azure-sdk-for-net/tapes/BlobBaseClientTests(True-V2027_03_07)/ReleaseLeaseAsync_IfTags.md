## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-38d9a466-5589-dbc1-61c9-ee70d46481f5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ReleaseLeaseAsync_IfTags
now: 2026-11-12T00:48:17.7958172+00:00

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
etag: "0x1FD90C746FB0DC0"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b20aac4d-5be6-4aef-827b-832c110043ff
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-38d9a466-5589-dbc1-61c9-ee70d46481f5/test-blob-a01d31f6-fd75-d4d1-07de-2ce8e9b356f0

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
FuTi3H7K1KmEPpEYqpX4oQhanRmDya9o0gQxqinY8q1y/VrwgqR3LFx0HDZsuSlx5orgjhY8bU01
egp6mCqAq0zkpa07CB5j43G8Dqx4/BjbwMSe92OXNY8Nugia/JMy9HHqhxR8Nd5sfaukgF+gvH3x
n9hl4bPoTG8dLk0Wyebdiho7jnQEXormMnq48rUwbP6KqF27zRK9ATqkXgeQVbPExvZEZC4J7EBN
f685L1q57cFPjCCIIrwIfYw5XwCCVdzG9Cy/7AfQgLwdbU1ihNLg6nFFQcmTO6M5O+eh0I1AyyrT
cjot+gC6fwtka7Vvpvm5WHSOPRMSM7iIhrEgLrAu3aIijhKXs/Bwi8K+LtDuyZTu6HcYsY0XwD6C
pXNPmVBaNY0STBfmIaWEHrFQVATombwcMkY5FiwUC87UFQ18IPJxY/lC2318B8bRk5Pcxms5mQu3
M2cKIR5h/kBJEgyXB/2/3vELpb0/nyp/aIOZOEVimnsCxe2KZkLa4d08MvS5OYyVHOd6LvRNd5M8
iribyMX753iQlUIPNHiuMMTgA2w1xS72Axtd6GyHtU5aTtuJPxgXQEt8KaRJhudvy/0wbXQmBsWK
pMWpnf8LCd/0tOacJfGryMIhuZyKrX007hxvVkfaNEgW/5pTbaNMcCDEVdEB06YLhKWxBU0oAPdH
da7inLKYGoCehSZXWFof1Eh7xVesMht2Y9KiKC/77v+jC/j0atRuLDtQY05/tCxKkjAErTqgm0KT
azng9fFRo5YmtExiKmp0DZkbW8/N9q+lV5b+9kHEA2+1YP6ajjZJ/7+3WQDg6GfFkJ+hhEByxnWK
Op1bUqxVYrHcrMps2X5i0lsPFZ2vxG8uOWWhI34vQpmJEFOZ7q0SYfZOAzudWbcgPrLkYrHX2nUu
LBlHtD4yrWow48gryeOu/bSmYMEzkd+ugOXMSt/osTXdasKUy624HFbRbXbu9XXONWX8MHq0+po5
mDNZZWKKRzGSTV4gGjEG7kNqYSRpv4tv/hV564C7KXAnWjN5XrfzRiZEXKcWrRo09kI2SZh20Nio
6WdNEVuw1yTu+cD+jI+Mdhv9JGPjWFD6RfU+hN/XsIpa0XRQpjXLlISDKLRaNmmyqtJ9eat1xJEX
U8tlclJEFkg1pLsbPNDlMo/eYDCbnw6MjNkNWTfe5AzjOFNpZSEyPhFrJZKul24CmEYblmRhe7S9
2eZ5N70RVr+uNwN9e8xurCEeMHl83fRrCsHwwk6ngr2frIw7uQdUWs7S/19rhRx6relDQks6Qfvx
DSz7IZRwB7VF3c9AMvMZydarqd6VAIWkdhRkZD9yZWuQSqvaWDk6YviqJadNOnv2KXl1jpccWw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD862818CF4B40"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
content-md5: JKrnkfX6v4OEKNgkOUkJvQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1b1d0d3e-744c-4b82-891f-283f23f36ae1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-38d9a466-5589-dbc1-61c9-ee70d46481f5/test-blob-a01d31f6-fd75-d4d1-07de-2ce8e9b356f0?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6b0761c-5dfe-408f-b9f5-479af418369d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-38d9a466-5589-dbc1-61c9-ee70d46481f5/test-blob-a01d31f6-fd75-d4d1-07de-2ce8e9b356f0?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: aa57a60d-0b7f-75a2-d378-63afe7483f71
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD862818CF4B40"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-lease-id: aa57a60d-0b7f-75a2-d378-63afe7483f71
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 258662ce-cfc7-47ee-873a-cb10e1f19a71
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-38d9a466-5589-dbc1-61c9-ee70d46481f5/test-blob-a01d31f6-fd75-d4d1-07de-2ce8e9b356f0?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: release
x-ms-lease-id: aa57a60d-0b7f-75a2-d378-63afe7483f71
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD862818CF4B40"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2dcaae9-b765-4cf0-8771-4a94fb842e77
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-38d9a466-5589-dbc1-61c9-ee70d46481f5?restype=container

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
x-ms-request-id: d6686704-8cd4-478f-a118-e3902c218714
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

