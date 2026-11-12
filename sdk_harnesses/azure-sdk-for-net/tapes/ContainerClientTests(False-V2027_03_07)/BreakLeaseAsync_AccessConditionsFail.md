## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2b90b850-4c8a-842f-a7d4-ddec20c1f17b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).BreakLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:43:21.0211678+00:00

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
etag: "0x2665A8EA0419340"
last-modified: Thu, 12 Nov 2026 00:43:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 59b37b41-cfab-4f65-9039-6f03d07d445c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2b90b850-4c8a-842f-a7d4-ddec20c1f17b?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 1c091924-db49-614e-08d7-c003c4c107d7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2665A8EA0419340"
last-modified: Thu, 12 Nov 2026 00:43:21 GMT
x-ms-lease-id: 1c091924-db49-614e-08d7-c003c4c107d7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e65f7778-90e5-42c5-90cc-dfaafc9abb13
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-2b90b850-4c8a-842f-a7d4-ddec20c1f17b?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:43:21 GMT
x-ms-lease-action: break
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
x-ms-request-id: fd3198df-3a6f-47b9-82e7-4354fdb82126
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:21 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-2b90b850-4c8a-842f-a7d4-ddec20c1f17b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: 1c091924-db49-614e-08d7-c003c4c107d7
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
x-ms-request-id: 1234b3f3-dfae-413a-bb7e-40e6041f526c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-9899be3a-303f-5391-3e64-bb72ed17e249?restype=container

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
etag: "0x1F6F2B3B212CFD0"
last-modified: Thu, 12 Nov 2026 00:43:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3dd09a7e-f4a9-4919-806b-4a114da69cd4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-9899be3a-303f-5391-3e64-bb72ed17e249?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: e9917b67-b623-75e5-6a2e-23b28c2cc0e6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F6F2B3B212CFD0"
last-modified: Thu, 12 Nov 2026 00:43:21 GMT
x-ms-lease-id: e9917b67-b623-75e5-6a2e-23b28c2cc0e6
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ff590f97-60f8-476f-9cdb-09737b048143
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-9899be3a-303f-5391-3e64-bb72ed17e249?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:43:21 GMT
x-ms-lease-action: break
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
x-ms-request-id: 23a57e35-8c0a-434d-b3d0-ac9d858715cb
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:21 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-9899be3a-303f-5391-3e64-bb72ed17e249?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: e9917b67-b623-75e5-6a2e-23b28c2cc0e6
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
x-ms-request-id: 1da326fb-ca29-4f49-91ae-2e137bc3e43c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

