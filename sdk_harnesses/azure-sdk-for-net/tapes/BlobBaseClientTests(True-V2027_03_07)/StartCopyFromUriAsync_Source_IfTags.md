## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-21ebed9f-a08d-2a4d-15a6-cd344a8cb18d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_Source_IfTags
now: 2026-11-12T00:48:31.4470348+00:00

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
etag: "0x216B245B7811CC0"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 94cb93de-0b74-4e8c-a2bf-27b258cd8250
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-21ebed9f-a08d-2a4d-15a6-cd344a8cb18d/test-blob-75ac2501-a3f8-ad1f-281f-ec23f2bd75e9

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
y4uGFYgL/IPPxgSUPgP7XZm2ZJerj1P8zT35brQqN1cx5Gm+BpsF9SgopTKfi28kI46JPFndPTw4
iUhLEo7PpY6sYlqaPVb9sG5vg+khXELO1UoloPv9VKcshnxTuuOaWQCk8igUiuY3i4vqbrlTFy0G
fD1DqQSSrg6zbbbaqvaL1CnofWoZuUpk7RRvE+bt2W9PTD2mVq/7EUMZYRwvXeGVX5mQapnC7MPy
37zvI5soxZRHi1255X167Gsm/1guNI8z2rNMXW7VjGB6s3fyDO2n8ZuI6NKD3HobFX0unOxqxKos
vEno22glcf/9PjEFh+B9fg28pUu9r/05MEfwp+9zD+/NxlCkvxYyYnfThp1IFo2dsB3erh5ebgxL
rqohNMoPiS9BOMGQ2b73iULU6ilg8Bq5U/fRlGHQbldDWRBsES6sw/xuB93MDNZf5yTbiYTi676P
Z+HSPfXNcMlpTH+uingUJyYs8ek97EYgcqw89eTTYG5S3KpM2oYGoJYTYr9XsFysxmJdtvnVUnqa
sspIkHvklusRW67Ox02gJVFTKYmHycFPkC6Cdqp1fIovsie8vQ8aLszURVWu3f4UvZCogijwEugI
+QBNYh9BnN8jnhQl5GhBOPq9s4NsoLIvbrkazPphPp8+s8QPzMytkql1iz/q7tgoZkkuM19lm1hN
HvNmJs/kwWB15zCjMmstECDZ9hVzRYDg8mawMwpA2Rdswq7ZRmzakcnedAeohDTdACM/i6RC2dhz
hjNoNI5VNQ0ZNnC8VMmz/2VMldB4OG0x0jLnAE1yKejWZcA4cV06iD/5jk7EIKxajIw/9kQI+k3G
N2FcbjS/pg2H5u4Jeo0IEQyQf6kfbbGGjXTBMzOkzWtycjr73hoLOehBPDq9URH+NuQ3d3ukpsmv
1uHA/XLZ4xmDlghTDTPyhUXB3jB3yDxiw/1PbFXwzstwSwc5Sjx1Z1kgOroIqiiwRfI14siYOA2l
Xjl1infDk8c84sEruTsJS3bXVo6BWRnUniZjuusD2BP6k+wC/9ziXafzzMdnhIy3LJZRwOF/JAQg
oOxQYNnbOQqtMSVOB0uZ9fnnjY1RbBmZrI1VsRcyem/n4V/wkf3OF5K9uVNnaCVKt8vnmJZ2zzPS
t7RLhofze7a1ZyXsqWT8GHX7lLPGMkNnCvpMSuLZcBIrHtpJgpEKyj6csQEAXQ5m638gezqADIVw
43uNpzDU3PYTwYuKs5bk8Mp0KYBBZ6zs5V9iufXXqhFV2J4VfSMNyNUL7JyD3DjoO4pwC+MFLnzP
ocHQcSIAOxd5Ndr3znOnZmGqNnoQaQknen1qZp4uT6kiRtxhPVezCrGECadd8W0XyaWBWvgBvw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EA0EBE6B579980"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
content-md5: 5UNZNx1dP2tQcv4xWZ4bBQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eadced85-1ceb-40cf-bd19-33aede01ec70
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-21ebed9f-a08d-2a4d-15a6-cd344a8cb18d/test-blob-f7a8b837-96a5-79d4-4be5-30d588974529

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
CvcsyYtfYcqID1Kd+az1sSGHpKiUXw1z3Au+wSwb5YCEe3djzDcz2FbebpVEN3+e8H+zAPOclarp
uO2AoaCdbCrSGX00keXpVMxStfF3L6SLH9GtaOSM5+bNeRRKsja2QQFrcR4CaV6ayqwnSt+4cYhI
9YLO7wRGRTGXZxfRnqGVm3PvDL6FibVyE503ZZ0GFAeLAr206FH8JCvtagJHySsKka5ryWXKw2zM
W9xmDuCUkFMPRZzk4bMi8+eTmB6zK0pyLNPum0uiwD5R54x1lRZKWNquN4OOJrD6SdV9NypNGDCR
9OEMpfUHbIRdk/kmrF3RSD9DBPPG4wYj81F1JYkTA89c46E0PrLkpsr+MJK21J13q+/rChQ8yxDb
6bKjkkf7SZAqysi8nQqMXl0oyLJzbB+0/XmaKPi6IBiQWFQAQRSDA+cCjAnUuw7lX6u2EwJdaHyS
75TNYCGXb6mwK0S1ix1JpcXLcOAV4EJrtclNBA0VM/DXbVGAtqLFaxxfJJDJL9ONbW49kfecfA9S
YqtYSWqcmvdU3R3MyO8iBQXDtbuxoYX1wJef2KH4O/BCLlT3bSGxw4qYdFK1wKR+G4vx2cdToMAl
YojT/cFVXKIsiZqbK5jkEfIxGS0zQP/zILwWBmEp7o2T0QuY3sXIQhiwiDcJ4+/zDcjUIoaS8iGI
4N0EP1ZAA5sNB1mMSzIsaNYVg7jI6jzNIviZVcsHAd/qD/7owwLBb4Wb/NyWZ8KVqLmvfW5pwPag
Nx1dpq7PBQV5ojs0RKXUUxMyLe1fNrs2BKwSV4NxgE8IR4vlZMnXzPbWHMSGYGQU2ypaNpIIQQFh
J6EBva6CCCHsK/wZ7u5KW2D3iBr2sKNI/XxZFkm8AAaKgz0n1Q5HVBOimjVn++w7ENoyELjmanf+
uMAyKPLXLyv1jmuxI4VSrzQGVBZu4AGPHQZviu9OoxjGKR1OFSshymoJcm2BiexU4GCD4BZgj9e+
ogrsaKQ7p+pS6/poA5oI5YmrZW6UDpQZGqqPysMCZZlFj3IgNGHFzcqCLp3y7NzGe/qMtSpoKpR2
0k76rNwnUIZgInMo6LAn5ZejEt/2Ji3NyE/Jda9v3GXdqmITyyHuW94XkslonZNJZM+SxRe0f6sg
LOONXdrW8EYOSj1OFBp2tbcB35RkZCu8fxDf3BdNKCq28p49Yf0DQKGDWlNV+lC1HA9gs6AWvMe4
0N7K9xQuwCETmCJ7OVS6/p7z4ArYZ4TAKsAI7XWJnzXXhJAeOUmNVZoxQWItOeO7prUBI9u94GlZ
CcxTJtOsifjtpLTEm8RVZotvpiUik/DdTEbAiHtZGaMmxTB8OS7HhbhpQJUu9wvwq71PTTlENw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2573D05D4C27EC0"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
content-md5: /9erLNnJqqUInDsb1IxBlw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 86bddc8c-e7ef-486f-ac2d-9234e8a505b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-21ebed9f-a08d-2a4d-15a6-cd344a8cb18d/test-blob-75ac2501-a3f8-ad1f-281f-ec23f2bd75e9?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
x-ms-request-id: 187494c8-a0f1-4033-a9ec-2fdc7100098c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-21ebed9f-a08d-2a4d-15a6-cd344a8cb18d/test-blob-f7a8b837-96a5-79d4-4be5-30d588974529

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-21ebed9f-a08d-2a4d-15a6-cd344a8cb18d/test-blob-75ac2501-a3f8-ad1f-281f-ec23f2bd75e9
x-ms-return-client-request-id: true
x-ms-source-if-tags: "coolTag" = 'true'
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2521B3B7CFD9200"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13246870-10db-4682-82bc-4c5ce1c6d4ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-copy-id: 98849f2a-c945-4c24-abc2-ec01d5fa5469
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: HEAD /devstoreaccount1/test-container-21ebed9f-a08d-2a4d-15a6-cd344a8cb18d/test-blob-f7a8b837-96a5-79d4-4be5-30d588974529

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
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-copy-id: 98849f2a-c945-4c24-abc2-ec01d5fa5469
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-21ebed9f-a08d-2a4d-15a6-cd344a8cb18d/test-blob-75ac2501-a3f8-ad1f-281f-ec23f2bd75e9
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2521B3B7CFD9200"
content-md5: 5UNZNx1dP2tQcv4xWZ4bBQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef7d7bd2-12bd-47d7-b81c-cc8e5067dede
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 6: DELETE /devstoreaccount1/test-container-21ebed9f-a08d-2a4d-15a6-cd344a8cb18d?restype=container

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
x-ms-request-id: 5f150eed-e9ac-4bc6-b392-21a11fce7ab0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

