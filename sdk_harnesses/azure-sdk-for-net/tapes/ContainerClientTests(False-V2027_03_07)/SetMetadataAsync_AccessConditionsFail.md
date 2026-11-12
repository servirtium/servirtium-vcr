## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cf8ab62d-abd8-0fec-57a8-425fc544771b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).SetMetadataAsync_AccessConditionsFail
now: 2026-11-12T00:44:06.9437129+00:00

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
etag: "0x25B1D476B71BE00"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 05f90c6b-67fd-4ba7-a9ef-f004b3fd8689
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cf8ab62d-abd8-0fec-57a8-425fc544771b?restype=container&comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-Modified-Since: Fri, 13 Nov 2026 00:44:06 GMT
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: f4ab5220-fc6d-449f-8b00-1fac804836ec
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:06 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-cf8ab62d-abd8-0fec-57a8-425fc544771b?restype=container

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
x-ms-request-id: 0c7765b7-a073-4424-bd40-b6ffb7fb8b13
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-b7d5230e-d0fa-6295-7794-86aa7848c3eb?restype=container

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
etag: "0x259805F9CF30CC0"
last-modified: Thu, 12 Nov 2026 00:44:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8df73cd1-6f8e-4740-90b9-31b80641a937
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-b7d5230e-d0fa-6295-7794-86aa7848c3eb?restype=container&comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-lease-id: 00f45704-d3e6-debe-0d14-882b9ab1b98e
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithContainerOperation
x-ms-request-id: 675fd1b5-08b3-4782-8b72-0c319410803e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:06 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithContainerOperation</Code>
  <Message>A lease ID was specified, but the lease for the container has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-b7d5230e-d0fa-6295-7794-86aa7848c3eb?restype=container

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
x-ms-request-id: d37bd570-45a4-43f7-96cf-93e9b7d069ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

