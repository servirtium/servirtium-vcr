## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-88332468-457d-f3bd-4a47-929b04e3af35?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).GetBlobClient_SpecialCharacters("!*'();[]:@&%=+$,/?#äÄöÖüÜß")
now: 2026-11-12T00:43:11.5803022+00:00

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
etag: "0x25E99FFAC5EDBC0"
last-modified: Thu, 12 Nov 2026 00:43:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d2202cc-0ed1-40a7-b88b-7ccf4222ac1c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-88332468-457d-f3bd-4a47-929b04e3af35/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%3F%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F

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
P2sxVtyqUYdJ944cumdXjx2QiqSMDf2+IVlpZIU4nJ9ZUV+zwBcJvtKrP4W2oTni7wN9c1kLqDJt
cjSDQe0CEVrvw2gIpM8Fh8vR4M54CIAghnSCuilFTagsRU3ihnzlqS0qx93Q2Uozd+yNOchk9Wq0
Yrt4f1cxqXXA3F+BIgFP6zagTUGiUKwqT0I8uBPgx0/jLiPBbSrW+R1nD/3rsVTrPk2RxKgpERIO
TjAU9PFi3xQPnvTdjX4MyVQjO0CuPp3tUXrGTgOnuhwRsh/6wgQsBTDp2xNgDbDPhfpUBdbSXw+S
JqN3nJARaOPYzNpfEQdP9zUQxWOJjUTJ9skIUrRFPlMPZ5thtWmf2HIwiEHVcHPzBA6hwpmsCJle
raXHCBYuko2HT6pr7kHLcO3wWQQD84ZVFU6mpHy5Y14CAgfE2M9cAfWzTiDJhxbM1VGsvK+UW7of
cfLIiO0QzuxLaew5B5gek1gPT6RljI032c8rDaavbaZNpGbclHkIooAzfh4qk824jShWhQwVueRl
kK4e5cBFm/xF62IxQf/fBqwkMQ5vDUYBcn9+WOeaOOuCdwTK6b2/7uIi5Kdqh0wod35f8IfW9YJo
HHJBx0MUq7N3r8n7FB3uZEMrTSmel+syVeFpOkdjq4GCYcxLfiafDjn08tiDLWJhcIxEqqhZyoWH
DnFhqnBrFANHebNQo+UcjD/vqqQSryh+B8m7HwDYKZdGw3C1PWPIiN7UO7SvEMymJx5paSDhdF9I
46KmsPUDb08bCd91Z07bJiHFPnNzzvf9FPjib793ZU8QbFnAItjp0cxkkwftMMDPjUL+GzXr1RSr
qZv8IP+QpKSQZfr0GwRJ3G2nDzvwD+M4EuF9eUkZJZdFFHg87LDM1O5iXMvF2nI9tD/IQ8XZu5m3
xA4eEitadj9irwaLDe+82jpMjbMYcjduP8QKUOHRbFnfhCeircHDCOWLYytrsqdPDGiLjC7mn1LW
r9NnTyZekEOtrIjIGi14iITNjA4MA40du0R4Rt8q+OXVy/7uXLm/LdPnvQUeh/E7EgOqGBNEyaxF
SpPh5Uljg7Oj804uiizKDl47JEWH/jRSPDTbgODSkAFSqBIl3UeJgzpSepSjDYfW3wq0CaVmvktf
j6kUiALT0WJN3OEapTAWsaALNISfry+sBKHVHYdc6+rGxU6edPs3f6gyVjCmvDnZnVcEW4nHv995
aINh/bTa8PH2U9/idzyk07XbbVn+BUhn/H8vV5Bh/wVvJQx41oL0V2U/sGhZ9yUbX4fU7FKFemI6
+QA0q5hglVTaclIvLP0y5hb0v1XfDQRaFPgIjROz6aqqPdyBwKzM3hsUf4TT6zOKoQU7kbsMWw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2600AD6D5C71880"
last-modified: Thu, 12 Nov 2026 00:43:11 GMT
content-md5: 4bYj4CweV0dh2HSSdHSicw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 18d06a60-552b-4f32-ac4b-a5d2b566b758
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-88332468-457d-f3bd-4a47-929b04e3af35/%21%2A%27%28%29%3B%5B%5D%3A%40%26%25%3D%2B%24%2C/%3F%23%C3%A4%C3%84%C3%B6%C3%96%C3%BC%C3%9C%C3%9F?sv=2027-03-07&st=2026-11-11T23%3A43%3A11Z&se=2026-11-12T01%3A43%3A11Z&sr=b&sp=racwd&sig=QAPRmMLpeSPhR4Yb4g892GxkMtpomsxy92bv1C8iXL8%3D

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
last-modified: Thu, 12 Nov 2026 00:43:11 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:43:11 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2600AD6D5C71880"
content-md5: 4bYj4CweV0dh2HSSdHSicw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2106e956-abc1-497b-86f8-7fcd3370c75e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:11 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:43:11 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-88332468-457d-f3bd-4a47-929b04e3af35?restype=container&comp=list

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
x-ms-request-id: 33c0ff44-30e5-426b-8314-2c752192bb68
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:11 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-88332468-457d-f3bd-4a47-929b04e3af35"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>!*'();[]:@&amp;%=+$,/?#äÄöÖüÜß</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:11 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:11 GMT</Last-Modified><Etag>0x2600AD6D5C71880</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>4bYj4CweV0dh2HSSdHSicw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:11 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-88332468-457d-f3bd-4a47-929b04e3af35?restype=container

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
x-ms-request-id: 9aba54d7-258f-4a0b-b2e2-56ee171f9db5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

