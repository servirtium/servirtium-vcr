## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-18654161-baa5-868c-2513-f7714de72edc?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_RehydratePriority(null)
now: 2026-11-12T00:43:15.2121090+00:00

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
etag: "0x1C7BF189081B100"
last-modified: Thu, 12 Nov 2026 00:43:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3da653d1-985e-4118-8669-50f8f0baa1f4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-18654161-baa5-868c-2513-f7714de72edc/test-blob-c7b93c15-e356-634f-fe1d-866420631586

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
2kQwTawBNP/Dy0rA1ZxnyHNtD9Wj6a198gEahzMnZsH9cZYItuEwFAe6BIqZjo5itr3xslQ/4vGX
slur5q3Lm2WIwmQFXxGRPfrO6eUi42NyuNF1NbNsvY6lcAOGhS1Z7mglEMspXFasYHVacfgLdM/3
OC3bVWaxGwXVYO4NC7jMdPt9/NKXSFx6ydU+EkyWmvs0jk0AfpgBc/XGVPtonlW9jfz8jXj8YO/R
YIyRcwi4P8by2XxrzPZje4jd0PRgEiuAgYVQmQyDOC1dLh0McADsDhQ1dcXYUsAGmRLvHpD6cU5g
EPKDaKa6b6BODZ7ZVwqI8cHgKp1mpy/ESf/6lBqdY73Pq18OaKZtewYkikUiLUIHZizOGkaw+mnD
vh6mwNqGsKngCqyqeokbcq+XQh3pohy98i3tz0l3HrD2SqmHx7srndmbQSKVXOyjs6eWGbhM2RwB
6c2tmeFfaev7tC/fk6v0a6RDTmD5J5ZASRuh4AX4qnGMht3ufgT3O9c3mqe8xB/8oq0TCIu8B8E2
bE/GvYnlAgq+Ug3NBu2gTBKIwozug4X7pT1X5KHm0H4btxK0MX1NUZid/nESLpzAc7x4M0U0R+jK
yhhLjR1p2IGOsU7b6xqUO3D0UYUU6Hahl3HlbZ04528p6mdlAsN6NCXvhH1N5Yeh5PjVQPZiteGi
qvasg2vkVcresQGzLziseR1fJGT5U7LpRImlY6d5xjSFw1fNzrC6Cy6ybjOG7bW/KMbYA5F8qVdD
wj7hPvIjZerMLWvh3qtspBg2RuR+Y1fT5jvgoMOiCRoAiQxx2Mw8jwlJub9J3Ukba155RmJzxV/n
Dli3QsUnKiRR4VWe+8xL+bbbNamXigjxxTRlKcK3jcStispzhUxEIo+a9/z0fHCSLU2rl5C1T4NQ
xXyQwQBhmlSR8XEB13RplxMa/ZML/UjE0/x1C/Uz+DpHI7/Ps2COOF2oY4v/kFXYQQB8mlLwRMg0
zO4D7I5fXfk2urS0meOzi8Q1Y5m9xEKnnMn0t13nVt73m+dyikzOSQWRyNagJKcdyQ+OuuEudgir
XE/EaqacT2PWvP78QAB3ZxmUK/tsBnci1u1OWZz8yCXexi79Cd5f9XlyymepIYgOFlPHmkoMP1bX
opS4TfXH2fTYHXrSel07NDaB+TsQeLVkP0JJNS3b0obYJWZKpqiDq/Fz0QMOO5z1jGYUi0Yaxyre
VA2zfqPG/Uv0+lT28I2N/U1KnKeyVgSlU6nHxkY/vV48bFKa0C1NrNO4GUFH/pvYho34zyqDLP0J
DSr6/zYEtDz2uoQ68y0g/PDT+TzCXlUN7kC5Ru4zuT9VkMIDU62ds2UFUEMWnZJg2NM6sDLARw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x233B74869370360"
last-modified: Thu, 12 Nov 2026 00:43:15 GMT
content-md5: gxFIfajQmykndMj/gLoFhQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4fc0865-7ffa-462f-a772-a752f84dda8e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-18654161-baa5-868c-2513-f7714de72edc?restype=container&comp=list

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
x-ms-request-id: af83172d-e998-418d-8c29-d6864ea67c18
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:15 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-18654161-baa5-868c-2513-f7714de72edc"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-c7b93c15-e356-634f-fe1d-866420631586</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:15 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:15 GMT</Last-Modified><Etag>0x233B74869370360</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>gxFIfajQmykndMj/gLoFhQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:15 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-18654161-baa5-868c-2513-f7714de72edc?restype=container

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
x-ms-request-id: 5a1b6538-1e70-4017-bf99-cc626072826c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

