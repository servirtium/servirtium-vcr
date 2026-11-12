## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-aa550328-16a8-3a01-af1e-75f555cb6ceb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).GetSetTagsAsync_BlobTagSas
now: 2026-11-12T00:48:13.1935643+00:00

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
etag: "0x22883D104919E40"
last-modified: Thu, 12 Nov 2026 00:48:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0dda5e33-9a0b-40cb-8c6e-f45e59ee8905
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-aa550328-16a8-3a01-af1e-75f555cb6ceb/test-blob-6adcef0c-2243-0ebf-7d00-5dab107dcc16

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
420c0rCA3IYCAEM7YyiNAIAMEk86I/oGREcsqLhWKjJRXhLnr5k7jBNVZ0Peg6pVcl0qA2t9279y
FY5pVDTOq9YR6gUWpVHm0YU85by3J8Cc1jVbKybH1IJSdZkK0jjfh7tszZilPswMRDLlQfYDuu7N
zH3+c4CvShaCwzC32/5NXV0ASloo9phpTufz4ZKMT7qqPQW64BQ7vYOCI3qbVGg0l+SYAm+Updbl
lCSYu2iD9nR1DJ75knxJxI3WpdMdzfp/v0qu80xLFpcv1UvwogEb/y0GJkfKOgRnTz3ivQADyMYq
Gfwd1AMoKvYGyrwwWSKMu6alFqeytIVFRqMOaFiXKw2ExokF/Soq3vtRw3BHN/YbVQJaXbEfd2R3
2I5fGcGdbp6vq5OYh717ezirYfEU/Q+t8hNWPc5cZU4kjSScysU6s1TRmItigs5E3uF5cxVzYtp+
sSauRzHPUkZEdPmY37Byca2cQmSDSm9EEl7s4/I4sStKHRiei2wjAkVFHQ7Vq/8wBgFo1h92+2a2
ajTS4m9UDMLNTsKX1OZBeUAePi1gb2ZfvNzw0NoL1CKy5yE3UB/W8RFMB1w8mDIbJl3eV7w5VfvO
ciaTYzvnwnqg5ezECSghSE0bFGcKIiOq1Kl9LHxleJImad34Qo3WZEXhnLJFVx00vQ5vHkGTxE8D
6I+RapX9Om1anqBKKQbARK8iKIZwZX2MSG9u9llQk6WN9Vr+RPqv42JF67l96ZQIrtmRcJvJkoMR
BSEmj0QTCQv7vTSrwQC0c0QkK3nED1/bZkeAvyIJxGLW7D/ZiVQdMuGtgSxgXOzZ3P1XpWcJTfbB
Sij8k0no8fjR1dXB2+nvBvmYFo0yegpap+Iksh76zJ9JFz4sIJ+XxZAzjoYXGAEUZ59ucTZoj88d
outnxD/a1wg1eMOqw+VZAFH9/uyDQo7hEEp/i1to4IhuDn6zMAFQWbd+4aA9aaO5FHDla5DjmV9d
hbP0WkuszJc6O7Rnps9QrKU1BWHupKamxXfqg3T4i3UeVatNW/5r0RQIAi3vUm2glL/qrZT+buAN
TZXUwkkjQrA/SFAkA1CmyTRM5qF5t3IJSe+1Dd3hH+fKQA1plw/L5cB9rwocfJFuQ+Rfsog/k5Yi
ynhZbTTSXihpWsJDPTEkgAHh+wdo7M1dR8r5gW1fi6x3Rs2XcXeMqlHhsyLOKwayOzGGXZePud6q
/CZq2d26Cs4Wy/dkjQ+KVVG2hzirjhzDRkU82C0U6Izv7HVQIdF0JqlTt18OTq0h/AhG2DKl/20K
ppKXfjGhAuNrdaCaOTOAQmCPV9e8tfiYGtskzQ9ZSe0HRXs+3Kh3sbV7o9kNh8PVxpbRFaeWTQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2707A423A515260"
last-modified: Thu, 12 Nov 2026 00:48:13 GMT
content-md5: VST7miyeRjclK7RsVZD/xA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f8fa8de3-b93f-40fa-84b3-404235f76e14
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-aa550328-16a8-3a01-af1e-75f555cb6ceb/test-blob-6adcef0c-2243-0ebf-7d00-5dab107dcc16?sv=2027-03-07&st=2026-11-11T23%3A48%3A13Z&se=2026-11-12T01%3A48%3A13Z&sr=b&sp=t&sig=xCqWTlUkazcK%2FvtpCcDsi2QrRwmzWnSXfAi0mkzkyCk%3D&comp=tags

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9a8b42b-2786-4826-8769-3126f59ce753
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:13 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-aa550328-16a8-3a01-af1e-75f555cb6ceb/test-blob-6adcef0c-2243-0ebf-7d00-5dab107dcc16?sv=2027-03-07&st=2026-11-11T23%3A48%3A13Z&se=2026-11-12T01%3A48%3A13Z&sr=b&sp=t&sig=xCqWTlUkazcK%2FvtpCcDsi2QrRwmzWnSXfAi0mkzkyCk%3D&comp=tags

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
x-ms-request-id: 080ef752-978f-4148-824a-56d9b765e220
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:13 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-aa550328-16a8-3a01-af1e-75f555cb6ceb?restype=container

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
x-ms-request-id: ec8d2c5a-7ecc-433a-8568-a4370e11bfd0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

