## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f2b42f08-6fbf-ba9d-dc3d-bdeb86cf9e4d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).RenewLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:44:03.8429548+00:00

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
etag: "0x22DED658D4475A0"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d1d9970-1869-4b13-b7d1-b09878510eff
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f2b42f08-6fbf-ba9d-dc3d-bdeb86cf9e4d?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: e592ce8d-c10e-b889-9182-c6237927697d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DED658D4475A0"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-lease-id: e592ce8d-c10e-b889-9182-c6237927697d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 018421c4-c517-4426-86fc-c8453506d07d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f2b42f08-6fbf-ba9d-dc3d-bdeb86cf9e4d?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:44:03 GMT
x-ms-lease-action: renew
x-ms-lease-id: e592ce8d-c10e-b889-9182-c6237927697d
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
x-ms-request-id: b5dd5f1b-b889-4c1d-a527-2cebd87e1816
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:03 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-f2b42f08-6fbf-ba9d-dc3d-bdeb86cf9e4d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: e592ce8d-c10e-b889-9182-c6237927697d
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
x-ms-request-id: e28a4d26-bb05-44de-9641-bf1cd54eb06b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-7e7ab4f7-0c93-886d-44a1-4acdd638e441?restype=container

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
etag: "0x241A549ED4994C0"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45423b63-5039-410c-9923-0ac01b61668b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-7e7ab4f7-0c93-886d-44a1-4acdd638e441?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: d94ce0a2-a875-478c-a5fb-603da97941b4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x241A549ED4994C0"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-lease-id: d94ce0a2-a875-478c-a5fb-603da97941b4
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 675fd85a-0e7f-48fc-b451-3ea530973401
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-7e7ab4f7-0c93-886d-44a1-4acdd638e441?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:44:03 GMT
x-ms-lease-action: renew
x-ms-lease-id: d94ce0a2-a875-478c-a5fb-603da97941b4
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
x-ms-request-id: e4333242-da2e-45ef-a649-9b370af36f46
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:03 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-7e7ab4f7-0c93-886d-44a1-4acdd638e441?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: d94ce0a2-a875-478c-a5fb-603da97941b4
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
x-ms-request-id: 0bef1169-922f-4b2c-a219-2c417c01cd76
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

