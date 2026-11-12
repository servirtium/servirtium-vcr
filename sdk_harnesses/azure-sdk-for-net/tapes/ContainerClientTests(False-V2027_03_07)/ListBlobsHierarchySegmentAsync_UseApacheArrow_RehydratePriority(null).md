## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8a082b35-7f26-ac5f-1360-d0acb1cf7dbd?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_RehydratePriority(null)
now: 2026-11-12T00:43:15.9845027+00:00

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
etag: "0x1C1EB69EAE117F0"
last-modified: Thu, 12 Nov 2026 00:43:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f968b484-c3ae-485e-ba4c-7ae6fd342dcc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8a082b35-7f26-ac5f-1360-d0acb1cf7dbd/test-blob-1dd70754-d3dd-80e7-5fd7-14b637a1a976

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
vKZ14FnKpeITSQXjfHvfdfNgyKOQf4piQ4gqTmqpdXG2Wu8LWpxjimH1CpPNBAPk+J7D19kG5j0c
E5zQn1Z3adSULCKL0xtW/D5BmnT2lT+ERlbL5Z2XsHSy70YAk+oLfaC+ONfhWSSCbNqbxUvIJX5c
S1kAq4Q2/Hyt2OTVVWlTNh3TN1xoo+wySXjD/Osp6cnHpEeRC9IchztaM4BArRdxSI4t9e0h9Khs
zmILcwCRhO4aDbEhwSpLtq8gDW9r8pxhUbRc+/Tcpq+eJD1vERQ7ya+SJZ9lT4Zj4j49AOc5ANvG
qSFLNYn6PmcBgpzt26Wb5US/2cz8+wIu+Bi2nqXIZSRhqWfy75MmmOc4ZMzpdgeZoRuieSYPya0f
HT1wQ5/COB14jDE9qPWwmUHlxJc1RIIQHfyJJez9Ud+509JWtVRHdiuvcOnVW/kl8uDkKQUW6di7
YCaiOBIxezpSg9UjWuPtnU5shdSYOsEDZDMLGCfao+n5m1UtpT4YfvWug9cjAZj894y3qmQEIiVk
ntPfJWISd+DrKr+OwPgQUwff6rfq32KbDyGbI/mF9XgwyAZqOViSmwv3N9fZbjeTplZcJThter5x
RBZBd1TmZjVGXffypRquTE6r86iLwqDqCHyjKNBAwk5H+fVCUSS3ENGhkhA/oAA8rtjpwoYW5YF1
Vm7XQz5lBpuoq6wka/sq8+PX6TCPqmh7Znr3Vv/IMBNzzfq2382TPIt1l/VUF0Lcv86jP/xR5awG
XNzDbbCb33qZsZ4AcxMVQ6ykGhNyJ084GpYxJfAXIedOr4Pwz87b2rd6umak3Eu6jftPrcuYkzSN
i1IZarqKgo+2ssSQJXTeyT9b+Gzpkz5Kdpf0x3QctRxOY0R8wXD88DjW7SmHKmiHceOLPZvHpPcT
z/MjlboamfynQcIwYQjPXwg0EqUUw0svbVaQkHiAhr9MaPF82Vp9vFMt3+mmVg/bu92Tk5FR/wyo
8ydjiQmDJroC4/kWU4attlZS5+NiiRZHtdSb7fMt+mnl0+UzGjJKqbguo3IVxWhX5d07/xcoRWoR
HNQ06DnG1emQMH+gepwjBz0qM+WjMe9sQwgW8vtRvY56If1eFsF/Z86JhZXotmtAF/ja/RKEbevk
x6UwsOLuP3PxJliexfB8q8sXGaxag4yd1doCdr989bQSeU8cT7brm0Yi95ASolIHXlJGbVM/ikMY
k9sI68izdTGkjEuhYFwULH5lOIz8ijOH+hhsNYhg0u4LA7vb4rB+boFfbhUGZv72MUHV2VK3HAio
gfCvRz+oQ7lcllygOUnN58kKnRwdgJQadQRGi/mcU+eyM2G/zidCtitbqc+hVvf3B/KIrH/sig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E7749B1D0E5A0"
last-modified: Thu, 12 Nov 2026 00:43:15 GMT
content-md5: xnhl9RdWB8+85k+tDFcG0A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db868d02-e226-4d71-89fb-bf62ef5df70f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-8a082b35-7f26-ac5f-1360-d0acb1cf7dbd?restype=container&comp=list&delimiter=%2F

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1181cfd4-407f-4c5a-9fc9-7082390c81e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:16 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-8a082b35-7f26-ac5f-1360-d0acb1cf7dbd"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-1dd70754-d3dd-80e7-5fd7-14b637a1a976</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:15 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:15 GMT</Last-Modified><Etag>0x20E7749B1D0E5A0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>xnhl9RdWB8+85k+tDFcG0A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:15 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-8a082b35-7f26-ac5f-1360-d0acb1cf7dbd?restype=container

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
x-ms-request-id: cb7e899d-2d47-4b39-907f-f7415df7ffac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

