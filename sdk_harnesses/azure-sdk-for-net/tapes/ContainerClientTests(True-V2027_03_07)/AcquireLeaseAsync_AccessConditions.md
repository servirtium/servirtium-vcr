## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-998ccc50-4b18-cc1e-a336-d4b3ea29773c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).AcquireLeaseAsync_AccessConditions
now: 2026-11-12T00:44:24.6949386+00:00

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
etag: "0x21501C378890020"
last-modified: Thu, 12 Nov 2026 00:44:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: df26fff0-b860-4bb6-8d01-8cdcc1bc14aa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-998ccc50-4b18-cc1e-a336-d4b3ea29773c?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: a326337f-61c2-c067-d38f-5defe7746a44
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21501C378890020"
last-modified: Thu, 12 Nov 2026 00:44:24 GMT
x-ms-lease-id: a326337f-61c2-c067-d38f-5defe7746a44
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 036f6105-ff46-434f-9fbf-45bde1ab7782
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-998ccc50-4b18-cc1e-a336-d4b3ea29773c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-id: a326337f-61c2-c067-d38f-5defe7746a44
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
x-ms-request-id: dff26dc4-d520-4412-9f45-09425a63a877
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-346a1373-43de-a971-a827-9466024b192d?restype=container

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
etag: "0x1FDB4AA932EFB70"
last-modified: Thu, 12 Nov 2026 00:44:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7bbc8d15-ab6c-420f-abab-c3e6e0094640
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-346a1373-43de-a971-a827-9466024b192d?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
If-Modified-Since: Wed, 11 Nov 2026 00:44:24 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 6701fc3c-2413-ee83-65cc-c588ed2fe42e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FDB4AA932EFB70"
last-modified: Thu, 12 Nov 2026 00:44:24 GMT
x-ms-lease-id: 6701fc3c-2413-ee83-65cc-c588ed2fe42e
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2b3275e2-7158-468d-99c7-ab4503de6ea1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-346a1373-43de-a971-a827-9466024b192d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
x-ms-lease-id: 6701fc3c-2413-ee83-65cc-c588ed2fe42e
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
x-ms-request-id: 1a3b3e4a-9e1a-412d-9569-6e04660306a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-d64090cc-43be-3c5d-c27c-fa9acd00bd88?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x270B9E3479ED500"
last-modified: Thu, 12 Nov 2026 00:44:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 927fb2c9-8206-4a86-93ee-4035a182de7e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-d64090cc-43be-3c5d-c27c-fa9acd00bd88?comp=lease&restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
If-Unmodified-Since: Fri, 13 Nov 2026 00:44:24 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: ebb23075-0273-4f31-907c-ce127de8bc79
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x270B9E3479ED500"
last-modified: Thu, 12 Nov 2026 00:44:24 GMT
x-ms-lease-id: ebb23075-0273-4f31-907c-ce127de8bc79
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 373b399b-3fe6-44f9-a15c-3ca997518e41
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: DELETE /devstoreaccount1/test-container-d64090cc-43be-3c5d-c27c-fa9acd00bd88?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-lease-id: ebb23075-0273-4f31-907c-ce127de8bc79
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
x-ms-request-id: 7ed5ad32-bbda-4866-bfbf-e5f4800bbdb7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

