## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e6475fc9-949d-62b0-729e-fe33826142e0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetSetTagsAsync_InvalidContainerSas
now: 2026-11-12T00:48:14.7414062+00:00

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
etag: "0x1F7CD6A838363E0"
last-modified: Thu, 12 Nov 2026 00:48:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 696b4781-6be2-496b-bff7-cfe7422c11ef
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e6475fc9-949d-62b0-729e-fe33826142e0/test-blob-db663ba0-1c39-dafc-7fb8-f1de6a28193a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
7l+CBqJqyOv3G/getfwdpsdtLBJNijasYmxm5KPS90mFw0Qi3zs+NXN75B0k3iSDmkoW/PwG7GMp
1aQ2BONHJSSumfG3+8aLL/af0aYYiIRH40lYu/tMftbg+AqXBzGQM775dUQyy5+Ei80GZxu9EE0f
7iCZ72opYhsb1gK89CjED53nHxI/FBeq1DAtRha7I+i8eBgQ9kRU0BMpF/WdyJakQVh91fE639oJ
7xs6+xsEX7Ia/3sPsxhZk0//FvwhDAuZiAS9Pk72gpg+BgcpGdT3JbhCg8gblY5AI0GiO8nd5+IP
oXIXRiBkI33j0KwRL3l6B/BD34lCffN2fRoMVEbPYB8kGnhi396Y3WBLOMThLvTHJzTYmQhZzCN+
ockFWM82E2+N7RUBFycSqwIp90UulU8mRCwS9scWyk1V4z4UkoSQFCRUU0HexhAMxe0GMNXdUAx6
3xOiJByodiLHqzTo/hl9mOIh2UENR34cBTHZEJp4eJMymrNx7fAHrNweFxrcI8fUiJjyu3bKbJeV
hh7rz2aITjOgtmNlDKryGi1l7zBjP+JpBIcBhrwcZy4c22fRG9x2lsjmO2xjb3ztAKFJZX1nMUc8
gcvehsh3hE81STBDIP5Q71hnfAR1BpULE4Ub0gKwtKkflJkRlw8Ab7YdLiVLqt+i+XUk/7RCx3s2
03JDW7JMhJSHI4tkPldJZw1OV9hvv2mleNmMjLX03c0e28ScvBME0amRxIdUProe25en9G+jxhMJ
nePYv/jfkkW+RmOTrKr5SYYu3vrhUTofbrEdTOldehWwkx8wKxGwsTJBlfdWii7trqrpdOgZJ0yo
uVBHwUVcYMtO4hmLyB50fizIn7tCyOOCMJ4/dAUslmvSh3LAaPDs5TUsCKgVYeWLdfa7UYiRZvBs
xZCmHezFIUutuEGrsxU727qGFsA7bM65s/4PcUXjQSGCU6NfRchIZuZcZ6ik4MHgf3bNCk8vMVjC
7WrttbAGyncfKV9y3JXyPa/Z3wUlFdI9L/HPFTbRUiJKnVhdW7A2Vp0xhLZhbqPg282gVlFTnNiX
sIa+N7RATdc9Jz48lOL+o4lo9JAc3MBN7jpoMfzQ9wGAxqsqdx7o8DffJEdkpEbrobLI66dHetTF
cEl62BvabC89vM031CtqfwRZPbd56UrzfZBJBwxZOEvXZAbVbRgbBLgXJ+d4tMyHXmuj7j0cS4f/
hlqKkWQj5IOCYG8llBLrPTn/YsFiesnEwqmgtUkOuhl+1ue9kHJT80Nj9lRcYspZuLEEHenGnAuR
xs67gy45c6VWpr0rLazGq25+/oR1Z2DeR/2YCp0vuDrbLMqkmHAUKoKuBrsNLYoFPXF6R56HHA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27399F5146DB5E0"
last-modified: Thu, 12 Nov 2026 00:48:14 GMT
content-md5: 1zEAhUSz7ukZygD0cLNOXw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 54e85545-1bc3-408d-9ac9-0267282f4441
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-e6475fc9-949d-62b0-729e-fe33826142e0/test-blob-db663ba0-1c39-dafc-7fb8-f1de6a28193a?sv=2027-03-07&st=2026-11-11T23%3A48%3A14Z&se=2026-11-12T01%3A48%3A14Z&sr=c&sp=r&sig=U%2FeYpi8l1DgGWD8%2BDIn%2FhPuunPdX13jFPIksVKAT3aw%3D&comp=tags

### Request headers recorded for playback:

```
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: AuthorizationPermissionMismatch
x-ms-request-id: 8f233790-fef8-4518-9adc-9d4df0a3c719
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:14 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>AuthorizationPermissionMismatch</Code>
  <Message>This request is not authorized to perform this operation using this permission.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-e6475fc9-949d-62b0-729e-fe33826142e0?restype=container

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
x-ms-request-id: f91544ec-2c35-4c3a-8836-b39d49726df2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

