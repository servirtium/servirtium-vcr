## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9cfa97d2-9ed0-3c51-c553-85a0611d6fab?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DeleteAsync_Options
now: 2026-11-12T00:47:47.6382074+00:00

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
etag: "0x203147D26FC87A0"
last-modified: Thu, 12 Nov 2026 00:47:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35e3c51e-e99c-42e9-ab32-fef02ef71d5c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9cfa97d2-9ed0-3c51-c553-85a0611d6fab/test-blob-e81adb40-7094-c628-81d9-d58e59a86ef2

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
hJt59qeGKb2Q7eZL9D+h8GXqdKcWPdxhbjQb98nC4hzkkhvFo3gDurJcV6eJ3NFBN+QpbzTH20e/
F4hzajH0zQvJZ2Ik3Ezs57r1uuU115Fj2cDkmXPoHLfUBovwkE+AaIqbwHRvHVqYPId50iFhiT/2
D5FxDzSY4UqqT9bA/FZrdFFbmRcd9LxlS13rbkqVc3xL+oC9DlhVA94pxM2E2EAwDl3PBe8o2RvU
DMPXrXIAFNxZdALWrWX4BZY58y/u4HMcumDtxW6MIyBl6AKVflVrKa/xKmM9WmD31/9Z7+br5itP
uvISE09tzVDhcMRjY4dAzcmA/LYQ318A9e5uMzQ6egLXRcRjWRZgg10SXOqblHN4GCIcaul1P9qT
Eh5g/pkcpvbCix3C3XOyIHhY/YJ1ZGB69hsSHQ8YYgbpz0f4/4XD9rXz2AlWtTquaUpxHEFYHa29
5Qh+CYjnqikX2A0suiDzlAfNgYtXJEDgZLTEp0XEkbGZOhp8RewsDC7gPt0sga8qfYc5ipwiZsDH
naXUIgLjUkZck38Fdk8boHRcd+Vjs+IEmSm9iwcVdtRZtadGWOos/OyX0O4vJAY4Huonxe/aZOrD
z4jZJcc/Rhyrq8Gn1EiKMHr5y+P01XQihWwc7bHlflG9g4hhUtclV4nRhHhFkUminJV14ZgGzvoT
tqBaIllrxi1w6VG/Kd2i03RZI1D73fMielAccJ25trSOTZw3yjUwZr5L1af44nO30g0kraupF9ms
OKgIT1aQtzKdMdtBawk+KL2SsAdMKpfcZJ2PlAgI5DbCipKMKBZnux50WrGYdWYE5YXuFmfRYA0R
K+q4ACIplE2lf+B2sv+mKvTp18/mRO83iq+DGc3O8SqEe/wsr7r8SsVk8vaFjTOFSOty54k9Kub6
gHZypnp/1o228TYCeXs57YwKglH5svx8/dHhWwmhR1AWMS9EiaRK5Bxozpz8gs5wOPr8M6iVAc55
9qipnXuEFarl7EhL9WPov501kONgf3oDcSIPpBOogC9hypP7oUeg5LnxF5WGJUOWFHQKX3HqGXYt
pixYdHCWPGsY6irQ7B1WlKspbmjkfEvfeY+fnSG+drEdzfsbSG9IW9oqbjoYxShWtMrFwKoNSCng
ePvh9p5KWnR4sx8iOks84ROOug4RxrNnSelW+LUHD4TSOs90Z2Q73xPGoBIINHl+id+Xf44az7FH
ea219GG+caOaT/98x3muUtv6SiahXhRv127Vb4/2t2sdLe22huuyCC5ubuR6AsJl6C2yH4SLphuY
Rhzy6AEUpJeUXpqM98zwSEL4MvAw9dSsb4ZiQ5jnkobRHT/OwB8tWspM5aQn2fFgwtdCknMraA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C74657C6B07260"
last-modified: Thu, 12 Nov 2026 00:47:47 GMT
content-md5: 2o+vcgwuw9PJ//pNI6+mBg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b97c3129-52da-4ba4-8e94-ae7d2c106a77
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-9cfa97d2-9ed0-3c51-c553-85a0611d6fab/test-blob-e81adb40-7094-c628-81d9-d58e59a86ef2?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:47:47.6960000Z
etag: "0x1C74657C6B07260"
last-modified: Thu, 12 Nov 2026 00:47:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7fdcb6b0-788e-4c82-ab7d-7020128ca570
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9cfa97d2-9ed0-3c51-c553-85a0611d6fab/test-blob-e81adb40-7094-c628-81d9-d58e59a86ef2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-delete-snapshots: only
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
x-ms-request-id: 5e059ec9-8508-4f11-9794-936e38d0f322
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:47 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-9cfa97d2-9ed0-3c51-c553-85a0611d6fab/test-blob-e81adb40-7094-c628-81d9-d58e59a86ef2

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
last-modified: Thu, 12 Nov 2026 00:47:47 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:47 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C74657C6B07260"
content-md5: 2o+vcgwuw9PJ//pNI6+mBg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 04e14602-4852-449d-9375-10b71bec4c6c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:47 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:47 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-9cfa97d2-9ed0-3c51-c553-85a0611d6fab?restype=container

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
x-ms-request-id: ce69b281-272c-4a5b-97e9-25174275e660
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

