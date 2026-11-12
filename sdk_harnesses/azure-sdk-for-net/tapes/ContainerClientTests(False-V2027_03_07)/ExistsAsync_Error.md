## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-46ebbc92-f43d-ce6e-efb5-d10adbe04733?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ExistsAsync_Error
now: 2026-11-12T00:43:37.6905870+00:00

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
etag: "0x1CAA8F045592E90"
last-modified: Thu, 12 Nov 2026 00:43:37 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc01cc97-0ca1-4208-b08e-fb1c5a9f64a9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:37 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: GET /devstoreaccount1/test-container-46ebbc92-f43d-ce6e-efb5-d10adbe04733?restype=container

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: AuthorizationFailure
x-ms-request-id: b72be3b1-f291-493c-9311-bba61660de93
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:37 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>AuthorizationFailure</Code>
  <Message>Server failed to authenticate the request. Make sure the value of the Authorization header is formed correctly including the signature.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-46ebbc92-f43d-ce6e-efb5-d10adbe04733?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
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
x-ms-request-id: 372534e6-97ff-4464-938e-826055c1d56b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:37 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

