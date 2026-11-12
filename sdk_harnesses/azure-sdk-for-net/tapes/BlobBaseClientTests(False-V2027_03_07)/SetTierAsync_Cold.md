## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0f6288e0-8832-de79-6fa6-9917c44f36f0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetTierAsync_Cold
now: 2026-11-12T00:47:11.4718509+00:00

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
etag: "0x1D649CA10B4C4B0"
last-modified: Thu, 12 Nov 2026 00:47:11 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e545809-c305-445c-8c9f-282678f00354
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:11 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0f6288e0-8832-de79-6fa6-9917c44f36f0/test-blob-cd628a87-f86d-2682-6ba4-0d12343e796a

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
gwcNoHi4wGwTlh4xSGl7+OiW5AaEhajoBjukjnpnqTEtLpS9QpV3z8n2udbaUN4BKBUqnVpy5f5e
JJo9FDLxrO3tAxnVvrZSHxQ8jsvSDrVdomVlPQvWu0iVXx37ObuXBA3p7E3ELGpf135FNVcyjBXl
33HMjG/hFkjQQF+YV+VZpYm+6CFomXb7BWWNkIXxYtIHFllJynidCNUE8+wLxoCZ64/OdKP0fUb7
0YYJU4bC392MkEGLENoRIOBLY6WK8D/l9KT2Iu4uE5gTTfnxlLRPQhMOfjY+Ddu1vVPDqBmhceBH
I1/hzLzvXX2oeMLgH4wr/CGRe3EJpubJQGWbamt/ctsYqnBVbnVXHyC4lpUY1J7GmKz4D/ZvPn15
F4tXU/MRKQXnyHQb1o2rOltQUBBQsWzH1NK/hmLlqWzz3FbqAMstp22PMQwpq8EeTdSaH+1tKGYe
j38gUqKjAR4HKPo3wDqQIqiiwH9gnikQoDiOS4p+hbPvy3BMDVXK7DDtIYLH54yaCvxFymjnvvFW
D7FpFLWUiKJHR/XJQxVT2NNPc3ymSbms80GOObtLCA1/9v2kYNh6WJjggJ+X0Mbm8fGUl0t1r8b3
vSF0Bk/m+z/oSk0Xr3f71RrjxsgaFCJ6p0jJtnDCCkY3raO2BVJJ+YRfr4Z5zkJ6mMEwken93Kn+
+V4HHEXPJkAG4AHURM/Hmc1Eu2WcAdgFTx2ukXhdOtD5uAvzQtw+kIlGcu5ApVTxaPcbuCBEYviF
Ac0nIJTHqKYx2ozE1FfxBSvbVY7qxKrJvCiAQYGwtVUTbUEOFm/0f8lHD8rHLZSgKrP1aA1pmj0i
XmNsRmckgCU2sGYW4u675tbEo7TfAY6U4BbOuk1IqtID7LgLiDhiI46lkH0uikjEOYE2pPeIQlzV
12VQVsbY7gWTEvU2sF6dYYAlOnERZlbOCoHLEQbbe6lbNrDSEszIzaJ3mndSjokjmUJ3Ygjrw3EP
gktFDNz/uJZM2nmtyk+zXW3Pmcvee3z3p3jDYxigcHI+w5CAg8DFeOLhBrMQds/zxAWbGyqmMQbP
TWRkO1R9rGkGbge+MtmsCSHp/XXI5zGo0J4TBVVImJGJsDZbYDyNY1pJCQjINZIs7hEJvTSRB2Yz
u2u1aqYUvtV1NIGjUKjlW5kaft0p4JoM5xdDP9td+KnPKKXQ1/izNUsyUwAQiJ1oI2GadoiICdvQ
qYOP0X76FzzX0ygDFISgZ0mR942a/F552ht5w4EhRh7J/y51JGTMNzvEObV1ZA7c+Q8+9hJONqwk
FvZjgFS6towJOhVWK0Plxb9R1cOpA3UMnMlx4k8Me8iBUA1tabbnCoIoayr5hs7MWTFS/GHpew==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CA7E85025C47E0"
last-modified: Thu, 12 Nov 2026 00:47:11 GMT
content-md5: Q0XCEqrA0s8scmBtf9fOkg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 37aa3628-b6e4-47ad-8edc-079452509a57
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:11 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-0f6288e0-8832-de79-6fa6-9917c44f36f0/test-blob-cd628a87-f86d-2682-6ba4-0d12343e796a?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cold
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
x-ms-request-id: 7b091f93-1248-416e-bfcb-901404307925
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:11 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-0f6288e0-8832-de79-6fa6-9917c44f36f0/test-blob-cd628a87-f86d-2682-6ba4-0d12343e796a

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
last-modified: Thu, 12 Nov 2026 00:47:11 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:11 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1CA7E85025C47E0"
content-md5: Q0XCEqrA0s8scmBtf9fOkg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5590e19e-d38d-4dd3-948a-ac91f6955f03
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:11 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: false
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:11 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-0f6288e0-8832-de79-6fa6-9917c44f36f0?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 106597e6-2139-4ba3-987d-30712db6576d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:11 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-0f6288e0-8832-de79-6fa6-9917c44f36f0"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-cd628a87-f86d-2682-6ba4-0d12343e796a</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:47:11 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:47:11 GMT</Last-Modified><Etag>0x1CA7E85025C47E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>Q0XCEqrA0s8scmBtf9fOkg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Cold</AccessTier><AccessTierChangeTime>Thu, 12 Nov 2026 00:47:11 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 5: GET /devstoreaccount1/test-container-0f6288e0-8832-de79-6fa6-9917c44f36f0?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b517c95c-fd75-476b-a5cc-799170f9c179
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:11 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-0f6288e0-8832-de79-6fa6-9917c44f36f0"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-cd628a87-f86d-2682-6ba4-0d12343e796a</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:47:11 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:47:11 GMT</Last-Modified><Etag>0x1CA7E85025C47E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>Q0XCEqrA0s8scmBtf9fOkg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Cold</AccessTier><AccessTierChangeTime>Thu, 12 Nov 2026 00:47:11 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-0f6288e0-8832-de79-6fa6-9917c44f36f0?restype=container

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
x-ms-request-id: be153b1d-1f29-4914-a22a-c96ba183953a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:11 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

