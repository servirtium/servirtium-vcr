## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bea386e3-001f-f428-57c2-913df5df6002?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_File_AccessTierFail(1)
now: 2026-11-12T00:48:49.7649985+00:00

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
etag: "0x1C239C5E1F07D40"
last-modified: Thu, 12 Nov 2026 00:48:49 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5fde5689-2dd0-445a-a55a-f0cefb27d646
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:49 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bea386e3-001f-f428-57c2-913df5df6002/test-blob-08e14031-423b-14d6-4360-53228b3bb901

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-access-tier: P10
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
CZGjZirJNOlSo+IhR7hEw8X77au8Wc6hsI96v60FaRsIkDRkPPnXaAz4tZhftMyLG49cj04ORLDC
AbabT3U7TDnGGbeE34fLI4SexKM1QfvC76MdqdrN+UuDoTpCPBmXvGhfmZsVBzsIkGvJcIAMjMC7
2F/RHqNf+R9rAD5MiOZrBwc61qhfrednFBhuA4nLdxR6h2S5xZ7FAJ98qQb9vAeEXWl40bYXXCt3
agmK8PaWn4kp0gGCskFpddYI4wPhalgR6qUgU6VeYis4QVqVOw+o5Ql90+kGAasnD1zfDngnlgCw
eQZRdkzjy3DWSnHm1DnGYP36Y5ZvC+j5+ERIflOyEKpa5MEJV2+9mQh5L7c5QDoiGK56LTNpQW4d
V30Im0wcIznGjO93vQiOPcmO9dswv7gJJWakN+N38KNT7ADxtP67XAt+c7NLqlum7PBp20uS7JfE
/nXmeOxWT5tLJNEInIjL0pjPskwEvXoK/UvyDRVXwP9oLbWI1OQfKCMXAIaKnk9ongiywzpKwEH7
3HqgZEGG82PRn2/SQv60r4op7L3zgF/7iW8MpP3FHmx0jfhpfsPhkQwiuP7gllsK/hSvINODB1wa
pdrSek5mDIACXbUFSjDGR1ux0MdgGvMUAqboFf2Z8IacTtnpDxa9vKx93jimBLPj6Nl30jaUuorm
vXioffaDaG0vaPtX3DhE9BQa4jy7bv3yBS0kIR5PCJROA1GeFD62+nXLdpy3iwygM94heddNK096
tXfJX0dO32BnCNnmpt/WZOjH8PdhOnohg+5ALo68ANgBI17G7JstfJc7UIIyuYz+SxTvhjpYGXv9
qNtZDrHSqggB5IKAD3dMmnNfJer37slhQeJ5zXqdqQnjyUS/1G3maaV6MNUKfTydouvG+PSQBbkR
98zOWNyNZDt4nUUzjcUGebxEfb30V8Sm3CuO1rAVUsOLrdyhGBDJ7cyZkeD2ahQmwH84TIf7HaAI
KHyx/o2KYkqBp9/pZGCre5DxWsXjr3IWaBUx3QY8j5A8mO+UF+8+Dy6VdMI1PFwejND3CsLbJHgJ
mpV4WIVDRRdPrctxFmOhskuWTTqw4Su5ElA2RIXNYXN3inxZxrapUi6q5o+QrXZsVld3RNc9Wblp
vkY0DQGSgUxY+YvnR+yU7fsLBfqcKWXaye4uVhycOTHD8AdwdEQtGGVDN7PqhQ9q4lfbMVO/zZTg
WkMTYyovu8BaI1flJHi23u2VWPGx8ETfxHPFwQfdBCNyjxoBGrQ6FHzzj2G3hb7eJFNlKXSjL2r/
NJ+3afm4fB8zcpRetcM5W0R0vmDiJz6055y0d9quz2CvAeYUgqqDOxJBhBMqf2+PLM4vLnEKHQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: InvalidHeaderValue
x-ms-request-id: 707f3f49-af6f-4d0f-880f-b398d57c012d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:49 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>InvalidHeaderValue</Code>
  <Message>The value for one of the HTTP headers is not in the correct format.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <HeaderName>x-ms-access-tier</HeaderName>
  <HeaderValue>P10</HeaderValue>
</Error>
```

## Interaction 2: DELETE /devstoreaccount1/test-container-bea386e3-001f-f428-57c2-913df5df6002?restype=container

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
x-ms-request-id: 87da2308-3774-4cc9-8c5a-b6c18673f30b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:49 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

