## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f1b5084a-b179-4b68-7dd5-da1582ca2095?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).DeleteAsync_AccessConditionsFail
now: 2026-11-12T00:43:35.5348315+00:00

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
etag: "0x1D0437FD7BF3B80"
last-modified: Thu, 12 Nov 2026 00:43:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f7706774-92b3-4e05-acea-e48bd0adb511
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: DELETE /devstoreaccount1/test-container-f1b5084a-b179-4b68-7dd5-da1582ca2095?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-Modified-Since: Fri, 13 Nov 2026 00:43:35 GMT
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
x-ms-request-id: 6fc9876e-6332-4d5f-88be-c8f451fcc10b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:35 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-f1b5084a-b179-4b68-7dd5-da1582ca2095?restype=container

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
x-ms-request-id: fc8cefc2-5b58-4d24-a0d7-7ad93d2a2956
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-f34080e6-f51b-7e70-c137-efa72b278ecc?restype=container

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
etag: "0x261FC9CDAE291A0"
last-modified: Thu, 12 Nov 2026 00:43:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0c15729-05bb-4b8e-8aae-ed6608bb71d6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f34080e6-f51b-7e70-c137-efa72b278ecc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
If-Unmodified-Since: Wed, 11 Nov 2026 00:43:35 GMT
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
x-ms-request-id: 1850cdc7-acfd-419b-984b-ac2aff198b5d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:35 GMT
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

## Interaction 5: DELETE /devstoreaccount1/test-container-f34080e6-f51b-7e70-c137-efa72b278ecc?restype=container

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
x-ms-request-id: deabdb35-5990-4050-a4bf-e390ae414d8c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-d9098989-46cd-73fe-1d66-e65545fdd1cb?restype=container

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
etag: "0x228EDE0851AAFE0"
last-modified: Thu, 12 Nov 2026 00:43:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2377ace8-9b4b-4fb9-bcf4-ae9c8b17e68c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-d9098989-46cd-73fe-1d66-e65545fdd1cb?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: "garbage"
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
x-ms-request-id: 1b91a215-432a-4c72-bef4-736d4e77b1b1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:35 GMT
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

## Interaction 8: DELETE /devstoreaccount1/test-container-d9098989-46cd-73fe-1d66-e65545fdd1cb?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
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
x-ms-request-id: 76fe71b1-1250-410a-8f5a-01071968666c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

