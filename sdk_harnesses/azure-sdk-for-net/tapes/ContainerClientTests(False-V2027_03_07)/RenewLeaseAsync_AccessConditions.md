## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b61abf12-f0f5-2187-5d84-cc2c178ba09a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).RenewLeaseAsync_AccessConditions
now: 2026-11-12T00:44:03.6322212+00:00

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
etag: "0x1C7A69E58ABB130"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1120517e-aee8-4011-8d0f-8a57b54d90fd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b61abf12-f0f5-2187-5d84-cc2c178ba09a?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 0edfa24a-5c20-648e-dae1-cea0e583ec6c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7A69E58ABB130"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-lease-id: 0edfa24a-5c20-648e-dae1-cea0e583ec6c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d31c926c-5f36-42a1-87a0-d2775a125d14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b61abf12-f0f5-2187-5d84-cc2c178ba09a?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: renew
x-ms-lease-id: 0edfa24a-5c20-648e-dae1-cea0e583ec6c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7A69E58ABB130"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-lease-id: 0edfa24a-5c20-648e-dae1-cea0e583ec6c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0bff7695-36e4-43d6-afd3-6afbc5d95806
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b61abf12-f0f5-2187-5d84-cc2c178ba09a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: 0edfa24a-5c20-648e-dae1-cea0e583ec6c
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
x-ms-request-id: e57b4afc-8439-40d9-bf07-d2722e4de125
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-1bc46313-ab38-8e7b-7645-985256d4fa3a?restype=container

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
etag: "0x2402F8D5AA0B600"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 06826714-6e49-46d3-b26e-03967d98db99
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-1bc46313-ab38-8e7b-7645-985256d4fa3a?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 4d20d615-fae4-b544-31b6-dc1421e63bd9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2402F8D5AA0B600"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-lease-id: 4d20d615-fae4-b544-31b6-dc1421e63bd9
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b2d5d00a-08c6-4e4a-a66d-b5d9fc8114dc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-1bc46313-ab38-8e7b-7645-985256d4fa3a?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:44:03 GMT
x-ms-lease-action: renew
x-ms-lease-id: 4d20d615-fae4-b544-31b6-dc1421e63bd9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2402F8D5AA0B600"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-lease-id: 4d20d615-fae4-b544-31b6-dc1421e63bd9
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 392397e1-f961-451c-a864-d19c45ff1309
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-1bc46313-ab38-8e7b-7645-985256d4fa3a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: 4d20d615-fae4-b544-31b6-dc1421e63bd9
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
x-ms-request-id: 385ca955-b051-48fd-97cc-90907b4aa025
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-b3196097-85c7-9e61-2751-98dbc33b0e05?restype=container

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
etag: "0x25B3905F9A1F520"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9e01d765-8140-47b2-9eee-c3314ab150d8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-b3196097-85c7-9e61-2751-98dbc33b0e05?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 0f8b93e6-9f63-1887-1f0e-e982cf666c8f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25B3905F9A1F520"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-lease-id: 0f8b93e6-9f63-1887-1f0e-e982cf666c8f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f15da1d6-b052-4374-8bb0-29d2473265b1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-b3196097-85c7-9e61-2751-98dbc33b0e05?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:44:03 GMT
x-ms-lease-action: renew
x-ms-lease-id: 0f8b93e6-9f63-1887-1f0e-e982cf666c8f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25B3905F9A1F520"
last-modified: Thu, 12 Nov 2026 00:44:03 GMT
x-ms-lease-id: 0f8b93e6-9f63-1887-1f0e-e982cf666c8f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a3830bd-88a2-492c-befa-2cee6bf01218
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-b3196097-85c7-9e61-2751-98dbc33b0e05?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
x-ms-lease-id: 0f8b93e6-9f63-1887-1f0e-e982cf666c8f
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
x-ms-request-id: 36737105-9841-4c86-b4f1-5b05cbd16ce9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

