## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-47e8d063-ee59-594e-000d-d9d18edb3edc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).BreakLeaseAsync_IfTag
now: 2026-11-12T00:47:34.7943225+00:00

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
etag: "0x26EC19AE7856380"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3869cc94-972c-491f-8363-16f11d9368bd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-47e8d063-ee59-594e-000d-d9d18edb3edc/test-blob-2ddcd462-6ece-1b60-f3f8-7df5dace42de

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
ZDhaCfjDW6KqAHCBZB0zGZO485kZDYD1cMxTYXFYfjHL+mxWgTXjnng6g87+3rbVxGRiIduoxVa3
ZZgrb/oxUYI+tmqw3Jde1FQg34qy95IWfpwM9lxVIjUWnhuduC5+CTFMvydLJOjMBE2Hh+bMBW4G
FfFeJFsl6JQ1mj18wBwlotVYZjdqylmzQPIPzppPSZmtlqI9IOTWJ9aTFoqqUEMwYeUQdJ42nEuX
quRpFRr55VGkzip56IHwgj9g1rPPCe+v32y1P9X6d/pXpXYAbRG7mjA4BoIYtnlkH/Jf1cWXx6H0
uTatRKZ7qVcwIkIL8BQtpTyClgJtlijzUR/jmqE0v93VC7PbDVWJvV0q6JQ2WC7dMjCJFDGehyMN
uvOHmA61+2JkNuRhUZfm+NmlQq6TvPjwBWhwq6usNoSQzVNiAiROdOwy0iJKe+CZohtX+UV1ev36
lpKlRU+3t/9g0YRDg/a0Vs3BYerVpoqI1gmPVDw/GlNVaGyRqS+cehoi6apcVh4loqN3sxgTJe8I
HW5GJ2PDIbYw7huJI6ydJObPsrzfLIDqabGYx2c7QkJ9iYvBVlO3X8jzK2gCnH/22Y8xQ3IyKPHt
W72xK1lP9avZDJoh3M6TGFPz6wAY6M0xoe3YCf7QSmCa0/qVBjNvpDa8KZDl1f3AnisePzzw1HPw
f4psd+utCME5hgnT/hEghEfKXL49TMvwF2vSsQsjqf6HpIapAy1KDiDOrE/z7aAZ/rr1Jni0szO+
e2CA21e2FdwKTFmLdoEZf06dbp98/CrLuLJQLoOG0vBT64fNyjLJF5Zy6KBGjog426cpFkWTQX82
tSOlZedZhHpoN4v6TLQc1FYJChOJhCkqGFLcXburwKkIlxQPI7KuGWQm3lb9Po7yDULuiTdrrDH5
e02VfSe+vHfh8bWfDLCkW/CvY6XTLNnD6VB5vTZynerjFahkGZw8ZyHeG03ZUgCRSS5Gu0iLJk50
0ZPXRf5BblTKvPcHQEJUcvyE9BGM6pdP6HQILOGhWO9a8EcIZSIinaz4DpYJiQns8UhMBzE86Of8
h1yKOUJyKGMHrVD6Sw3ZYVZkk9sBRl5rHDqZVVG9HQdgDN7FmGRphuYyAdy48aY7cqXb2FQM+0D+
HxwI2NMSSY9Imj4uFMjy+g30zkSCsiqTXuKr4kWzUxGdx3lHYK0SILhMcFdnDF7d6N1HFyz7e23y
dHrxZmZKlUYtkU1Pqppf4q6MNkHTLFGDzvloazzloksMVewyILlRAtsROXsRjT5D5zV+b0QrH0go
bphs4SkJR+8BQ1SuLMH0OjRmwfLWckC7JYMHZzIH4DajCbIh5SCyB/GLEEnplbpziTQQxV1VUg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x254AB4E85BBE100"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
content-md5: awoWcACRb9q8nD8uqNPxHA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 28b91993-ada3-4c59-bea3-7803215250c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-47e8d063-ee59-594e-000d-d9d18edb3edc/test-blob-2ddcd462-6ece-1b60-f3f8-7df5dace42de?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c37e1ed2-823b-4c3e-ae14-10ca875956e5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-47e8d063-ee59-594e-000d-d9d18edb3edc/test-blob-2ddcd462-6ece-1b60-f3f8-7df5dace42de?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: bcb157fb-02a5-bce0-fa62-1e0a220ed355
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x254AB4E85BBE100"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-lease-id: bcb157fb-02a5-bce0-fa62-1e0a220ed355
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3c98dee7-58c8-4e00-9894-eb01d405b8aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-47e8d063-ee59-594e-000d-d9d18edb3edc/test-blob-2ddcd462-6ece-1b60-f3f8-7df5dace42de?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x254AB4E85BBE100"
last-modified: Thu, 12 Nov 2026 00:47:34 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 05e1057a-a6e8-4088-9e2c-4e69365a50c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-47e8d063-ee59-594e-000d-d9d18edb3edc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: 4778cacf-ce62-4e6f-8dc6-17cbfc790b12
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

