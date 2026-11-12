## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-35b9fd99-b41a-e0e5-1ee5-7250005a6a2e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_RehydratePriority(null)
now: 2026-11-12T00:43:15.7125542+00:00

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
etag: "0x2775E76F830CEA0"
last-modified: Thu, 12 Nov 2026 00:43:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7769d3e2-1b65-48d6-a84f-b0de164fa86a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-35b9fd99-b41a-e0e5-1ee5-7250005a6a2e/test-blob-81ebcb1f-9230-e074-06ac-db01d2eb08b0

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
h/4aAXsSQd8qU+hRG2AG5FcCA8Th0AoGiNkubtnkDjPcwckBQGmyDYoLV92qIsWmpfaq0OdEz7f0
E3ii5NMGRkS0dFmXBaTtT/Y61XgsXGUUh8jiOT1MmPISDSzwECi3BRGY9a1rD6BRvIDwCvk+yLcT
jlwKIwwHaNxnhPd4/T/Ng9Bnk2e3qXgokH29W47400V13YLMrOEEkY3RA4qo2b9BIoYp1jRQW+Tj
4ZOOSQxNbrCyAx+8AdbuYgHZ5aXtgLe9ezkHz/wQJIGd6MtOdkiBhJXZ9tafhSGwOnQydnY/9mHc
0M7SRZ6zod6eHhkLoOy5WGEQFIngHvYXV5WI3a4LXvJpcqV5rj72JVT3AWYIpZmIeR4UL+HX+7LX
u+4JK8Mwk8AmoS5HP6kjGu416R2PD7H8AGSQ9i8QkXbyovNP7PqRx22l4QRqQDl08RTzohKVR6w9
DStfoJyRFg+3VJ220y3zpCGv6S2tkb8qGwUaHO9kXVpGEt/PMifRFMv0s+ucvR3nAP7w5V1+j3tr
NISWd/ogUvdCb8FNJHL53tViuN7Tjl3oMhzwdHf8yIJkZP2jOp3R1GD0WU1cmduM9geIHNedl6Um
rkTdL96ARac+6cB0VqQ4keR93zQPjJlAZH1wdKyqxsxYfItY86WBcxOmHa8bGKBjT4rzH7dwFiKr
ncthENH7kyPzG9oY4J0/+2shaW/pJEvdDCUht6YU52VprVbZIGNCqomMKPzFSm/stCRLT62zwXh/
gwOs2tx83jR0rzJHZdoI3r7lXPxPF8K1NAOCyJe4tevdWp1gltCsEEnHUZs8pU5JQ3DuzWV8L2xA
9qbY+hacu/lHaQo9qEjuOEyzh8YneY60OIUmyueFYSsxH58q1BYzK5Wh9DtEC5so/5QYyKelGX0X
JMGQdfARwQjeDIioxGQ2gFwwhoRTby3q/spTbZiDiwUiErBUorWkjzIzZf8Sfzsw4khLdZP4w7SU
pncmvlRvW4GDhrG04d2ni/ZRIAot136PIopQOBVyKU/8wPs9ftDewwp+j/mKewBqpOqcp6OqZs74
l5vJHyNrEFxityDiaQwmc1z/r0iFBKaK5ZQr1YKrUlosRec0FKTnEn6cKMTgiDrddjNGqreGcpL0
PzqOQDratmXGtSMk8V64F53J6NziqlxZTV9OZaejpdJVQNRpWNFDwnFeGdIWuITUjZIavIq1EZXd
NfPbjFC+Ig9Rz7GKT7/LhiZqhJCJQpTaedgUielIny4/iyPdaDYgn/fCxejTSj7TTjZjSowFVPJf
ARJ4qZkmCDCCSsOc7R7vSuSYxnyrBi6aQDqz5FShOjcwfmYjqPZdnLy4UAB6N2EYdACobI12tA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x206D27993193720"
last-modified: Thu, 12 Nov 2026 00:43:15 GMT
content-md5: eqb20pkRN6Z8fqxg6TXVnA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2340ce61-ea5f-47cd-963d-02fde5b3764c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-35b9fd99-b41a-e0e5-1ee5-7250005a6a2e?restype=container&comp=list&delimiter=%2F

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
x-ms-request-id: 469ffcb8-abc7-414d-9262-dceaa2135ad4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:15 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-35b9fd99-b41a-e0e5-1ee5-7250005a6a2e"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-81ebcb1f-9230-e074-06ac-db01d2eb08b0</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:15 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:15 GMT</Last-Modified><Etag>0x206D27993193720</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>eqb20pkRN6Z8fqxg6TXVnA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:15 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-35b9fd99-b41a-e0e5-1ee5-7250005a6a2e?restype=container

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
x-ms-request-id: ac5efb5d-ddab-4f43-a04b-b71a3ed50ce9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

