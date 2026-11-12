## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-56ce74b4-b679-e506-3de7-cfd0ea5911be?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_Tags
now: 2026-11-12T00:47:57.0367196+00:00

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
etag: "0x267FFA5A5DD22A0"
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 09423ef2-7278-46bd-a59a-08faed85e1f9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-56ce74b4-b679-e506-3de7-cfd0ea5911be/test-blob-18678265-b2d4-17ab-2b9c-7030a4834899

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
9go4qKxr93SxEZMcH+CdkPnUHcBuQvwrIUQwjb80tJCElpDoFpz6SX1apWgj6sZdSj/XFTtQULQN
DIZnOmq0fF0Cl4hQtHlc2dRDFJ2UCDd900OAXZ5VM0bc2woWkg4TpSgKIFI+DJXFezxmDTsWeANO
6mcnMx+/rWNCc9luRkbGMG91iufkP8atuuFi7yYLxmMGx6in63EISnPv+5m7VjX1n93Loe0caqqg
eXk+Xb09Nq12aH6dH0T+bT909UMt8mSsbE9IPyR16l3+BnL4yu21scXrRe62V4CYzTOup3Rmc4cU
kfBu9PeIAX4gnxnRBaNSvkR+Qax19RXPsHHxxkLpl5Pr4zj8RrzNY0Nwlrdnx8eQW+gw6DHanpzb
n0SFlzo7NweF5iJqVXeHsd5pBV9dZ+ipYGtZuK9iEUScIKd4R8sJNF6w4eGlJQVwqTdScJk8fjdb
3DbP4X5YI9TdzjXQD2kTX9AArYYHBDpl6A94EKCrX6JvHGuUOVPgV74Mx1fQoJnNPhHIPNGxU9f8
avhu3xMzMm6SYPL9fiV9IFXI+zzilEh1qtGP4iPQvsiTmM9acXeq2JXoPT+mz8DrSxx76FibGdWw
+DRCpFBLwaIqaeZWIq7dHSKn+VYJztsQpJYHVdVv+H75qnlCaDREnXydfGXalSlunss29B9/pylZ
MQC5RGzMunFnXHc1mrXuYlzaa1J1Ng5tmbYKOQNfegNP6Tczi1kP0cH0cjmxOAMVR5LDpTvX5Prx
TKu2wYFtCOF05bF9utYCy5qQgcTVvGCz9PFxm9XIeAQ8Qj6uWQ9AhmpXPVJRmI27wNqgRmM2G5BK
A8yP/G0MrG2sQXiXVHKKUPpafn4NYVxkttr6JzGhBSauY1ZDsIr8SpHlpVYVI2xoFfVo3J0RPaFv
K0aSEoQ8CztR6fAcR6BwXTTtKLwFTpJtkhE7OSmJnSW004RDajcMqZkbwzp8TM5V939oIxXlad2z
JX9zANESyEvKZ3QbLPL84X4i6opX8UZD5kKpIHoQzmmnkEW4mKnICfrvseRZOcqMbEGWw39SWzM4
MBmPaKjRupkKdJytQ0jVWeGPaD9i6ax4HLQ4eQvqVDQRf2iPOaBSHfdLT8Ut3yj5wWmewvLz1kZs
F0vzmUGNIB9om8PgRiBAPUtIF5rnSj2MP7ihTJJBHakhIiFVXoS2vS6lxUNkGHtIXYWnq7+shcwN
Z1mI69ONJn4aviP+697GkllrQoT6JyY9We4NmXLqdJ1VR/YqLdFbGJ/ESVpXSXGm4RhlQUNIEz8z
S5Lkf4wLMEqFqaTnm2WHECnlNd7L5Q98Z7hZhDJaDDO39+E/dpkSuRkQ0Z/Nvkaz3jEZY91hZw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x247AB956AC3FE80"
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
content-md5: 7N59IQ9UVrGM3HBhQXg5Tw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1371d65-3a4b-4255-98e3-b3b2fca00dc8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-56ce74b4-b679-e506-3de7-cfd0ea5911be/test-blob-18678265-b2d4-17ab-2b9c-7030a4834899?comp=tags

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
x-ms-request-id: 7f596489-7733-465e-9c4c-2c171bff6d68
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:57 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-56ce74b4-b679-e506-3de7-cfd0ea5911be/test-blob-18678265-b2d4-17ab-2b9c-7030a4834899

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
last-modified: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:57 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x247AB956AC3FE80"
content-md5: 7N59IQ9UVrGM3HBhQXg5Tw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 37130540-d54e-4b83-b117-35a2adbf3d1f
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:57 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 7N59IQ9UVrGM3HBhQXg5Tw==
x-ms-tag-count: 2
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
9go4qKxr93SxEZMcH+CdkPnUHcBuQvwrIUQwjb80tJCElpDoFpz6SX1apWgj6sZdSj/XFTtQULQN
DIZnOmq0fF0Cl4hQtHlc2dRDFJ2UCDd900OAXZ5VM0bc2woWkg4TpSgKIFI+DJXFezxmDTsWeANO
6mcnMx+/rWNCc9luRkbGMG91iufkP8atuuFi7yYLxmMGx6in63EISnPv+5m7VjX1n93Loe0caqqg
eXk+Xb09Nq12aH6dH0T+bT909UMt8mSsbE9IPyR16l3+BnL4yu21scXrRe62V4CYzTOup3Rmc4cU
kfBu9PeIAX4gnxnRBaNSvkR+Qax19RXPsHHxxkLpl5Pr4zj8RrzNY0Nwlrdnx8eQW+gw6DHanpzb
n0SFlzo7NweF5iJqVXeHsd5pBV9dZ+ipYGtZuK9iEUScIKd4R8sJNF6w4eGlJQVwqTdScJk8fjdb
3DbP4X5YI9TdzjXQD2kTX9AArYYHBDpl6A94EKCrX6JvHGuUOVPgV74Mx1fQoJnNPhHIPNGxU9f8
avhu3xMzMm6SYPL9fiV9IFXI+zzilEh1qtGP4iPQvsiTmM9acXeq2JXoPT+mz8DrSxx76FibGdWw
+DRCpFBLwaIqaeZWIq7dHSKn+VYJztsQpJYHVdVv+H75qnlCaDREnXydfGXalSlunss29B9/pylZ
MQC5RGzMunFnXHc1mrXuYlzaa1J1Ng5tmbYKOQNfegNP6Tczi1kP0cH0cjmxOAMVR5LDpTvX5Prx
TKu2wYFtCOF05bF9utYCy5qQgcTVvGCz9PFxm9XIeAQ8Qj6uWQ9AhmpXPVJRmI27wNqgRmM2G5BK
A8yP/G0MrG2sQXiXVHKKUPpafn4NYVxkttr6JzGhBSauY1ZDsIr8SpHlpVYVI2xoFfVo3J0RPaFv
K0aSEoQ8CztR6fAcR6BwXTTtKLwFTpJtkhE7OSmJnSW004RDajcMqZkbwzp8TM5V939oIxXlad2z
JX9zANESyEvKZ3QbLPL84X4i6opX8UZD5kKpIHoQzmmnkEW4mKnICfrvseRZOcqMbEGWw39SWzM4
MBmPaKjRupkKdJytQ0jVWeGPaD9i6ax4HLQ4eQvqVDQRf2iPOaBSHfdLT8Ut3yj5wWmewvLz1kZs
F0vzmUGNIB9om8PgRiBAPUtIF5rnSj2MP7ihTJJBHakhIiFVXoS2vS6lxUNkGHtIXYWnq7+shcwN
Z1mI69ONJn4aviP+697GkllrQoT6JyY9We4NmXLqdJ1VR/YqLdFbGJ/ESVpXSXGm4RhlQUNIEz8z
S5Lkf4wLMEqFqaTnm2WHECnlNd7L5Q98Z7hZhDJaDDO39+E/dpkSuRkQ0Z/Nvkaz3jEZY91hZw==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-56ce74b4-b679-e506-3de7-cfd0ea5911be?restype=container

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
x-ms-request-id: 865239bc-51f1-46b8-9573-556eb3d3968b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

