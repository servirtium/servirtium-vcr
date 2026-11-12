## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-629a6fd0-e8a5-d5e2-c3c9-a0632db61d7f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).AcquireLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:43:19.9658057+00:00

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
etag: "0x1DE3B4AE146C7F0"
last-modified: Thu, 12 Nov 2026 00:43:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b5ea3edb-0ef3-4b01-9855-0cf4b9d39ae9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-629a6fd0-e8a5-d5e2-c3c9-a0632db61d7f?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-Modified-Since: Fri, 13 Nov 2026 00:43:19 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 33132267-aea6-e8f4-3623-698bdb35ae66
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
x-ms-request-id: 71c00266-5071-471f-8f2e-949b13fbc9f0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:19 GMT
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

## Interaction 2: DELETE /devstoreaccount1/test-container-629a6fd0-e8a5-d5e2-c3c9-a0632db61d7f?restype=container

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
x-ms-request-id: 32f281cc-a271-4773-9566-7ad3eea2a35c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-4b014499-2762-9508-3abe-37396a398a75?restype=container

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
etag: "0x1E2755556FDFC20"
last-modified: Thu, 12 Nov 2026 00:43:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d8ee53da-4ba0-4852-bc6f-ff4459e324a4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-4b014499-2762-9508-3abe-37396a398a75?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
If-Unmodified-Since: Wed, 11 Nov 2026 00:43:19 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 04dd4c94-d995-225b-7bb2-2b817e56fa8d
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
x-ms-request-id: 7c69f830-11ab-4932-9cff-40f6a2e6272c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:19 GMT
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

## Interaction 5: DELETE /devstoreaccount1/test-container-4b014499-2762-9508-3abe-37396a398a75?restype=container

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
x-ms-request-id: eb1f2be3-0480-4972-8b9a-1b415a042ab3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

