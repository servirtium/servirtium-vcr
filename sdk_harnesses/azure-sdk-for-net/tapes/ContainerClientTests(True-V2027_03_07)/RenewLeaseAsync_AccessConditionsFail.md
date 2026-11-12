## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-dd668bf1-f380-4041-e037-8e5807fe221e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).RenewLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:45:08.0253360+00:00

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
etag: "0x27095FCA1D183C0"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed648ea2-8dd7-4bef-a528-c95f03cea44c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-dd668bf1-f380-4041-e037-8e5807fe221e?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 55936c9b-6cf5-a32c-e072-97466726799c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27095FCA1D183C0"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-lease-id: 55936c9b-6cf5-a32c-e072-97466726799c
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8b11ac2c-0f7a-445b-9f8c-95c6b89e9b70
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-dd668bf1-f380-4041-e037-8e5807fe221e?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:45:08 GMT
x-ms-lease-action: renew
x-ms-lease-id: 55936c9b-6cf5-a32c-e072-97466726799c
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
x-ms-request-id: 429d702c-c507-4cab-8575-0d4d27ec1794
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:08 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-dd668bf1-f380-4041-e037-8e5807fe221e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: 55936c9b-6cf5-a32c-e072-97466726799c
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
x-ms-request-id: 42abdfc0-43a6-44fd-aba8-9655b84f7f9c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-2ee68cff-4981-b733-646f-5d8ede3ac8d0?restype=container

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
etag: "0x1C21438CCAB66E0"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b807eb66-8c83-46b7-8301-00078b5a8fc0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-2ee68cff-4981-b733-646f-5d8ede3ac8d0?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: dc0e1d97-c096-844d-5fc3-fd0d5bfad9b9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C21438CCAB66E0"
last-modified: Thu, 12 Nov 2026 00:45:08 GMT
x-ms-lease-id: dc0e1d97-c096-844d-5fc3-fd0d5bfad9b9
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f476ab0-3707-4948-bb0d-fbb1dff4ce59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-2ee68cff-4981-b733-646f-5d8ede3ac8d0?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:45:08 GMT
x-ms-lease-action: renew
x-ms-lease-id: dc0e1d97-c096-844d-5fc3-fd0d5bfad9b9
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
x-ms-request-id: af08d30f-a58d-4336-aac1-3e9e09746017
content-type: application/xml
Date: Thu, 12 Nov 2026 00:45:08 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-2ee68cff-4981-b733-646f-5d8ede3ac8d0?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: dc0e1d97-c096-844d-5fc3-fd0d5bfad9b9
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
x-ms-request-id: 2386e6d3-8776-4090-8e68-46a15293db25
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

