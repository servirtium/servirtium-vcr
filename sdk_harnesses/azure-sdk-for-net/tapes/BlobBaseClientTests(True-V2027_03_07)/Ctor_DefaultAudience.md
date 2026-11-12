## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d61b70b9-61b5-abdc-6bd0-6269d6a0c076?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).Ctor_DefaultAudience
now: 2026-11-12T00:47:43.9986852+00:00

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
etag: "0x264039F51403800"
last-modified: Thu, 12 Nov 2026 00:47:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92e516c3-df45-4dfc-a34b-3e698bcdecce
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d61b70b9-61b5-abdc-6bd0-6269d6a0c076/test-blob-0f829e73-deb3-23fe-d1c3-6af993f61f60

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
rngLyIuuXarWQMvAOCjcBab20W+n0oNcKf6RpbKuraXUu3bsZmM7ChNwAHSWHHJC813C4M9Rz9z1
rp6NHbf4KJMl7H2x755Du8ZbNtIPxg2LTrFU7M3Wguua97fEre1beNjhcDD1kAO+fiQI9ZkK5uiR
Ac4GozvFT2mSF/jnfg3Y/735LVXclr2tlm2ozY1RkBHPM6seVdScGyHHY3gL1/8WL/XcELiStGsR
WA3OHIHbQIfmF0thuqroXRI0FTNEob5tkZ2XdYBZPX9ADfzHzf6f6yLxJL+0tXVL87KlXZ84zLZO
YIvkRMoHjdrMIayuIZATlSkQU33+udwnTILNs9/fB0FFeGxzuqdX6Zfl6JPIndEiksd1KHg5UKeu
vPdIOdn67BpraKkjoNuBuGnlGdFJX6+wqyEXad/ICyjFxP2wD7C96vt5XTQo/vHs9G8PVDfWZV1I
l4244oI6o1yAXdvd0am5Jy7VzwJ6iKwvK3Vwubfx71+gaHciBQd4PrnXp6AWDyLFVSwIAJVbzQ/h
iLcMyuqlj257PWkylyImXJFIouALGBxTqmOL6O7JRJpoQXxQbHPPMhgymtK4kr4J4qMEEyou1W+b
uR+GGqd/svjOylal1vAdeHDI2X5KmhilgQZLxTFwOWwNtLJTSRhxsujZ6chnZAyy5pq5ZvvxUR4H
4JmgNOzGXpHqmCE9yS9YVyeVcLBPPRz5mN+XttJwG2OTTGh/0H38E4s2fcvqdBxqYQ7TXOBut6J8
ppwNL6e+eX29qX3G2IepmF0kGcBRDyPCLFTEnb6DJZTGAinh7+PkeAROLcqfo4mHKsODSZ7iK5d5
SgJS+tu+OoTpANVeyKl5QKC7AuFYI4jLPHP6/9z149eRaKXgkX0oj/NGtaKzKWEaCQj9Jyi2ICZ6
h71oxDqn8x3+zWAEmK8iknPuEW3lGBMR4PbU97yv2kd+ZgnAv8u5n8KFtFsBFnBY25S1yA+4lG6q
V+RD0vthTvIZhTKlYtKnNXGrYGO3EMmFexwn+hI3xdKbFWjndczHJGVp6JA+snjCDZOdDTMK80ca
vVfeOVTg4cBfCk1qwL+l4zz9Tic4R8ijZe1+mreekCIhzLd16OoRiAfQ3qgrV0zT+Cr3DaUf4XaO
OtRnYUYIwXoqSfMIL/tR7MUgaGggeA2gq6GNpoN9AetA560VqifAyB0tAA5Yy8gupSDf/nkNbcLH
xralehr3rUcIx0hNPEKeYJ9L8nf+SODYXgBinQNxM3nqTeNwG00CNlPHUAOA4WndQZ3ZwXtLyX7W
zBsalA9DlpTPYu5eLUVRSLsjNvjcWH2XhFxll3H9n4Rlmk4y6KJDhLlusH56fhNYiHm/J5OG+Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2726A65443B4380"
last-modified: Thu, 12 Nov 2026 00:47:44 GMT
content-md5: YMF1hqkVGaAVp8AKIsX//Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 89a7868c-c2b2-4b40-b1b9-422a4cf52220
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-d61b70b9-61b5-abdc-6bd0-6269d6a0c076?restype=container

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
x-ms-request-id: 39ac1f3c-f63b-4681-8e5a-d8ae876ecc7f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

