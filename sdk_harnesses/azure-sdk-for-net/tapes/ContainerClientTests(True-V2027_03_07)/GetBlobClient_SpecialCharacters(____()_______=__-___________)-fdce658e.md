## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-852c8fc6-c8eb-bd47-81dc-2471dea1ae39?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).GetBlobClient_SpecialCharacters("!*'();[]:@&%=+$,/?#äÄöÖüÜß")
now: 2026-11-12T00:44:16.6448315+00:00

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
etag: "0x2546EE78B700CE0"
last-modified: Thu, 12 Nov 2026 00:44:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d25dc997-a12e-4e2d-a41e-ee7c5411f477
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-852c8fc6-c8eb-bd47-81dc-2471dea1ae39/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%3F%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F

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
RxudvujOPsao7EM8ArHanJqxNStcKLGdjFQciEtAnT2jVDAuRQOL91Bm3P6EC7vQAYfXLWuC3R5p
/zKUsrZ6aE8FmK2ArFeWJT7b9kuzGYGZS4bDaHDSIHcSxEbR90WZ63Svf3INT1UwQActp+bStuax
+mYvtv/fM3g2bucQxS74QQvXBJkOi/wxkyhppXiQPw1gIPzeaTR0z0v61+FtH3vYNGbb+7FMom5q
/iPXdo7/pS7Zr6UxGtfWYzROFLQaw3OskHAStURcFH2Nc2oRnFm9+jGyk2/VpxmOBJd9/o26Tzuv
KuYd7PDqfZsno6ZsxcbakBmDaC8D1+hXg7Cs3hbv0yQvYXFzoA5ByBbUrQRzIT/Qom10NucLq1P9
xmg/PZ+FN8+CPGNVZvALQqAZLynk5GFx2zuoe5w8JLYedtmlAYp2TnY08OXbezx8aPRH8XwqGeIG
zmFj3LwyRRitN/AWZkAVouCzsPN8lWD/LBOo9TI68133njMpE3K6AarMLURLZgG0MU6bd2nuijgB
ZLCoilDmc0OTHsgM7I9u+a5IsGcbtMYR88Pjnnz0CRT7J6/CEXZa5roBuEc5p0W+LX66pdnQ5rDq
l5eMAtTHnxW0EcTgq+c47sqtGft/2Et+JHH9OWM6K0H+2HrfzuPlORgxhZaA3oGWgrcPIsy0ar5L
Dd5jyWWyeeaC4dNtWCDnyODiTVO1/UbwZ7erKwh1Sm27k8AFgnCzfwuv/fytKSmXJ1rs0R1rlRCX
cmKuBk7dDZdmscVg4UZvL85HBf9KQz2OFAOuiXlPT/6vbQ8OBXi80fBlR3dkN0UUfKFOI5AQTS8k
H/FKL4QdFmLGsHQ2YSpVizMP5PvGKd29mgzXASttnh/f6eWGcaJsRzAVnYbR3Rp2+JhcAWgzXfYU
jZV3RRU2WBFUV3dFzxmRop3LsYxW7L3yYQiTEZ23q4vvcuQM9AEb30R1fIWiMSl/yl7LaKxpvaDY
heQNokd0navrVl00hK6bsNFI4W83Ty/eE0Y+60PfhbRDM28dDTz9AN/ZttrMS0WwL7jaIdsxoTW0
Lo8ANbFoDNGo8FE+fqKVS+GPXZhUEsgAjryLBGTZEpI5aN6s/MsucaoJJFr0cbEVRdb6oUOdYBzH
/6b13Qhszt6+BBbD6E4VYevtS+1tCxwLdb+N33BOmwjC5fwkOJSinFV8NmyaUVyH5EBXrxQuWfSK
6mdJ3+9tb2kOAQNS8ChXS66Y8NWvcCRiBvow9+zzk4sImk4tWb1lDscDjFBZNfMXAGRmlmke2nlD
5tn1PXh8G213SVbZKvLwM+ENq+PTCNAGGPaIjP0i6b/V6XLkb9FPhnHi4uudPdVxdWKHEC+Vbw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26B7F9DC6431C40"
last-modified: Thu, 12 Nov 2026 00:44:16 GMT
content-md5: +N7mWJcTCB7AbSu9IsyPKQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c6a872c-def0-467d-8916-9314c4e76897
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-852c8fc6-c8eb-bd47-81dc-2471dea1ae39/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%3F%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F?sv=2027-03-07&st=2026-11-11T23%3A44%3A16Z&se=2026-11-12T01%3A44%3A16Z&sr=b&sp=racwd&sig=yemPtkUAhTyedOMLm5iK2UjwNm56Odk6GHjNnINjjBo%3D

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
last-modified: Thu, 12 Nov 2026 00:44:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:44:16 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x26B7F9DC6431C40"
content-md5: +N7mWJcTCB7AbSu9IsyPKQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f56421e5-6794-4b2d-855e-2120ed9cd38b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:16 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:44:16 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-852c8fc6-c8eb-bd47-81dc-2471dea1ae39?restype=container&comp=list

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
x-ms-request-id: 31f9165f-177f-452b-ae47-75e13210a618
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:16 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-852c8fc6-c8eb-bd47-81dc-2471dea1ae39"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>!*'();[]:@&amp;%=+$,/?#äÄöÖüÜß</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:16 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:16 GMT</Last-Modified><Etag>0x26B7F9DC6431C40</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>+N7mWJcTCB7AbSu9IsyPKQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:16 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-852c8fc6-c8eb-bd47-81dc-2471dea1ae39?restype=container

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
x-ms-request-id: 3fae3295-8a3f-4e47-8119-ac4942dd815b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

