## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f022eb2f-31bd-4f27-045f-300c63866648?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UploadPagesAsync_NonZeroStreamPosition
now: 2026-11-12T00:51:34.1142913+00:00

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
etag: "0x1BF4B0BCC03F5B0"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 32cf2e95-3178-4acd-9ec6-140da9dccf3e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f022eb2f-31bd-4f27-045f-300c63866648/test-blob-f1ce3598-1b51-32e8-0c70-4877836b4c84

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 512
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
etag: "0x1E1EDE881293B40"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e596a11d-f5f9-463b-8a34-1368240154ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f022eb2f-31bd-4f27-045f-300c63866648/test-blob-f1ce3598-1b51-32e8-0c70-4877836b4c84?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-511
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
QaPisXRldfvYDZVsQWxvrzaa27KwUArF2l9+Z5IDU4rNm+bxt7xus6lFwBC3WQBcnptRHBSoCvCY
HdYV5w5p1LkKnqaGffd5KycIapD6DYFfIcj2sTd2JZD1WZrlWcyb2+tWrLtZ1SCj1/Dtn6BgnQ9V
tcVFcyOClHgWkSRdk9FabY+kpGDFBUuoUtpGiYbwlLyLj6MHVWjI0xhCQ0T8RkMekjIQu/mukK95
nSBIOwryJvxo0QMtUxcn3NBIg8IHrAyWJ/dT39nC3P/0jbhHf5cOTx1HlHQ/8D8a6d8oZgztcvEU
shMTn0YjpfQEOcVe3104OjOlvxiXVje3OPb6mnbzBhrHM8yD+rDWJO5/O7Z5uwmC7yzYR7PZfFzc
W2ZQKQt+EDOql6yQtD+DzpspFxqAPn3seKpKGr5n7rZwp55KhvvjASqDziRd8TrsVXkYr2RBXB3o
ZLFgM/Z0Qqn1Hw2hOEifRRbv/G9Zj4ZvXsRFTz5SL0uAYSJJg840D4t6aNItSh0weGlOUV+uj9Qr
8NQyLvNqo/DCINYmVsJHu+3j3iezQhOnFNfUA93r0tFNHpL5AuCYEMTiaypGCiKnBpVyyrGtd67B
ihkblaAS1k4F2TcwTrkMSs5i0dfpYQq1LfxIeQcgn6fjN3fHfXok0JTbQDDqdrjcZoDjS6bX1yk=
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EDD1A8B34B1040"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-content-crc64: rGiTN06Q2FQ=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d6398105-1e2c-4fb3-9de3-637b77d0e1cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-f022eb2f-31bd-4f27-045f-300c63866648/test-blob-f1ce3598-1b51-32e8-0c70-4877836b4c84

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
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:34 GMT
content-length: 512
content-type: application/octet-stream
etag: "0x1EDD1A8B34B1040"
content-md5: yY0QaZZa0hmqhtdmK5Q2oA==
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fdd0922a-1618-4870-8397-338773faffa3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
QaPisXRldfvYDZVsQWxvrzaa27KwUArF2l9+Z5IDU4rNm+bxt7xus6lFwBC3WQBcnptRHBSoCvCY
HdYV5w5p1LkKnqaGffd5KycIapD6DYFfIcj2sTd2JZD1WZrlWcyb2+tWrLtZ1SCj1/Dtn6BgnQ9V
tcVFcyOClHgWkSRdk9FabY+kpGDFBUuoUtpGiYbwlLyLj6MHVWjI0xhCQ0T8RkMekjIQu/mukK95
nSBIOwryJvxo0QMtUxcn3NBIg8IHrAyWJ/dT39nC3P/0jbhHf5cOTx1HlHQ/8D8a6d8oZgztcvEU
shMTn0YjpfQEOcVe3104OjOlvxiXVje3OPb6mnbzBhrHM8yD+rDWJO5/O7Z5uwmC7yzYR7PZfFzc
W2ZQKQt+EDOql6yQtD+DzpspFxqAPn3seKpKGr5n7rZwp55KhvvjASqDziRd8TrsVXkYr2RBXB3o
ZLFgM/Z0Qqn1Hw2hOEifRRbv/G9Zj4ZvXsRFTz5SL0uAYSJJg840D4t6aNItSh0weGlOUV+uj9Qr
8NQyLvNqo/DCINYmVsJHu+3j3iezQhOnFNfUA93r0tFNHpL5AuCYEMTiaypGCiKnBpVyyrGtd67B
ihkblaAS1k4F2TcwTrkMSs5i0dfpYQq1LfxIeQcgn6fjN3fHfXok0JTbQDDqdrjcZoDjS6bX1yk=
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f022eb2f-31bd-4f27-045f-300c63866648?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c75ab9ea-e43f-4be7-bc2c-a78fb5f21ee6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

