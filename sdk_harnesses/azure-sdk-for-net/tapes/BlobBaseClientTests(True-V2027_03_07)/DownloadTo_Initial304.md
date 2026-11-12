## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c4826280-d988-8c74-feb3-32c3e6b7032d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadTo_Initial304
now: 2026-11-12T00:47:59.0620890+00:00

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
etag: "0x265403D2D381DC0"
last-modified: Thu, 12 Nov 2026 00:47:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 49469c10-905c-492d-8f0f-31fd148571a2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c4826280-d988-8c74-feb3-32c3e6b7032d/test-blob-daad3fea-0290-91ca-6726-8f84c8977d0f

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
/djYK1RoDU+hYBO4IR7HiEQNzvBAiXBmtMk3Ex0K2ZgGvKf+scQfF1UzIijGu2vg7Kp/2egS7XNo
cXaLMfkyl4d6sWR2yNaA7beaDWZIoPhdVidzi/+v888zlkBNlOVcAIugSwkGaSPT/uswd98NH9F+
LdrRvwuHy72VQzKWM1nSPgzbp1TuV+wEn40UfnzvJnZuzmYKikF/GIBLcSbxPMqRXjnTMnd9kNbu
zR9+c0xBpR28KGXyx7PKW4/TouXGEmPCgiBDHPT+8D6QHL0hAaQ0CswINBRlnpeFCNboqu3xKLq8
u/As/ogpvjcmYqv2qVnqnpgYvd5OXeOIvRQdFUZRn/QCZUW0CAtD33bcPjzsj199/QtU2GrcbV4M
o0F0DKjx1cO380MTNpaN1N1nch6nnC20oBg7/MeJJvfnp2XKz9PO6mh5NZwbacd0xwONdPo/ZQYT
v2yPttn7LcxMK44xwwUKmIi2LWeRmTZQxjTD/LH8qEFetg9nPjOPfQfPzz04QwT9gttyiTeegiY1
PvCkODEbT4NN0gz2o1pUJrBgwsn5GIIwxnnWiR8JvzToMQBD6kXVtH+663D3B9+BHmKHPsBdPCZt
dHG3RcVjQxPYDnFZEDtrig1JPi0SOL+aVGu9goFzivXa1XbTHW+6V6ddHvhtJw0mHLOyE/34Wzuy
HfBapsCSZIN8fzrFl2yej+eFtRnGLCxdlmbNwXf34Xo6IAB+YLHmyrp18ajTYYRHE4QWcqYh7PDE
/A9axKMMhJ7AindrIC82n+pfUDuEijXihq3y4W7UGTMQuWOhjAYWaWwJEtYM2/JU4NO7wpu0QHLZ
eD71GaMv63FDW2fLlBPjSefOendf1au6ngCbGFaYW3nxyBPHIE/J2idkyX+LiEvA2Hi05sX6eaOT
OnuilNMaq//t2sv/GyiXBaBQ+gsrLxW12kDe43W0905wNOXUJkVUSh5/nq6AwbxQHOEkqX+XZwtm
7bmSPMeKOeN8juZCw95a/K/sq5BmNBmEjceTj03P2c3abjmMwQ5X9WTKAzPVDVkDya3Pqrt6/7if
Dq4A9qmWrbQZaFSkzjuhlbYrmzHmr4BtkMWf/y4RX26A7LJfV/67NFV+u6QEXvtyLRQFTmOHuV8u
kmXj9q6FCAnlI+GIQj63cGfcaPPbaDLKLdEaDBAL+TNTMcSY1z2m+LObHjoZ6uvWTd78qlFrUioz
Gcnca/z52imtNBF6H5kpNW9AQEn3sULmRL4xDk7i596aZb5zyoy3oUQQa7XZWy5E0nXhKxLgO2eH
9ic9x8zby00z4LnbtWriiJ4F50WNDOiQ7DvYALvLuSlW7NNledp3NaBopnt0aR0K/6Jz2lQi+Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2003AF8061A8460"
last-modified: Thu, 12 Nov 2026 00:47:59 GMT
content-md5: GLoQGKdeI+0D3wV+DIaq8g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 62c93714-ee72-41a8-9bbe-332d45dc1e25
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-c4826280-d988-8c74-feb3-32c3e6b7032d/test-blob-daad3fea-0290-91ca-6726-8f84c8977d0f

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Thu, 12 Nov 2026 00:47:59 GMT
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: a4108e3b-1fc3-47c5-a09b-be2ef3f3c196
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:59 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-c4826280-d988-8c74-feb3-32c3e6b7032d?restype=container

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
x-ms-request-id: 9b421651-3e2e-4434-ad52-f9741556df1b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

