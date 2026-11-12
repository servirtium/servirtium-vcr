## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c1a57457-01af-3964-6a16-8a732a8fced3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).SealAsync
now: 2026-11-12T00:50:54.3299114+00:00

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
etag: "0x25EE1D9333328A0"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e905dcaa-2f09-47b8-ad0c-469f91993af1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c1a57457-01af-3964-6a16-8a732a8fced3/test-blob-5869fc58-7b8d-f7f6-5ac3-985890520f72

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23D69A641353BC0"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 14bd3961-7068-4f61-83a4-7cb1afe9ee28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c1a57457-01af-3964-6a16-8a732a8fced3/test-blob-5869fc58-7b8d-f7f6-5ac3-985890520f72?comp=seal

### Request headers recorded for playback:

```
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
etag: "0x1DD68CA6576DB70"
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13a82ae3-7bae-4cfa-91dc-e0da6a80c988
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-blob-sealed: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-c1a57457-01af-3964-6a16-8a732a8fced3/test-blob-5869fc58-7b8d-f7f6-5ac3-985890520f72

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
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x1DD68CA6576DB70"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5dceb3eb-baac-4ba8-b1ad-381299e069d6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-c1a57457-01af-3964-6a16-8a732a8fced3/test-blob-5869fc58-7b8d-f7f6-5ac3-985890520f72

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:54 GMT
content-length: 0
content-type: application/octet-stream
etag: "0x1DD68CA6576DB70"
content-md5: 1B2M2Y8AsgTpgAmY7PhCfg==
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6f02eaac-d5c0-4193-b581-0612ef16af4e
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:50:54 GMT
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-c1a57457-01af-3964-6a16-8a732a8fced3?restype=container&comp=list

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
x-ms-request-id: df2e7000-0468-4581-ad6b-65e7c3c791e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-c1a57457-01af-3964-6a16-8a732a8fced3"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-5869fc58-7b8d-f7f6-5ac3-985890520f72</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:50:54 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:50:54 GMT</Last-Modified><Etag>0x1DD68CA6576DB70</Etag><Content-Length>0</Content-Length><Content-Type>application/octet-stream</Content-Type><BlobType>AppendBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><Sealed>true</Sealed></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-c1a57457-01af-3964-6a16-8a732a8fced3?restype=container

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
x-ms-request-id: b584b0b3-d25d-4304-b139-bba4dc494fd8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

