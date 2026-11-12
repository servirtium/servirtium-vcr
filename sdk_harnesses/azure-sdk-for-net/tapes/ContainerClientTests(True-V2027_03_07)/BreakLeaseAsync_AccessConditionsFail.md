## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3f7c5e11-ae6c-9236-cff2-ad054db6f3bd?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).BreakLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:44:26.0429735+00:00

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
etag: "0x2175F3FE5473EA0"
last-modified: Thu, 12 Nov 2026 00:44:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45db7ff9-32ab-4d9c-9607-91863299be1b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3f7c5e11-ae6c-9236-cff2-ad054db6f3bd?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c5731017-e428-9a2c-70bd-423a67a69b39
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2175F3FE5473EA0"
last-modified: Thu, 12 Nov 2026 00:44:26 GMT
x-ms-lease-id: c5731017-e428-9a2c-70bd-423a67a69b39
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 56394aa7-3915-4a84-92ab-1b9a937b291c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-3f7c5e11-ae6c-9236-cff2-ad054db6f3bd?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:44:26 GMT
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
x-ms-request-id: 47c02d11-ff73-4781-a386-2972418379fe
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:26 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-3f7c5e11-ae6c-9236-cff2-ad054db6f3bd?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: c5731017-e428-9a2c-70bd-423a67a69b39
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
x-ms-request-id: 67740b30-a363-4c9c-8584-4310e857a8db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-046468d2-4f85-bb7e-6871-56afd31b828f?restype=container

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
etag: "0x21DFEEFC5CBE7A0"
last-modified: Thu, 12 Nov 2026 00:44:26 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2a013683-e09a-42c8-b52b-fad69b7e15fa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-046468d2-4f85-bb7e-6871-56afd31b828f?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: a2cc142f-75cb-2d9d-32e1-cfaf6cfb2a29
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21DFEEFC5CBE7A0"
last-modified: Thu, 12 Nov 2026 00:44:26 GMT
x-ms-lease-id: a2cc142f-75cb-2d9d-32e1-cfaf6cfb2a29
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7c5f6e8c-d1b0-4bda-a26f-29dc39bc0fc5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:26 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-046468d2-4f85-bb7e-6871-56afd31b828f?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:44:26 GMT
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
x-ms-request-id: c1076398-1e09-4917-8c30-68def20a2fdc
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:26 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-046468d2-4f85-bb7e-6871-56afd31b828f?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: a2cc142f-75cb-2d9d-32e1-cfaf6cfb2a29
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
x-ms-request-id: ed2b44aa-d30a-443c-8737-e55c8267d51a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:26 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

