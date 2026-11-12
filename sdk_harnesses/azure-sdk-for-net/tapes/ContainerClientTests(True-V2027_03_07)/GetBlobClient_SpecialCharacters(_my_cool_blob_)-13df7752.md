## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7184b65d-62b9-acff-0dd9-8bf2ff78f42e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).GetBlobClient_SpecialCharacters("my cool blob")
now: 2026-11-12T00:44:17.2172167+00:00

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
etag: "0x277601A3074AA80"
last-modified: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f74bc4ed-50e2-4f7b-b5f7-639365ea81bc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7184b65d-62b9-acff-0dd9-8bf2ff78f42e/my%20cool%20blob

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
xWJm460DhjpFBPYTzV/hsgSya0NfU+QzewQUH5pp5h9hx0v/ySnUWi9JLLRs69+u+NntTA2xznF+
Mmip7mag2x3XsgYT4eja3hATFSYvx48kZifBfJoRsPjZgZbBKmzIqVCXlTjYmhfwEm39nblLTmvY
hIc/3l+DxQIOOV9RGbSkS2zWmDFXTMwQ0GksFBI+jjMr6aXkicrxE882ymC3nvm5WVJNdbU5gTi7
Lw71VrHvz6ssJjAPv8Gh5IRiIYFrWDJwc7rA8Rl98WhsKVm8+70dRvu1infIqZqQq5Ax11+3T9bb
heP3L92RrzXIo5Zo5enHRNuGts66p8kgMEWITBkItNmC4HXZJhYdI9pCAAYDJ8anaZOEMZkIId4a
1v+YCGMbv+685QRz7h7EaZLzeKbCHAh/4eKGg4M/er6Xv1AXhRp3JkEXR0HBM3t0wMgHFKk4V7n2
GCeAlTxrfWtG3C7OreN3fFFlq9XGvq1nEcK7OGYVX2iWIGzz9pEErMnWe1dMphPkj5dX0qzjMFp5
GIN5r0UFMH3GN4x3hIXAYP4L8EJWG2qv1qjOvYy8svASet0Niv2E0Erahm+GbQsRl3Ku2D8XI/0Y
yticN3LwCoWcZAqostYAhx/4e5X7KGmdvCUaDtqw+1bf9b8k6JnY6Xvq6ggAaeWbrVAgH6doHaJu
/npM1vyq62mzyLwW3J+FH5IZED1hnFJAfmCJj9yvd9cdtekeixJ/P/6eTaEohdCxm/8UTwxkDWEn
DFibIFuNA1Dl+Ca1ZpR/mdE+w0+xF/mP2PTcmijLuaiI93+55B+jEEpQQ4yq+zRqlLU7JUkSdvVf
C0hnsGgoGT9+LW8VxrWym7IFYdNs5dzAcgZykJNedYCKWtjWPGDhJypMK87EVc7/iIqXDRQh8iVr
pj5itomsILfui2vd219SIzqpILoO+xw3cwcIxmhsaGeya5UhfnGgnwsW1spjIq0qRenaeNJrXasi
K0KCo1lPgiIDKnDKMKTICICu+CVS01FZ3oF+ku+URg3q/1MuHvyyxlSnX/c9YBREEW9SvGWFz1fx
KMXX0O8zbuNi3zFRmuqD/DHRqnRaHH1sOoCAQoqoZC/7PPU22vVkdPAT2oDj8naFzr8ztCXjlwxH
apZvsixZuXsCVl30TSI7bTaDRkH8iUcK+nPKdLAKGKXp7m9f9MHEuSEF4JwZkIGd+EbuX1DKSuFP
Zbe5jkTK+D24C16z3Hh1v40g96mq8GryLXxpG7lUHqOOD48JCircO+heYYQi6hzOeZ/DqVM3pHRN
xmHIYNyEY+y6JMzoa7RiRLzAS4/lz0Nfm6IZkXVQVmsbvEPJE9oL2v2XaMVQ5g3qYGSXd1nkZw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2297BDE19E9F4A0"
last-modified: Thu, 12 Nov 2026 00:44:17 GMT
content-md5: rdrqjEuyg4K+F4aDeyIa/A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c9d6ed7-8381-4823-92f6-b51b028c8770
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-7184b65d-62b9-acff-0dd9-8bf2ff78f42e/my%20cool%20blob?sv=2027-03-07&st=2026-11-11T23%3A44%3A17Z&se=2026-11-12T01%3A44%3A17Z&sr=b&sp=racwd&sig=Ek%2Fe8tSBdfUrSmrOFFOaFSzwuseNZ92mArkrcAS5j8Q%3D

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
last-modified: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2297BDE19E9F4A0"
content-md5: rdrqjEuyg4K+F4aDeyIa/A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8ed6d346-704b-481a-8208-3baccb422287
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:44:17 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-7184b65d-62b9-acff-0dd9-8bf2ff78f42e?restype=container&comp=list

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
x-ms-request-id: edaeb998-1741-4f48-9673-0c0d6c530bc8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-7184b65d-62b9-acff-0dd9-8bf2ff78f42e"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>my cool blob</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:17 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:17 GMT</Last-Modified><Etag>0x2297BDE19E9F4A0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>rdrqjEuyg4K+F4aDeyIa/A==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:17 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-7184b65d-62b9-acff-0dd9-8bf2ff78f42e?restype=container

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
x-ms-request-id: e3c572ef-d71e-410b-afe2-3544541abdfe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

