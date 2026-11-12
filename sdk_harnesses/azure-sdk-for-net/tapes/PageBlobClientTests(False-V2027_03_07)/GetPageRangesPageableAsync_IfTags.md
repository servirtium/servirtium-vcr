## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b4421b76-7b5d-a647-6e31-55d0685f96af?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesPageableAsync_IfTags
now: 2026-11-12T00:51:26.7159431+00:00

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
etag: "0x2515908E2736000"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed074184-b736-482f-b94f-018daf547cd3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b4421b76-7b5d-a647-6e31-55d0685f96af/test-blob-9d1766e1-abfe-aa46-6576-a633efad9280

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D2459F5EFFE600"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7c916113-cbfc-43f5-b362-a3884f61730e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b4421b76-7b5d-a647-6e31-55d0685f96af/test-blob-9d1766e1-abfe-aa46-6576-a633efad9280?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
e5vCmPHibJ3KZDUWy+zq2U6X5ne1wxrK1ZdO59UUtsGf1FXMnP6+//p50pl2L955i8zlWMYayriA
98JZlIXHtq5zd/eXHTxQ2Od9O/CBU6a51FsIL176hAmdTKU7ZWp0shvrA7jn4m6PlX/fnY7H/6Qb
n78pvodQefLt+dGXFHN8CInVllDu0vLseZneG+d61UwAIMWrS/OUm4rF+eid94EMYpUF8mlTLc3M
PUXtcV0LciSEl/Ot0b2WQfrGKNgKT4EY0bhRdePjrfP33g6tpiksuobEGGCNX5HYbrFujQT0wu3E
1J+luf1AoeoAtfKv6JrRmm5SRTcgi3ImeQYydR/uAhwg6dGJhgCIg3d2jKmfKIYWnPOWony2o0ks
fj/2DizKErLWjv/JRxNuycLAqv7Jh1CAG9gsWGCfakaIXAfAknRKrHr2yJqGTVXfJ9m69flKY/fu
dvNUnblSNiS4QeoLrTdNdf2E0762+c6CTTCG5XRNPfkQ0RuB9g7Ao5J2zQxq03qibID7xpA4OHwl
0VCJy1CvawPx+9sby3/vwy8sQCvBGHm25Hn0UXdp2JmfXCW+N9dCxmIIedeehqABDAJgDPdRY7jW
0+fWuxqMiCNBfG9ZMIxX6XrJuZ+hF17Y8kV0CMuiTfhs6GTwawpHfPG0XAowp9t1CSJ9h6oZNLuJ
/cjUF4BXny527UgoZ35vgT2u7bpTp0tq/v6oJMZOUrSoZ21Bc2RwXL3curqTTaKkDQZta0YBNVV9
ahmBrnpoKJqUgP8QLQ3YPZD9d+2R1rFcBBfA4eZtpjEXxAlK761CdJEf/82ik+D4lC62BL5o7JNn
JKpjp0ezJtnN+WkEjU3iugNccdfkunA2x0y4t6Jzr9d148sD3sxKa9jz1Jp28wbh00m7C3q8g2k5
LOD6+282WkmRj6qB39w2EQb+8OXWwNRG1+NZuKNcuF9hyrLsT29ovXpQ5WNbX/RshPp0vZOEY2wL
tCSM3KKmNddLIBUqSsGWljJqhdtw6nfv7DOp5/rL3WZF4JtL3ODYqq+MED/fQjk43idgGd2Rmsqs
nPBu/U3cf0Ou5GomSrlSktsr5No4EKn5cAnSa8OJs0XQnz/waa1isJD8MF7PEZNuDYYBZrbwc4xG
dIxDCRR/JDEkVqt5YiguyDNJPN9LKl92ZF08h02P4CuzqfUgHqZ7fAwsq7vo9Kte052Cpjas+kot
zaS3Qp3klHV/xbgzDamNzsDTHn+jjnCx3rOvDDr0B6+q81EBxDlvSBZGaC7yKsbz9dd22NvKiT80
BWTpNIg6ir4JiBpYiwqGZNZpXSVBvrTtuxdifi7T4GkSzL7VhRSNC95w6aGrm2nN8HQFYSwZ8g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2400A0D3D39ACE0"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-content-crc64: MPKi4A71QNU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8dfa01b-cd09-423f-b3f9-5ecb9dad3385
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-b4421b76-7b5d-a647-6e31-55d0685f96af/test-blob-9d1766e1-abfe-aa46-6576-a633efad9280?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
e5vCmPHibJ3KZDUWy+zq2U6X5ne1wxrK1ZdO59UUtsGf1FXMnP6+//p50pl2L955i8zlWMYayriA
98JZlIXHtq5zd/eXHTxQ2Od9O/CBU6a51FsIL176hAmdTKU7ZWp0shvrA7jn4m6PlX/fnY7H/6Qb
n78pvodQefLt+dGXFHN8CInVllDu0vLseZneG+d61UwAIMWrS/OUm4rF+eid94EMYpUF8mlTLc3M
PUXtcV0LciSEl/Ot0b2WQfrGKNgKT4EY0bhRdePjrfP33g6tpiksuobEGGCNX5HYbrFujQT0wu3E
1J+luf1AoeoAtfKv6JrRmm5SRTcgi3ImeQYydR/uAhwg6dGJhgCIg3d2jKmfKIYWnPOWony2o0ks
fj/2DizKErLWjv/JRxNuycLAqv7Jh1CAG9gsWGCfakaIXAfAknRKrHr2yJqGTVXfJ9m69flKY/fu
dvNUnblSNiS4QeoLrTdNdf2E0762+c6CTTCG5XRNPfkQ0RuB9g7Ao5J2zQxq03qibID7xpA4OHwl
0VCJy1CvawPx+9sby3/vwy8sQCvBGHm25Hn0UXdp2JmfXCW+N9dCxmIIedeehqABDAJgDPdRY7jW
0+fWuxqMiCNBfG9ZMIxX6XrJuZ+hF17Y8kV0CMuiTfhs6GTwawpHfPG0XAowp9t1CSJ9h6oZNLuJ
/cjUF4BXny527UgoZ35vgT2u7bpTp0tq/v6oJMZOUrSoZ21Bc2RwXL3curqTTaKkDQZta0YBNVV9
ahmBrnpoKJqUgP8QLQ3YPZD9d+2R1rFcBBfA4eZtpjEXxAlK761CdJEf/82ik+D4lC62BL5o7JNn
JKpjp0ezJtnN+WkEjU3iugNccdfkunA2x0y4t6Jzr9d148sD3sxKa9jz1Jp28wbh00m7C3q8g2k5
LOD6+282WkmRj6qB39w2EQb+8OXWwNRG1+NZuKNcuF9hyrLsT29ovXpQ5WNbX/RshPp0vZOEY2wL
tCSM3KKmNddLIBUqSsGWljJqhdtw6nfv7DOp5/rL3WZF4JtL3ODYqq+MED/fQjk43idgGd2Rmsqs
nPBu/U3cf0Ou5GomSrlSktsr5No4EKn5cAnSa8OJs0XQnz/waa1isJD8MF7PEZNuDYYBZrbwc4xG
dIxDCRR/JDEkVqt5YiguyDNJPN9LKl92ZF08h02P4CuzqfUgHqZ7fAwsq7vo9Kte052Cpjas+kot
zaS3Qp3klHV/xbgzDamNzsDTHn+jjnCx3rOvDDr0B6+q81EBxDlvSBZGaC7yKsbz9dd22NvKiT80
BWTpNIg6ir4JiBpYiwqGZNZpXSVBvrTtuxdifi7T4GkSzL7VhRSNC95w6aGrm2nN8HQFYSwZ8g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E24FD47A852CE0"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-content-crc64: MPKi4A71QNU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a29515b1-47b6-4642-ae95-ee0a31ce94a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-b4421b76-7b5d-a647-6e31-55d0685f96af/test-blob-9d1766e1-abfe-aa46-6576-a633efad9280?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: 66311f6e-9c1e-4326-a21c-c4d648d35862
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-b4421b76-7b5d-a647-6e31-55d0685f96af/test-blob-9d1766e1-abfe-aa46-6576-a633efad9280?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_6
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
etag: "0x1E24FD47A852CE0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4bcbe78d-d408-4a91-bfdd-2e348163f5a5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-b4421b76-7b5d-a647-6e31-55d0685f96af?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
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
x-ms-request-id: 32db34c2-b904-463b-8216-a3928eb1f493
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

