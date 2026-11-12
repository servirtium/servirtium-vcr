## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e6c5dbee-7f96-5414-f140-9e23fa142a68?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).CreateIfNotExistsAsync_Exists
now: 2026-11-12T00:51:17.4004607+00:00

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
etag: "0x21D06E60E072A20"
last-modified: Thu, 12 Nov 2026 00:51:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e21ea79e-8a76-441f-adf6-57b8ae8a1c81
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e6c5dbee-7f96-5414-f140-9e23fa142a68/test-blob-4887635e-b0fe-fde4-800f-a1bd410c9711

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA5CAD94D1C250"
last-modified: Thu, 12 Nov 2026 00:51:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf1afbfe-656c-431d-af73-512c79ad24ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e6c5dbee-7f96-5414-f140-9e23fa142a68/test-blob-4887635e-b0fe-fde4-800f-a1bd410c9711

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: cf832f61-9fd5-48e0-a438-4ab467677004
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:17 GMT
```
### Response body recorded for playback (409: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobAlreadyExists</Code>
  <Message>The specified blob already exists.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-e6c5dbee-7f96-5414-f140-9e23fa142a68?restype=container

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
x-ms-request-id: f208afae-0ddd-45f8-aa01-e0a4142ab93e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

