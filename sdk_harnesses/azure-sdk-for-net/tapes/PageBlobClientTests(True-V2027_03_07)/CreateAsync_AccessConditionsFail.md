## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-413f0ba1-df93-b505-8f36-a5e5cfaaf4d3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).CreateAsync_AccessConditionsFail
now: 2026-11-12T00:51:45.0051160+00:00

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
etag: "0x23B715A95F22A40"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6544d676-7611-42ee-9542-e80f555fc453
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-413f0ba1-df93-b505-8f36-a5e5cfaaf4d3/test-blob-db88bfa0-e7d7-ba98-eb2e-ed0889ec5fb0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24908DBD7FB97A0"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 89f53400-b801-4ebe-a71b-14ac7d049825
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-413f0ba1-df93-b505-8f36-a5e5cfaaf4d3/test-blob-db88bfa0-e7d7-ba98-eb2e-ed0889ec5fb0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:45 GMT
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
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
x-ms-request-id: fa034f22-7d43-4a54-8756-88f90657575e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:45 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-413f0ba1-df93-b505-8f36-a5e5cfaaf4d3?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b8deee16-8423-49be-8ba7-8638bfed8a1b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-971577a6-e764-6a99-155f-7dc1dd6b9486?restype=container

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
etag: "0x202F7212FE36F60"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 86eab2c2-3e0d-429c-b90d-6834661461ce
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-971577a6-e764-6a99-155f-7dc1dd6b9486/test-blob-22990a27-d65e-b948-7285-5565f1fc2ca3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23232E6193B4120"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15d6904c-3424-4ac8-a601-a4ac1e8c06be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-971577a6-e764-6a99-155f-7dc1dd6b9486/test-blob-22990a27-d65e-b948-7285-5565f1fc2ca3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:45 GMT
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
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
x-ms-request-id: 55acd30d-b907-4e2c-b410-510c5533f14f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:45 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-971577a6-e764-6a99-155f-7dc1dd6b9486?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: 0e1c3a54-77e1-49e9-9db8-fee28b065faa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-573ff4d7-5d94-b86f-261d-c5786ad6dc7f?restype=container

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
etag: "0x257C47F9BF26860"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 040eeacc-a494-4dc5-afe7-be16efee100e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-573ff4d7-5d94-b86f-261d-c5786ad6dc7f/test-blob-7ee06799-3d52-cf52-2f5c-24df91337818

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EC1760A1A4C7F0"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1a7a1de-fada-4126-acc3-85d8c817b610
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-573ff4d7-5d94-b86f-261d-c5786ad6dc7f/test-blob-7ee06799-3d52-cf52-2f5c-24df91337818

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
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
x-ms-request-id: 44419553-7aa8-46d1-a202-01dc8c8a0f1c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:45 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-573ff4d7-5d94-b86f-261d-c5786ad6dc7f?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: c04eda09-00f9-4be5-8829-0efdec3cda1c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-e9eada32-3d2c-caf1-9be0-fb4010cf4f9c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x204FFBFEF48C780"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1de31ec-2344-45bc-a9c4-babcc996dbe9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-e9eada32-3d2c-caf1-9be0-fb4010cf4f9c/test-blob-8acbd6a8-ad1c-9a50-a270-2838398f27f2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20AEA47ED48D500"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: debe7769-8d64-489a-9205-8f6759e9eae4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-e9eada32-3d2c-caf1-9be0-fb4010cf4f9c/test-blob-8acbd6a8-ad1c-9a50-a270-2838398f27f2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x20AEA47ED48D500"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6d97864d-3c3c-428c-aecb-6546438b7ef4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-e9eada32-3d2c-caf1-9be0-fb4010cf4f9c/test-blob-8acbd6a8-ad1c-9a50-a270-2838398f27f2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x20AEA47ED48D500"
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
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
x-ms-request-id: c6511fd4-2e65-47b8-ad2f-318446622bae
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:45 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-e9eada32-3d2c-caf1-9be0-fb4010cf4f9c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: 0db8df5a-d164-4a0d-827d-cb769c3f748d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-9045ada5-f3ec-5c53-7516-e3724112be5f?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25BEE3821413BE0"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 71ebf40c-ed2a-41d0-aca5-841d41aeeaa2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-9045ada5-f3ec-5c53-7516-e3724112be5f/test-blob-bb36880c-ee67-85fc-894f-46bc14b9900b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E2A16EE2BB71A0"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f580ad22-92aa-4ecd-9328-14a5b37f1020
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-9045ada5-f3ec-5c53-7516-e3724112be5f/test-blob-bb36880c-ee67-85fc-894f-46bc14b9900b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 639b09b9-bf8a-b4af-826f-1505c9dd5990
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E2A16EE2BB71A0"
last-modified: Thu, 12 Nov 2026 00:51:45 GMT
x-ms-lease-id: 639b09b9-bf8a-b4af-826f-1505c9dd5990
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 03e557db-f69e-4cc6-b042-7073dadeb111
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-9045ada5-f3ec-5c53-7516-e3724112be5f/test-blob-bb36880c-ee67-85fc-894f-46bc14b9900b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-lease-id: 0c141b49-83f8-6351-311c-de3ae1e6b21f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseIdMismatchWithBlobOperation
x-ms-request-id: 1087ae7c-31f8-40ca-926c-dccfe9f14cc1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:45 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseIdMismatchWithBlobOperation</Code>
  <Message>The lease ID specified did not match the lease ID for the blob.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 21: DELETE /devstoreaccount1/test-container-9045ada5-f3ec-5c53-7516-e3724112be5f?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
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
x-ms-request-id: 97b044bd-5cc7-4f36-8d35-0f62885ad6da
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

