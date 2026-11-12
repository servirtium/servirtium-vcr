## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2a3217a5-2ecc-4db4-b835-bff4ab78d115?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_Uncommited
now: 2026-11-12T00:43:49.0986185+00:00

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
etag: "0x1CDDA9710E17720"
last-modified: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 021f1e30-62fc-4b70-b685-6b05e2aa46b3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2a3217a5-2ecc-4db4-b835-bff4ab78d115/test-blob-e13415da-f7b0-2356-aace-3aa57f07f580?comp=block&blockid=dGVzdC1ibG9jay0wYzljNzg1Mi1mMjlmLWJmNjUtZGY5OS0yMThlOWYzMTVmYWM%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
/7tE2/BWVjDvt7CpRD5dhXzWwPXzWJSuwQ+A/fQOzbA/PvXwM/Ukg74D8vlHrd5rcbQoqEf/jaYm
lhrh1lk84On/aQVJbVGGsj0372abZxQwFYxA5SVpQLFOyZ3bQ61kxxEPR0PYIQNiofYKx50/iy8F
sMDN/PrElihU+qS0q26P0idUix/QWPOI3UQuX3gTDz1t1ZPsl8sXS7AbhCdfrvaHevV16wAPNVjM
RR62lTevQOtnRtXbojtcPUBvtdPMKS5Np+SDniM8XqA7IFKsYLV5a0M792chrNe5Ga6/oICE/xvw
ae5SK6LHKug0n4Lor9yL9UmQkTHHK/oMyoR1fb0gtiA2vPfGJj+gc81/7AxU0GrRNKo2827qKT30
RmEeUq0qFOlisvLlxM8K7x1jRz/tuPkao0gT6cOxS5O50uDdgiEgVdgj8h5363DbKwNRhuH+Bo1o
BK5lFyolsWZfLPHuLG38Q/JnycbaorfXN76/YMSyusxSdH5yuz2t/UC4GL9/7P6WVEPulzzHjmL3
jd9sZlChrHElnLjvioi0ucyFIon3WEq/KQuBwyOPiuYcey1dQJfwF2tOWlBGpsq7Ot1wQmzY/zWV
rD1EH+lOlRHR0w5aVng0lQsdqf35eIJBxYhFHkh6Q3z4yJNZq/eBAMQ/ddO7YeNkO61gu1U3mzS7
A1pgCHbJVo+SYY7l2+kUm6k5ugOuhWSl4OOaGYgmwCxfnqicIfdOdR5DKP9Uf2DDTB+s/uAwDH31
uyeTLj0HbKFihTxBd3qx60Xlal1lUWCC18xoesJLL5EqpmbQukfgPLxe8vokgdWl+hKbSqIgkGnG
EFdwnvLeFlWrF9AU4TD9BS6gBl5mXlX3w3+vsOTvChb8CanwcJ3Kf9ykeWoEkBninUV0f4kKYLIB
eNtzLmVwuwy6GNiHDZSQ1oaCwuXr8jJlzRKfeouM8aj27vfBV1F2M71dSnhBW5Cw46gCiJ7NFoWo
DWFT0UCBLSYvkB6dzn81DI4njai6JHKC7pfiiWgKKdhxGUnwImJ83BxREstxExUozXwPpYjd7unu
0eKpn6S+JGZGK7U2Reksq7GLaBKnEduCubzs+oNPkypgAVF/0j14k+1kK+hf8oeT4/nXUobXR8AH
J+Xo0ini9peL1USXrNl0E9UkQuXzIsY0WBeKeEGjiLmRd6pXj8HDgTVQ1BxD/DYgYz6xsgTaFAQf
tHkSWH5W502LBTUuHIMTYcGwok6p8VzgaRQC8ta0t2OlONtIsCi2+ezPuPYB8ka7nVFDKXG2dcIc
Me9pU/R31k3RiOSny7CY+ahh2Tlm33fNR1WEcY7y78IYK385Tab3WOGoL2liE9Ggqi/IVJuJtQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dac96367-220d-485a-825a-43fc9880f1f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
x-ms-content-crc64: vzv/ONGIVwc=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-2a3217a5-2ecc-4db4-b835-bff4ab78d115?restype=container&comp=list&include=Uncommittedblobs

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
x-ms-request-id: 5301d906-aad0-4805-b95a-2f4e46d65019
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-2a3217a5-2ecc-4db4-b835-bff4ab78d115"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-e13415da-f7b0-2356-aace-3aa57f07f580</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:49 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:49 GMT</Last-Modified><Etag>0x244199F3BF5CF00</Etag><Content-Length>0</Content-Length><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-2a3217a5-2ecc-4db4-b835-bff4ab78d115?restype=container

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
x-ms-request-id: 95c0c84d-036f-4ba6-bd92-8f7c7e2510dc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

