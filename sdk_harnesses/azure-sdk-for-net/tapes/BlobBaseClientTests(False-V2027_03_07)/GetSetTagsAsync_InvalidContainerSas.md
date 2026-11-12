## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5631a203-513b-0e3e-a6c5-d5931ba847d8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetSetTagsAsync_InvalidContainerSas
now: 2026-11-12T00:47:00.3092213+00:00

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
etag: "0x1F0AB29193B0450"
last-modified: Thu, 12 Nov 2026 00:47:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7665872c-4473-4945-a35c-a868d07e86c5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5631a203-513b-0e3e-a6c5-d5931ba847d8/test-blob-0e5023ae-8f13-e5bd-a775-b5b847c188d5

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
qdxLwdD6N/e3QBBJVlf7VQSfr/FGVhFz5UyuxZyGx+U9AOk+XIYHs+tZVtN/dI9PemCzpxGWjlPL
2NyDS3FaMHkqDFVuvPh+l/wG7P8+9HG9Xko70x/UpnGWc4SqhGd5/yZaVGc54b1nNA8UkKJUjORr
xe0nHlxZVmbk2Elz0xOUjO3Y5J8JhH2M1J4PvxXOQeagP756UuDKAP4BVAlz82H8gAS0e6hEYUFw
mkq9SpZRFpZj05RVGjkNDuOhCDB0GeA9Ez8QGsY9W919CriVDLVnrz5yECDNpmbKp23EolkQ+4Fq
gDdXQPzQJXi22A+BdwIuOljyAQi/cGzYRXJYeLiEbA43Kot+D29CouqoFs1WSS9qlmgAHvp4qhDK
fvqJd6y/MWwBSkx2ryvpsF8dF1mfgvxD7uJQg04UvoB7tJB0uCs+6OVhVf/i9Oc9F22bWpK3Kvz+
RonKb60d7IvM+/uadfcz3y9zPSz9YPn7EmzgeGPtxImUdXKic3k3Q2hzFvjroqF2Z3tjQ+3PAOWP
z1xAPXQn3jdyBv+FkWy1O/rEiUoAD3DKahHoioCbxHSMEqQd9gb0SzfBeZyi8NUPrgfzCnebjsDr
dtJiPlS21kGK+H7Hl0Xz0D0SPpXUKHk72dt5qLn98IPjMYAzkQ3iC6NaF/dWRxbC/zo5iE8qF01Z
J2V5PC2IjAf742bEwD4wLzPxeRCC5JLFt6l/xGg0uRky2mqnac520ovvW2Ow/T77CFgcOJ0910LS
s4WDCMifxipMkebUicZke6eFkogvFblrg7sPF4B79QIn1LVJ8snCUJQ4Y2xXJ3+St732uES5o57L
GIUMkK+q0JzjrLQQG4newkHz9rFNE1w8fF/ChT2+bTEXfdpEtr/ljZLPc3rLgpw0F/UDxa3sfgQo
zxNP50tfJT6D+Z2umgyCDmgffZ/hcfrCjm5Hu6eDKv/VG+arlaZHcE47R4n/hX3pgLdEzQBlRl4Z
jFncGGqX/86e2X8l1njC2A1RpilxwwnxXTrwP13+cNSHkglMaljjpEi6Yav9w6o+gfXyE6A1qMlQ
67owpsBwn2mqnUNvdm21bgLgtmJd85mPsb1oDFwzUulA/H6dsv2IScJBUyZmzwuHPKSeVPJm8vgg
ofUCCJIMdkpaL3nuGLsEWGygG6BzKOGx4M+3lf732QqGfREIhUEvNdzbDKCSmSTpmvuFxtZYrHkT
USjDVOFMYlVvaJuq+9IrcebEmBtBH0eqzvsCcRIzLdCY9TQYbOD6jqpKIjCJP54pWlXwlBRd0THg
GIblSfBDPDrKEQadEgQGyQlx9/wXII9d2Re9Qpm7OiMCOFNZFEW5B+b1vi2Xi0hQ6ssK7No1yQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2706B9059C5E920"
last-modified: Thu, 12 Nov 2026 00:47:00 GMT
content-md5: yuCzkPQPrFEdDLKWPeHrCg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dff5f14a-2b0c-4ae2-817a-76599abf92ae
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5631a203-513b-0e3e-a6c5-d5931ba847d8/test-blob-0e5023ae-8f13-e5bd-a775-b5b847c188d5?sv=2027-03-07&st=2026-11-11T23%3A47%3A00Z&se=2026-11-12T01%3A47%3A00Z&sr=c&sp=r&sig=%2FWam3DVbRhT9R%2FAjlS2t76hzRFXe1NIc9sWtmLgnN28%3D&comp=tags

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
x-ms-request-id: f8d476b5-b1ff-497b-848a-c9e794fe0ba8
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:00 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-5631a203-513b-0e3e-a6c5-d5931ba847d8?restype=container

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
x-ms-request-id: fc8fd44d-21e7-43c5-9e53-ff615a6b04a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

