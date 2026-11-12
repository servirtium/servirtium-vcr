## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9677f93f-a842-3bce-ec1a-05f8651dbfcd?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesPageableAsync_ByPage
now: 2026-11-12T00:51:26.5106188+00:00

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
etag: "0x26D5C3599897100"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 68034d90-9942-4a6c-a6b4-75b26bf1104a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9677f93f-a842-3bce-ec1a-05f8651dbfcd/test-blob-fb255d77-1e11-cc36-86d1-7e8b0fc9f592

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
etag: "0x26E52A5A88240E0"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 161fd26f-3aff-4d17-bdc2-2588c0f90236
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-9677f93f-a842-3bce-ec1a-05f8651dbfcd/test-blob-fb255d77-1e11-cc36-86d1-7e8b0fc9f592?comp=page

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
6STW/fe5XygVZX+CX6Rs8g9L+V3Y954hw6sQcClDKyIlcg9ARsHVvf785qyes23hZYx8w8+XufGF
tDpMqe7/0jlcXeyVK6tNdjxf3BHygw89LgudxmhTjrgdu5KHiRQP/RNzQVaATDrgLkyTON3gkzEq
DnrjYQvQCc40eHAZxuwoT9/9f0G4veLRvZgbv1bbPCdgXHqZLJsIojiITNPKxmhfa+n94xTwcVGY
EqNytEl4WDtIuGlyjiJE9dwJMHAPB/cwu1Rt3lkTcOsoARn4le3uD/OXgQ3+7dzGue035kDhiQus
Qvj1C3riNEd9SY0JS1/uGyB8d4XpMc54piRr24mqR3gNS1L1+AR5tUzFgaNOvG2OScsfZBGGwhEq
fGRVdlm90wIV+wAM+SIcA8E4I7ArKuq33ZK+iuNmh4hBynugIz/zCK2hOcFtgU+oA2FQTZ9g/1J6
npjH/0gfrnN3yi6mfN+CRRsCivApSlxCFYaCFjrp4MspJYWmKwhkgopN9bYgAoeBzgiEXnRhUVQ8
hOnCnJg5juljfVZZ2xkSnQhm21SlIRP/AEgyZYJWx9QxaqYeouXxE2bMvYQxKPLuccBs+3X/l2PW
wpxQBylnDLaBKHBy8/ojdMft2GOPztdVQ/PB6stfMdJDSOBIoQs9ZbHNr/+Be33FSYatEb7/R/PE
+8Q1pSLqIvedL6sa2tO8sHOywR7Y08d2+6BFsR8URAHsg6ZHB7+O4o0I40zSq2+z8WFLTYXV7Cj8
v6mCpXDXieupLlcsdKizI96R0O97pFAxksC9yfd8F5d+S0gVDD0dMFphKH0Yhn25lymmQxw4gBtZ
UBOwGcD0LRa/rihfnhagdJ+UGnvTGQtCBDLN1dN6RcstvLwqbBaabfpmWNdUWfgSBc58pGafhjcH
bRWNJlhCRWldMeJadgeI+qyBbMEz7ao5us8E/qFkjjWEI/8BDEaiIxNu9ycWuI/H9Km5HRl2039q
VGuJPUbH+KOs1VMIhu5l30itxfaCIwI/PQn3qnAbDk+Al7jbGObMpv6EauI8v227VD7RyA6I5zFp
SQA90E4ykMcDh+82isZi4R73/rkfA36cO1YxSkVA97CGcc/lj9awUtkbODd9hcl4bubwkel4SkaC
oJT3AEWBwpA+rxj2fFJHR6vfA8pGHraMuNtfUGXHDieIY+5CuFGTmnWmPtawgvKTqUo9mEZ8O4Hd
akdpIXIqd6DxbRhkBI5aS2lUn9/f2zbpy6cbinbgDChsZE0JKngDfMc2vxTZL6S74k3dJ5ui/Y8Q
gFbKDu0qEGHw959AUCHwUCMYqRwiEJwCX6coA+SMyma++KoiOG3ZDK6y6DcEe5Er7Nd4iVRy7g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x233936AE38F0E60"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-content-crc64: J6RQ+uTP4N8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c17d90a9-8349-4070-8208-ce374db353c4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-9677f93f-a842-3bce-ec1a-05f8651dbfcd/test-blob-fb255d77-1e11-cc36-86d1-7e8b0fc9f592?comp=page

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
6STW/fe5XygVZX+CX6Rs8g9L+V3Y954hw6sQcClDKyIlcg9ARsHVvf785qyes23hZYx8w8+XufGF
tDpMqe7/0jlcXeyVK6tNdjxf3BHygw89LgudxmhTjrgdu5KHiRQP/RNzQVaATDrgLkyTON3gkzEq
DnrjYQvQCc40eHAZxuwoT9/9f0G4veLRvZgbv1bbPCdgXHqZLJsIojiITNPKxmhfa+n94xTwcVGY
EqNytEl4WDtIuGlyjiJE9dwJMHAPB/cwu1Rt3lkTcOsoARn4le3uD/OXgQ3+7dzGue035kDhiQus
Qvj1C3riNEd9SY0JS1/uGyB8d4XpMc54piRr24mqR3gNS1L1+AR5tUzFgaNOvG2OScsfZBGGwhEq
fGRVdlm90wIV+wAM+SIcA8E4I7ArKuq33ZK+iuNmh4hBynugIz/zCK2hOcFtgU+oA2FQTZ9g/1J6
npjH/0gfrnN3yi6mfN+CRRsCivApSlxCFYaCFjrp4MspJYWmKwhkgopN9bYgAoeBzgiEXnRhUVQ8
hOnCnJg5juljfVZZ2xkSnQhm21SlIRP/AEgyZYJWx9QxaqYeouXxE2bMvYQxKPLuccBs+3X/l2PW
wpxQBylnDLaBKHBy8/ojdMft2GOPztdVQ/PB6stfMdJDSOBIoQs9ZbHNr/+Be33FSYatEb7/R/PE
+8Q1pSLqIvedL6sa2tO8sHOywR7Y08d2+6BFsR8URAHsg6ZHB7+O4o0I40zSq2+z8WFLTYXV7Cj8
v6mCpXDXieupLlcsdKizI96R0O97pFAxksC9yfd8F5d+S0gVDD0dMFphKH0Yhn25lymmQxw4gBtZ
UBOwGcD0LRa/rihfnhagdJ+UGnvTGQtCBDLN1dN6RcstvLwqbBaabfpmWNdUWfgSBc58pGafhjcH
bRWNJlhCRWldMeJadgeI+qyBbMEz7ao5us8E/qFkjjWEI/8BDEaiIxNu9ycWuI/H9Km5HRl2039q
VGuJPUbH+KOs1VMIhu5l30itxfaCIwI/PQn3qnAbDk+Al7jbGObMpv6EauI8v227VD7RyA6I5zFp
SQA90E4ykMcDh+82isZi4R73/rkfA36cO1YxSkVA97CGcc/lj9awUtkbODd9hcl4bubwkel4SkaC
oJT3AEWBwpA+rxj2fFJHR6vfA8pGHraMuNtfUGXHDieIY+5CuFGTmnWmPtawgvKTqUo9mEZ8O4Hd
akdpIXIqd6DxbRhkBI5aS2lUn9/f2zbpy6cbinbgDChsZE0JKngDfMc2vxTZL6S74k3dJ5ui/Y8Q
gFbKDu0qEGHw959AUCHwUCMYqRwiEJwCX6coA+SMyma++KoiOG3ZDK6y6DcEe5Er7Nd4iVRy7g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EF1E981CE9D600"
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-content-crc64: J6RQ+uTP4N8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1cbaf483-8d71-4278-8a2f-9bb0ccdfc849
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-9677f93f-a842-3bce-ec1a-05f8651dbfcd/test-blob-fb255d77-1e11-cc36-86d1-7e8b0fc9f592?comp=pagelist&maxresults=1

### Request headers recorded for playback:

```
Accept: application/xml
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
last-modified: Thu, 12 Nov 2026 00:51:26 GMT
etag: "0x1EF1E981CE9D600"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 88641632-254e-49a9-9992-6170837766c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-9677f93f-a842-3bce-ec1a-05f8651dbfcd?restype=container

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
x-ms-request-id: ab2a448b-48fa-4844-90c4-8968f3ae1924
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

