## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ca55fc4e-96b4-a18c-c91b-6dc3f34ddbcc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_RehydratePriority(null)
now: 2026-11-12T00:44:20.1621109+00:00

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
etag: "0x1DE72C92FAD4E00"
last-modified: Thu, 12 Nov 2026 00:44:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1bd8fa14-c29c-4793-b3e4-fe16126e7260
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ca55fc4e-96b4-a18c-c91b-6dc3f34ddbcc/test-blob-3348153b-b2f4-e22a-75d7-b8415f9f3292

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
iUsXbSEBLFq6cMFCx6RAKLkzX86fqLub0XJV3N5LQiro2jqoNm6rOenteITx5xvQlpCILD9j8+CQ
e5uurE98by6XWuxpmPJKhyXlsTA2qupXhEZOwxXqheZaF7rS/Y2ZcQhWWY0uZv2ePaQZfUGvWdCx
VycJLawYrNQGD4A3eIqYTEAn4FFcKB1IsIVw0Qelqr7qIaVlj0NcPa24KFd9ZsQZgTABh3l+VC4K
wX0mp9vNYGTCTFflMrz8y6KkowDFy0nAV1DWoyNEa8x3W87GNZXR68fyuhltNE5zBLzX2rAuRPUz
ZVCL9rxBfuGKbdfuNpYM0rg40hAvUyIBYp9mbZAbSBbYks9FRvUKsTw448Z3hc4lygj49nLlAxIu
iZMd2hFQbyXBFaPGxovCLSHU9m9bid3RQaKIIlKk8468F7xh7dYr6HShtnAqXgR8NchQEQ2i0gC2
TJlux0zSHSIVCq/PYEBKqA77udNtp+KeDO2KU+GBGUS8q6A9vCEnz5lNFFRUrNSHBmj+phgsSKS3
0LpeR8lAk/BqErWgDezt0+o6H5KNSV8YA015gnIrj2L7hetmyYfPDYBj6Zof5/h8EdIu8ikSKYZa
RkR8xxF9P4JSpIcAhgpjaxIRKWDF+BxU/XGf/Z056VxkDIJCUkVv5qoXzUNwe4vIy4cWAP8mlE0o
KMqf3ULlGLorm3qHIBjMoUO1rivY44Hm1zEWIuhcPnc1GSp70AhoMrSIReARQKpuSV68cOYiT0RJ
uQUQzvbRz10CUgbuUdE6TXt2UJ6g1ZeGp9iKn82QEsrlMhYCV2O+tnWDDu2kgPiNgSNqq/+mqORu
iScdRy+PcUA8CB67N/UYt5koHcap4ifg/R2qJWbKP4oxlM48oW9G85ytaHfa0UotUvRlfYsexKf/
PUoR5EzZccmUiaMn2xYp4ikq/HqwBSvTfdJyZcH+E88mPWQlNA5Q0/auRUimBXfdPJti88ctTzcf
Pmd5ZwwHlXXTAZ6yBK4a2SiDAr/jLHdblCgmnB8I+e0sBfWn1mzqprDS0wTZKzftRxmeqU13OxHw
HtLj4PhWywewhf64cwO8mFsPEVhzgmnxOVUGaU+gtcrjt7iaB8W4ewj8KKY4NNQW4hHxaCq5fJxp
8aejUGG3D9A01LtKIZGVV5VQdlnCuQSA74Y+r02fKjocMRUeFCumRRjWA2AYzMB/WxCUaQZCpjej
ImDbeWCClKqBLfB7d0JpqTFA7LakZyLFv1M8C8Ez2Yrde/HKy8u4U262lp/QA+PNK7/VArmB/rs+
FboMRonoTlNlnfxQnt1liJlH7tCD9btvbt8BXdfRXHw2jLYRqw3lzUhLamXnfYzicHogOhDqug==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C61A08D46C1020"
last-modified: Thu, 12 Nov 2026 00:44:20 GMT
content-md5: CVKN4g12FvOvWXuZ8m/XRA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7bce61b6-6406-4c83-9f01-def8d3a76004
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-ca55fc4e-96b4-a18c-c91b-6dc3f34ddbcc?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 72357c4b-e8df-410c-92f8-0b6770d351a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:20 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-ca55fc4e-96b4-a18c-c91b-6dc3f34ddbcc"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-3348153b-b2f4-e22a-75d7-b8415f9f3292</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:20 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:20 GMT</Last-Modified><Etag>0x1C61A08D46C1020</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>CVKN4g12FvOvWXuZ8m/XRA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:20 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-ca55fc4e-96b4-a18c-c91b-6dc3f34ddbcc?restype=container

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
x-ms-request-id: 0a662c86-fd7e-4b70-b5e4-1f1c1e5eeae4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

