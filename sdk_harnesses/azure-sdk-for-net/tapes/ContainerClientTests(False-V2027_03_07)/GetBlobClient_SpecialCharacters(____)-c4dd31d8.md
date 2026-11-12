## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-198daf07-80d7-6f17-eed1-92c57ab0cca8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).GetBlobClient_SpecialCharacters("  ")
now: 2026-11-12T00:43:12.7644846+00:00

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
etag: "0x1E957EEEFCC4800"
last-modified: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 916f1b48-8ef4-47f8-8e70-9b4bb82b7c5b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-198daf07-80d7-6f17-eed1-92c57ab0cca8/%20%20

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
oHMaNt+hqWG7lgum9Imzkn3mmzoW5h10lL8JxnloIryVjPzL3spmZgYsXkB1cHpkHv9IlBWSkblV
pqIgl+PoUnNPEWeN57OzfzU06ojd/iREpad5H46nAvtCdTgoRs4jRAvNJl4S1zZMlRXfXqcweKd9
3PI7bjLlqA5sSnF6izhmEaZ9D9jFMc5wLIp5x6RTEf2Qqmrc59XY531QpYzE0QrceU0As2jPuKoj
ykGobOFqGTh06uDOiSnRpChadYtCq1t/nE1XU16VwfK/uB2TMHuc5oxTUOcpDvAkLw5AdEMf4R7m
KM+TEsXa3yjuDtALPXSsvo/+7ltzVY1dMyNQVEyuoNb+rAerCNPGeHG+OwAfGPGZk7a0IPLDctNC
Nt+iiorcP275DJBtALW7N3bptRqNPRoxtsCV+n/jOzo0adLzJO7m4vuRJQthLJMB+Ol82b24tPjE
cdPJRkTvFdFWOZbjyBOHA9Me+xgP0IotlAKWZ2J9e7XZL7MbHZu2og86CvL8HS/V9dbpmbjgtaBI
nLFCWa5u2b3hCZlga+U3aFkI1cWXMHfSwHGMk+H8+XkS0oHqdElgyzA0GxOWdYnwsjFf1+DasWs6
b5g94kbc5RAfTZlkTfMQpwmVYhVjPErnnOCwnSGZNyEVrwSwI+nqWDUDdyfwi2Q9TjDXRU5W1zNN
VUZlLEfvhRZ4T53uYIQfqgrfYMQj9xB8ck7wwvLSvtjRYs2jhCzuE/EQeDzGT+6st5pEd3duKl41
6bn5/sIkpZDFHf62eybd8UzSEn/TtSNgRApXjkdhYzdubpty9BUv7NKrATHw9Tx0ZoYqmxffYjSW
mLm3zBZJZLrGRw2Kavw3oyWsJ7PxcE7O4ijANscgjgtn3Ftbdx+8Yp13Ka0v6fuJ8vjxMzqApShr
6entiS3yprgBI46g3CsF8MUWeUahnvksNkPPLlvR5jYz8I42ztlwhIP0LsZt6RbM60N0aSzhyUrw
wVLpI3ddLzxXbeyczyHspvTDrHAyv00tAkIYXHwKUSZERQyGhmEMl/6JFXwqLxshiMM3Hh3avgIF
uyE0RNO/TRvGWIoVZh+TtxRxqKnQA9Im99S50zIIaYYKgco/11IrycdgY9aRCyKjo2cIaBVYNLhO
DUz+Bnrove8DCuRUU9/BRt7hb5/7leuyFS/L/wBxsUwS8ckGLMNNeKXnjQE9Tk+HRyI2d8QZUnhh
TPBLHb7uklmXQmIWuxkblPf5FAjqdcffQ7jeOzqI+J5RpODTAlvn+funpQztcYsIG+LMID5vdtYp
bNkGD1YeD0nDxRY5R5KcERoNQs+68dEs1R9Xu9hg4S4JqpWB4emkiZXCKax0z9RQMA4jYjMGbg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x246F9AAFBB25600"
last-modified: Thu, 12 Nov 2026 00:43:12 GMT
content-md5: qci3xEzB4jeQnRoZtoZuJQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 650599b1-9a12-4f32-911b-2000bca4b445
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-198daf07-80d7-6f17-eed1-92c57ab0cca8/%20%20?sv=2027-03-07&st=2026-11-11T23%3A43%3A12Z&se=2026-11-12T01%3A43%3A12Z&sr=b&sp=racwd&sig=QsQfC8Nu8WKOU%2BqPYx9JdXHxpnm5fHvT4ye6z%2FvBXyU%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x246F9AAFBB25600"
content-md5: qci3xEzB4jeQnRoZtoZuJQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4cb9b091-631d-4674-a7c0-7a79e4a3d67e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:43:12 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-198daf07-80d7-6f17-eed1-92c57ab0cca8?restype=container&comp=list

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
x-ms-request-id: 817cea45-4f05-4430-bcc8-a1ce5f873a74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-198daf07-80d7-6f17-eed1-92c57ab0cca8"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>  </Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:12 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:12 GMT</Last-Modified><Etag>0x246F9AAFBB25600</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>qci3xEzB4jeQnRoZtoZuJQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:12 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-198daf07-80d7-6f17-eed1-92c57ab0cca8?restype=container

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
x-ms-request-id: 61dbf4f7-70ad-45ab-a1e7-52df4f57ae8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

