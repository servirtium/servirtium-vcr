## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-52940290-4c99-7951-b687-b2d189ee0f61?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).AcquireLeaseAsync
now: 2026-11-12T00:47:31.0811891+00:00

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
etag: "0x1DF31BF50ED0B20"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb9f5885-06bb-476b-887e-64193b4db7e9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-52940290-4c99-7951-b687-b2d189ee0f61/test-blob-d6bd5603-f6c9-08ee-9f47-d29cc1c4dd16

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
3bf6jCd9JPip+zErbcWML3v4qPk1Z6SZFIyyUnq1t/GqnPPS9II5hTHELM3Fwprau6MgyRzj4HYS
YHiby9J+9EQ/gNHRuTv4vyLHcTrX1FHx2JbXlO7Vxrt9wJMKnbpeRjiIhULJCAFnKAn5HG87Oosm
qfI7p19WarkVVPmo7iFoaSoCTk4PKM+Vb2zk26pLQoUH5PTHIp/YMhuIs7QHvzrokbJFOes9FoEi
pjfyco8PyhJ0oAktoEaLKRwzh3UbjbAy+0n3BgiZys1zpXxn5b+Meeiikx4wu/BsuQ/PCo4MBxiH
wHZFF8QJ29Y7ufvJI0Rcpg6MePqRAT9Zi0z5yr8/Z51j4CVIR2EkmbhI9AH1opbLcmN/f44e9b43
7It4DxAW/FJdZkMeFF+sZ99BSQw9Y+i2Llhcv+cORetmEVvVrImnMfiulzxSrF4E0hiv3Kyx+Yij
weG4ujxrTyBXuAID17tVmhcUj8yrY4H5V+zOX2g/tBjSMuqo7ne7Q0gc+/RbAPtdWkKUnWq7+F5f
v2JQnO+4GAPpMaTQrKyfWEuEj2iNnVbwcQUmqheuFjmMSS8Va6ZYY+Lwcs9WjK2V9EQeN2j10SEL
XyvqkW7sOxpqQ2J8iu2lKyuGnSuHmuVXkLXSkN7RlncOCQt7bdFzAza060hKGWpWeAw9bzT1hMVF
kwG5Gas7ma3rboHhKr1aEpn10q6cDHdLfBfSkyZDGYRGNdrQuuqLeVGbX6vodE5O412b/7EXqYaK
bZ2UaAaGp1T8m/TjilivaVlcAKzLYgfIhLDJqBnSL4tTRUxM9xBLFbdW69laa1gE65ZYu6navguW
y+RVvP87KWtpj0QLYnJIEOv0dXYtbhhXxbyDenTieYZBtisr9li3GsFt8NsU+YgjD6q95UmUaF3L
/fdDuK/3hha9yqxGHRmSPVq0wH08Q8szX2vJJJM9rE3OYPlgc2ISdWrFVi7c3fKRKqju36jfjror
EFlELmGCgB1feLwgMsn4okoTd+ydVoJ4OPrrTsyk7tE+NWMJzkcIQ9UQfWQ1cPjf9j1ezBfNjrnW
y/ZnljJQuonr4fxl79MCCzMWjNkdQ8cBDFePRiK5caepMgJRoKyjv8LbSo77eQdpW8HjtgHfuYgu
ZorawXNnMXBVvL3QsWqHc8wXQfk5BZNQJepg1bqlyXh6IjkiyP5PdBgeprxKmKpWXEM1yHeP9GD3
ipuIBlu1sPJEVo4wZarOyM3gG1/WBYxACnl3cAEA6i7ZKj1ixm68aPXKBUIbJfeYZgCqrtkBIIUP
R/ziPUDwQ2tgVzptawFfI7JpCwBKJeSB3wkAVjxU1wm4U35y2iu12cHWus69K/v+S4snmBWExA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x224F522D808F280"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
content-md5: es3vgejL9IBTwDbY749Twg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c3c0da51-8f22-425a-84ca-7e71a40fde7f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-52940290-4c99-7951-b687-b2d189ee0f61/test-blob-d6bd5603-f6c9-08ee-9f47-d29cc1c4dd16?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 5e601722-ef36-2fed-0c7f-30b41883ec49
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x224F522D808F280"
last-modified: Thu, 12 Nov 2026 00:47:31 GMT
x-ms-lease-id: 5e601722-ef36-2fed-0c7f-30b41883ec49
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f3b7a00b-7967-47ff-bde5-9fd7cffba8e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-52940290-4c99-7951-b687-b2d189ee0f61?restype=container

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
x-ms-request-id: 4796dc38-09b7-4377-9919-09033cc9f1fa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

