## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e8293c8b-d716-90e4-fe9d-823cdd36741f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).Ctor_AudienceError
now: 2026-11-12T00:47:42.0684907+00:00

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
etag: "0x23BD3419D89D7E0"
last-modified: Thu, 12 Nov 2026 00:47:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aa5b29f5-c91a-4a37-b59b-47431732743f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e8293c8b-d716-90e4-fe9d-823cdd36741f/test-blob-bc8fdc31-01e7-1f70-30ba-f76a581b32be

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
XJdKfsnQAlgs8LhHeQyDUMyfocoMCBEM5rxeOY6UNKoNz/8Crv/iuznQvCUfnRbxGTFwPZSpElSF
PZgNcsnKl7sNOqkMgaLMveaQPEvr7UilbCBdI/YWY7yqfHBn1EhwBiVpEWNt5JeOpH+tGdYImlBP
ZwWpbHPF99bsYQQyZOidHzUmgdzlOIeIzn93aErmoeIgGG1Dx5mxpBqMgIKTWz+XD/mg4hhzaS9+
IZ30To6MBr8iEkx7WlicddzCWbcE9XJA31hRRb/KrK4+xKb7vFaL/3rCcUnzHLWgBG07sRB3eSwr
s241O8AAV2adPJWyoLiFNlk8QoQpTMOjsEFSjvqexkt60AjoVcS6whnjVt8f7WO0tnq2OzenAWeq
kYp+rclr/nVJOM+vneCUgX9rRvbjhMPendeA54sU0s+hPcQ6OxRPd1dp1bSTBRmZIbm3PLtwxg3G
oA/y6xbqNWYADV8cWkZrG86eeq4OSpi+5sXRXZUTMXe2c5sEXItAfqBOk/e6fMdzSyDs0UxeuFZ2
MwVRGdfR7dznZueqZr9DXfsOwLehBGn+XRF0J18rWLtEjSmG72XIfKUa0hbgyORhqXRQT/ef1S+b
UrvFXcV9vA4sZdmVvG6WRUMRhjFTHpQtEn3r2gjDpbj66pypAh/gnRUIs2MLzOwFugmzjk79SDQm
mEpIkuIGab8hm9HR7EIkMekcSmoxIUaR5SD+Dxdp/KFogmrUlwszAkqj6jAaM83Gj11l4f3J9HcE
t6zCB1mot54waWrYT5nd6EgfjjcVdrFSN4C6BBukno3z0OBecfrw+jKS6spj7j/Eh/i1qmY/70D7
b9DZ7rKCi8vc5X+4f3dOLpMFg4vn70lA9n0j7/Qns+CgYwEpFwx/D17/hwi/DAeAZnvTOmu1E3+H
mPc1X5zXtDGeFxt1JBeGhXMs52hAgOl1o4h4VHl16k+Con4USrDCJ9LWIPTsCkFjTLT3iCsXRhgO
v7wUXmC4KSzL84KZcTvDasCVaWD1iZhGFQfEfWIjalxmBor0rclyHvbHIBa/ytp5NB5rgdy3GDYj
zUhY86zKqIkmMmuwz7z2I0tpLWiCh0otS0hEt+l/ru5T0OCAGStK/XiNmZdvyWRhdV2RTurOoUb+
K6hjhvCgpoR9XP/cdgogHjDv9O2zvoHk4kKL7l8DhS+Zgu6C5naI7fMT8mxlhf5TcC+63qxZS20m
f6OtFLgkedfPQvMbnTi5Zwf6n8sVf11DN30vSaaCQDeBXGbT2tg77niVlUILN9L3AHelXquhEQBF
adw69TAwTQG8mkHR5owuv7FTf+kbOACqOEgv3OGL4EpmjXH8APlIZEhAT52RJRrqd5/6TZEWKg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C18CC5CB334F10"
last-modified: Thu, 12 Nov 2026 00:47:42 GMT
content-md5: UxZNJy/tnuD0mdoLCvZ38Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23f8bd34-600f-4ec9-be4a-6bdffbb1cf07
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-e8293c8b-d716-90e4-fe9d-823cdd36741f?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 579e1673-c8be-480b-9627-7094b8c1049a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

