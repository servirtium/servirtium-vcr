## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cc049e7c-94e9-3be7-fb78-58df3879fb14?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).CreateAsync_TagsWithSpecialCharacters
now: 2026-11-12T00:50:36.5546457+00:00

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
etag: "0x2614E0573B2F2A0"
last-modified: Thu, 12 Nov 2026 00:50:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a1255378-2ad7-4001-81cc-ddfc7cad18dd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cc049e7c-94e9-3be7-fb78-58df3879fb14/test-blob-7e97a488-19b1-f655-c4a7-e0b66daae91b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-tags: +%2B-.%3A=_+%3D&%2B-.%3A%3D+_=%2B+%2F%2F+_
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C5B822F857CB40"
last-modified: Thu, 12 Nov 2026 00:50:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1c9fc65b-3145-4f53-8e90-8ac93457ef7e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-cc049e7c-94e9-3be7-fb78-58df3879fb14/test-blob-7e97a488-19b1-f655-c4a7-e0b66daae91b?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
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
x-ms-request-id: b9841a06-6cf1-4c28-ab5b-1e8671db4cf2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:36 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key> +-.:</Key><Value>_ =</Value></Tag><Tag><Key>+-.:= _</Key><Value>+ // _</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-cc049e7c-94e9-3be7-fb78-58df3879fb14?restype=container

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
x-ms-request-id: 329f4c41-573e-4c64-9280-a8aa294016c9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

