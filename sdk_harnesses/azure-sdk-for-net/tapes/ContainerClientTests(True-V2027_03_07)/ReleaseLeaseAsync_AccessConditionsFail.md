## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-247c1ac7-120b-88f0-ef2f-af0a0a34320c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ReleaseLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:45:07.1262078+00:00

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
etag: "0x26589AA661D3960"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b433168-1925-41b6-a03f-9bc55862fe37
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-247c1ac7-120b-88f0-ef2f-af0a0a34320c?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 87719f41-dabd-9008-77c3-84746e019401
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26589AA661D3960"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-lease-id: 87719f41-dabd-9008-77c3-84746e019401
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dfd97d9e-24c9-4ed3-b866-96f841db2bbb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-247c1ac7-120b-88f0-ef2f-af0a0a34320c?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:45:07 GMT
x-ms-lease-action: release
x-ms-lease-id: 87719f41-dabd-9008-77c3-84746e019401
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
x-ms-request-id: bfa952c7-2604-4afe-8d7f-a11aa85d630e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:07 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-247c1ac7-120b-88f0-ef2f-af0a0a34320c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: 87719f41-dabd-9008-77c3-84746e019401
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
x-ms-request-id: 7b2f4424-37a5-4a28-a6ba-f451b2f77544
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-06edf0a3-c525-476b-7602-51ff34d26e53?restype=container

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
etag: "0x258231F634B0DE0"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 214e6f2e-c8a2-4266-ad3f-d14d8f7b79be
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-06edf0a3-c525-476b-7602-51ff34d26e53?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 7b2782ea-92fc-ec63-12eb-ad478e7b19ee
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258231F634B0DE0"
last-modified: Thu, 12 Nov 2026 00:45:07 GMT
x-ms-lease-id: 7b2782ea-92fc-ec63-12eb-ad478e7b19ee
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 390c154b-131c-404b-849d-f686ac815578
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-06edf0a3-c525-476b-7602-51ff34d26e53?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:45:07 GMT
x-ms-lease-action: release
x-ms-lease-id: 7b2782ea-92fc-ec63-12eb-ad478e7b19ee
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
x-ms-request-id: fb0693e3-d45f-4bd5-9d1b-e15a7e5f09c3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:07 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-06edf0a3-c525-476b-7602-51ff34d26e53?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: 7b2782ea-92fc-ec63-12eb-ad478e7b19ee
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
x-ms-request-id: 1d95252b-7286-4a09-9e58-f12a5d555eed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

