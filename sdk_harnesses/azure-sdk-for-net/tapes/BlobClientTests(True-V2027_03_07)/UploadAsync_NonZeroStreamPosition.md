## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ca662a24-ebf0-9b35-a262-6457d2a8f8b9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_NonZeroStreamPosition
now: 2026-11-12T00:49:15.1312097+00:00

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
etag: "0x1EF1E95BC4D7140"
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4872af22-fa5b-46f6-8712-cc39028809c3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ca662a24-ebf0-9b35-a262-6457d2a8f8b9/test-blob-297fb5f5-4a97-6cc8-9467-be2880d1fb2f

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
mgOaYHmVqqtiwL4iKRjS+FpO02zz4T2Vrl+wD50el47I0q/YGqZ3SoIvSFv4jc/gbe9JIDUP5rnG
BLIa5ZsNQygwWlZp+t201onqxJjhnSCPz6Ku1XZYuOz1EhXzXWXmIQUyxzN4d3MRlUmsJCIh5GeR
ihX5X26x2KFqc+fHwHgjA6OTrtXsFlcunEAsrJPJ1C2uYtJP7cGWge+SDgSLSdTQiCB/jTWRpHS+
ysMthCwNoJ66GV6m1Bbh/C3lWgdSo1JsWyNzSkb3Hb1ekSP9afzDhG1m0TB2KrQKnZEIq0lsaydx
wSgImlVXwvugSEPz5JMxItaa7NIh9TFvaK2173F08SX7jKfTu+kXDg401eJxF7n91olz0n5UT8v3
mTGoodOKLFYd91fsXmbsgt7D7SBO/VH0uBjnAR+npz3b2yG4b2w6qqmMUyBhEXgihk+gkGKrqJvg
tOm6ois2dlAaEIJFNBJxiUJ2wqkxkqefxXrPBhbbLzKG17uDfwd9Vt3PRwD23VE8LgcfNObxriFC
G92wZm85PuBPvlxX7gk7+GzMYUumqecpk9gOu/tMlCmZQGQqze9ulggfpx/15T/+5Dt6JU3Wm3L1
h9OXK4PlAykzva6kECt8XctChgLINK2YD9e/0W/bw6TyNEUb1mqFOqP1wSeRWtMQ/ceBkxVwLVM=
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D82E8349C6A050"
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
content-md5: P6vObPZfE9KOjMRIhPduhQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e6d0805f-5cf5-418a-a162-6e1230f6f55e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-ca662a24-ebf0-9b35-a262-6457d2a8f8b9/test-blob-297fb5f5-4a97-6cc8-9467-be2880d1fb2f

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
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:15 GMT
content-length: 512
content-type: application/octet-stream
etag: "0x1D82E8349C6A050"
content-md5: P6vObPZfE9KOjMRIhPduhQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a04d9ebc-c0b9-4620-b411-60849f3de526
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: P6vObPZfE9KOjMRIhPduhQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
mgOaYHmVqqtiwL4iKRjS+FpO02zz4T2Vrl+wD50el47I0q/YGqZ3SoIvSFv4jc/gbe9JIDUP5rnG
BLIa5ZsNQygwWlZp+t201onqxJjhnSCPz6Ku1XZYuOz1EhXzXWXmIQUyxzN4d3MRlUmsJCIh5GeR
ihX5X26x2KFqc+fHwHgjA6OTrtXsFlcunEAsrJPJ1C2uYtJP7cGWge+SDgSLSdTQiCB/jTWRpHS+
ysMthCwNoJ66GV6m1Bbh/C3lWgdSo1JsWyNzSkb3Hb1ekSP9afzDhG1m0TB2KrQKnZEIq0lsaydx
wSgImlVXwvugSEPz5JMxItaa7NIh9TFvaK2173F08SX7jKfTu+kXDg401eJxF7n91olz0n5UT8v3
mTGoodOKLFYd91fsXmbsgt7D7SBO/VH0uBjnAR+npz3b2yG4b2w6qqmMUyBhEXgihk+gkGKrqJvg
tOm6ois2dlAaEIJFNBJxiUJ2wqkxkqefxXrPBhbbLzKG17uDfwd9Vt3PRwD23VE8LgcfNObxriFC
G92wZm85PuBPvlxX7gk7+GzMYUumqecpk9gOu/tMlCmZQGQqze9ulggfpx/15T/+5Dt6JU3Wm3L1
h9OXK4PlAykzva6kECt8XctChgLINK2YD9e/0W/bw6TyNEUb1mqFOqP1wSeRWtMQ/ceBkxVwLVM=
```

## Interaction 3: DELETE /devstoreaccount1/test-container-ca662a24-ebf0-9b35-a262-6457d2a8f8b9?restype=container

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
x-ms-request-id: 1edf3d10-fb40-466d-96b2-6c23802e49f1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

