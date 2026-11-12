## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f32f3a0a-9362-65e0-3457-50e92dd88336?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_AccessTierFail
now: 2026-11-12T00:48:33.3328240+00:00

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
etag: "0x1F5267D5C553170"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 77b3df3a-1ce2-4c2f-bbdd-40a83c9c4da6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f32f3a0a-9362-65e0-3457-50e92dd88336/test-blob-fc450be1-6d82-286b-244d-4f7fde36aaaa

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
Zp2XcMQOZS+0LV9aalNGUS9xOZUrq8+czwfOFERhh/2spoOQQBJx06YWR1QOEL3RB/5PbP0VfrvN
+6G9P1DrU6ZhrsTQtREd/2XvFWN6jr9J/Q1GEhsAlifHwkRxtJRVKvSurGH4AFHsMWyXJmlXU23h
c0FCpECKYRedCPPMq0vRmepvzOFdUPy7WeCuaXC9b2/Xj0BTEoWzI0tJW/hdIIYhxox+6IaLgyNE
h0tg3Pem35iE9RwKfYdku6iVFPUEXjlajaLkPofoSwsdDos6UkdTontf2SpqFkgFGize9W8tQCgR
Bk9VwqEQnKoQ7W/7KmlgQnF6pIQO73Za3yRbCVWb785iKEv4/uDZTzyAWSnZCfDDfbP+s5ukAhbY
+uN8tZJUdP6gmAEdaEORoFVIjZZNgdU0l4uhnTsyviY1HwP8XJmpLOUqOHDuphVvbRNGW3SAi3kN
SB0HstbCbdrb6Eg/lEO8nmGwIkhkRfF2MTAo7GKxtJSK7xR7onkOaMqWE77MMNjQir0Tz2gwqQMs
kICmmoF3KjO0taUuQPvoorp9zjEzqgFXWGKlneQsWUURTxL4Z81JH+mKGHszoUnBKi2ts9rR+OV/
T0Ie0YxPiFtfHfHp7zrsM69HqZKGI7cZ5HK2fqZrP1cseReLK01dO48f1INX2DvywH8rik5T+CyK
Be0ZmAm09N6avHYiYQhi6m4CZk80wQw3w70nP7UI2YDrACVfRKOGauCkvRvEz192yaDgUJHcVkTh
4dRMjbQpkuP2N2DjAqXLfPxujwPwc/NesXYUJ4juDqnhfmLOOd0seys3zpj+k8f6FdSVbsdA8G3g
7ds9FGpbByi2AYRD/EIeQhTYuaVbXx6vGhG0WKDioY307kwB7mbA3MZwSJFCtxmRdyuyZzfIhY69
jvlYpq+H01/2Tg72HFStF9zf6heMbGP4IuB1LzpWLGi9Q19saDUW6XQyTGkLm1rWBU9b6Zp3MSKW
YITOEaQloCGlONj1Qa+myAGiWh/67YaGnyrq+0PORhI91gixSNfPDKxHZmKC4cOgtCCZ1NcCnHL+
SHJ5O6Te1/LGt2un9YAq0k1zsockA71nSkYiNHE7OjmVsv9kVtAHaY5wuylY+L+gbwGJj+nr2kS0
EvFeu6KAi3wxEkKAxXx9a0n4tEiUDlGHgsVwsatQqdi7r0Pfqa3s7zCsJuZ8H6mEDCSg8yb8IAOf
1jncENnR4WhpxRY5ncGbC8QX5+hrCmMc66WHr7ayvo8/P9J0EN5W20R9E1mSS25iBOdh5DgbNMzV
vyU0STGxtweG+V7uJ/vmwAyj7fcKiZ82JavPUdlXIwoGnlC4IpESzFtRDFEQc9zreiQrd0fUyw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x227B62E69F27F80"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
content-md5: J3eIakWivRQtMVe6VUA76w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5233dc22-675b-409d-bcfd-6c05e448d9e4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f32f3a0a-9362-65e0-3457-50e92dd88336/test-blob-24fd8636-e286-2d65-2fd6-53e788ab2e9e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: P20
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-f32f3a0a-9362-65e0-3457-50e92dd88336/test-blob-fc450be1-6d82-286b-244d-4f7fde36aaaa
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
x-ms-error-code: InvalidHeaderValue
x-ms-request-id: ebc9e0ad-f1b4-4aa2-bb00-2229ae0eacba
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:33 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidHeaderValue</Code>
  <Message>The value for one of the HTTP headers is not in the correct format.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <HeaderName>x-ms-access-tier</HeaderName>
  <HeaderValue>P20</HeaderValue>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f32f3a0a-9362-65e0-3457-50e92dd88336?restype=container

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
x-ms-request-id: d326c22b-fe1c-400c-9cef-fff635f1d1b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

