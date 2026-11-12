## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7ffe4bce-4073-6547-be45-9c7393d538e4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).AppendBlockAsync_IfTags
now: 2026-11-12T00:50:30.1986529+00:00

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
etag: "0x256F1F58CFD5280"
last-modified: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 98b13aea-a8ce-4977-8c3c-58e785e1cbbc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7ffe4bce-4073-6547-be45-9c7393d538e4/test-blob-55e03b97-49b5-abc4-b441-236549038500

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2690E942CF03F20"
last-modified: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 277d7874-a814-4f51-9d95-8140b7220291
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7ffe4bce-4073-6547-be45-9c7393d538e4/test-blob-55e03b97-49b5-abc4-b441-236549038500?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d1934ac2-1ea9-4f69-a7b8-0792eae7b3a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:30 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-7ffe4bce-4073-6547-be45-9c7393d538e4/test-blob-55e03b97-49b5-abc4-b441-236549038500?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
XY93n+ba5E2EqSMZ2pbHiPPumubyhnKEhlPLMRziG7rAnBUEXpn+vFeS0Qsmq9EdeZtyW2ifDdYc
8hiSD7Iwoo1oWT2AwypZ796PX7VmXtuCrbiBb8BRII4/52uAa62kYi9+vlKTnLZwGGuKEK4htpQ9
EGH6rzLNFjiuQdy+2YQw6v2F6KCJ7hACEFZUxhDgHTHXQ1tLqrL8sKcZ5Fvasj/nWiWxnM30syFQ
957beE8nziSq55Up5UBKiDj4bwq1KF4XbWzrLoFj4485+rIUIDdX8RU2L8uqvnTkZxOV+0QWm89A
xAvjPJ+iRgQF7+qONWgAoX30fviTbK73BsduzudLI1/i1FwsdLV1lOjGpM+KVjGrlVrGIhzXrFdc
6zXYNHgcucyLq2EL0yzIfuoPzMjfbbCWwzmNhQBDCycE0Ih/nV9wqusD/qvPn8Et/aMxx+CPfH2F
QnE+jzPLSJ86BwOkSeGKnyLc3G4ExiR3X4hdEURHdFMK+VvuMRq3N7YLlZe+ibPBpye+sqAOgHtM
xzCrbTZb85KwmU+Gm20HJaS4+TGMudbUm2ocicKz+3jgoWrqC8p/sKEFDfBkOwu6to37VodJwA1Z
19LMPmrQ/J3WpfkDHRnaOEiQhqvmcF9fYtI1uKXwluFckDT3s3I3NRFSjZURt5lzIB4/uTlic2Zy
bduXm0T35Q8Ypozk44XWWFGak+LJTas5wZeHsd2n+R3NhUaWn5rMW6eG+BAMjz2ZaGDoyOCEqB8w
XdmscDQxcaxvFl0+QLi3zjg7Q1WbLTJa7kl8vjE8SdwnZkHAH+pzVIZjnHjfWiioMPqoSWXJlTCn
UoLqtbN6Ms2BF9l2965Nx+7ON5C6e5Mg1I03lAB2XdEQGMxniJ/T6GqrXkNOMTlLWoF3+l2g7dfv
yuAlQ57MCrkIZd7i5j5O+k4mDh1P0aNU7Dp+/2JzcCv1eL6+rqXL3lOKRstaaXRDKf8Oet66n/g9
0FZjTgtWlfWz7G2Aj0ypWjDJxYvX+YPGO9VjZPZMO9nGgd1OZ5BHM7DVp3wGw5mzZR+u8NlsZdfT
nRI18zD/ZrGTug5uWvKfgZHaAlIGv3g7r//WnkoAWRsGe8l9EkCA1kDLcwiLRQotDm5HkWOEzN6a
+UMwKchnk2DyZ98oIm9RWiwRO0tvsGr1qY/buMe4gq7r4hj8UKx4ZN+omN0qBOz+9Tc3c5GSK0nZ
OoA5i9qZOuUxPT9XVAp/mNdsxxiMyqWi3MOQgA4cWLfOIxUsP9gFD133+catp6EtuNq5JmQwTHDb
l64XCLrXFOWHiDH0Uln+Z7e6lNHe9DUhYsgzYzFTntelUagq7QajIOXgJR5vOGaBu7+sdbee/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2405A0455A58C00"
last-modified: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-content-crc64: TlFHCu1CWf8=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f6516b1-3c2b-4368-b34a-8b0c039f7bde
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:30 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-7ffe4bce-4073-6547-be45-9c7393d538e4?restype=container

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
x-ms-request-id: aa10559f-5c2b-4a17-8c1a-a97896e04b0b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

