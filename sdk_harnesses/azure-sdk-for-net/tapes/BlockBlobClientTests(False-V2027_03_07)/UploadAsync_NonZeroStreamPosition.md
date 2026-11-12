## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2eaa3148-050c-6b0d-485a-beca51548271?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).UploadAsync_NonZeroStreamPosition
now: 2026-11-12T00:49:50.8914453+00:00

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
etag: "0x224DCAA9F18F2C0"
last-modified: Thu, 12 Nov 2026 00:49:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 70ae5a90-7e05-4c42-8631-0291d9351524
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2eaa3148-050c-6b0d-485a-beca51548271/test-blob-d7e65fc6-7e63-cd62-472b-055d64b493c1

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
6At13IuomprQvLczasKsBbCDKW+dEbFKiGF1lgTSR0SvcNW7H+3GZ0WVfShfHFd+nCHK7pWQhtdZ
K1QpMwSV/XRzg/nt8OXCvMEpB5SJ6mwJ9vnjCFiuH+n9YvOZnTRB/3+z65hekKw7CDLUZ39Dz0Do
HzwKsvUbxGMQ8I7yKB+M5wcU1f7Tq2ZNp/8m2rhqupKzsX34N02KmCc1TaAdSd8SR393LvpBFHPV
vAr19OqrpTX7P3eik6+6ij3Xnl3FMF4gFJI484uYcZwJIntClKM9iahqIQpocLTQvKS8anYVD4ys
1eBXcrKpY83amHE0d/WamhS1Ww5UuKTeaDbm2wcl9BLvlr/D5Rf1wL08jdhDm0SvIs9iYLR9Vxw8
eQp7wojGtKNeReE217T9wJpQFyrLm8zxN7g3w5NecT+ihmwMef01dtk05FZjeUsaZZ8aLD/xcN09
iovPjvEPANOik1BI8EacG6BRl7Z2jr5tHV30Q0T/sBaOz+9yZejnJOSCweX60XVZfhGeoNgnxvvM
YXCTG7yPo+I5uiBXKbW4aXPR9M3ZckvomsUzYBA+ZwnzpgR3VAgn8x4CwRdVAlRb5jZlVdIu8+8l
q4H3W0LS+1MXY4OxQBVqqgGv1rEzkphw13na2BE2xbIUUqmHMJfbMMbEPp/RqqYg+qvRfx0+8Rg=
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258F8F1A0E50420"
last-modified: Thu, 12 Nov 2026 00:49:50 GMT
content-md5: +hDUg84OgG9G2Jg4BdXOaA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35e14b5a-9cd2-4415-8a6f-f51d5770f4d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-2eaa3148-050c-6b0d-485a-beca51548271/test-blob-d7e65fc6-7e63-cd62-472b-055d64b493c1

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
last-modified: Thu, 12 Nov 2026 00:49:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:50 GMT
content-length: 512
content-type: application/octet-stream
etag: "0x258F8F1A0E50420"
content-md5: +hDUg84OgG9G2Jg4BdXOaA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3837e4c2-05ad-444c-ad4f-1b84d9fac6ae
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: +hDUg84OgG9G2Jg4BdXOaA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
6At13IuomprQvLczasKsBbCDKW+dEbFKiGF1lgTSR0SvcNW7H+3GZ0WVfShfHFd+nCHK7pWQhtdZ
K1QpMwSV/XRzg/nt8OXCvMEpB5SJ6mwJ9vnjCFiuH+n9YvOZnTRB/3+z65hekKw7CDLUZ39Dz0Do
HzwKsvUbxGMQ8I7yKB+M5wcU1f7Tq2ZNp/8m2rhqupKzsX34N02KmCc1TaAdSd8SR393LvpBFHPV
vAr19OqrpTX7P3eik6+6ij3Xnl3FMF4gFJI484uYcZwJIntClKM9iahqIQpocLTQvKS8anYVD4ys
1eBXcrKpY83amHE0d/WamhS1Ww5UuKTeaDbm2wcl9BLvlr/D5Rf1wL08jdhDm0SvIs9iYLR9Vxw8
eQp7wojGtKNeReE217T9wJpQFyrLm8zxN7g3w5NecT+ihmwMef01dtk05FZjeUsaZZ8aLD/xcN09
iovPjvEPANOik1BI8EacG6BRl7Z2jr5tHV30Q0T/sBaOz+9yZejnJOSCweX60XVZfhGeoNgnxvvM
YXCTG7yPo+I5uiBXKbW4aXPR9M3ZckvomsUzYBA+ZwnzpgR3VAgn8x4CwRdVAlRb5jZlVdIu8+8l
q4H3W0LS+1MXY4OxQBVqqgGv1rEzkphw13na2BE2xbIUUqmHMJfbMMbEPp/RqqYg+qvRfx0+8Rg=
```

## Interaction 3: DELETE /devstoreaccount1/test-container-2eaa3148-050c-6b0d-485a-beca51548271?restype=container

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
x-ms-request-id: bf09349c-497a-4c92-a2b4-fc54b1a17428
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

