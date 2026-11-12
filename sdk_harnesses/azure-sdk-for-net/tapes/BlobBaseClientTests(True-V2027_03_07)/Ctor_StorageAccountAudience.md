## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d6c1a037-e75f-13a2-9dc0-361e781635df?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).Ctor_StorageAccountAudience
now: 2026-11-12T00:47:44.6244401+00:00

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
etag: "0x23607BBF5BF3500"
last-modified: Thu, 12 Nov 2026 00:47:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7d7de50-ac1b-4e39-a250-e507342cd310
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d6c1a037-e75f-13a2-9dc0-361e781635df/test-blob-d34b9b3f-c68f-eb1e-80cc-475cbde0ebed

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
WV6VEry8qTRGNjIjGaBxfMUxBGEnwscNdrhpTtX9gSRXKKaMv7lCeveNjym0fvn8TrlZRhLUt5eW
h5wEUlteSbQOzPD55bwM74lqmjKeWPi+bf8cpDoRg3EO9TgdPiicLkZ0prIIA2j9TFeJaR1k+C6j
ReVbQqV5/El/6u+E77FgzmvsKbJFtmqWHlfiiBlUqv0JefhDQOyh+qlpiRh5eV2mKJuxeM57Xo96
xCNNl3MvK0Dxena4HI1+Sy4J3C1RHaX6PF9+ojEvjhtpyHzJU2M1Ol3Xh/7n7QsNMi2fcoFiKaZ9
U1oUsIkOwuxaT1QQtffL06LPepanEk5TcW8EjxuZBp/WTAAIIYnUyMQSjJ63/H011J7fkq8Q1kAM
wD8ZCjPQwUi0Omj3wrIY+rHRlIavnHTxzrp9uXTwxXa//GFKu76QQcpVA8EUPhLsx5f9PkG6XCTK
Jzt5UwjUw3XyN8VRzj/yQFK7WZiy3I+okfLc8oY0BZ89f5OCF+7CgT9MIgdMmvhYC/7u/gOLF0qr
0MEW+NHuvTEmFE6sbylk+dhZZrqIW/b5hOeIRgecsWhI10YsrIluXWTVJYaqq5vUigQqMbGQI3XL
HHTpZncqimLmY5jiN01O6ghWszVwTthLs7wCcX+2uLPRYY8VhPftqpsjxEcD8lO23EapOm8/Ws6b
nbK6JxniL6vkENW+OWYQaAiaTIqQSMBpTJU4DX5EkgfBeeZFMoOCQZWcHuJ9+KLgmNFnpQ5EClXx
UduDqSEsoH7O/b9/yjaFFwv08yre61PyWHSt3O35fW6RVOGn/pdzb35kr/viYc2a4o0CTxYrEmaI
kVGsf8OR1YBQ7XZV3Rl0gYSsejtYEPanEvpf9i1YZkF6H21FxvC609p6kXNWRQRzjs2Sf5gqL4Bb
BW3JMd5S+Ic12r6sLrqU8adg3X6CUMz27GhfxeepUO/s6sCC8aH8KJjsIWtGxl8S/o3wyVIC2LWg
00R18jOgjIrOwEP6EQAFZLXllS5hryUJTMZZuIad6RIL4R5dhjVlTJXgdwYbGO2N6mWcHEKHPyMf
bKVsRtMEMNYx7i/iqN1/f0mZgDge7TTZzM0hAM3PhKL6PhqQ+QbC3EYw6im9qkKHHZz57b/qAH9x
knkF4zAJYWqN52rD74ZD1qPx7gIKGyGLmeMw1pbiED2bHmaMvPkWJoi/MMPYwy4Wthcb+BF8Z3ZY
eklM2YvUqtcsKNEfthqq28d6Sutes9W1Gh9/xhcsH7bvNEKvyU386oXrq5tc9v/8cR1JARyL+cZz
l79rVePAAAkaMILX+hJ6fWBlcgc6WCMgglT54h2ZYzp7PDGOkJSiK6uSQsZ8JXcLz4O8Joe/OQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FE52FD0EC06360"
last-modified: Thu, 12 Nov 2026 00:47:44 GMT
content-md5: ySOrmSmRVAh8ZuUlvcBMpA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3d87d46a-575e-4bac-b725-49078f26d43f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-d6c1a037-e75f-13a2-9dc0-361e781635df?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e46f129-59a0-4e3c-8b74-f6e0a7196633
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

