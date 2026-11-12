## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-53ec8c4f-2796-a6f9-e948-6bde866fa21c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_BinaryData
now: 2026-11-12T00:49:10.1388558+00:00

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
etag: "0x22F1B591A85B6A0"
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5bcfea1e-9b2f-47ed-9c46-9514c335cd14
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-53ec8c4f-2796-a6f9-e948-6bde866fa21c/test-blob-ba35e4b2-4238-7f36-42ee-72822eef7301

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
Yw9f76vVg2lY7dhZYNFiX5F+ypqWtykNVWwQqLR2d/rVanp3D7Jw3WHMYUtq3R5xjBPxsCTZaqzl
Upo+xNu14XXdg/ZX61DeDe05ylXdo3dOnxyghcbW+wDOkbwYMhmGFoDVjFkoGaHDE6I2oJ9XB68j
8CS+FFyvB4j1iFmTxdvUs7PUCBYdJYZ63XEjn1tgd4kM9UH1xwIjJoTRMpBHL03HYu3rgv+YBcqe
RDfqi2gslRHPhtCa3+uxseGSS/L1M60jXDxudfSJc+92VoPKOJscpZ1+d6h9LYMBOtAeBrrXqBCJ
xy4rvh8cRRPhI4ho5nhGdaZVdrsFpi+5bDsja2w0nq5yQXFs8eZ9YjKVnAn7mFNY2JEUgjJVhCD/
cVHk+NqmrITZ9qUH2YO/1xSJbwklvdTny5PbIBx8HL1QbH+VmWlX7/CEIaKuUf4NVKsdzBQW2rR9
/C1Hy4toXdnntm0EKj6rMYAZoJwxOXqUzcxxXlCoOZLLGJw7ECRkHMTJxpqQCSpscpqU/TkXS8Oy
sv2/9/+IP3zbOBGibyBctITYaHPfA8ShBOy2FDxYs83ZiF4mpSTEQIYetdAYygJ5N0i0P+JP0644
HfMS0ipAgoREyObCNQ9gEyjswU7ziTrpPNzzo3TqibWw7Ygwsm1c3jJM0wEctwI5VCy5YxJfRZS5
KZZOTN8QWT8xEkeHL2G6kOMbp7U4zIXauk5HMCajUKjzd4jXDZFTO3rC66S6sSXL/9IvRJ3fgFwQ
c5GQyCkZjcKfk7fY4oJRx2w7duHgIAgpfDFTcwsKFPcrxpoAw3JRqV3iGx5t8hxQ3Xwxowl6MFOI
Zkv3xRq2lH7ArBznUQT56s2E/gTqvIoVA5WP2XDtsJZHd10mWeNDK4egrEUAaIx4OLk89jFOnqnB
4sKEJ7sN0/uFoNmn0pDpQNJ9ShBFFZoJFqC2sLpk+dmzZXYhvwTMkthJesiz0GUpUrVf0FSYe80n
ehAaViNBIKYA820ZyIHOsbc4/JrSVkY7jV4EBSiEG+mp+UT0sTu1B1ohst34D4k0kR6cYH8zVSTK
38jEPRp9e9iDcM492QB8gvRAsKNoQ37U0HQK6LppdqQfKdJy8Mo/ozcFdJ+797ceIN6L8qSBYZtK
8Gymc5MdGvkpHbAtCZEpAQxsY87fGNm868fc3oMAnsg2KABdmDCj51qlkdkH8RZMYfGXFf7Na9eT
6YjLQTt1KX/o9+GRzGjcyHx0OYf/tfqwj32SaIjJabwoyq6n16UeMGhaH/k1u5WJukyCWDJQlDSO
G7K+48D2Ho0kaAK5NPHWVggepJYAe9PoCK48RxGK2DV6GbzyYEyoZAFsEFKTz4ZbqwEpMfCdjQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FC6139239AF380"
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
content-md5: yXiMse2IYPQYJ9qL5fKGvQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b04cfbfd-de00-453d-9e28-bbbc18a2ae38
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-53ec8c4f-2796-a6f9-e948-6bde866fa21c?restype=container&comp=list

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
x-ms-request-id: d52e2281-2e8e-44d1-9431-5718b031c5be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:10 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-53ec8c4f-2796-a6f9-e948-6bde866fa21c"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-ba35e4b2-4238-7f36-42ee-72822eef7301</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:49:10 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:49:10 GMT</Last-Modified><Etag>0x1FC6139239AF380</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>yXiMse2IYPQYJ9qL5fKGvQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:49:10 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: GET /devstoreaccount1/test-container-53ec8c4f-2796-a6f9-e948-6bde866fa21c/test-blob-ba35e4b2-4238-7f36-42ee-72822eef7301

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
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:10 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1FC6139239AF380"
content-md5: yXiMse2IYPQYJ9qL5fKGvQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e33823f-9381-4a11-895d-fd718b210f48
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: yXiMse2IYPQYJ9qL5fKGvQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
Yw9f76vVg2lY7dhZYNFiX5F+ypqWtykNVWwQqLR2d/rVanp3D7Jw3WHMYUtq3R5xjBPxsCTZaqzl
Upo+xNu14XXdg/ZX61DeDe05ylXdo3dOnxyghcbW+wDOkbwYMhmGFoDVjFkoGaHDE6I2oJ9XB68j
8CS+FFyvB4j1iFmTxdvUs7PUCBYdJYZ63XEjn1tgd4kM9UH1xwIjJoTRMpBHL03HYu3rgv+YBcqe
RDfqi2gslRHPhtCa3+uxseGSS/L1M60jXDxudfSJc+92VoPKOJscpZ1+d6h9LYMBOtAeBrrXqBCJ
xy4rvh8cRRPhI4ho5nhGdaZVdrsFpi+5bDsja2w0nq5yQXFs8eZ9YjKVnAn7mFNY2JEUgjJVhCD/
cVHk+NqmrITZ9qUH2YO/1xSJbwklvdTny5PbIBx8HL1QbH+VmWlX7/CEIaKuUf4NVKsdzBQW2rR9
/C1Hy4toXdnntm0EKj6rMYAZoJwxOXqUzcxxXlCoOZLLGJw7ECRkHMTJxpqQCSpscpqU/TkXS8Oy
sv2/9/+IP3zbOBGibyBctITYaHPfA8ShBOy2FDxYs83ZiF4mpSTEQIYetdAYygJ5N0i0P+JP0644
HfMS0ipAgoREyObCNQ9gEyjswU7ziTrpPNzzo3TqibWw7Ygwsm1c3jJM0wEctwI5VCy5YxJfRZS5
KZZOTN8QWT8xEkeHL2G6kOMbp7U4zIXauk5HMCajUKjzd4jXDZFTO3rC66S6sSXL/9IvRJ3fgFwQ
c5GQyCkZjcKfk7fY4oJRx2w7duHgIAgpfDFTcwsKFPcrxpoAw3JRqV3iGx5t8hxQ3Xwxowl6MFOI
Zkv3xRq2lH7ArBznUQT56s2E/gTqvIoVA5WP2XDtsJZHd10mWeNDK4egrEUAaIx4OLk89jFOnqnB
4sKEJ7sN0/uFoNmn0pDpQNJ9ShBFFZoJFqC2sLpk+dmzZXYhvwTMkthJesiz0GUpUrVf0FSYe80n
ehAaViNBIKYA820ZyIHOsbc4/JrSVkY7jV4EBSiEG+mp+UT0sTu1B1ohst34D4k0kR6cYH8zVSTK
38jEPRp9e9iDcM492QB8gvRAsKNoQ37U0HQK6LppdqQfKdJy8Mo/ozcFdJ+797ceIN6L8qSBYZtK
8Gymc5MdGvkpHbAtCZEpAQxsY87fGNm868fc3oMAnsg2KABdmDCj51qlkdkH8RZMYfGXFf7Na9eT
6YjLQTt1KX/o9+GRzGjcyHx0OYf/tfqwj32SaIjJabwoyq6n16UeMGhaH/k1u5WJukyCWDJQlDSO
G7K+48D2Ho0kaAK5NPHWVggepJYAe9PoCK48RxGK2DV6GbzyYEyoZAFsEFKTz4ZbqwEpMfCdjQ==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-53ec8c4f-2796-a6f9-e948-6bde866fa21c?restype=container

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
x-ms-request-id: 190f8080-ddd2-4e8d-a34b-a1d663a4531d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

