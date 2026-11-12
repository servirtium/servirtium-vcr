## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ee037ae1-37fb-cf92-f620-69a0a697c7fb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ChangeLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:43:23.9810824+00:00

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
etag: "0x1D5C8D7D4E2F560"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a46d6adc-94ee-4546-ace4-9619682cb509
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:23 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ee037ae1-37fb-cf92-f620-69a0a697c7fb?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 83ccc1ab-0604-d4c9-3375-a452ca8040ae
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D5C8D7D4E2F560"
last-modified: Thu, 12 Nov 2026 00:43:23 GMT
x-ms-lease-id: 83ccc1ab-0604-d4c9-3375-a452ca8040ae
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9ddcc31e-a8d3-4d02-9ce8-7d0a376beae9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ee037ae1-37fb-cf92-f620-69a0a697c7fb?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:43:23 GMT
x-ms-lease-action: change
x-ms-lease-id: 83ccc1ab-0604-d4c9-3375-a452ca8040ae
x-ms-proposed-lease-id: 9489a543-415d-91aa-6320-c4e7c874a9b2
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
x-ms-request-id: 90655bc3-c756-4d48-a553-bc6d538f418f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:24 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-ee037ae1-37fb-cf92-f620-69a0a697c7fb?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: 83ccc1ab-0604-d4c9-3375-a452ca8040ae
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
x-ms-request-id: 66b69f16-4771-4753-8be2-b9c563d3e248
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-70a26a41-3ff6-dae8-b02f-ba86933f0576?restype=container

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
etag: "0x2594A83378BA140"
last-modified: Thu, 12 Nov 2026 00:43:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 003c3ec3-8e96-4182-ab94-e5cc2ccf3d19
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-70a26a41-3ff6-dae8-b02f-ba86933f0576?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 015dbbe0-330e-6a9e-173a-20e342e20cbf
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2594A83378BA140"
last-modified: Thu, 12 Nov 2026 00:43:24 GMT
x-ms-lease-id: 015dbbe0-330e-6a9e-173a-20e342e20cbf
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15ed544d-9ea3-49df-b55d-08ab5e9c449a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-70a26a41-3ff6-dae8-b02f-ba86933f0576?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:43:23 GMT
x-ms-lease-action: change
x-ms-lease-id: 015dbbe0-330e-6a9e-173a-20e342e20cbf
x-ms-proposed-lease-id: 6011f1cb-cfdd-03b7-bdae-e32e8623fd23
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
x-ms-request-id: e1dac533-92be-468e-a3dd-d0552e075068
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:24 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-70a26a41-3ff6-dae8-b02f-ba86933f0576?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: 015dbbe0-330e-6a9e-173a-20e342e20cbf
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
x-ms-request-id: 26e6eb64-f9ec-4406-af2c-94dc79045241
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

