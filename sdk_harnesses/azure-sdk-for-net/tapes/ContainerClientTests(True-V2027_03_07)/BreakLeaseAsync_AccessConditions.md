## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-35adace7-513e-7e85-6533-b303190545e5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).BreakLeaseAsync_AccessConditions
now: 2026-11-12T00:44:25.8033832+00:00

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
etag: "0x2695E843E1CA7A0"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91966982-de53-458e-9959-f5450b968834
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-35adace7-513e-7e85-6533-b303190545e5?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: cb9fe3dc-f300-fc5f-d0bf-2b94dbc18ce0
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2695E843E1CA7A0"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-lease-id: cb9fe3dc-f300-fc5f-d0bf-2b94dbc18ce0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e2e24cae-d55c-46fc-b452-5f47fab31382
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-35adace7-513e-7e85-6533-b303190545e5?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
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
etag: "0x2695E843E1CA7A0"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6d230a56-4ab1-4f20-97e4-a2663622b39a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-35adace7-513e-7e85-6533-b303190545e5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-id: cb9fe3dc-f300-fc5f-d0bf-2b94dbc18ce0
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
x-ms-request-id: fa265e98-5747-4764-a069-3b91051814e1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-dc42023a-e706-b14c-285b-9151be3a4251?restype=container

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
etag: "0x2346C71D8055D00"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e8d5902-4b67-4645-9ce5-9bcc22b957a3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-dc42023a-e706-b14c-285b-9151be3a4251?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 50048db6-664a-f399-4cb0-657e25f0a3a4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2346C71D8055D00"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-lease-id: 50048db6-664a-f399-4cb0-657e25f0a3a4
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4781b1d-b044-4362-a4fe-61b3bfa29eda
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-dc42023a-e706-b14c-285b-9151be3a4251?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:44:25 GMT
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
etag: "0x2346C71D8055D00"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3e78f7b-7a1c-4daf-bb39-5a0fd4a9919d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-dc42023a-e706-b14c-285b-9151be3a4251?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-id: 50048db6-664a-f399-4cb0-657e25f0a3a4
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
x-ms-request-id: 3c6bb1dd-8371-4b2c-9bbe-62ae93fdae8e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-17c9d3a7-68c2-f4df-96ed-a2a4620e3e95?restype=container

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
etag: "0x260045146E076C0"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: be30ecf8-9f54-474a-b748-17e5ac160b69
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-17c9d3a7-68c2-f4df-96ed-a2a4620e3e95?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 4ddeda7c-3bbc-d396-684f-905582cd8b38
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x260045146E076C0"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-lease-id: 4ddeda7c-3bbc-d396-684f-905582cd8b38
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d30f847b-d117-421f-b1fb-db71831857e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-17c9d3a7-68c2-f4df-96ed-a2a4620e3e95?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:44:25 GMT
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
etag: "0x260045146E076C0"
last-modified: Thu, 12 Nov 2026 00:44:25 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92afbbe5-b762-4c27-94cc-9fdef132828f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-17c9d3a7-68c2-f4df-96ed-a2a4620e3e95?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
x-ms-lease-id: 4ddeda7c-3bbc-d396-684f-905582cd8b38
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
x-ms-request-id: e7a0b7bb-d920-42b9-8712-7f65c8272404
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

