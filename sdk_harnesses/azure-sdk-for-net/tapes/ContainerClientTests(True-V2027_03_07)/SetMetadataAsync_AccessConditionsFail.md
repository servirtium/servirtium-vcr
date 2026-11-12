## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ff23a3d8-fa72-6fdd-faee-734a53a84fc3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).SetMetadataAsync_AccessConditionsFail
now: 2026-11-12T00:45:10.9448347+00:00

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
etag: "0x254F65E4323C760"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 017e6dbc-014c-457e-ac1c-df91a62c98ac
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ff23a3d8-fa72-6fdd-faee-734a53a84fc3?restype=container&comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-Modified-Since: Fri, 13 Nov 2026 00:45:10 GMT
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
x-ms-request-id: 14056e05-f544-41d9-82f3-3d52fd054c57
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:10 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-ff23a3d8-fa72-6fdd-faee-734a53a84fc3?restype=container

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
x-ms-request-id: 67a2d6b2-7395-496d-a636-7c81d0fbda14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-c5ca31ca-d143-ddc1-ca10-395800279107?restype=container

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
etag: "0x21CECC1FD054480"
last-modified: Thu, 12 Nov 2026 00:45:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2ac7cd3-3d7c-4257-8f2f-0955723014c4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-c5ca31ca-d143-ddc1-ca10-395800279107?restype=container&comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-lease-id: e9ecd8a4-1241-c98e-c601-273f75d8c30f
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
x-ms-request-id: 67db2126-9305-4bf3-ab75-d7c1f86aee58
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:10 GMT
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

## Interaction 5: DELETE /devstoreaccount1/test-container-c5ca31ca-d143-ddc1-ca10-395800279107?restype=container

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
x-ms-request-id: ff44f705-3733-4343-8ecf-855b48df0fed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

