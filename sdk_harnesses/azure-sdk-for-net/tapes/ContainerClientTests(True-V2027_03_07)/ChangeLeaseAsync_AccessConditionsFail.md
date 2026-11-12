## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-069a6ba4-4fbc-b7e8-88e4-b5e0a01e58dd?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ChangeLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:44:28.8049499+00:00

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
etag: "0x23A60C49CD98060"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e6bc5ed-c680-45f9-bc23-835e761159a4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-069a6ba4-4fbc-b7e8-88e4-b5e0a01e58dd?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: ea934ef2-f2b3-b2c3-ab51-98271fd1d74b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23A60C49CD98060"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-lease-id: ea934ef2-f2b3-b2c3-ab51-98271fd1d74b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: baf5aa3d-1bb8-428b-95a1-899fb86c5f08
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-069a6ba4-4fbc-b7e8-88e4-b5e0a01e58dd?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:44:28 GMT
x-ms-lease-action: change
x-ms-lease-id: ea934ef2-f2b3-b2c3-ab51-98271fd1d74b
x-ms-proposed-lease-id: 10196d48-6515-e466-2258-1668893715b7
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
x-ms-request-id: 7d1b0d5f-5358-44f6-b33d-1db8f5383b4e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:28 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-069a6ba4-4fbc-b7e8-88e4-b5e0a01e58dd?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: ea934ef2-f2b3-b2c3-ab51-98271fd1d74b
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
x-ms-request-id: aba426ad-f351-47bc-b2dd-5a755c9c28f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-d7769f1d-897a-b22b-a8e8-5a6ab7c198b7?restype=container

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
etag: "0x2108CF8390BBBE0"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92d59d04-13a0-498d-8641-31f8fde0a9d6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-d7769f1d-897a-b22b-a8e8-5a6ab7c198b7?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 32986a0c-4805-8cc8-e8ae-c85bdb5b2973
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2108CF8390BBBE0"
last-modified: Thu, 12 Nov 2026 00:44:28 GMT
x-ms-lease-id: 32986a0c-4805-8cc8-e8ae-c85bdb5b2973
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af90b12f-063f-4196-b164-974e165572a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-d7769f1d-897a-b22b-a8e8-5a6ab7c198b7?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:44:28 GMT
x-ms-lease-action: change
x-ms-lease-id: 32986a0c-4805-8cc8-e8ae-c85bdb5b2973
x-ms-proposed-lease-id: 7f09e03c-005a-bed0-4167-682c0afb2d60
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
x-ms-request-id: a5c53431-8a29-4d78-bc79-df1f596f3f45
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:28 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-d7769f1d-897a-b22b-a8e8-5a6ab7c198b7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: 32986a0c-4805-8cc8-e8ae-c85bdb5b2973
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
x-ms-request-id: 849edcd4-0f3f-4181-9a3f-5c3ba76811cf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:28 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

