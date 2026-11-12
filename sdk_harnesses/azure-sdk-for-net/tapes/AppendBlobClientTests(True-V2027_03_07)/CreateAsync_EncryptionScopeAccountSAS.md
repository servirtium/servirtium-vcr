## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-12afc325-269a-8386-9be5-2bc8d5476256?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).CreateAsync_EncryptionScopeAccountSAS
now: 2026-11-12T00:50:49.3087263+00:00

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
etag: "0x23B678E9CF7BBE0"
last-modified: Thu, 12 Nov 2026 00:50:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 70635422-3be5-4ef0-b373-442c40ef211f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-12afc325-269a-8386-9be5-2bc8d5476256/test-blob-7f30777e-55be-9742-f7e4-cef93089acc7?sv=2027-03-07&ss=bfqt&srt=sco&se=2026-11-13T00%3A50%3A49Z&sp=rwdxylacuptfi&sig=%2F%2BlW6obbCSKyinX9v9asJtd1cuy%2BiuDPOB%2Bifb6gSOQ%3D

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
etag: "0x21E4524D4FE5D80"
last-modified: Thu, 12 Nov 2026 00:50:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0c1fc83-e17c-481b-9fd3-02afbeedc63b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:49 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-12afc325-269a-8386-9be5-2bc8d5476256?restype=container

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
x-ms-request-id: 55f86962-e52c-4110-a4de-1541338361f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

