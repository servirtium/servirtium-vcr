## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b1ffeafc-2e5f-6bae-b7c9-9c8d3d73ce2f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_Stream_StorageTransferOptions(1)
now: 2026-11-12T00:49:05.6937318+00:00

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
etag: "0x23ED7378E382240"
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2fcf6f6e-20ad-4907-98e5-e89f1669c4c3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b1ffeafc-2e5f-6bae-b7c9-9c8d3d73ce2f/test-blob-479ceab5-23b3-4327-d295-53b11024208e

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
7JroL4x06HqRrdjVIaBhwqTPaautvvfYw7zfydv9W5KoDqCiip6iQQIhtgZLUSIxNJEMQbp14S6j
EGzQlR6elFFFLRIAvjcFLCioiwjwjHKZrZVK8BnXMixx/noy0qvjgiG0BSMPMXVZBhWRzFUms4P5
NueJVKM4bfrmjr+901l9xQjmO4ZOiXwf8OkERmbWS0v2OZvEWi19fJgpKaO2nDO7FAdMQHf9q6xr
aWS6MyeUD0J0xpm9uGraaL/uJWDZaVO2STFeigvT+Y3uWfDJw0hwlBpgQdaZ/Vuccde4DoVMkQAR
A+r2NYU3oM0Mzl96EaR2fpBGeSd9HEvVwhg0GusIosfwuMBeel6UKKEIjS78ImAyQo/1BRjZk+af
IHNsA4biAyyYiVnkGAQxsVCGdI8c2Z+3AdhbEpyuFyTZvlnrJyUbJokCY5gHTSqLw1TIUh9Xg0bT
tQGthvGP6XI0C1mqRokqak0FGXUHsLOtz09I5cQEgjsSF3IkbaCYc3kl0kLQ4X3KnujSUWnRzARN
ALehRgSuMIkdly8XBv2tbaX84t5x3e7SfkfcMjDRQUtu1m3o9ix1d6K4skpNs5jqJOTD1eom3CLI
z8i80f1YTFXkqS+QxHZ5hmo7uCqkhMuv8Q1MDmxhR/pKHyZkuKWkX2b0aQloWmBtSk5/6iP4JEv8
DeDvDD3og2E1RaRPFM3FlljDrxrBR5et3sMe4V3WUfvbZ6vFtVMpC+aoMhS7HTWBuVPKNHUwO8ZI
QS56yqEDXvOpdK0hAOEFmqM0GBSC8sCNnScJDByFqizlfHQkr0FFpNMgEaiIX7lyxZrR/CKxxk5t
7C15+lLWI8qAPINt4Oti73NAYuAXBD1ul0aCtK4JNLYlt8ITy6qBSe7eByM1BeSvbg2ucGRuVefv
C2MLVG8bdwfNSCgoTyPJvxjyOf0aOJJi00WhWsNSt2LbI8BHdfV/wpAbaL27hh/p5bFLexzq1NPR
qYApeh1Ee5DGTCtjgkoic3Zs/9DUpk0mt3USBjtG8U7sdct0VUhy1uws9TnzhmJmKQelfdUD/AIz
AsOnMnVVgFvcdgx+rR0t+SnjqLETMzESq9wzoHR56XnJQVOFy6R31nTeFg9W6HzqeIOrH1NRIM+R
lYaYIeDnY42StWzKqC6FbNE8NRwhvMJgSSjwzcomdyCE8zUd3rSU9rOCwzMPIM9UJrKBFOqycNnE
ONi49pXDbD1LRbX5Z44cqD5pn/iPUChYnKYXpGI10oNcWaXc3AAdvlb1w9oZW78kZGysSNDgNOev
X1nurMjbFnMynA7oQMs9S+ChmY1OP0Hn8j/1iYmyfCS+LH2mLxKOGq1n5r6wOyOhbv3vPppaYQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C6708D0DD65BF0"
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
content-md5: GjkkvwaqSWc2NBj9AtqSTA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c72662a-102a-4bc8-bf46-fb5c05c785ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-b1ffeafc-2e5f-6bae-b7c9-9c8d3d73ce2f/test-blob-479ceab5-23b3-4327-d295-53b11024208e

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
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:05 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1C6708D0DD65BF0"
content-md5: GjkkvwaqSWc2NBj9AtqSTA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d994cc3b-9e4b-48c5-9fef-fbc4871f1e29
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: GjkkvwaqSWc2NBj9AtqSTA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
7JroL4x06HqRrdjVIaBhwqTPaautvvfYw7zfydv9W5KoDqCiip6iQQIhtgZLUSIxNJEMQbp14S6j
EGzQlR6elFFFLRIAvjcFLCioiwjwjHKZrZVK8BnXMixx/noy0qvjgiG0BSMPMXVZBhWRzFUms4P5
NueJVKM4bfrmjr+901l9xQjmO4ZOiXwf8OkERmbWS0v2OZvEWi19fJgpKaO2nDO7FAdMQHf9q6xr
aWS6MyeUD0J0xpm9uGraaL/uJWDZaVO2STFeigvT+Y3uWfDJw0hwlBpgQdaZ/Vuccde4DoVMkQAR
A+r2NYU3oM0Mzl96EaR2fpBGeSd9HEvVwhg0GusIosfwuMBeel6UKKEIjS78ImAyQo/1BRjZk+af
IHNsA4biAyyYiVnkGAQxsVCGdI8c2Z+3AdhbEpyuFyTZvlnrJyUbJokCY5gHTSqLw1TIUh9Xg0bT
tQGthvGP6XI0C1mqRokqak0FGXUHsLOtz09I5cQEgjsSF3IkbaCYc3kl0kLQ4X3KnujSUWnRzARN
ALehRgSuMIkdly8XBv2tbaX84t5x3e7SfkfcMjDRQUtu1m3o9ix1d6K4skpNs5jqJOTD1eom3CLI
z8i80f1YTFXkqS+QxHZ5hmo7uCqkhMuv8Q1MDmxhR/pKHyZkuKWkX2b0aQloWmBtSk5/6iP4JEv8
DeDvDD3og2E1RaRPFM3FlljDrxrBR5et3sMe4V3WUfvbZ6vFtVMpC+aoMhS7HTWBuVPKNHUwO8ZI
QS56yqEDXvOpdK0hAOEFmqM0GBSC8sCNnScJDByFqizlfHQkr0FFpNMgEaiIX7lyxZrR/CKxxk5t
7C15+lLWI8qAPINt4Oti73NAYuAXBD1ul0aCtK4JNLYlt8ITy6qBSe7eByM1BeSvbg2ucGRuVefv
C2MLVG8bdwfNSCgoTyPJvxjyOf0aOJJi00WhWsNSt2LbI8BHdfV/wpAbaL27hh/p5bFLexzq1NPR
qYApeh1Ee5DGTCtjgkoic3Zs/9DUpk0mt3USBjtG8U7sdct0VUhy1uws9TnzhmJmKQelfdUD/AIz
AsOnMnVVgFvcdgx+rR0t+SnjqLETMzESq9wzoHR56XnJQVOFy6R31nTeFg9W6HzqeIOrH1NRIM+R
lYaYIeDnY42StWzKqC6FbNE8NRwhvMJgSSjwzcomdyCE8zUd3rSU9rOCwzMPIM9UJrKBFOqycNnE
ONi49pXDbD1LRbX5Z44cqD5pn/iPUChYnKYXpGI10oNcWaXc3AAdvlb1w9oZW78kZGysSNDgNOev
X1nurMjbFnMynA7oQMs9S+ChmY1OP0Hn8j/1iYmyfCS+LH2mLxKOGq1n5r6wOyOhbv3vPppaYQ==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-b1ffeafc-2e5f-6bae-b7c9-9c8d3d73ce2f/test-blob-479ceab5-23b3-4327-d295-53b11024208e

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
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C6708D0DD65BF0"
content-md5: GjkkvwaqSWc2NBj9AtqSTA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e99d116c-a398-4440-8a4c-6fd3bb42c9f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:05 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-b1ffeafc-2e5f-6bae-b7c9-9c8d3d73ce2f?restype=container

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
x-ms-request-id: 9e5c0650-a051-40fd-a806-ce0b7066a756
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

