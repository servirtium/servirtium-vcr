## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8c235d89-43c6-daf3-6eba-32bd50fdcc0a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).DeleteBlobIfExistsAsync_Exists
now: 2026-11-12T00:43:36.9920666+00:00

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
etag: "0x1E3CDB1C710B420"
last-modified: Thu, 12 Nov 2026 00:43:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96a7eb2a-ce61-4aeb-b563-db5b3513a6c1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8c235d89-43c6-daf3-6eba-32bd50fdcc0a/test-blob-09a84542-df77-1280-23f0-8c87fe54378e

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
8L/Abcs/mfAL9AbBaHrqHNCZr7L/+XOp3BBo1bdr3BmCo8yRPV4+Aqu3/oPZv6moBXC3ZKWFjvdL
FpC71sM5nxfsPsWuWd9xW6wGR/vw0Bxnv9BGtHh0/RXVRibOgyvnfl5r7A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26E5C65CBEFD1C0"
last-modified: Thu, 12 Nov 2026 00:43:37 GMT
content-md5: OvKsO94jxkE/RF9DKqYsHg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c279fb2-8219-4af1-a4e7-8e114bbafc4a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:37 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-8c235d89-43c6-daf3-6eba-32bd50fdcc0a/test-blob-09a84542-df77-1280-23f0-8c87fe54378e

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
x-ms-request-id: 1680c136-14ab-4d37-9926-133d23e39fc4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:37 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-8c235d89-43c6-daf3-6eba-32bd50fdcc0a/test-blob-09a84542-df77-1280-23f0-8c87fe54378e

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
x-ms-request-id: e962dfc7-e00a-4920-a4e5-f2c4e3fd82e9
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:37 GMT
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

## Interaction 4: HEAD /devstoreaccount1/test-container-8c235d89-43c6-daf3-6eba-32bd50fdcc0a/test-blob-09a84542-df77-1280-23f0-8c87fe54378e

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
x-ms-request-id: 3b61c034-bbdf-4de4-8dff-c889d2e41907
Date: Thu, 12 Nov 2026 00:43:37 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-8c235d89-43c6-daf3-6eba-32bd50fdcc0a?restype=container

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
x-ms-request-id: 48dba652-3554-44d6-b277-edec42dfe608
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

