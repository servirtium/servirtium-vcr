## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9bb548c9-bfab-0853-4b09-89f7939f9182?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_Uncommited
now: 2026-11-12T00:43:57.6362202+00:00

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
etag: "0x1C9DB4D9A416D00"
last-modified: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 217f4d73-354f-45ce-ad1f-271e4f1871a8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9bb548c9-bfab-0853-4b09-89f7939f9182/test-blob-52794230-c7bb-2801-6c23-62c004dbbfa0?comp=block&blockid=dGVzdC1ibG9jay1jZjU5NGQ0Yi00NzE0LTg1N2ItZDdjMi04NDFjYzVmOGQxYTk%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
GWqqTBpM8LEtGuTtBBgVfCxW7i2Qb3kBR4wuh12TA3BK6d4o9UVo41HIJaDiEyRTDuaTreySEKnw
qAWNHmlUmhZ0oxs67Ybn7QrbyErZHzNo2nh3/1WDt9k0N00/2sXodIqKbm8JGCFfrL/it0dfF4nR
JEPx3ZrA8OxCBrU5pxNE81S/TrDEX8FXF1OWoQCR1R/EbraC95fwyX6DxhJrJgWsncTzn8nYDMSB
mcVHKk/rsDGVdDhcwvu9z4QyQZiv6/BN6QM8njZW62LxAF3RqZ8ulxbh1rHMUNrINc9Epsor0q7U
+UFLrxL7P4nWa8Ke6yXlA6qCzRU/gZkpc2hmEUWXxS2v/LBe4ucE5pYo9uQXKUmqX6IgqQWYlXeo
IjuplC1DP6WU7+91hiDCfed+Fou0EUoevLKjdhsoFmc4tsCsW1Fo5LY/gjpaNNiBXiseGX7s8xDx
ith7oMiJbNiIPNBgFSKVFTHUdY4PxIfZIRjwCvzoTMKvu9B47UTttRZh0vcHIUgIiARMF36B4cZR
oX6wmWHcn/AOsFpSHCjt58B4rvGP0gDP54H4mzRELtkJJ0vFPRu0hTIH+XDttmzbXzC+CTPUwc99
4LLf4wS8yoKBSPXcJ6mkwyi/iNiQ4jAVHDwDhSSmNWV8R1xo1aEuSy7ubG53/jeGGUUKFDn27f6C
ycbHuERd2xOPYN9NPO6GkT2poXXCnh4FfWzfmyAshVpd5gvbZpLqkZFb551XOd1WhIP8TEyIvyuo
wjvXfT/yYtuF71XjqyqqvxDkZ7aArUSPiBecMDgN1CffMqNXEhNRaIXC0UmHc9hYUY08pFh0KBX3
R/UoVTKjeBsuA3iGUqz8kv4xvdv6BxQ+RN6q0S/OawqOYMsdKBJSH1ktWXBf0f/hPxJZQ2o5/EDg
6hFT+KbrX5du9/Hh3mns3p6Bza6k3nLfyZIddSigVWSKPT4B/yazQvrY8dkN/2CpbWTLty+SPAue
dC4TzepvzaKNVqEq6t93zoqzzO2Z0skydAfD1Z41+AEyYor4n3UQaCM3f6m+foKEU+ik3m8eBaJk
4Vniq/gDWF2g+IhVfy4Uo2PKYVIgc/aFPoG1kBqRFF3ok74bLbwqMydLHoX6L9O5jzoMU6NPRG5i
XWx3TsdDD+MqbOxw+Hamny4q1VVwig+u+wDfhMG5mE9PudBPs+VfBw6iz8PnSZfEZbN1JG4Y8tJd
yVLHZIoicdScID+mV+xJy81GzbtMxrJpGh8NRHPgNsb98umSmKOEgF7uSihXHg7HK1mg0iQXEQKg
XUlqFSxgvOp5qGUDtzIqwk1dXXyKEvwRRhgZQGSh5eDn8jpZGWsxjY4+3XWpw3Qndg/XurSGFQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 06f5833d-a79c-421e-968e-7f294a9d36a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-content-crc64: jG7MRSBt98M=
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9bb548c9-bfab-0853-4b09-89f7939f9182?restype=container&comp=list&delimiter=%2F&include=Uncommittedblobs

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
x-ms-request-id: d9936af0-fc48-4211-acfa-4c875d2e3e21
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-9bb548c9-bfab-0853-4b09-89f7939f9182"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-52794230-c7bb-2801-6c23-62c004dbbfa0</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:57 GMT</Last-Modified><Etag>0x217FD8E18D97E80</Etag><Content-Length>0</Content-Length><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9bb548c9-bfab-0853-4b09-89f7939f9182?restype=container

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
x-ms-request-id: 572a5c3f-4888-4a61-b0ee-2f6b992505cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

