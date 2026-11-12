## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c09f85c6-b5c8-0242-60ac-1eb0ba4cbae5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_Overloads
now: 2026-11-12T00:47:55.1288953+00:00

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
etag: "0x258D84B0DD6A820"
last-modified: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc662c1d-500b-4347-91cc-736c07c4b8f3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c09f85c6-b5c8-0242-60ac-1eb0ba4cbae5/test-blob-22e30e71-e0ef-fa8f-c5a7-fbb9e45f25b0

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
Y1MSo2iYziZNHfuriRQ45R6d+Xkk9hHQN40TTuhFvK5kn7vGbaYaLrZ4c6u6l3hMcziSHFNAwW1B
QmvbhYA+B2BNR+lYcXh3gsrDq4JmFqAUx9qvs59aI95NhSs6P6k2OmtKbE+P8wHAGpmIfRbr2yvL
xr2lj1PB8iMKCuxNPEMhjHEXG6pQhNPZ7pgG0qbIYqr/b3jrkKsXiXorhegVc95VZ/Cl07+Be0Hq
zKC7uiB8QahCTc3KNfzF/5IvJP/rxHu6sGq2I47qfvQ3AcQLXM5ZrkNA0iYRizH039QtUVZC/ggk
AQq1xh4ZV87ZkzQ3uqLD1na8q/FVqSQ5wkS6vS2e9AK85lvDpOgkJntXN/f9vCQxaXvfhlMWz1fl
fAPaX5mhO54xetRHADGNl4R1/XEtOwUfiFOyvm6vpRcD3SfkSsfhtvxYy0FQ6mlJUu/OodHmuED+
utdF73wwgtW8QyIJqUy9k0d01G/Dz53qaGx/4ARFHCXn5pDwnMZ/KElsk6ZHP6miEQ2JcuTQOus5
W4YQsaHQdyb9IsK8zPeA9KsmVzv2oyjC3M/2u6pAFqultkA/b3eomxx/SRzm5kQVCX05quOvQrde
TdTS2bt8vAwWFha2QIUzfbsfdlkL3PWK4bIsB2vI9XOI4SGj1sFhA40Qz88uXsj4BS0nkMteUnHf
R/gIT7WhTSGiLl5kkKb5vnPM+wwlXILqMwE9oWWnKo+vw47JWLPYboGuizBplHSGLtJYklZkuet1
HhuzZKy7+gPPtMwYMGW/9I2KdtBRgJ+Nt3OTT5g5SgqjUzmXJArV85Etmt+nbv5smJ3I2UIbJJ58
Jaw5J6tqlWrCdNwrKM+CtYM+JObA5Uh1J7b6cHDHhy+bG/5dm8vlwgV15fkhQHDORSS/3P+3u0Bk
xAD0cCT5++ytkAzQJRm3WGLgSgBOU+ZFKytMCKsv41+++NfK8VHgfOoNdLBk/SAKB4Od13FAFXAa
rkT5rPNBfaysEixC7WcQAM4WQd824S4KQQAnkgzufuNmsEIN58/3zPYDt+vzyBocjdaiKdSR480W
7mryGeugvpNJ2zwlAhj+H3XpMipCF3nlCwQ1S1QO1cx19vlkBLIKY/lXquzd94q+owpfqLGi1Nfx
DA7manI/OwZvrwwfmhrD3s4x6myNBxR6d6dJry0b0iIic/ejJPmGGG/mbkd+nwnwnMnicelqZAT6
bPPK9YvYVNzp/SYiH7nVqtH9ppnM/NeeWRJjOGE4tw/zqbgGuyPjDRlqlKLjzXwQDMYYbL1qLW8b
LJt5dRx7sEUXL3YBz+6tGpmAYmc1u4yVUyyaIEtRiHtI6o+IaZf97uRcy50GDjzYalIk6ssH5Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x237EC734557F3E0"
last-modified: Thu, 12 Nov 2026 00:47:55 GMT
content-md5: qxF1bp1dpU0jYsQ1IJJFVQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c76afb2e-1f04-4b14-9110-695ba56a5447
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-c09f85c6-b5c8-0242-60ac-1eb0ba4cbae5/test-blob-22e30e71-e0ef-fa8f-c5a7-fbb9e45f25b0

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
last-modified: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:55 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x237EC734557F3E0"
content-md5: qxF1bp1dpU0jYsQ1IJJFVQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d8f9395-5919-479b-91d6-901240be6915
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: qxF1bp1dpU0jYsQ1IJJFVQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
Y1MSo2iYziZNHfuriRQ45R6d+Xkk9hHQN40TTuhFvK5kn7vGbaYaLrZ4c6u6l3hMcziSHFNAwW1B
QmvbhYA+B2BNR+lYcXh3gsrDq4JmFqAUx9qvs59aI95NhSs6P6k2OmtKbE+P8wHAGpmIfRbr2yvL
xr2lj1PB8iMKCuxNPEMhjHEXG6pQhNPZ7pgG0qbIYqr/b3jrkKsXiXorhegVc95VZ/Cl07+Be0Hq
zKC7uiB8QahCTc3KNfzF/5IvJP/rxHu6sGq2I47qfvQ3AcQLXM5ZrkNA0iYRizH039QtUVZC/ggk
AQq1xh4ZV87ZkzQ3uqLD1na8q/FVqSQ5wkS6vS2e9AK85lvDpOgkJntXN/f9vCQxaXvfhlMWz1fl
fAPaX5mhO54xetRHADGNl4R1/XEtOwUfiFOyvm6vpRcD3SfkSsfhtvxYy0FQ6mlJUu/OodHmuED+
utdF73wwgtW8QyIJqUy9k0d01G/Dz53qaGx/4ARFHCXn5pDwnMZ/KElsk6ZHP6miEQ2JcuTQOus5
W4YQsaHQdyb9IsK8zPeA9KsmVzv2oyjC3M/2u6pAFqultkA/b3eomxx/SRzm5kQVCX05quOvQrde
TdTS2bt8vAwWFha2QIUzfbsfdlkL3PWK4bIsB2vI9XOI4SGj1sFhA40Qz88uXsj4BS0nkMteUnHf
R/gIT7WhTSGiLl5kkKb5vnPM+wwlXILqMwE9oWWnKo+vw47JWLPYboGuizBplHSGLtJYklZkuet1
HhuzZKy7+gPPtMwYMGW/9I2KdtBRgJ+Nt3OTT5g5SgqjUzmXJArV85Etmt+nbv5smJ3I2UIbJJ58
Jaw5J6tqlWrCdNwrKM+CtYM+JObA5Uh1J7b6cHDHhy+bG/5dm8vlwgV15fkhQHDORSS/3P+3u0Bk
xAD0cCT5++ytkAzQJRm3WGLgSgBOU+ZFKytMCKsv41+++NfK8VHgfOoNdLBk/SAKB4Od13FAFXAa
rkT5rPNBfaysEixC7WcQAM4WQd824S4KQQAnkgzufuNmsEIN58/3zPYDt+vzyBocjdaiKdSR480W
7mryGeugvpNJ2zwlAhj+H3XpMipCF3nlCwQ1S1QO1cx19vlkBLIKY/lXquzd94q+owpfqLGi1Nfx
DA7manI/OwZvrwwfmhrD3s4x6myNBxR6d6dJry0b0iIic/ejJPmGGG/mbkd+nwnwnMnicelqZAT6
bPPK9YvYVNzp/SYiH7nVqtH9ppnM/NeeWRJjOGE4tw/zqbgGuyPjDRlqlKLjzXwQDMYYbL1qLW8b
LJt5dRx7sEUXL3YBz+6tGpmAYmc1u4yVUyyaIEtRiHtI6o+IaZf97uRcy50GDjzYalIk6ssH5Q==
```

## Interaction 3: GET /devstoreaccount1/test-container-c09f85c6-b5c8-0242-60ac-1eb0ba4cbae5/test-blob-22e30e71-e0ef-fa8f-c5a7-fbb9e45f25b0

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:55 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x237EC734557F3E0"
content-md5: qxF1bp1dpU0jYsQ1IJJFVQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 42e7deba-9be8-42d5-8545-1830786ee56b
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: qxF1bp1dpU0jYsQ1IJJFVQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
Y1MSo2iYziZNHfuriRQ45R6d+Xkk9hHQN40TTuhFvK5kn7vGbaYaLrZ4c6u6l3hMcziSHFNAwW1B
QmvbhYA+B2BNR+lYcXh3gsrDq4JmFqAUx9qvs59aI95NhSs6P6k2OmtKbE+P8wHAGpmIfRbr2yvL
xr2lj1PB8iMKCuxNPEMhjHEXG6pQhNPZ7pgG0qbIYqr/b3jrkKsXiXorhegVc95VZ/Cl07+Be0Hq
zKC7uiB8QahCTc3KNfzF/5IvJP/rxHu6sGq2I47qfvQ3AcQLXM5ZrkNA0iYRizH039QtUVZC/ggk
AQq1xh4ZV87ZkzQ3uqLD1na8q/FVqSQ5wkS6vS2e9AK85lvDpOgkJntXN/f9vCQxaXvfhlMWz1fl
fAPaX5mhO54xetRHADGNl4R1/XEtOwUfiFOyvm6vpRcD3SfkSsfhtvxYy0FQ6mlJUu/OodHmuED+
utdF73wwgtW8QyIJqUy9k0d01G/Dz53qaGx/4ARFHCXn5pDwnMZ/KElsk6ZHP6miEQ2JcuTQOus5
W4YQsaHQdyb9IsK8zPeA9KsmVzv2oyjC3M/2u6pAFqultkA/b3eomxx/SRzm5kQVCX05quOvQrde
TdTS2bt8vAwWFha2QIUzfbsfdlkL3PWK4bIsB2vI9XOI4SGj1sFhA40Qz88uXsj4BS0nkMteUnHf
R/gIT7WhTSGiLl5kkKb5vnPM+wwlXILqMwE9oWWnKo+vw47JWLPYboGuizBplHSGLtJYklZkuet1
HhuzZKy7+gPPtMwYMGW/9I2KdtBRgJ+Nt3OTT5g5SgqjUzmXJArV85Etmt+nbv5smJ3I2UIbJJ58
Jaw5J6tqlWrCdNwrKM+CtYM+JObA5Uh1J7b6cHDHhy+bG/5dm8vlwgV15fkhQHDORSS/3P+3u0Bk
xAD0cCT5++ytkAzQJRm3WGLgSgBOU+ZFKytMCKsv41+++NfK8VHgfOoNdLBk/SAKB4Od13FAFXAa
rkT5rPNBfaysEixC7WcQAM4WQd824S4KQQAnkgzufuNmsEIN58/3zPYDt+vzyBocjdaiKdSR480W
7mryGeugvpNJ2zwlAhj+H3XpMipCF3nlCwQ1S1QO1cx19vlkBLIKY/lXquzd94q+owpfqLGi1Nfx
DA7manI/OwZvrwwfmhrD3s4x6myNBxR6d6dJry0b0iIic/ejJPmGGG/mbkd+nwnwnMnicelqZAT6
bPPK9YvYVNzp/SYiH7nVqtH9ppnM/NeeWRJjOGE4tw/zqbgGuyPjDRlqlKLjzXwQDMYYbL1qLW8b
LJt5dRx7sEUXL3YBz+6tGpmAYmc1u4yVUyyaIEtRiHtI6o+IaZf97uRcy50GDjzYalIk6ssH5Q==
```

## Interaction 4: GET /devstoreaccount1/test-container-c09f85c6-b5c8-0242-60ac-1eb0ba4cbae5/test-blob-22e30e71-e0ef-fa8f-c5a7-fbb9e45f25b0

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
last-modified: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:55 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x237EC734557F3E0"
content-md5: qxF1bp1dpU0jYsQ1IJJFVQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b36669c2-017a-4f73-a286-d1979214c7e7
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: qxF1bp1dpU0jYsQ1IJJFVQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
Y1MSo2iYziZNHfuriRQ45R6d+Xkk9hHQN40TTuhFvK5kn7vGbaYaLrZ4c6u6l3hMcziSHFNAwW1B
QmvbhYA+B2BNR+lYcXh3gsrDq4JmFqAUx9qvs59aI95NhSs6P6k2OmtKbE+P8wHAGpmIfRbr2yvL
xr2lj1PB8iMKCuxNPEMhjHEXG6pQhNPZ7pgG0qbIYqr/b3jrkKsXiXorhegVc95VZ/Cl07+Be0Hq
zKC7uiB8QahCTc3KNfzF/5IvJP/rxHu6sGq2I47qfvQ3AcQLXM5ZrkNA0iYRizH039QtUVZC/ggk
AQq1xh4ZV87ZkzQ3uqLD1na8q/FVqSQ5wkS6vS2e9AK85lvDpOgkJntXN/f9vCQxaXvfhlMWz1fl
fAPaX5mhO54xetRHADGNl4R1/XEtOwUfiFOyvm6vpRcD3SfkSsfhtvxYy0FQ6mlJUu/OodHmuED+
utdF73wwgtW8QyIJqUy9k0d01G/Dz53qaGx/4ARFHCXn5pDwnMZ/KElsk6ZHP6miEQ2JcuTQOus5
W4YQsaHQdyb9IsK8zPeA9KsmVzv2oyjC3M/2u6pAFqultkA/b3eomxx/SRzm5kQVCX05quOvQrde
TdTS2bt8vAwWFha2QIUzfbsfdlkL3PWK4bIsB2vI9XOI4SGj1sFhA40Qz88uXsj4BS0nkMteUnHf
R/gIT7WhTSGiLl5kkKb5vnPM+wwlXILqMwE9oWWnKo+vw47JWLPYboGuizBplHSGLtJYklZkuet1
HhuzZKy7+gPPtMwYMGW/9I2KdtBRgJ+Nt3OTT5g5SgqjUzmXJArV85Etmt+nbv5smJ3I2UIbJJ58
Jaw5J6tqlWrCdNwrKM+CtYM+JObA5Uh1J7b6cHDHhy+bG/5dm8vlwgV15fkhQHDORSS/3P+3u0Bk
xAD0cCT5++ytkAzQJRm3WGLgSgBOU+ZFKytMCKsv41+++NfK8VHgfOoNdLBk/SAKB4Od13FAFXAa
rkT5rPNBfaysEixC7WcQAM4WQd824S4KQQAnkgzufuNmsEIN58/3zPYDt+vzyBocjdaiKdSR480W
7mryGeugvpNJ2zwlAhj+H3XpMipCF3nlCwQ1S1QO1cx19vlkBLIKY/lXquzd94q+owpfqLGi1Nfx
DA7manI/OwZvrwwfmhrD3s4x6myNBxR6d6dJry0b0iIic/ejJPmGGG/mbkd+nwnwnMnicelqZAT6
bPPK9YvYVNzp/SYiH7nVqtH9ppnM/NeeWRJjOGE4tw/zqbgGuyPjDRlqlKLjzXwQDMYYbL1qLW8b
LJt5dRx7sEUXL3YBz+6tGpmAYmc1u4yVUyyaIEtRiHtI6o+IaZf97uRcy50GDjzYalIk6ssH5Q==
```

## Interaction 5: DELETE /devstoreaccount1/test-container-c09f85c6-b5c8-0242-60ac-1eb0ba4cbae5?restype=container

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
x-ms-request-id: c8f20156-b3f8-43dd-8305-10aac3262d18
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

