## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-97cbe8b6-91e3-f111-719d-0e6ccee3119a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_AccessTier_Cold
now: 2026-11-12T00:48:33.0696979+00:00

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
etag: "0x1E9411B70132000"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f67b86fc-0839-4b0b-942e-69843b806013
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-97cbe8b6-91e3-f111-719d-0e6ccee3119a/test-blob-7c6aead9-dabe-2d37-254c-904df7a89ad5

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
X/jPp4E6HhBRBpf1PZfi+z2euSKuY3PcsJ5ylgHE+skDOQzVFGkYn8xZKrhDQe+NaZQQWe94JvyF
8/bjyIcOjQzO8gSLDOfThRlVVDi6mG+v5C1ss6HaihIPUCFzNddFSpyrdU7qAl2tPdPVItHDylqH
NORaotlr82fye7zGX1BCEAqbDyMgxOLQv3bNBWhAS4XG7AHz6qjDQIHn+Iag592DkhLHKLs2Zm8B
iuJinu7/sTA3/3NOTyVh2M6iOcxbL9iZSXJWeCPJkIWR8WDFYKKT50ZWaehqNELsZk/slC2jpVoK
yVR7qTgMbW7uvF7EnHcsDlGFBcbvLxQvaRLT3PtX7ksGupdNFz4OSft5fHfkKMrYwIXcHaCTG5pA
TD8lOZByls4TveHg3vcTdrvKdrOcS0FI+xx2e9Cqcp/8Dcv+6BBqBuWp0Wro9+GNyafkyKXmowD+
3T10/Bv9aEtC49EsFI6rYG/N83rXYAM66LIpxqn6FmrK/wvT9grKrGgephMQYbQYOWg1GbCGJ305
ORRp1KGhSM1mYhSD2GllA0YRuLnwKob9EI1BxP26Q9iNmb32YdjGfV5Gqf+flWH/0BVpdW/DSQ+N
a8MUYIPQrB489T+sbqJuSjpbqYCHXXsrQfPnUM5oyk+uaPUUshzadf3gYp8iUmFz+io0aKCOBQ1I
6R6Q6VtP0yvv/gasWpgdgTOCpvrbCe6Rc1akNGGuH2PozMj+SoyhkY90MlRbx6CRFuZsDF8Sbd8v
/nUFq5/JQN+jw43PHzen4BVrZtaaNqy2Eh17QhIE1V/pzksWnObvqvF1uAMSwvevxCtJpgYIlcjJ
T5iCTv7Mn+4u5lHrkEQvfLvlJH2oo1Aly37nui9Y4DiDTU1NbFzzqRkV5NumxDTmGipKI3FKIatI
XIOA5OS/1QYYZ0P24g9f8Xtkk790fwZJAKAFDbzHOSyhBBDZc8Q0Vg7UjVzw7zga6zL15Y3r09x8
NuREusdKUS4XVd3/hX63Lz2xn/KqWRBn6iKK0VOetTEzXD3f8JtGijst2ZpbG2WzPrZQOjPq0dzT
3M+lv4DbeZ+ryyhA1z+hahW2fH91DM+81pOdTXv9SItgCxPMoMq7UmD7r088c2Z2r88eNFVcXs8A
6ensPisjroKd4Msr1MpK+iofel2Af2MsJp2r3xQ1A61DzLfhzxQ01wDMnpOaS9oF0zoqPeNyf2mG
wBeOeM5uaNwe6AgSaSsW66Jcs+DQktvCpQvaCsbK0UxNWw78pV8xXja2fGLS82oOFFFBFcyJtS08
y9LDk10VVBa8xQ0cGUVDKlWpGRV48LKgy/V0iLuAw6XhwNqNbsrZoChMFi1c8vsL/ep235wYww==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26DE88C9B8FC2C0"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
content-md5: kvLEqk7yJHsA9WLGhRIGZg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95fa62f1-ce45-40c7-980d-a7d6bf809490
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-97cbe8b6-91e3-f111-719d-0e6ccee3119a/test-blob-c8221fdb-a167-5bcb-3b01-683b586bb6bc

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cold
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-97cbe8b6-91e3-f111-719d-0e6ccee3119a/test-blob-7c6aead9-dabe-2d37-254c-904df7a89ad5?sv=2027-03-07&se=2026-11-12T01%3A48%3A33Z&sr=b&sp=r&sig=sh59qeSCL4QB5WKD%2BUysBoDqO2TMvLd1WYv26IN%2BQIY%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2235B7FDE3F6C00"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5db8a0c6-60d8-4e49-8f3b-3ed57b31d8cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-copy-id: 3ec793bb-7977-40ce-a4f4-00a7a5fbdff4
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-97cbe8b6-91e3-f111-719d-0e6ccee3119a/test-blob-c8221fdb-a167-5bcb-3b01-683b586bb6bc

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
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-copy-id: 3ec793bb-7977-40ce-a4f4-00a7a5fbdff4
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-97cbe8b6-91e3-f111-719d-0e6ccee3119a/test-blob-7c6aead9-dabe-2d37-254c-904df7a89ad5?sv=2027-03-07&se=2026-11-12T01%3A48%3A33Z&sr=b&sp=r&sig=sh59qeSCL4QB5WKD%2BUysBoDqO2TMvLd1WYv26IN%2BQIY%3D
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2235B7FDE3F6C00"
content-md5: kvLEqk7yJHsA9WLGhRIGZg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6d9b9e65-80de-4c95-acc3-2567d7f27d8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-97cbe8b6-91e3-f111-719d-0e6ccee3119a?restype=container

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
x-ms-request-id: 5d9daa0e-debf-4e87-ac5c-98530724096d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

