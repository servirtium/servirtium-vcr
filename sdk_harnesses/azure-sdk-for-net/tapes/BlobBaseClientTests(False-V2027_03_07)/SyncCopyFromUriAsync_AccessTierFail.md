## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d5fb6a96-99bc-0c57-66c5-ef316d068a88?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_AccessTierFail
now: 2026-11-12T00:47:19.3337635+00:00

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
etag: "0x251F5B07B854D00"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b05f6324-102c-4e03-a5ec-95045bb7d681
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d5fb6a96-99bc-0c57-66c5-ef316d068a88/test-blob-57d442f3-4d25-63d9-49d0-ec26f803e8f1

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
ygiBN5rvBWzxk+IKswViL8vGVQZqSyhIkZiL660xFGLc/WdkhFLtBD1oZpFrz69EbbxbMa7ih37g
OaYCYxm+wH5/Lbae/ap42FHJAeWW3cHoR37x1uK0+nbohEur66AjqqUT66H5pm8R4lhcGYWYSVvl
GRybzeqcyzM/tXhfze2wpVc/g/Eg76EO3/OJV+HxTzvvxtGDiN27diBtufD2shVrq3MtWcVpxCp7
jO32EnNSTmU9bwYbLRx6gwzRsjWwFy3eHqttw/Z1hQGnCPvvxWSsG2uLuUIOUH5Xs9W4mBL1ynXA
F/PH5Ytvx+kEdCQgir6oJZbKJV3qz84tFg8gve3vsT2GLq1w5DbgHPFZCttZNigWEHJ8K6UX1kcl
ms57Tgr7FcLnmlwRN0Bg6QhrkcXy0+DnCqx7coaXblhlSkpnZc7nXfQZcpvMBdgyG0Gdq0WCM8fu
k0RdgKI7UCsEq+z2+YQ6hDPQ2WFEGwTUSFdF+sIS4xeCeNGKitxS3SJwx1rrPCK8YicRsVllqng/
iTdL9VVo8cfUc4CzsPpWfvs/1FOq6Aw1iZebADK+HM1ZSgCkB+jMB9aSFsihCLEtujJeJtYklaAr
FWu9zfGVFlayWmb5sncTc8x9GNFEk4HmbkX/X/b3NLVgefF8Djnl/ABx7q1LNAi7S7MJp33O54Hq
11+rlrZguyaxmDiFlmSSmBvR0qXTmjk9QxRC7Yw3kZJvkTbaOWZJETOHmpvPNrROdg9h/RTcFz0l
blKiHc2aeQemFQUuuF60iMBySwCebQ1f83Z81pR9k3n4tcsUpvNl7SCTKSCvIL6xrHRTass9hgBF
QipWHaNzKIKLNQKSoOHNDV7fCkTssNO4yykfKSmtuy7KzmPJDs99IACeI+u7HgyThl1tXXy8WZJW
nlF6VP5Z3XnUx9J+A/6OYupDTYzn/KwdjKPLQF6yDnXRcnB+A8wBRUVx51Y5FINe3vuReQsGbqGk
XMhbjZ0bIblcrZCOEF4dQQhGdhRW43cfbWFiIJVpygPO2aYEpbeoVsWd3Gfy0M6ddDcDv/iMTnlR
PCA8uQAk8+KMwDe4GZxQniBOuQYPLJySxaxdZQsLQYots2mXa53FeOmFZhCW5FqbsyHYPpVzQQ+D
qfNUxo3WgX6simYyuDKDiUAcisaM++BSwrLqMgP1unFZFMKpcbFbruSR6lnzaPruVbRUVrdJ9q0T
AQTb7E97t9D12aRw2RiPwdvi+xGGXlm3+91OoGO6EB0Ulm+sf8GVFTKJ/o9WfnubxZTbZ/ubjKOq
JPBxLBdsOsiGW0Op4kEZTOXf/WDKYHxhs9vP3qkheQnMAlvQI+kaHMPG0CM38uJSwRoWu49C3w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2196B259D695F00"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
content-md5: 2UpzDxaLzBpFoeedmkJHFw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 90552a1d-8c76-4a64-b7b9-009086ab70f3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d5fb6a96-99bc-0c57-66c5-ef316d068a88/test-blob-791074c4-9d3c-1f5b-64e1-3adddfe64928

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: P20
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-d5fb6a96-99bc-0c57-66c5-ef316d068a88/test-blob-57d442f3-4d25-63d9-49d0-ec26f803e8f1
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidHeaderValue
x-ms-request-id: d6b30817-3f86-413d-a20d-5872ab4094c7
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:19 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidHeaderValue</Code>
  <Message>The value for one of the HTTP headers is not in the correct format.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <HeaderName>x-ms-access-tier</HeaderName>
  <HeaderValue>P20</HeaderValue>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d5fb6a96-99bc-0c57-66c5-ef316d068a88?restype=container

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
x-ms-request-id: 732e066c-b8c5-4eb1-9b36-a0792aa84455
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

