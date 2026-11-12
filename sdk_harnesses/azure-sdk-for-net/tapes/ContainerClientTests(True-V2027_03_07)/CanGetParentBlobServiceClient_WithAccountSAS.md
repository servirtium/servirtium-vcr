## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: GET /devstoreaccount1?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A44%3A27Z&se=2026-11-12T01%3A44%3A27Z&sp=rwdxylacuptfi&sig=RtfI3Bfzy%2B6yrmCOkEEyScB4EESmjkI%2BZyNwu0kdrLk%3D&comp=list

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).CanGetParentBlobServiceClient_WithAccountSAS
now: 2026-11-12T00:44:27.5072439+00:00

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
x-ms-request-id: d05c82fa-5fc5-4ea0-8b68-cb77d70fa714
x-ms-version: 2026-06-06
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:27 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1"><Prefix/><MaxResults>5000</MaxResults><Containers/><NextMarker/></EnumerationResults>
```

## Interaction 1: DELETE /devstoreaccount1/test-container-33b8899f-a543-bca6-63a5-2411fa59cf31?sv=2027-03-07&ss=b&srt=sco&st=2026-11-11T23%3A44%3A27Z&se=2026-11-12T01%3A44%3A27Z&sp=rwdxylacuptfi&sig=RtfI3Bfzy%2B6yrmCOkEEyScB4EESmjkI%2BZyNwu0kdrLk%3D&restype=container

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
x-ms-request-id: 09961952-3f5a-4d58-83cc-c3d54d187be4
content-type: application/xml
Date: Thu, 12 Nov 2026 00:44:27 GMT
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

