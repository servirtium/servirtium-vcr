## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-640af770-e5b2-d8fe-15d0-dcc8e0f5c4bc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_Stream_Tags
now: 2026-11-12T00:49:17.3869082+00:00

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
etag: "0x1C4B7E6CB4C7120"
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1be25c4-7ee9-44de-9930-3b335316a1d5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-640af770-e5b2-d8fe-15d0-dcc8e0f5c4bc/test-blob-e6ced0bf-1c4f-15e1-68c3-5278ed91ce61

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
WQ7ZPSWpgsd2tztNAmxCkFl2y2Oqd55UFfT775KF64QCe2/RG4eWFU0HcJjglBP8gMIfd8VrtuFw
hScwrpI08Mu3Sof9cXTS37UVowYFc4Hh/2/QZnS/lsSNYZZfZWe70oDNKUmM/w5NTZcPVhPaaxGm
T64jZIlX+LTCbxDecnlOWtGGOEk4Vf9gghjcr0CxsvWEuBa5l232dTGVyZD+b9oewfxCVDPIbfqu
w+Jwe0hzEbwaWblilcJjkMIYo4tvYRI+vu5Eb17CvEscCtOLhfroIbjT4xYguyw53sRwr8puPmHP
Mr1aL6JdWJ1uRorv1wrIL4HTnH38HQLCC5CaUQyArstxvFM9jvIVdYt5sXWhSQe5qH9Im6Lj0hS6
mCMSwwaQ7pi/fRq3iqGPvSbyg2uNIMGI4KiNNxMojek+g/bOA7KE6MPd4szsAh3euN188U+oLHdi
ieJdA7aElu8xeAerwblzbZqosD70nN6Lrn81rJyalVZ+a3rQJ+UMWEvcu4kVM/cjCIS0AHw5be0D
0lQ3T+pTluOxLFU/o0a0m1fyGOBUdXqIEaMY5pXZRP6NzFSR1QlhiSSmYwah5GU9/2QlRlUMrlzZ
rj1GO7BO2OdXstbxI8VOkY67rhF05y0+2uYwtP6ogB73tybLGk50V4sfSTKPTNye1rXHUf9LZccP
CGDJHSTprzK3+muegnY/RlaFVZ37ro4Jkd1I4S4erFJfvBLtqjpnNZoA11Fw/1M/hwqoxRAqFFrS
v4tGoc0DmU4ZP8ZkUpscHh8D+9Y8mZKJCFokdeZCNae4GuuuIJPM/T4DV7+N2zVujKbwJhmDlib5
vJhz3iNn1wofqzewbf6LNv2YOEHS/C0ktek/UQ6NNYTEtWP7WR4anIC1bi/+vR6oZO8b6l3lJ8Br
Tik6J4X8kXay7LiakN3ffpzAHY79JvjLl+weckom3o2jkAr14HT6uNy4S9BlDtQSO2zBJAoxbSgw
bpCY3R4riw4q9gDT6p0nxWSxRNonZYgYCzbeZbmDcSLhxHHjYdq+jL/COhfTP1HOmV6lgChNCQkH
gNHoTSZUp4Td8SYsQ2SJ87gaZCtwRMzkD8tb3vH6k7po2+EI1T+ZbpOS9k0rolX6G4xwM6XeljwF
Az1a+ciT411rxGeCgB14gPaX3k5+uW12YMJliWAVikWlA9IBP3XK/xLwwN7td5pu97KvRrjuhkrQ
5JgGLVn8Vjki3X1LdkGAzN47jvmPiOgn9pGuZUOMtnyHMVrcxNG482mkypkdI4BwLnrasvhRQFyw
3zfHTvD2liYAw0XnpAgMgpqP671OCdIQPjfIsQSENvD+LOWa8KV5rTRyHWA7iYlyzi9ewVWeYQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FD3A48E5B70DD0"
last-modified: Thu, 12 Nov 2026 00:49:17 GMT
content-md5: DSxjH+9SpqgsZv7IGA9wUw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f049adb-79e7-425c-aad1-78625a6ac1e5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-640af770-e5b2-d8fe-15d0-dcc8e0f5c4bc/test-blob-e6ced0bf-1c4f-15e1-68c3-5278ed91ce61?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 20dc2862-5dbe-4795-b1bf-c91478166cd3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:17 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-640af770-e5b2-d8fe-15d0-dcc8e0f5c4bc?restype=container

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
x-ms-request-id: 9e173141-0a22-411e-9e77-19ad4dd37bae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

