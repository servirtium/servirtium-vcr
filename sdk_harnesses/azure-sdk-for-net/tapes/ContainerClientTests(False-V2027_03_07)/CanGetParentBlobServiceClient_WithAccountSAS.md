## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: GET /devstoreaccount1?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A43%3A22Z&se=2026-11-12T01%3A43%3A22Z&sp=rwdxylacuptfi&sig=VB2Ikg2KUpFsccs4nSmmVJdRmnyzNBGIXyWB3o%2B9nGM%3D&comp=list

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).CanGetParentBlobServiceClient_WithAccountSAS
now: 2026-11-12T00:43:22.5248556+00:00

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
x-ms-request-id: 5326d854-079f-4860-bca5-6c9a728f2e06
x-ms-version: 2026-06-06
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:22 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Prefix/><MaxResults>5000</MaxResults><Containers/><NextMarker/></EnumerationResults>
```

## Interaction 1: DELETE /devstoreaccount1/test-container-6e12b7e4-233f-01b4-2dc5-5819300749d4?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A43%3A22Z&se=2026-11-12T01%3A43%3A22Z&sp=rwdxylacuptfi&sig=VB2Ikg2KUpFsccs4nSmmVJdRmnyzNBGIXyWB3o%2B9nGM%3D&restype=container

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ContainerNotFound
x-ms-request-id: 9ec832b9-710b-4dbd-84ab-a75865f4bcab
content-type: application/xml
Date: Thu, 12 Nov 2026 00:43:22 GMT
```
### Response body recorded for playback (404: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ContainerNotFound</Code>
  <Message>The specified container does not exist.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

