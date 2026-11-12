## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-984d8feb-7d3b-a967-a4c5-87073bbc3759?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetHttpHeadersAsync
now: 2026-11-12T00:47:05.8605635+00:00

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
etag: "0x1CC491F2DCEDCA0"
last-modified: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ff7699fa-e306-41b3-8a3f-b81242746a9b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-984d8feb-7d3b-a967-a4c5-87073bbc3759/test-blob-da4075d8-e5e3-f936-ff64-23af2261ccf7

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
hRmL19V4D3+5cJ3NT+olyeY7VTgci5EFWVSY11m3hkL4kIIiMF+DX2bAIXNHaKkUPlrJ5wuU2/qH
hn6B3zglAula1L9oA5iGt/bRW2oevfCqhJj/7Z43ZLSHmqrhAoAtmx+J7ZPprDvBQzAVwoCQaciN
1lufJhRLI3AL4GntpLR2o8BLldBcwNddPaptIqIz9zHiUywkjXQKPsoj3svS1J58nx7ARNT3MRWD
Quhp3QDO1+k3C1GHURVLQFYGOOIMimkM8YODc7Jd6iIXoEuMoWDJVQfimshN9E0IdAR98fgyd7d+
XOt9SmM22iAub7HKvp/1PePbKfCgv/w1e/6u3/kp5CiTDkR1SwqjrL+oHoScPbZlh7QVV07H3Z3u
SM9kh/snBYqJN7BagPHYN3wx+KB4mT1ISVhEFI3ZyzCmhgM7PiXEgBj5EwYFCgbCPCDRluX8dq6R
HD2i4vH9r2uAs/runPhXbHeHfoY3Qj5SgtdsBzVKqQ9UqSHnIZ4n/GOahVYL1KAneiltdfgnWtr+
UGAZkKc1NQnrmfPWcEvZYIEinLzoRq03RY0M3TQWLE5H6NE+DWu8ZFBMIDqtUArekxR2Bb4dFgqy
4ksZKVfV1G2kjod5m1IWZjhsmyVzivWDLkkfnyeQKtHHiysgojr4d0zNCcGCZPjCYJ6FsHvkPlhV
lvsNtTRFE2S1sg8n9sP9dCPZpoEzAMlRXT+IC3pW4k3Sygw/6sIXh/VdzLHom2raiDxXCpjXIpUx
vFj0vAjpXs/CVCu3vYlhwh6L1jQXacHVroI9/9i0+qh2Di5pIsrtc27iJUY+Isqy9Uh5TEthGVKX
Hw6Fq1/3DlmDQK9b+J9TnWPFNUR6l4u3iwqPOq5cFfTc0gO8aMcO6xfsuuIbV/2pJq7om+QNHIeD
zSBVZ9OrJiu6fyWblzSbt0otjdypmzMM5hT/dHoQzrZ8OZqmuYNDQZS2YdjXDo56TOSZ4I6r2jHt
SIG/rLGxqbBvH16a9P3G6UxI8jpaNdiFhSiVdu0n0F9puXEChJXiBbcnZ+4w31fm0/ZCYuf3khKp
OSaIGzLDSE7/MDuMxGW3ZeyCMs3pVKXRr6P35G53ciZeWUpuWeqEZB+gMa8bWg6Qi/37dF9Fv+WB
t2yPy2Pgh74ULWsbSQwC/s2uSSP2tVSVZllxfP7HGZll7KF+9Zm7v6nwBiyjdULw+HWRlnbBiwIX
+WUKbwvATRTRtVxqhAg08ol5Ba4n8fAWgIOINYIio2CfZvszsFCdMLkY0b/lhnRtXaTtR4ZT8Ad0
9O+INxiSrxH7yh0NAUI43NT1DyAwMfkOG9jeNFzaS3XzvrxhFfmghSKu6bxWYFthtWuyXuDnRA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D02B086262BD90"
last-modified: Thu, 12 Nov 2026 00:47:05 GMT
content-md5: 2sYupZjtg9BfCFs6juJgPw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bc53fe82-8391-45f0-96ad-69757da4fcea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-984d8feb-7d3b-a967-a4c5-87073bbc3759/test-blob-da4075d8-e5e3-f936-ff64-23af2261ccf7?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-cache-control: uflngktuqojrbxmjxfrn
x-ms-blob-content-disposition: lwivbvcysxygeudkrnnh
x-ms-blob-content-encoding: eobtnvcdxymigrdxwomj
x-ms-blob-content-language: hubspdnftbrjqjivunif
x-ms-blob-content-md5: 3KsmsYALZDvRaPwKnO6ybg==
x-ms-blob-content-type: syaskqylrfncbdajniek
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C8AA1FD7AF6720"
last-modified: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19be1967-4999-4486-a473-d72d255ee0e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-984d8feb-7d3b-a967-a4c5-87073bbc3759/test-blob-da4075d8-e5e3-f936-ff64-23af2261ccf7

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
last-modified: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:05 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: syaskqylrfncbdajniek
etag: "0x1C8AA1FD7AF6720"
content-md5: 3KsmsYALZDvRaPwKnO6ybg==
content-encoding: eobtnvcdxymigrdxwomj
content-disposition: lwivbvcysxygeudkrnnh
content-language: hubspdnftbrjqjivunif
cache-control: uflngktuqojrbxmjxfrn
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 160f63ea-e86e-4468-b5bf-d1f49a828a1d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:05 GMT
```
### Response body recorded for playback (200: syaskqylrfncbdajniek):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-984d8feb-7d3b-a967-a4c5-87073bbc3759?restype=container

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
x-ms-request-id: 81d03b2a-3a55-4f6c-a024-0c0d620097cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

