## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5bf9372b-8b71-f929-9d4b-6da00687c04b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_Tags_BinaryData
now: 2026-11-12T00:46:42.1006522+00:00

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
etag: "0x25D9685E02A0220"
last-modified: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6475ce8a-6611-4259-b5a2-5770ff8d2cfb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5bf9372b-8b71-f929-9d4b-6da00687c04b/test-blob-89b674e1-34f8-ccb1-f4a4-5e141230c152

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
3KK4pAufIHiuJKJgdOrZiy7nFglbdZWbsVFpSKQ97Qnwwf0puOiJixeArEzpyYSyceFxH3C28GYM
HfK5NtfUcTeYb7Ptr9JGXYry2shIsujNttbCy82ZOtCWHZv10FU/rDsVUFnRxcIPK8HlxBWexGoK
638BEaVp/zXiV5I3UI01si2NM2KP/PETs58Ms3a6+Fgw6+TWPpqVq1Ak7m4w2No0sBHoEJEIe++O
7V4FXUy+J185BmWoX3OT94cSag2C49vE1wNk0ufHKHD0R1E7j04EZcYP99F1i1GeVBgJ9RDiCwqD
QIVJWVR3cd31tBciV2c5DgVGc+sJT0yxxn7OvjJfEjxHuE/Iuwxyl4b0f9c6e/yx0OcKnJceefA5
l5PWqbKqlaLa2p8YcFL51NtlFNB0d0qBHe1LVXWkKT5ejiN4m+7TSuk0X6BdmF+UEce8uGUgxR9I
VYvFX0AsNrFguuIvgDjskcrmPxipI4WOtkOu6HDZPckEMEZjDuupCCju/d59ZZGPzyeaOYUHnjEG
N6j9fk5BhnwZK0/xiYLfPTfvuiWmEFCxHhhIPwRD/JIVXNdCq4rarXZhZDpBnUWku/tOF+MLXyZY
S181+Ud41S693CyrnZGsFQ2vRawWb4DSpIMI9eWuCf2x6mAqpLMv6Y4LhMEY+B5qoQLVXBp5Qdve
Y1TDcN9JD9Iv+rIxgXBZf1wdCuu/uatlnlTj2K3jN6iFTEFfa3mvwnTv6f5rOB+RfNy9XDfvH6mp
XtGKZjckTMIKrDUv+hTjbUd2z9Cs+mU0UVzQJdtxlSyYtQ2nJFw9ypw8YIzqYoHI2u7veVDY/GNs
VRTaUyfnmRYIlkUHPEnrOAQ0cJnYSu/aCErtgRzcv7ipOs5HY3Z1VMd24cs8wZ6lBEBLpIzKlAsl
/0vc+hf6LNeMXQF6o9WOvxvRYmkjnkesSH3bkRos36bDImMrmFqve7T0sGOcKmFqvOVw+DGhAWED
L7KaHpu8X31btoByYibBIea1L+7jEB0bcdQ1vOd0IiECJ2ioFV0ZN1DmQHTg+Fq/rtZL7NFyHx+U
fq3Hh6KW55Nfbzq9GAyJnPid/c+pO3h6dQ0RKDZPjwhJE5avUa+uT1jggIgfAZXJwU/Z1CJP60M1
TRGUhb5dEOAydAV22UpI7652yLrvWnR3R2fmdrrm+SdTegSeGcqZg3Co7I2QU+cFkOVz2COIRfKd
HT1XdpolTHrdIl9Fqtbj3UVKRm3n5/R/4eXVciAEyjQSAPyMQgzWg6ASszCIwOYPkPvdPv6EtjZJ
2JW0UNpZ2FgqMqnaVpo4c8PN1DTD9iH+xuElJow2jUrFQ2p3ITPFuNrYXo09NDlhpco7tuEBhQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25636415F5478A0"
last-modified: Thu, 12 Nov 2026 00:46:42 GMT
content-md5: HmAzmo1EDzXCsQBcQG1Yww==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bc579910-be6a-4e85-b416-4564cd465bbd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5bf9372b-8b71-f929-9d4b-6da00687c04b/test-blob-89b674e1-34f8-ccb1-f4a4-5e141230c152?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 69bd6c3d-f22e-4fd7-a108-312da650d15b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:42 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-5bf9372b-8b71-f929-9d4b-6da00687c04b/test-blob-89b674e1-34f8-ccb1-f4a4-5e141230c152

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
last-modified: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:42 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x25636415F5478A0"
content-md5: HmAzmo1EDzXCsQBcQG1Yww==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6780f6fc-d50e-4c31-b7d2-c1fd5dd9a855
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:42 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: HmAzmo1EDzXCsQBcQG1Yww==
x-ms-tag-count: 2
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
3KK4pAufIHiuJKJgdOrZiy7nFglbdZWbsVFpSKQ97Qnwwf0puOiJixeArEzpyYSyceFxH3C28GYM
HfK5NtfUcTeYb7Ptr9JGXYry2shIsujNttbCy82ZOtCWHZv10FU/rDsVUFnRxcIPK8HlxBWexGoK
638BEaVp/zXiV5I3UI01si2NM2KP/PETs58Ms3a6+Fgw6+TWPpqVq1Ak7m4w2No0sBHoEJEIe++O
7V4FXUy+J185BmWoX3OT94cSag2C49vE1wNk0ufHKHD0R1E7j04EZcYP99F1i1GeVBgJ9RDiCwqD
QIVJWVR3cd31tBciV2c5DgVGc+sJT0yxxn7OvjJfEjxHuE/Iuwxyl4b0f9c6e/yx0OcKnJceefA5
l5PWqbKqlaLa2p8YcFL51NtlFNB0d0qBHe1LVXWkKT5ejiN4m+7TSuk0X6BdmF+UEce8uGUgxR9I
VYvFX0AsNrFguuIvgDjskcrmPxipI4WOtkOu6HDZPckEMEZjDuupCCju/d59ZZGPzyeaOYUHnjEG
N6j9fk5BhnwZK0/xiYLfPTfvuiWmEFCxHhhIPwRD/JIVXNdCq4rarXZhZDpBnUWku/tOF+MLXyZY
S181+Ud41S693CyrnZGsFQ2vRawWb4DSpIMI9eWuCf2x6mAqpLMv6Y4LhMEY+B5qoQLVXBp5Qdve
Y1TDcN9JD9Iv+rIxgXBZf1wdCuu/uatlnlTj2K3jN6iFTEFfa3mvwnTv6f5rOB+RfNy9XDfvH6mp
XtGKZjckTMIKrDUv+hTjbUd2z9Cs+mU0UVzQJdtxlSyYtQ2nJFw9ypw8YIzqYoHI2u7veVDY/GNs
VRTaUyfnmRYIlkUHPEnrOAQ0cJnYSu/aCErtgRzcv7ipOs5HY3Z1VMd24cs8wZ6lBEBLpIzKlAsl
/0vc+hf6LNeMXQF6o9WOvxvRYmkjnkesSH3bkRos36bDImMrmFqve7T0sGOcKmFqvOVw+DGhAWED
L7KaHpu8X31btoByYibBIea1L+7jEB0bcdQ1vOd0IiECJ2ioFV0ZN1DmQHTg+Fq/rtZL7NFyHx+U
fq3Hh6KW55Nfbzq9GAyJnPid/c+pO3h6dQ0RKDZPjwhJE5avUa+uT1jggIgfAZXJwU/Z1CJP60M1
TRGUhb5dEOAydAV22UpI7652yLrvWnR3R2fmdrrm+SdTegSeGcqZg3Co7I2QU+cFkOVz2COIRfKd
HT1XdpolTHrdIl9Fqtbj3UVKRm3n5/R/4eXVciAEyjQSAPyMQgzWg6ASszCIwOYPkPvdPv6EtjZJ
2JW0UNpZ2FgqMqnaVpo4c8PN1DTD9iH+xuElJow2jUrFQ2p3ITPFuNrYXo09NDlhpco7tuEBhQ==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-5bf9372b-8b71-f929-9d4b-6da00687c04b?restype=container

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
x-ms-request-id: a0c425b7-79bb-4a36-b5a2-7883ec01e1f8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

