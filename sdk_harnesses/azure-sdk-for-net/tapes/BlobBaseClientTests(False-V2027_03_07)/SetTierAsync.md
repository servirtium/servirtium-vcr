## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-393195d2-1ee1-b5ba-4287-2009f2d15a37?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetTierAsync
now: 2026-11-12T00:47:11.1988158+00:00

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
etag: "0x222446A25E3B360"
last-modified: Thu, 12 Nov 2026 00:47:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9e7c109-e309-49ac-a4c3-daee0af0088a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-393195d2-1ee1-b5ba-4287-2009f2d15a37/test-blob-e3a54614-a577-8e76-f4f0-efe0841a0dc5

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
mx2v01K4A9ZNWg4YAmzvuGbl+ZYLmM4sHqNF8S7aMCd5Wm7UIobkXEPOlRyXXouIATd6nyF3ugNP
grWuchKocyrmnqf9GpbfAJxTPQKxlb8Yve/3YJAGAqBrhZ/RNukxJiHysMDjiuagmp+EI3wAne31
lrUisBOZ35sHkZX2DcmyIRfgvuT/NTIIVsXxgd4ka+ex3J8zDnUOWdAk3PhRqY3V0QJlH94J9WGC
GVlOp1684yauRDEqfhKh0mUT2lg6t6w4HK/cvksIqOY+sfUbv7FyZ/jRomRbq1Lvw0159RoISGGs
FYuu4CTbppxK680dhRK0oHNgaBRI3HBc7fr+j7PMNmiTb6olxIfU9vzIEb+E0T06xFSnqOBNZDka
UfIp3BbofbVlihZoj9zri3IXf8qw2Bu8xMpeJI6IRgpwCnKUqhnm35MKH0cn0TV4uxxtNeVuannW
bRhLilgm3UMM+IRpVuFYMZ83pbjTlfKV5WlxGhEkAqD5vj0AmlU65EIEG9mxDmQ7FQNGN8TAAtcl
tqTvtcIy5/XjcJijV5dK/MF2z3oZ5NYENgQN3svcOLtl2+OwSy5/0TPjzZ7Ml71r/DoCSjJdC9LO
63++JAgqBzfdPXyzmbGT9/5GNhc3N55GoeKQ2u6ICM8R4l+vwawruMVn7lpBuGKJb1M0FtW6lrPh
d4Ilmi1JVTStobdR4zVRG31R0ElDBemAB2qaU/L5VkuszkoqBR6YHpkllBaqN4sd4/tYacZqnXGZ
pZLCrgFCs0pspRXrJxZeuLGvHnDS1c/ffW/3oe2FQTDYkF+L1m+Y4+DLPpF1Mrzk+bAUu34AxtDD
4jGRSxJd5mPkEpa20uJBFjuQB5Y9akqzEqg8cIay18qOyPM+BpfOblgukB8mLibO0qRDcL86hXjm
3jhqIXXdMjvLKArvAxCjwZg+D9krjeSBbZ7ib2cLU0N7VyhfZEziUF7kWgUc38+Un68m/HWeu1FU
6LPX+sPTwNTHdKvoRFxMW757RzLeZY7PTs+45VfN3JzWCnuZClWbEJoxVWsjq1pS2qC2I3QedYMk
CKzzG9t8+ZcOETrgslFo4DaYrRAjq6J0ZQq3F7kot5T4dQKpp/W+tFvTFJogcSdPTUI9hshyAFwK
frXQxeHe5lml5zxPvzhB2fm0UJYHVPTiaMl26zHMhnSlnik/7u569S5Be4nrAI0K/KzPvrDFAirB
7V0XaPsn2GHIqSAPAesKOltoxthr92c8bO6E/cjD35z+fgCQYowzGaInIlZs+vrBxINVXTxRVvX1
2/sMo9uZBMmEEYPretfONKw2Q9URz3H0wzhEboFfrSgKmoaQJ3bGjh6M6Ol21kqrhymPGxIg5A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CF0BCB624CF7F0"
last-modified: Thu, 12 Nov 2026 00:47:11 GMT
content-md5: HDiugOQxd/e35jGUrhkVgA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 336c0113-1290-4671-bafe-8efc993d4493
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-393195d2-1ee1-b5ba-4287-2009f2d15a37/test-blob-e3a54614-a577-8e76-f4f0-efe0841a0dc5?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cool
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
x-ms-request-id: 4d589809-f3b9-4ce8-bb4a-c1b146997a60
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:11 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-393195d2-1ee1-b5ba-4287-2009f2d15a37?restype=container

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
x-ms-request-id: fe32d19b-1cc6-40bd-97d2-a384e0ae84c7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

