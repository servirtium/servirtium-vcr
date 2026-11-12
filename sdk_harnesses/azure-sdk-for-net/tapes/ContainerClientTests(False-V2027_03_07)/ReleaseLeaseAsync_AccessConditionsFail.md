## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-467e6684-3f7e-4d54-9e0d-af2a62e8fc6b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ReleaseLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:44:02.9518668+00:00

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
etag: "0x26762F36D60C100"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2d127449-8b13-4f46-9b9c-8da6f954cb26
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-467e6684-3f7e-4d54-9e0d-af2a62e8fc6b?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: f62512a9-2508-24ae-8591-4712c9109420
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26762F36D60C100"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-lease-id: f62512a9-2508-24ae-8591-4712c9109420
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d5e3ab72-5f2f-4c12-acab-8d8c2928202a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-467e6684-3f7e-4d54-9e0d-af2a62e8fc6b?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:44:02 GMT
x-ms-lease-action: release
x-ms-lease-id: f62512a9-2508-24ae-8591-4712c9109420
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
x-ms-request-id: 21d2af90-d056-45bb-b7ed-9caebdd43ce6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:02 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-467e6684-3f7e-4d54-9e0d-af2a62e8fc6b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: f62512a9-2508-24ae-8591-4712c9109420
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
x-ms-request-id: 88144599-1ef1-41df-aaa0-5d9e1111e5af
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-58a54e6c-48f4-db87-52f4-de202d7176a5?restype=container

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
etag: "0x1E2B35A8EF1B880"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 938e0a60-e206-4bdb-9a38-86b5ad743de6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-58a54e6c-48f4-db87-52f4-de202d7176a5?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: a6519734-c708-5eb6-b759-c1ecf742838d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E2B35A8EF1B880"
last-modified: Thu, 12 Nov 2026 00:44:02 GMT
x-ms-lease-id: a6519734-c708-5eb6-b759-c1ecf742838d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 58701637-6ed3-49fd-83f2-fe28b753f1e9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-58a54e6c-48f4-db87-52f4-de202d7176a5?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:44:02 GMT
x-ms-lease-action: release
x-ms-lease-id: a6519734-c708-5eb6-b759-c1ecf742838d
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
x-ms-request-id: 997c0be1-e530-46cd-bd18-c6e15e34e05c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:02 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-58a54e6c-48f4-db87-52f4-de202d7176a5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: a6519734-c708-5eb6-b759-c1ecf742838d
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
x-ms-request-id: f351c122-1abf-4c0e-ad15-08e55fcc87f2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

