## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-658f5e4e-dd09-ce6a-520c-953d322ccacf?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).CreateAsync_EncryptionScopeAccountSAS
now: 2026-11-12T00:50:34.5251717+00:00

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
etag: "0x27878D8C820AA20"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d85484dd-2d71-4665-9598-10677af1de93
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-658f5e4e-dd09-ce6a-520c-953d322ccacf/test-blob-64b17372-9520-ea7f-0917-aca2de5a9b26?sv=2027-03-07&ss=bfqt&srt=sco&se=2026-11-13T00%3A50%3A34Z&sp=rwdxylacuptfi&sig=rEHl7q31p3Hk8gIUO2FhTpglbNfSFkEU4iB4ahfRv%2BA%3D

### Request headers recorded for playback:

```
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F550EE6C51A0C0"
last-modified: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 664ab60d-f073-4083-a33e-db009350186b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-658f5e4e-dd09-ce6a-520c-953d322ccacf?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
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
x-ms-request-id: 929906f5-f82a-4e24-ba4a-14336a9587a5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

