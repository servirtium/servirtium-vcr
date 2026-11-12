## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-16edefa3-ed5a-4550-111d-41810a922346?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).FindBlobsByTag_ContainerSAS(All)
now: 2026-11-12T00:43:07.7097153+00:00

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
etag: "0x210713807AE9540"
last-modified: Thu, 12 Nov 2026 00:43:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7279f37d-8952-4d5e-a07b-f54a66c879b7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-16edefa3-ed5a-4550-111d-41810a922346/test-blob-a23b7f9e-1946-74eb-641b-208798877189

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-tags: myTagKey=myTagValue
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F0FCBEF5911F80"
last-modified: Thu, 12 Nov 2026 00:43:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f3dce3df-a0aa-422d-94d2-80983aa256b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-16edefa3-ed5a-4550-111d-41810a922346?sv=2027-03-07&se=2026-11-13T00%3A43%3A07Z&sr=c&sp=racwdxltfi&sig=2McM1aieRnWMx70sgsQGu840dZmsdt2PoIHTlzLhtFU%3D&restype=container&comp=blobs&where=%22myTagKey%22%3D%27myTagValue%27

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: c91755f7-4329-41ab-8c80-3a58e3d36753
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:09 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Where>"myTagKey"='myTagValue'</Where><Blobs><Blob><Name>test-blob-a23b7f9e-1946-74eb-641b-208798877189</Name><ContainerName>test-container-16edefa3-ed5a-4550-111d-41810a922346</ContainerName><Tags><TagSet><Tag><Key>myTagKey</Key><Value>myTagValue</Value></Tag></TagSet></Tags></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-16edefa3-ed5a-4550-111d-41810a922346?restype=container

### Request headers recorded for playback:

```
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
x-ms-request-id: cdadb142-08b3-46eb-bcef-38e9f0e32d0a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

