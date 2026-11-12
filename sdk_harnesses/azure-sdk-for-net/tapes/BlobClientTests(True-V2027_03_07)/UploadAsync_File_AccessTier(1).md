## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2d054f77-e934-b8bc-aea1-9b2db72111d8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_File_AccessTier(1)
now: 2026-11-12T00:49:03.9923569+00:00

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
etag: "0x1CD1EED2F3F0230"
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0aa0c555-7d6e-4cab-82fa-691f05ef385a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2d054f77-e934-b8bc-aea1-9b2db72111d8/test-blob-6af8eb5d-8080-2a05-b17a-78714f760eb9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-access-tier: Cool
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
mLSHVJ1HLE3fVaz81/Az4ti9Vxh222z2Stp8unFKaTiT4pUCmr07Fb6qiivUCFPBRpWZkR72Qr1I
kQnCy3LclOxzafRaMUgbgUJZy1BBIUGHunPbsdcanJ/YuQmzeUlMzvU+YZ5eZxVNfg/bnXdsBm/H
OhH+AeMUWMxUgnc+Zwj4DPxbA8CjKVNejTLHPv8oa7Oa6z84Ts0RKQjSCeSeDhYH45B6EQOuJBC9
n3OwTRrMLBbDpHzIv74vSdm40B9uwH4cwFtvrVqv68Yue65ZYdzuBd3N2mqaPyPRSsgp9lPwTt/0
lI2+XX68E7m1mUQQ1uj9ystCoeYUgYE3nWORhvVyPSzOZMxPL6hfEcaw5KXfwXTgLCyIrq354BIM
h78bKo3EQlsYQXEbrZoj448gY53bWNzusVnJ6o9+1YS5Q6joQ+Y47KFJxoACxH6RZMsd2Xx1MC/j
LHg0+1jMmWvtYWryOp+p53f7kpFb7OzaN4XDYPwIRBJ4BRdtA/FJfCwUFGMUniosdPEFeZ2ehz+L
WsPSCTlv5R1XeTSHO+SFsRZkR9eJxplbl+sLA8p12n7X4aktd3LzpC9GvCT1pDkMf8iHOUBnApQq
d3JNZOFS4p+2sFk6VzqjcKKnQwl0ZfKx/oMC7aA9b98VAwAApUBO89qFP/Tg0ieN5Mmev76KtRF/
m2ZeUPX+eEB5JVQ6o8phWVAv7yb+0StcdAnXn68hik3ugAna76Plh8azZqzTU0H+PGZuW8brgMo6
AtzrJtmQWJoGSyLBh2msSWdgSmt+iCDH2WJJsi+HA/8/n+3H+WDsIw0SzQgePbX8wRFeizVfu3m7
JEx3RqZqf0giged85VAHcyddbLoYqJytTfAdKHfJ4OR0C9UTddxnp06//LvOgNzBVxcOAU6+o3uw
yfi1TVfQWKECB9l78/1K9cRsWKzg380UXNBgu96VtWhZY6vkslr376May3gCRWMZxAyKUUvO0Oor
ofCGcJ3CbVJxIZBSZkJqdWgIxRNVERZsRvfRC2Mdi5LAuBFpcH8GWF0lkSTTx13JH9zixgrW1o/a
GSqm8GHvVJb9ka0xAQTpAW21L3/xmX6ZCOuHOsWI6uKBjldUYGf8Nj2O1jawlx7X+MScIKYP6H+r
Deh2ZxnQdafLsHKtlKEGufhCY8NI6XDNr0IA68k7cqbXqFN/hc4jvWCO5OerKmMilmeuzYW8YyN3
qLjXz4nekD7M1etOhjMpHqViuQSIIYXe3lRijaUgG0UvB90WTO3XsFOp31R31A8zhK7gWakf7ocy
+fE0fAOZrLqmHn9WE9G3iwmw3kEwZglELgj2QMGbEBhV5FP8ojRQEDOa0bWQ3HDcKM6gbg9FAQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C61BAF56BF2170"
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
content-md5: 2J0nJvPuVuF2WUqdCVfT+A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0c8b445-10d9-4926-9da6-c1db8c850407
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-2d054f77-e934-b8bc-aea1-9b2db72111d8/test-blob-6af8eb5d-8080-2a05-b17a-78714f760eb9

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
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C61BAF56BF2170"
content-md5: 2J0nJvPuVuF2WUqdCVfT+A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1205f01a-7dc7-4c67-b5ba-379ab794a662
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:04 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cool
x-ms-access-tier-inferred: false
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:04 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-2d054f77-e934-b8bc-aea1-9b2db72111d8?restype=container

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
x-ms-request-id: a20e1c7d-f8cd-40b1-83b0-a678a66d8f42
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

