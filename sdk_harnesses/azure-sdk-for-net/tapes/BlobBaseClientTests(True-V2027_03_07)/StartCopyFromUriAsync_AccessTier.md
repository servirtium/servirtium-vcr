## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f8648614-ea51-f766-3644-df28992fb3c4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_AccessTier
now: 2026-11-12T00:48:27.4450161+00:00

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
etag: "0x27AB40C6E502DA0"
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 667352d7-2d15-43aa-a0e6-c57bbd908650
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f8648614-ea51-f766-3644-df28992fb3c4/test-blob-c65128e2-cae6-6f6a-cea7-b2ca18edcf49

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
dsvoJEbYQRrmSPotHwuLj0u0OaTertZKHPQpqjeb30l0lbHOR45+CeY24J3QPFDDGyN/Y7Qra8j0
nQhRr5fjSmmxuYpZvUi8Ni+9p805et+kZY4UG3uUSSrp2qmGLFpPU5U0HoLFal7awy2EbcT6uyMo
rUkIzi/uHG9gb+OeNQrVbVM3BVtc3vowOVhOENtl7h+GXn4RR4VmRgITZfp6PI0jr/9ww7XHy85O
15TWnwyT+oHEF9eLxCbO0b9YSXgAtf3LK2Dc9StpvpOvwm/wj6b2f2t5tiS1mOvZovH2b4FWTiKX
C3SrtwVWWllE2wG33kEYYsoNh/7YFZN1A1I5ck8RWXRNWIQxSshmI1zLcbzpIcSw3gy3Sccjv/Xh
NrSyHOgJMoGNaoW85hcCpmSiDaPWi+GOiZRCWhCtKZiOUBQTtAZzwT47XLc+8/f1taJigbJRC6rT
I5NUx9hx4EHsLZYD7vJdLktlmi8pUJWcTaRuSqfmPEVpQJBzHvpmynt2UcVg8cevBVJm7HB7qdL+
t3kzApWZBvFRma1h6hBR/tCzs//PO1vdvkVVf0/U7pe+dWeAM8fl3UrUD1gZTRpCFe6fx/XTLnse
VURQQ4ahfKsWo3Wo0coJzdW0+iwDxHEqE2phNSah6kbrYd2DlZrEM5OsA6mlmUMjlfofHjNPGpDS
Ji8bQEaEdLguvW/shjg778eYVsHHhHkmPZ8sgcsSm0dNsG5qqPNMKI7wdtzUNg/B4y5stsPPC6G1
9QKmWPLsHCEon9bJ0UfUTC4y1g6dUgeQap2cpuSDfaXNtLPxpc+bBFq6q5Y4+BLnl2qVnDSSGKL6
Fe1VT3Y8pSIw/B2U46Zel9K046ZwV3KLtQ567uBxOpwQ9o/iRrTkfQZ0CPz0U7TDNgVh3jT7ir57
yZpnwrZBv8GBg+0XfFEe0Gag/E91lmJZt7jbD1xnFWvRZnwZfLtPMkg6c8/HrLm0Qw7OW45uBTI3
DQv+ZrBlGW6BRRbUBFOrUMoGOyOSkgr/JstNmbrdY2BJ4W6wUcuY1VlhRWai3z+6IgvDZ8oPpXsA
/0DlF4Czo+K1iiLk+/7+bmbKMEyjXEaLk3avGfuWOjzzr1GLsr3ZraKE7FUd1ScMxfhkRXQuXKP5
WYQJBIrmH1Dl8Uutc7uo8IOqH2/xbr1PolQCMfXIxVOukVk40KkYns0EN+TcX1I9u1TxgzwzCOrH
uWE14+5bHSv3/uFibyDakoGi7TfZc0MCxXWh1kEWe4lvcRZH4rrfqBm45GBw20szF/G7kRqz7UYd
Mx54ukbq4IJY8/4JkrDHw0QdII7ikuopbb9QW+puu4PQKa6bZu7TzgPdF+hNKYRA9M3Wlc24Ow==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22E387DCCC5BEA0"
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
content-md5: o0vldkbmevy4nOx96xhyqw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 02573086-e949-4afc-ab62-addaf725a8aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f8648614-ea51-f766-3644-df28992fb3c4/test-blob-4d4e33a1-9a86-9885-e937-7a3969012b5c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cool
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-f8648614-ea51-f766-3644-df28992fb3c4/test-blob-c65128e2-cae6-6f6a-cea7-b2ca18edcf49
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F716A0F625FCB0"
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3c5c8e07-86de-4f29-b0e4-d55bec77655f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-copy-id: a3c6c372-7236-4913-ba01-146e8fb6ebcb
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-f8648614-ea51-f766-3644-df28992fb3c4/test-blob-4d4e33a1-9a86-9885-e937-7a3969012b5c

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
last-modified: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:27 GMT
x-ms-copy-id: a3c6c372-7236-4913-ba01-146e8fb6ebcb
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-f8648614-ea51-f766-3644-df28992fb3c4/test-blob-c65128e2-cae6-6f6a-cea7-b2ca18edcf49
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1F716A0F625FCB0"
content-md5: o0vldkbmevy4nOx96xhyqw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa30986d-e448-4f02-abe3-ab19d0eba0de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cool
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f8648614-ea51-f766-3644-df28992fb3c4?restype=container

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
x-ms-request-id: 2f42dea9-b743-4703-bd91-05c4b2d8a899
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:27 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

