## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-10b69e83-440b-7507-bdfa-469b94632aa5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesPageableAsync_Snapshot
now: 2026-11-12T00:51:57.2407628+00:00

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
etag: "0x262BB9AD5145380"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ef4a9c8-7fc7-45fd-be2c-7c1192488159
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-10b69e83-440b-7507-bdfa-469b94632aa5/test-blob-9c1d417a-db8d-074b-5aea-39c0a9bda169

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DE8666CB386D60"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 210389db-a3eb-4fa3-89b2-39faafa9e67d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-10b69e83-440b-7507-bdfa-469b94632aa5/test-blob-9c1d417a-db8d-074b-5aea-39c0a9bda169?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
EDDBprkLF1qAH5LDVNDoxY6eZ85iBCSnU6+1IAtHy/9Z3ItjoYPsbirCG21Jh7KKAXMxClXSBgsL
GlMJVfZPOVOSanhFhCMKsvmkoOi2Xsz8Kx6XFcCqhtZ/WIcw4hgzc+EZthw6RX1QJ1hcLWYjVLuH
DCrXuCSS6OOhxSub2c/gcS0GnKevwuWhR+1oTVlvXATLqdXtW7q9hs45mIBRtE6Je7w5HLcU10pE
NnA2KpqKMmgn0C/58hVySRXYdSplT5Kf39KcNkBMt9GLqSRKh1w0r2YXKuQej4imxtKhPGIf3ufe
l0vI7fso2hlebUnwKMK5pMbETiSugU9J9W9tq3pvbMo9bPAQa8Fq7k/LvyE/tp4Q6JebW5DCLxX7
f/iLuy+e7gF/s7zRqDgEWmDV48EuCj/RXMLj0xE5ezzaFezJ3jMfLdEfvwPiPj9elwEv7ExUzXS4
ul5suhrwRTd/95NMO3sstbbwDko87h2DhDwQCo7whUd3ESTUsnK2L3rLYkesEluFAjeVZL4qfMtA
6TXe4Dupj3FL1CpXVwNDOd/QcIzW13LgigdXWiGJTZRYlMg82E4+IdPVYT4xLqozUirfWgs/ahLD
/VY0UjVQwoaV/sM6BmGRkU+5AHU0r1tcIwj2qfOJGSm2edr3Cs+ehJ+3nDDn+UvJTsi7hmmcj076
1y8tWhiTDOSZg42GmYaAGnzWfBIrdSm8LVsqzZPAGeqM/TKfcSmGJJBLTXW+QrVBO2vtxRI7zmIF
cC28aD5R2Wqi+ptU4KlSUFiC4Cez/uum6JEo01PYUC7QmQD8ybtR+nMLG0cZ7VrBmnW5ue46UXJC
Fn+sKAYWyqlthEapVYadMOW0qOKjjfs2ZzjeHpc/lUiOurM7pNFt9VCdrGkUGETvHIgJhqmPnomE
dsHON6wSLe7+GpvTYYwUR7OSBeCRIk7z7wIPNg6e/xspty4Pnr2ki356Ff2pG7r89D72/Jmo8lNz
2kiqA/ffXxt/qaldBaj17nliFgxRSdNHEkLQqAKCgcTbnMR0+oiHmrXiKnIRnu+WAA4fRdxGIZB0
YvC0D7cZ/CflgmjkgPTx23tXbx9hNnRSOafzYzvolHozAJeY0ov+yS1KLBuGsn8aLmpg77JxEyx7
YtYPJZns/O3usIBcWAjwWKbxFwlYzIcn2DXQh6XHwuxqHXC07qOUXS8tmAL+vdVicJYMf/wiIpZO
50xkG3RIJu2U8juYO2oCXbnaKzOFKBtfbhcOu0PwR/raZQZWMEK65XIUasuayTQsCSFDSPdiyb4x
BKxdOWqqpKpAvtVjqy12H0bBcL5PxaTj4rEhrP8Dd5xHJSuVXasHasYgWQteyV30zCiwoFkA4g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FBF8C8EEBA1780"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-content-crc64: goA9favBwxo=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c70fc34e-64a7-468a-9574-35a85732cd27
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-10b69e83-440b-7507-bdfa-469b94632aa5/test-blob-9c1d417a-db8d-074b-5aea-39c0a9bda169?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
EDDBprkLF1qAH5LDVNDoxY6eZ85iBCSnU6+1IAtHy/9Z3ItjoYPsbirCG21Jh7KKAXMxClXSBgsL
GlMJVfZPOVOSanhFhCMKsvmkoOi2Xsz8Kx6XFcCqhtZ/WIcw4hgzc+EZthw6RX1QJ1hcLWYjVLuH
DCrXuCSS6OOhxSub2c/gcS0GnKevwuWhR+1oTVlvXATLqdXtW7q9hs45mIBRtE6Je7w5HLcU10pE
NnA2KpqKMmgn0C/58hVySRXYdSplT5Kf39KcNkBMt9GLqSRKh1w0r2YXKuQej4imxtKhPGIf3ufe
l0vI7fso2hlebUnwKMK5pMbETiSugU9J9W9tq3pvbMo9bPAQa8Fq7k/LvyE/tp4Q6JebW5DCLxX7
f/iLuy+e7gF/s7zRqDgEWmDV48EuCj/RXMLj0xE5ezzaFezJ3jMfLdEfvwPiPj9elwEv7ExUzXS4
ul5suhrwRTd/95NMO3sstbbwDko87h2DhDwQCo7whUd3ESTUsnK2L3rLYkesEluFAjeVZL4qfMtA
6TXe4Dupj3FL1CpXVwNDOd/QcIzW13LgigdXWiGJTZRYlMg82E4+IdPVYT4xLqozUirfWgs/ahLD
/VY0UjVQwoaV/sM6BmGRkU+5AHU0r1tcIwj2qfOJGSm2edr3Cs+ehJ+3nDDn+UvJTsi7hmmcj076
1y8tWhiTDOSZg42GmYaAGnzWfBIrdSm8LVsqzZPAGeqM/TKfcSmGJJBLTXW+QrVBO2vtxRI7zmIF
cC28aD5R2Wqi+ptU4KlSUFiC4Cez/uum6JEo01PYUC7QmQD8ybtR+nMLG0cZ7VrBmnW5ue46UXJC
Fn+sKAYWyqlthEapVYadMOW0qOKjjfs2ZzjeHpc/lUiOurM7pNFt9VCdrGkUGETvHIgJhqmPnomE
dsHON6wSLe7+GpvTYYwUR7OSBeCRIk7z7wIPNg6e/xspty4Pnr2ki356Ff2pG7r89D72/Jmo8lNz
2kiqA/ffXxt/qaldBaj17nliFgxRSdNHEkLQqAKCgcTbnMR0+oiHmrXiKnIRnu+WAA4fRdxGIZB0
YvC0D7cZ/CflgmjkgPTx23tXbx9hNnRSOafzYzvolHozAJeY0ov+yS1KLBuGsn8aLmpg77JxEyx7
YtYPJZns/O3usIBcWAjwWKbxFwlYzIcn2DXQh6XHwuxqHXC07qOUXS8tmAL+vdVicJYMf/wiIpZO
50xkG3RIJu2U8juYO2oCXbnaKzOFKBtfbhcOu0PwR/raZQZWMEK65XIUasuayTQsCSFDSPdiyb4x
BKxdOWqqpKpAvtVjqy12H0bBcL5PxaTj4rEhrP8Dd5xHJSuVXasHasYgWQteyV30zCiwoFkA4g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EBA1DF20F65590"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-content-crc64: goA9favBwxo=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3e401f9f-1d92-4544-a227-b3de2bccfed3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-10b69e83-440b-7507-bdfa-469b94632aa5/test-blob-9c1d417a-db8d-074b-5aea-39c0a9bda169?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:57.3580000Z
etag: "0x1EBA1DF20F65590"
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96762c8b-5651-4aee-964a-bc9356f1060f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-10b69e83-440b-7507-bdfa-469b94632aa5/test-blob-9c1d417a-db8d-074b-5aea-39c0a9bda169?comp=pagelist&snapshot=2026-11-12T00%3A51%3A57.3580000Z

### Request headers recorded for playback:

```
Accept: application/xml
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
last-modified: Thu, 12 Nov 2026 00:51:57 GMT
etag: "0x1EBA1DF20F65590"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9b468d8-14b1-4e8b-af0d-22e71d5d6f0c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-10b69e83-440b-7507-bdfa-469b94632aa5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
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
x-ms-request-id: d7cf6ba4-dc4f-4b73-875f-fd378bbc4812
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

