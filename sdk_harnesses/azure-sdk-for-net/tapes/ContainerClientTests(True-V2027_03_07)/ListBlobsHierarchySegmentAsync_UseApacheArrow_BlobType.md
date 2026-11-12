## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8af58a6c-829f-b746-c13f-c0f9b88e8e52?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_BlobType
now: 2026-11-12T00:45:02.9422758+00:00

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
etag: "0x219839DF64C5DE0"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 446b3ff8-1402-4a94-8251-9be90b625109
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8af58a6c-829f-b746-c13f-c0f9b88e8e52/test-blob-b829ef27-bd70-59e9-6d82-94c1ddb112e4

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
fZjMwOBxlhyapmdMBSyosapRo+4M+equoZsdHe6F2Q8t23wfwc5ytlgMHspWnVNA2uIWjA4j14Ou
Hh9EU3kuFMxYHiqwiO/c3+2V/9sfWANI3UIMb00ACQP4cKOuLWLf3gn9/X4pj1HyOqwhjteojsUb
/HY2IaV/VxUmuBdMLbGKtSHSIVqFHk3wGjSg33orUOLdkzHsqb1jfqZpAtc6pQz6lti21m1rlt0o
RQZx3nea+mg1bpqAnQxjbqO0HBt2tnQnpkmidXp1cv1UxGO38qAuzghuBDdyevjMU2fJtnnBsY+R
STgu+IXuwPudK9mprHwDhk0TB7E8tStQ1SESq7yDkxLTJaho/9aCgEQ71E4fIqbrxjArrardVJMM
3SJj2xU/GZjG1YfTm4Z3kYdtAeDdMbJ7JuSLV+Vo9tAVWyKzHqQv/Lu2WE0fGCuptBwicFOzL6xv
6LUws8KyXt+3vj9kw3LiPQQlJthlWw644aPJRYV8YSx1RDXv/kj4A/puZ1rsRfGpQDJPjQjTCoym
d9If6RhaO1wS7n888j+8LCPd9/O0zJyxIAVSLNQkoTmoSYZ22RriFCz+2VZxbE3zkmDk9ROZ8qs1
bcgTBw6I7k1Fk6m4RVIJ++PHtvJFP7O3XplzP6smD1bbQGxRzwwedesJLNikO0wN2/ov0Tu48C0U
W6l0FK+hHoRS3AXmtyzXqUAHOxPbEyNNZWOx9j4aI08/PHNiqWA8Zw5UUV5HJyPNWCj7sLQZOUiF
J69L8CdGN7m1pnu5dP/fy9QFh8HFBT1A454VH3KbJQIq3IKx8HfmDhmlkYCoFOQoHOXgFLKHwCFy
Cw2JMBhGGoF4j5d9LtpdHnmnIHS8l8+57AONuhBQohxgPuVpXd0BXnf/L4RMq+0Lg/Y436CttXM9
z0MUuF9wJ+x7He/088GbpcH9vWhKbUEVgjcaF8N7solyLI2Z7aUXjgeY0Y39FpA0nTrfsPcK8mIC
/jYoVg8p/2pmgsY0Argb5i9gspu0F2un5nqJnAGRZzkrl+5v7jj3btEil5TJAJuBxMrIqkDGTubL
gW+VoGNp1BqMCGrKrPf2aEPKkYDW3ebfB9c3yb35ZEkHo2zIYs5tucN5PPcwthjS0UH8/Lxm9KSJ
tZiLMQpdk6QgwwiKLgZ1XNe8XaHurlG/ZPh8/WeMoK/IPqw14oe5HKlSD/MPSKI7h6DlqpcCmgZH
y80S4ZY8lCNZwu9ZP3pPA0D3nJ9dsBxVQXbHp/UYxaOl7ha6pjsSFnvQtoWz4UcmladWCv5n6Rux
vaAfdewtQfxLs1FjlVwF5YYjjfqWol8uoRFOwbqlPQT6Cemb8qGOonWJZy72wgBKUCV4RFshGg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A30A36B0227E0"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
content-md5: etEPFCLO0UTyPrZQ31wF7g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a55c1a3-58ce-40b7-ae0e-8ed7d059061b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-8af58a6c-829f-b746-c13f-c0f9b88e8e52?restype=container&comp=list&delimiter=%2F

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
x-ms-request-id: 6007d765-3fc5-41fa-a49f-bcfff29b91a9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-8af58a6c-829f-b746-c13f-c0f9b88e8e52"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-b829ef27-bd70-59e9-6d82-94c1ddb112e4</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:02 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:02 GMT</Last-Modified><Etag>0x25A30A36B0227E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>etEPFCLO0UTyPrZQ31wF7g==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:02 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-8af58a6c-829f-b746-c13f-c0f9b88e8e52?restype=container

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
x-ms-request-id: da661fc7-27a1-4844-8d15-e121218fe98d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

