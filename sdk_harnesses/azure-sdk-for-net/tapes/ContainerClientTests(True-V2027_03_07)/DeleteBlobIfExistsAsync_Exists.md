## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9f5b4e77-40a5-e93a-f512-296aa882e9c1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).DeleteBlobIfExistsAsync_Exists
now: 2026-11-12T00:44:42.3345841+00:00

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
etag: "0x1F7B349C795B030"
last-modified: Thu, 12 Nov 2026 00:44:42 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b8ea1976-df19-4bf8-a398-ba73f5277f1d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:42 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9f5b4e77-40a5-e93a-f512-296aa882e9c1/test-blob-79ace3fe-13d6-4528-2498-c75d957d0f62

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
sVgQ2ipiGG5vCdryEnAWWb67FTTPONNjJRZ7DXjdU3cDx7lPcg+WnMo+Cs05NjKzgW6e2Wfbk3iF
rLQU5wv1krVi70u3xuavJHlpkC0GKu/jx4sKPnkQJzNAysVbgrS+SXgX1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26696F31C424DA0"
last-modified: Thu, 12 Nov 2026 00:44:42 GMT
content-md5: wQdiF3X5ax4j/efu0S0j5A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 06e6f91c-9c3f-4602-99c4-828e97438853
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:42 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-9f5b4e77-40a5-e93a-f512-296aa882e9c1/test-blob-79ace3fe-13d6-4528-2498-c75d957d0f62

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1d29546f-77d5-4c5f-98c6-6715b0173abd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:42 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9f5b4e77-40a5-e93a-f512-296aa882e9c1/test-blob-79ace3fe-13d6-4528-2498-c75d957d0f62

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
x-ms-error-code: BlobNotFound
x-ms-request-id: 8069a653-787e-4f62-9d39-b3119ff2f406
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:42 GMT
```
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobNotFound</Code>
  <Message>The specified blob does not exist.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 4: HEAD /devstoreaccount1/test-container-9f5b4e77-40a5-e93a-f512-296aa882e9c1/test-blob-79ace3fe-13d6-4528-2498-c75d957d0f62

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
x-ms-error-code: BlobNotFound
x-ms-request-id: 6c4c04ef-74a5-414b-986f-155c136f5563
Date: Thu, 12 Nov 2026 00:44:42 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-9f5b4e77-40a5-e93a-f512-296aa882e9c1?restype=container

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 01341b76-0555-4e84-9f53-ba2ddbe97732
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:42 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

