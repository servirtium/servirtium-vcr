## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-eafe52f6-29b0-5b56-9baf-23ea2a62e1ff?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_AccessConditions_BinaryData
now: 2026-11-12T00:46:34.5016530+00:00

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
etag: "0x1E0FDFA63AF9240"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db6cc8b0-9643-4f4d-8101-69ed9c182b7c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-eafe52f6-29b0-5b56-9baf-23ea2a62e1ff/test-blob-46182bb5-29f8-17e2-18fb-a14d31743e5e

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
/kVohw3Ov6RkiYf7W8y3ExzoP3v4g7SSxcY1Hf3D5Ra+RtuWHnUzKJJZhiaiWv/O+A/OQiJlB3qR
1sJHmKKnoKNwPRTxIfWmtBfonv2N8GrGZiXu9KP0WD9hBEez7I/wsuWCMh3q3dcaKI0LfGl8A+ZX
gDF8uKsAfOTVkByt88iH+OsYC75N3IhO08wW6NvW5AFhW2tec/k5grY4FU27bDTEg4R+ZPgoCqOo
LuTf6ZMI/6saS5dcKYTx3ogHFMc7k2eXUmVXV4AIOVDItUUVWpkjLxWioCGdZ1oAjYVwIPXcbZt9
R5YtsacqERFHlHM/3ITu5OWxmPJG+usLV8r6mBla60iplxIC9X1ud44PVdLmwLEBgTsQK9SoN02r
IlrcL3n47KkqlURx7O9nQiBkN6QYJJYZ+RfdSsBzAWDFVtIjkkcVFmkpuytsj5RMqOizRACok/7D
wjZhGqHpt5TkrJUcRLDYTiA772hrrWmCkaLXv7xfHMPUX88RtPvIQASXh+P/L2Q42vXfbaSWWBXM
3on/EffXhI/SSOTgx5okcq5j0yWFg2I9n+THgK8fPQe6RNVyyC4NwANULeaAVxNbuvr1M4TvR1on
wXESDwTfsgrcJYLEsap/VRMiMFZ7vUfRa8W1KQqCy/16Swe9+7D+dXrcozKRlghQdd1wzBYEqwQq
QKQ/KogAWVqFSWaiwlpjJLvcnhkVQNS8ZLQtEf7mdp8CkroMv0rx20rXC0yirbKCDahaJwzrFADP
gsXU0kdbntPGoC+gV2Rx68PPPTSHGbcBqgRVjE+SF325PDyEHAgCfG153A2C4bZE6TxJG9fMR2kO
0ihDBRGDM4iy5hon7M66zcHGDT2qfshNEaISSfym7fTTdUngvnZb9aiE0PubHPxuj04WBTosZFRf
9vRvceqMC/kmVHeE2Q9LaxeUJa3NsfWmpLmtkOi6pxH1gceC7IS++MUBdciF6bY/ypoilz+mkUT/
yMwx3nsRbKxljldHyX6T1SzozDwsIboCbsVOlw/RT/CDgiS3jRpK8AkbH1tf9wEbj8ITvcUI0qcS
Lm+1wtSckz5mxEZa20gRntszEAFeo3bDMghNvpIrerB8pV+qlC00f4sc+DO7wLN5AR/p1MGls4r4
8ZDLT9SsO0mV3TXpZwmu/pF1QqtDCHFV071zQaXu1vLUsqKdaS+2cLzqJeN9kJoVO9YwL3Heteke
dnsXOfmjpwZDFLRmEJVhv9HvWeKO10MjXQbPvqeA9vy5f/O0nzfCRn7cOXvlripBznCf71wHj544
89vz1Ohfwx64rZGhrR+aLRJksp3HPq/bjfA24Aegse9UfKtbznKVfHZdLACZnyBQBcFJo90AcA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25DE33A6285F420"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
content-md5: GM1ymguKdV+U6KBh71Le+g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f57caad-9f4d-43af-8088-f9f0c726369a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-eafe52f6-29b0-5b56-9baf-23ea2a62e1ff/test-blob-46182bb5-29f8-17e2-18fb-a14d31743e5e

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:34 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x25DE33A6285F420"
content-md5: GM1ymguKdV+U6KBh71Le+g==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b98ab42f-0d29-4a9d-beab-616e5d9b6561
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: GM1ymguKdV+U6KBh71Le+g==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
/kVohw3Ov6RkiYf7W8y3ExzoP3v4g7SSxcY1Hf3D5Ra+RtuWHnUzKJJZhiaiWv/O+A/OQiJlB3qR
1sJHmKKnoKNwPRTxIfWmtBfonv2N8GrGZiXu9KP0WD9hBEez7I/wsuWCMh3q3dcaKI0LfGl8A+ZX
gDF8uKsAfOTVkByt88iH+OsYC75N3IhO08wW6NvW5AFhW2tec/k5grY4FU27bDTEg4R+ZPgoCqOo
LuTf6ZMI/6saS5dcKYTx3ogHFMc7k2eXUmVXV4AIOVDItUUVWpkjLxWioCGdZ1oAjYVwIPXcbZt9
R5YtsacqERFHlHM/3ITu5OWxmPJG+usLV8r6mBla60iplxIC9X1ud44PVdLmwLEBgTsQK9SoN02r
IlrcL3n47KkqlURx7O9nQiBkN6QYJJYZ+RfdSsBzAWDFVtIjkkcVFmkpuytsj5RMqOizRACok/7D
wjZhGqHpt5TkrJUcRLDYTiA772hrrWmCkaLXv7xfHMPUX88RtPvIQASXh+P/L2Q42vXfbaSWWBXM
3on/EffXhI/SSOTgx5okcq5j0yWFg2I9n+THgK8fPQe6RNVyyC4NwANULeaAVxNbuvr1M4TvR1on
wXESDwTfsgrcJYLEsap/VRMiMFZ7vUfRa8W1KQqCy/16Swe9+7D+dXrcozKRlghQdd1wzBYEqwQq
QKQ/KogAWVqFSWaiwlpjJLvcnhkVQNS8ZLQtEf7mdp8CkroMv0rx20rXC0yirbKCDahaJwzrFADP
gsXU0kdbntPGoC+gV2Rx68PPPTSHGbcBqgRVjE+SF325PDyEHAgCfG153A2C4bZE6TxJG9fMR2kO
0ihDBRGDM4iy5hon7M66zcHGDT2qfshNEaISSfym7fTTdUngvnZb9aiE0PubHPxuj04WBTosZFRf
9vRvceqMC/kmVHeE2Q9LaxeUJa3NsfWmpLmtkOi6pxH1gceC7IS++MUBdciF6bY/ypoilz+mkUT/
yMwx3nsRbKxljldHyX6T1SzozDwsIboCbsVOlw/RT/CDgiS3jRpK8AkbH1tf9wEbj8ITvcUI0qcS
Lm+1wtSckz5mxEZa20gRntszEAFeo3bDMghNvpIrerB8pV+qlC00f4sc+DO7wLN5AR/p1MGls4r4
8ZDLT9SsO0mV3TXpZwmu/pF1QqtDCHFV071zQaXu1vLUsqKdaS+2cLzqJeN9kJoVO9YwL3Heteke
dnsXOfmjpwZDFLRmEJVhv9HvWeKO10MjXQbPvqeA9vy5f/O0nzfCRn7cOXvlripBznCf71wHj544
89vz1Ohfwx64rZGhrR+aLRJksp3HPq/bjfA24Aegse9UfKtbznKVfHZdLACZnyBQBcFJo90AcA==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-eafe52f6-29b0-5b56-9baf-23ea2a62e1ff?restype=container

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
x-ms-request-id: a86524a8-b3f8-45c0-8f36-47fcbbb3731b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-2735ce9f-1169-41af-eecf-e5db45560e12?restype=container

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
etag: "0x21C31147380C740"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b2d9e70-4e5a-4bed-b1fe-6891f780493c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-2735ce9f-1169-41af-eecf-e5db45560e12/test-blob-432e5d33-5e9e-268e-88bf-e91d50029e17

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Uwv2L7YsnVOURhQE91Lv3MZjqtSn2QejfNZYKUMG0cLtj/klfg6oczHikyL9qkqb3wgU4qs5anoD
UrPf1HQQjXVSF2hZyV63ujajxUbkptKMvEk68u8WsyR/IitbyZ+90gWtq5PhQhWqXCd1lqUzH6vg
Uhcq1ZuFO2RD2acyXPGX5vNANvs/qnkzkJXIoR1/SwKAenaHkvxqKG8unmhudwA13a+y8+mvoaee
90QGvZpGxI6lsuF6EFT21Q2MEAwRxRmUksNtzVcZ0NnO6Zu4ZGvU59rayMQeu8xbux7bI5GbjDEr
cSrX2fc2i+EIqye4PnCiuCgxN/xUdtf2EhE5Pq1HM1xpjPNA/Q7jozzjFQ+lonytOGpoaVU01vtT
4Mfl/U0zwHjLTrF9YbsZTpO/cWDHUW+UjAVC38kGNbb47RxH/abvr1WX2lPLL9evThvBdWWai49X
UHBI8eGuxBn7hXSe0lDt0MILMHcbyVwuk5CuRMBQXWGM7601p75z6BU5z6piEHzK1KSjj1oYO4YT
GV5RAIBZqicSEuKjuCkDl0hi4fmyy4IU5HAbrc4GdLQmIY1gIueU4CWCUP6ZJxt7n/cStlmNYU7b
PBwPPvxZC50ufJabo3VgzQHUL3qDe71UoA7W9L5amb8/hOXLhKIoKUVhaqqE3/uBselYuDHTWMFe
u53ughff1OPXXB+QlEhfrAY1IhATz8ESVULVAuGObCsjbMkEOqYtgpXGrYLc8R2h+AsrnTaxS+zc
2y3UCdICSfDzbSh+W3JfCKB6TCE+NmMlNAnVYs71ciDdKF55WHjDxGSR6YT0Ip2Zy5WWNv/KnaXJ
r9XILeYh/vsHoTIT5q8ot4i8rU3fMBFsPJY5XzshEoq5r6mi+pd9b+qJ7YBqheXmbn53DfBY6n/D
XPBP6J6/5Y+nWjcFhbzxPj1iVkKRAbaxUvG9qgSaYMUq3p2mLodMyQjxwyqu4OjBhs6y9pM8Mls6
npWtATuKDfly26cfShC1FYw6oD6LA3II+yM152ox7axCa4/xnsjMZrYxPAVBoju9/OAHApEdrpsj
pQYXVSWPQO373N6BxHfEbTqIWsdtx1nod+qKKusaJL30zvnCtRCQovsXRsVcPDhoQpRXlVTUtt2s
L906BBYC4LghjfZ+Argp97jLVYGTizuyIedXwo9pIBgbFYUzVp3kFGUNOq9C6kDbLp6bCGBcGaOi
iOIuqx4ouGzeY+0y9aEa5kAbhlGLbzene5TxzRe3vvvikc66tmlH5IJCZIdTqDj9gCEfQJJSFhir
hy+KN+tVJqTxT2TSYDDX1KLOSQuwU9Jb9Ez2mH1okHq1Dy45vayX7T3iYljUKiDwR2zwg80M+g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26DC15EAD466620"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
content-md5: Q50Hgdrq5xBJ+BvuDXGg2w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe829a44-95d0-4534-9d46-9cdef8046b0f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-2735ce9f-1169-41af-eecf-e5db45560e12/test-blob-432e5d33-5e9e-268e-88bf-e91d50029e17

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:46:34 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:34 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x26DC15EAD466620"
content-md5: Q50Hgdrq5xBJ+BvuDXGg2w==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3984d96b-67e7-46fc-8d02-8528094fc5f7
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: Q50Hgdrq5xBJ+BvuDXGg2w==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
Uwv2L7YsnVOURhQE91Lv3MZjqtSn2QejfNZYKUMG0cLtj/klfg6oczHikyL9qkqb3wgU4qs5anoD
UrPf1HQQjXVSF2hZyV63ujajxUbkptKMvEk68u8WsyR/IitbyZ+90gWtq5PhQhWqXCd1lqUzH6vg
Uhcq1ZuFO2RD2acyXPGX5vNANvs/qnkzkJXIoR1/SwKAenaHkvxqKG8unmhudwA13a+y8+mvoaee
90QGvZpGxI6lsuF6EFT21Q2MEAwRxRmUksNtzVcZ0NnO6Zu4ZGvU59rayMQeu8xbux7bI5GbjDEr
cSrX2fc2i+EIqye4PnCiuCgxN/xUdtf2EhE5Pq1HM1xpjPNA/Q7jozzjFQ+lonytOGpoaVU01vtT
4Mfl/U0zwHjLTrF9YbsZTpO/cWDHUW+UjAVC38kGNbb47RxH/abvr1WX2lPLL9evThvBdWWai49X
UHBI8eGuxBn7hXSe0lDt0MILMHcbyVwuk5CuRMBQXWGM7601p75z6BU5z6piEHzK1KSjj1oYO4YT
GV5RAIBZqicSEuKjuCkDl0hi4fmyy4IU5HAbrc4GdLQmIY1gIueU4CWCUP6ZJxt7n/cStlmNYU7b
PBwPPvxZC50ufJabo3VgzQHUL3qDe71UoA7W9L5amb8/hOXLhKIoKUVhaqqE3/uBselYuDHTWMFe
u53ughff1OPXXB+QlEhfrAY1IhATz8ESVULVAuGObCsjbMkEOqYtgpXGrYLc8R2h+AsrnTaxS+zc
2y3UCdICSfDzbSh+W3JfCKB6TCE+NmMlNAnVYs71ciDdKF55WHjDxGSR6YT0Ip2Zy5WWNv/KnaXJ
r9XILeYh/vsHoTIT5q8ot4i8rU3fMBFsPJY5XzshEoq5r6mi+pd9b+qJ7YBqheXmbn53DfBY6n/D
XPBP6J6/5Y+nWjcFhbzxPj1iVkKRAbaxUvG9qgSaYMUq3p2mLodMyQjxwyqu4OjBhs6y9pM8Mls6
npWtATuKDfly26cfShC1FYw6oD6LA3II+yM152ox7axCa4/xnsjMZrYxPAVBoju9/OAHApEdrpsj
pQYXVSWPQO373N6BxHfEbTqIWsdtx1nod+qKKusaJL30zvnCtRCQovsXRsVcPDhoQpRXlVTUtt2s
L906BBYC4LghjfZ+Argp97jLVYGTizuyIedXwo9pIBgbFYUzVp3kFGUNOq9C6kDbLp6bCGBcGaOi
iOIuqx4ouGzeY+0y9aEa5kAbhlGLbzene5TxzRe3vvvikc66tmlH5IJCZIdTqDj9gCEfQJJSFhir
hy+KN+tVJqTxT2TSYDDX1KLOSQuwU9Jb9Ez2mH1okHq1Dy45vayX7T3iYljUKiDwR2zwg80M+g==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-2735ce9f-1169-41af-eecf-e5db45560e12?restype=container

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
x-ms-request-id: 64a3c212-90f4-4fa3-b359-ca7e25cd8c44
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-ce5b37f5-f1cd-8779-ca2c-055011780dad?restype=container

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
etag: "0x21060EA01DDC9A0"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 25e13b95-58a1-475c-8721-e5cb5f3de001
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-ce5b37f5-f1cd-8779-ca2c-055011780dad/test-blob-5236c7e3-3a20-3568-4441-b10d57698695

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
qRX63I5o+Y6vvNqZ6g3Q7qlU+0xxPixC46d5clk9FQ+yO3M7B8KIjD7NHhEX4Jy8XBemvH3AO2ro
uPjn74Y1cabK566ZlOfnzG4OpCAaKgMLvBZClliS8QAIU07JoZ23l6xrTfjtI8cvvvAOspdKzY30
3DJw89pNN/aukEGYHirRVgxzr90LHZlOEthohD5pvoXA1cVqRqTRHRYCPpOGlqDGPVyK1x2w6b6Z
IuAC5bK3RdK82EhkZg9ooZLHCN8GyHs3okbi3uZnD+wH0CTDzjdjSvjAyr5YYdZMIjWL6eDfk1ll
y0Js1WfrVMhcXZbrpNJaY73mRf6930Bwlbux2yYLKDzLXgP093WR1XX1+wRAYX1iMIUj+E5bp+wC
+z+rOniiUTRZIEXPZWxIVHCIx+M8MDQ+Tqug6C/ub7YW8vs25pr8U6rP5kE4k8oZ26Te098IxssK
bezNAWkFa7CPuHJxEW7Vi3Q5bErzBrvghwyKD5zXDiwvK3muL1FAynqQqNpYp8k2CEdrz1mBF2cx
7XpcelwUuKpGQub0Jlwj+KLPY13giN9DVAZUaz7SrhQRfULW5E8dfPAwEWXiQeLrSNa3sbMKUGSa
GCZVv0xrc5TR4qkZTBRSsudsr3Z6YBMkaSNnG/xgByzdPMspyLykxJ7REF440fzCZf/MnaDuH7cT
MFUpA1eXcdt8PBBIKekqyOvXqVC065cnpbb9k2qL7hwUFpdme8BGOZ+DvJXrejsVotW1FnZnXkW+
AV6hmt1x8E3zNBNSw0wqkW+wMS8COyp65/GU1timrLdSqHlipZ/CEstH+EYnw96Ii4UGtiwVu8Y0
JrLs3Bp1TYdb/xrTx+vQ7h9jukPkUiMSC0pSn/WKPO2yLn7s1TWx0qq/zMPEtcOZNsgNsQGDUNOP
2tHQIq6R0MItIJlt4xjpsueYJIZfTlaGuGktfYrrL92qXftk4K/8LfsBlpQpLFKvI/8Z6itNL4t6
SWpFZFM3QfG7w4YdhdE4nPeLXrfBXIwWfVqL0kSyXS5v6ZdFt8mnyVSjbWjMkp0t4E4zwdDUue3d
Lub5rG+sCWZYrZw68+Uu45VjHu4jSuu8XfH2f5tdmzCqZ4jirh3l92QCdOUB8+1oBd07cJr+uuP7
PE59tYnK+hFrkItcSzR3fSeJINYGumoEjXm+IiuVq62l53LOaEHaOHnTlmNhDLmow/JzdJkM9YLk
eCcQC9jm1uTetmTCqBXlruhdMiQGooHAFV44ITcTmPHv6u8ayiyh7cB+g1VU5hrcjsWwr8Je3dam
T/Z6rrSsyx5z0r4my+S7u0Vjhx8rbC5DW5NxYugvkQwYc3s1Jj4L0bg34RNctsLh9PN9+lW3eg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23C091BA957AC20"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
content-md5: Ss6JIMzW8FMmjUl8YFebzw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64cb7cfa-857d-4b31-b4e9-ef0cf6349b61
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-ce5b37f5-f1cd-8779-ca2c-055011780dad/test-blob-5236c7e3-3a20-3568-4441-b10d57698695

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:46:34 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:34 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x23C091BA957AC20"
content-md5: Ss6JIMzW8FMmjUl8YFebzw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 135ee7c1-10d5-4688-8782-ea702cc5d032
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: Ss6JIMzW8FMmjUl8YFebzw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
qRX63I5o+Y6vvNqZ6g3Q7qlU+0xxPixC46d5clk9FQ+yO3M7B8KIjD7NHhEX4Jy8XBemvH3AO2ro
uPjn74Y1cabK566ZlOfnzG4OpCAaKgMLvBZClliS8QAIU07JoZ23l6xrTfjtI8cvvvAOspdKzY30
3DJw89pNN/aukEGYHirRVgxzr90LHZlOEthohD5pvoXA1cVqRqTRHRYCPpOGlqDGPVyK1x2w6b6Z
IuAC5bK3RdK82EhkZg9ooZLHCN8GyHs3okbi3uZnD+wH0CTDzjdjSvjAyr5YYdZMIjWL6eDfk1ll
y0Js1WfrVMhcXZbrpNJaY73mRf6930Bwlbux2yYLKDzLXgP093WR1XX1+wRAYX1iMIUj+E5bp+wC
+z+rOniiUTRZIEXPZWxIVHCIx+M8MDQ+Tqug6C/ub7YW8vs25pr8U6rP5kE4k8oZ26Te098IxssK
bezNAWkFa7CPuHJxEW7Vi3Q5bErzBrvghwyKD5zXDiwvK3muL1FAynqQqNpYp8k2CEdrz1mBF2cx
7XpcelwUuKpGQub0Jlwj+KLPY13giN9DVAZUaz7SrhQRfULW5E8dfPAwEWXiQeLrSNa3sbMKUGSa
GCZVv0xrc5TR4qkZTBRSsudsr3Z6YBMkaSNnG/xgByzdPMspyLykxJ7REF440fzCZf/MnaDuH7cT
MFUpA1eXcdt8PBBIKekqyOvXqVC065cnpbb9k2qL7hwUFpdme8BGOZ+DvJXrejsVotW1FnZnXkW+
AV6hmt1x8E3zNBNSw0wqkW+wMS8COyp65/GU1timrLdSqHlipZ/CEstH+EYnw96Ii4UGtiwVu8Y0
JrLs3Bp1TYdb/xrTx+vQ7h9jukPkUiMSC0pSn/WKPO2yLn7s1TWx0qq/zMPEtcOZNsgNsQGDUNOP
2tHQIq6R0MItIJlt4xjpsueYJIZfTlaGuGktfYrrL92qXftk4K/8LfsBlpQpLFKvI/8Z6itNL4t6
SWpFZFM3QfG7w4YdhdE4nPeLXrfBXIwWfVqL0kSyXS5v6ZdFt8mnyVSjbWjMkp0t4E4zwdDUue3d
Lub5rG+sCWZYrZw68+Uu45VjHu4jSuu8XfH2f5tdmzCqZ4jirh3l92QCdOUB8+1oBd07cJr+uuP7
PE59tYnK+hFrkItcSzR3fSeJINYGumoEjXm+IiuVq62l53LOaEHaOHnTlmNhDLmow/JzdJkM9YLk
eCcQC9jm1uTetmTCqBXlruhdMiQGooHAFV44ITcTmPHv6u8ayiyh7cB+g1VU5hrcjsWwr8Je3dam
T/Z6rrSsyx5z0r4my+S7u0Vjhx8rbC5DW5NxYugvkQwYc3s1Jj4L0bg34RNctsLh9PN9+lW3eg==
```

## Interaction 11: DELETE /devstoreaccount1/test-container-ce5b37f5-f1cd-8779-ca2c-055011780dad?restype=container

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
x-ms-request-id: 2b43a382-4a16-4895-85b5-456353110a0f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-66b55706-8af4-e71b-a4d0-906df4b196b6?restype=container

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
etag: "0x23B8004531E2B00"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c793285f-2a8d-4fcd-a5dd-e39fa371ccca
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-66b55706-8af4-e71b-a4d0-906df4b196b6/test-blob-5a652502-26fc-3c84-db9c-8370b229429f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
YfiXbe/s65dPAZ3SqqlreG5edqKfUIZYrE+uT6r6QJKq+6xe0RilGmweFvLtSDz7ZRj/ljr0FxBy
PsGgPZzsVcAKJ6/9DKZWuVw2gDmUa2MTsumR+qpXtuOb7JJXBNzQMsEx4iGN/lhxqdzevZbW3tNd
jYuyW1oWs3DLYSAT/rR/ZU54YohChbSRH1HOePhNxA6/+ndRHtZmGy+wwpw4XqonXldHXntKGgfW
IDsJSDp4fZwSVAQ8Lkd3EkdZkcMXWMGnphmhBWaSdN9wev2bXNP0OEQAJgml6jAQz0s08YlEvsd6
YaEh13g1f+AlzLNK3LV0ZVl+FzK3ArzpkDUbXoNWK7w1Ifsx02HMyqYpfx19xfOVv4wvxaeVwl/k
N0ZCGiBcz6D3Fbu6QpH3sk2MjoKea8tChZ/2JmYUoF+cTJsbia+FzLB8hbA42336OBJaCDPcRst6
/5WBZqk64nRbHvX23CidBsLSIeYaCakh/O5TupcrvwbPoIoaA2YHQqI73L2HA1vqvQJxCiTlYPXr
X2m65yjdL17vJzueggJbyt9D3i3rmviSaf2VurTh6UCUL6P8TFt6XqxemNwgSzr/FT9FooHI/8Vw
KH4qSHWqDT37ClNeX36EyICAjQEcch3ClaV1nEe+yy/ejCTcTxY3tIueJEHnoLbBwdkBSHLDVLZg
aLLQNXH2PT4kgNJap3hpSNh2fU3c2/Xvs9ptvIK8GjhtfOdkZ38ZqOYCwyDjZhphmP+aTNZog4y9
4IGWiYG8Z2Wa7CqQBeFZXNVm2hjUC03ACySDIs5hBflbpob+gx5lRlu7SHnv0JIdQfABAal06NQz
1n1cOEWXOecxNV5bWtm2AZS8GcPT0DuRZeDeYANQ5r6xyq2hCA0WJA+SvpozwuYWSgAUt88RYAVC
y9Nkudnj4U6gqZArFfiHpvW0QBKgXaL6xxUDOy/un2moXj05sWo1r91MkxlV6jQIjRHaXR/yoW0w
avHD4KYfsgkmg7a6TfSKfpE1U8qJpNzh+60dFEJJtb3PCEd5cs43LeAPL2Z9TUAdT96OvU2ip8UU
4eX4AZ3G3c756kSsEQzC/ibpeXV1Y61tAMRku/dvLWGCZJDpPitCSVGYg2L8cD7Sy78nuC5Qn343
iwDZYiHXir3jKqx72b/7pjAj3d9LcJCFkfA3SHQyMsUSsrMqaeYwwPmkGUaRVvIAKxL+LMGe6xpw
U9Axn0JJsPjnaSYL0D1J8xzmp1dK8zv9NxxiNAUDc8eYuRYW/iG2WmhNqu3L9FvUtDmkuETCJl+V
M2gm53zy4/ZfchYmM/T7L0zv/ElNMULBjX/LX7qD1pO2gMq4kHLsW8f2bIFErYFFqYn30yoWRw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21D06E0781E7360"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
content-md5: 6xt0IiMjNV61jfRXHmaGeg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95784d11-327a-49fd-b368-6fa5cb268006
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-66b55706-8af4-e71b-a4d0-906df4b196b6/test-blob-5a652502-26fc-3c84-db9c-8370b229429f

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
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21D06E0781E7360"
content-md5: 6xt0IiMjNV61jfRXHmaGeg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6f4f1553-db1a-439e-a894-7f948ee342d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:34 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-66b55706-8af4-e71b-a4d0-906df4b196b6/test-blob-5a652502-26fc-3c84-db9c-8370b229429f

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x21D06E0781E7360"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:34 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x21D06E0781E7360"
content-md5: 6xt0IiMjNV61jfRXHmaGeg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0837bd86-fc11-4e20-be9b-c9887de5f265
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 6xt0IiMjNV61jfRXHmaGeg==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
YfiXbe/s65dPAZ3SqqlreG5edqKfUIZYrE+uT6r6QJKq+6xe0RilGmweFvLtSDz7ZRj/ljr0FxBy
PsGgPZzsVcAKJ6/9DKZWuVw2gDmUa2MTsumR+qpXtuOb7JJXBNzQMsEx4iGN/lhxqdzevZbW3tNd
jYuyW1oWs3DLYSAT/rR/ZU54YohChbSRH1HOePhNxA6/+ndRHtZmGy+wwpw4XqonXldHXntKGgfW
IDsJSDp4fZwSVAQ8Lkd3EkdZkcMXWMGnphmhBWaSdN9wev2bXNP0OEQAJgml6jAQz0s08YlEvsd6
YaEh13g1f+AlzLNK3LV0ZVl+FzK3ArzpkDUbXoNWK7w1Ifsx02HMyqYpfx19xfOVv4wvxaeVwl/k
N0ZCGiBcz6D3Fbu6QpH3sk2MjoKea8tChZ/2JmYUoF+cTJsbia+FzLB8hbA42336OBJaCDPcRst6
/5WBZqk64nRbHvX23CidBsLSIeYaCakh/O5TupcrvwbPoIoaA2YHQqI73L2HA1vqvQJxCiTlYPXr
X2m65yjdL17vJzueggJbyt9D3i3rmviSaf2VurTh6UCUL6P8TFt6XqxemNwgSzr/FT9FooHI/8Vw
KH4qSHWqDT37ClNeX36EyICAjQEcch3ClaV1nEe+yy/ejCTcTxY3tIueJEHnoLbBwdkBSHLDVLZg
aLLQNXH2PT4kgNJap3hpSNh2fU3c2/Xvs9ptvIK8GjhtfOdkZ38ZqOYCwyDjZhphmP+aTNZog4y9
4IGWiYG8Z2Wa7CqQBeFZXNVm2hjUC03ACySDIs5hBflbpob+gx5lRlu7SHnv0JIdQfABAal06NQz
1n1cOEWXOecxNV5bWtm2AZS8GcPT0DuRZeDeYANQ5r6xyq2hCA0WJA+SvpozwuYWSgAUt88RYAVC
y9Nkudnj4U6gqZArFfiHpvW0QBKgXaL6xxUDOy/un2moXj05sWo1r91MkxlV6jQIjRHaXR/yoW0w
avHD4KYfsgkmg7a6TfSKfpE1U8qJpNzh+60dFEJJtb3PCEd5cs43LeAPL2Z9TUAdT96OvU2ip8UU
4eX4AZ3G3c756kSsEQzC/ibpeXV1Y61tAMRku/dvLWGCZJDpPitCSVGYg2L8cD7Sy78nuC5Qn343
iwDZYiHXir3jKqx72b/7pjAj3d9LcJCFkfA3SHQyMsUSsrMqaeYwwPmkGUaRVvIAKxL+LMGe6xpw
U9Axn0JJsPjnaSYL0D1J8xzmp1dK8zv9NxxiNAUDc8eYuRYW/iG2WmhNqu3L9FvUtDmkuETCJl+V
M2gm53zy4/ZfchYmM/T7L0zv/ElNMULBjX/LX7qD1pO2gMq4kHLsW8f2bIFErYFFqYn30yoWRw==
```

## Interaction 16: DELETE /devstoreaccount1/test-container-66b55706-8af4-e71b-a4d0-906df4b196b6?restype=container

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
x-ms-request-id: 3d64f014-86eb-4e81-92a6-5c0950876f32
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-82a103d9-c457-7cc0-dffe-86b6318b0269?restype=container

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
etag: "0x243908B67B837A0"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 69e8e5eb-8e62-4bca-aef2-75698fc6a4f3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-82a103d9-c457-7cc0-dffe-86b6318b0269/test-blob-de66cb60-d54e-8056-b120-3239cf195afd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
oDnIkioY7zRCupDkwT3OG2bpHdCIk/A9Zeh7/qDNClCaGc94YK90wRNsP5wz3LuhL2pPR24y4AxJ
iy1BnfGUda9ASqduVrq2dVy8HFRTCYgt2c41fsPhaDnCL9WCMiMi2Mrs85EUM9mwmdIRdcS39oGk
FMMiXvfsX+JtqyflNEI4mkOKZhb3Gab1heTxz/J1CjlT3R5f/3nT/5OvpoeyymSP2dqALY9rrfsd
LdkS+4/v+KDukVYk2JvKt2eCSHIeQ7p/YfYY9d2p6C8iQtKfwAQEv67nwzkNagA+tXYn6WWI/ukf
kpqY1gPCRKknAZXJKvZjfYjEN3+Acff12j9ngv7KmkTogC5qbOiqJH+Q5mhqdYt/xGvcw8dqniCj
ovzDW8KqXGdR4arH+BGfGRP/8IqOimWz572T7dZ9feEOx8nr58i95YoBGZPguMtaPKmzaq6VFBiX
D3QEF26Q1GPIuTFItDJKQgoAjXHR0i7xOLEsyRMzeLKwVNdUuM4ccEQvF/6aEoh3aSijlYemxj1F
E969YwtQlUF/l19b9ok85B0tobswVyYotV/qj+MrCo2aDqXvXgw434K9GnooG3KfZrBqeSSBFby3
lK6rZQVdVIzRwejjTIUQ9ME4czyr/5nsSykywZFpGPnpOMpdjHp8X8btVlqKuxorWYRiSaF/C5QU
vhncK5P7aKnu+hS7smdHvBN1vag/YpAOB2cMBs9XaSw1Sc1gnzMz8u6xnMAFb6YdGoyOCU3r1FyI
zSMr72Lal5HohWmZ5x3fQsu6jsXQCZfB7utCyV/eSXRx19EPBwKL1wQuHOo9gzNvrseCMUaXuMSM
agB3l84yCjz0KBBLzzrJL7fBouythGq30xqYXBgu2R8Mg50BFD82+xKtSFsjI96MuAKP1hbX3uWW
v8Szmq4jxk7wP0ycxxp3iqba/zsPlLA8C6MWngMJNaS4a1V7g2FjiYINMuSR7/DnF0tv/d6qhioT
do4LDSdK5wmn5FzF/AZEdna5AmLMqhuyLoe4mTfFDeQqZw3SWHxawkra6guUIhtFK4do8ITIR8tz
WN6fkk7S4dZ3mpT5ch35Xj8X8sAQHQxscm6wXB1gYiBBXwCduzD8Bwg0HYeGS7hpb5JEsFUKYzrS
Mx/gIYW5Fzd0txIdXKMPG+q42wCE5Se1Ru2KG7LLNvvFyocQG+WDewVQEpOmTBLvNZRqUoc6TU34
KtuXLvyFqYEXV5Ib//8ENWD6NNOTD/rbm+UdYOR0i3w6GPAK60wJy2kSj/WA0zaUZhwnPxl5ZBvg
u5MWZ0icoswV4OYO+UkT8WlqgYAFW8evifrHTExjwLPVKTC582MgdewoavNPhWzTE02wD+Ob2w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F375FDC16586A0"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
content-md5: msdDHQ4o8A3Lt7gNO5ziFg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 118d5919-aa09-40a6-b632-06556a9802ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-82a103d9-c457-7cc0-dffe-86b6318b0269/test-blob-de66cb60-d54e-8056-b120-3239cf195afd

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:34 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1F375FDC16586A0"
content-md5: msdDHQ4o8A3Lt7gNO5ziFg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a057a05b-8140-4063-a6ec-141d67b15497
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: msdDHQ4o8A3Lt7gNO5ziFg==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
oDnIkioY7zRCupDkwT3OG2bpHdCIk/A9Zeh7/qDNClCaGc94YK90wRNsP5wz3LuhL2pPR24y4AxJ
iy1BnfGUda9ASqduVrq2dVy8HFRTCYgt2c41fsPhaDnCL9WCMiMi2Mrs85EUM9mwmdIRdcS39oGk
FMMiXvfsX+JtqyflNEI4mkOKZhb3Gab1heTxz/J1CjlT3R5f/3nT/5OvpoeyymSP2dqALY9rrfsd
LdkS+4/v+KDukVYk2JvKt2eCSHIeQ7p/YfYY9d2p6C8iQtKfwAQEv67nwzkNagA+tXYn6WWI/ukf
kpqY1gPCRKknAZXJKvZjfYjEN3+Acff12j9ngv7KmkTogC5qbOiqJH+Q5mhqdYt/xGvcw8dqniCj
ovzDW8KqXGdR4arH+BGfGRP/8IqOimWz572T7dZ9feEOx8nr58i95YoBGZPguMtaPKmzaq6VFBiX
D3QEF26Q1GPIuTFItDJKQgoAjXHR0i7xOLEsyRMzeLKwVNdUuM4ccEQvF/6aEoh3aSijlYemxj1F
E969YwtQlUF/l19b9ok85B0tobswVyYotV/qj+MrCo2aDqXvXgw434K9GnooG3KfZrBqeSSBFby3
lK6rZQVdVIzRwejjTIUQ9ME4czyr/5nsSykywZFpGPnpOMpdjHp8X8btVlqKuxorWYRiSaF/C5QU
vhncK5P7aKnu+hS7smdHvBN1vag/YpAOB2cMBs9XaSw1Sc1gnzMz8u6xnMAFb6YdGoyOCU3r1FyI
zSMr72Lal5HohWmZ5x3fQsu6jsXQCZfB7utCyV/eSXRx19EPBwKL1wQuHOo9gzNvrseCMUaXuMSM
agB3l84yCjz0KBBLzzrJL7fBouythGq30xqYXBgu2R8Mg50BFD82+xKtSFsjI96MuAKP1hbX3uWW
v8Szmq4jxk7wP0ycxxp3iqba/zsPlLA8C6MWngMJNaS4a1V7g2FjiYINMuSR7/DnF0tv/d6qhioT
do4LDSdK5wmn5FzF/AZEdna5AmLMqhuyLoe4mTfFDeQqZw3SWHxawkra6guUIhtFK4do8ITIR8tz
WN6fkk7S4dZ3mpT5ch35Xj8X8sAQHQxscm6wXB1gYiBBXwCduzD8Bwg0HYeGS7hpb5JEsFUKYzrS
Mx/gIYW5Fzd0txIdXKMPG+q42wCE5Se1Ru2KG7LLNvvFyocQG+WDewVQEpOmTBLvNZRqUoc6TU34
KtuXLvyFqYEXV5Ib//8ENWD6NNOTD/rbm+UdYOR0i3w6GPAK60wJy2kSj/WA0zaUZhwnPxl5ZBvg
u5MWZ0icoswV4OYO+UkT8WlqgYAFW8evifrHTExjwLPVKTC582MgdewoavNPhWzTE02wD+Ob2w==
```

## Interaction 20: DELETE /devstoreaccount1/test-container-82a103d9-c457-7cc0-dffe-86b6318b0269?restype=container

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
x-ms-request-id: 644dcd21-15bf-4c9c-9c74-bd3d9540eadb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

