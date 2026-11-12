## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f3691fdf-0550-a02d-e97e-34b83a9e1686?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetSetTagsAsync_BlobTagSas
now: 2026-11-12T00:46:58.6867022+00:00

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
etag: "0x1C4593C015E1D00"
last-modified: Thu, 12 Nov 2026 00:46:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ca576e1-4fae-4f48-822c-c38f9ba6744f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f3691fdf-0550-a02d-e97e-34b83a9e1686/test-blob-a16a2458-18f6-431f-379f-c2ce74987bfb

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
GjF+woNSTPPwq7G4MjzR0Uj5IeXX+RvG/yW7sEJeLFADOJ4IIFQDBth3sUpnZhD7zvGFeneVIyEW
t8JelpywkX9gtfqeyLH09hoNYEjQXpkUwOFR2LHYbRR98WiRpW88xh/LB7AWXQVAkYNciMPYRlgp
SdW6X7nNh0jlIddIY1Gr0ZkpBFfo/WPcEUctfORRpKsPZ1uZgWdl/X9nMTwu9y0ysbcpr0EBQUty
3k5ynwtkk3wrOPz1EU8ywwfXgMwnrRkZ+8osJ/RqDiYPJ6MY8110A52/Ar8xPJ9o9+w6KsB/SzA0
WaRAN2uIwSrV5uqrGdCpYnwuaKpa574qxDAIL+Nlj9xz45m5M8wxNkGUW1a1vd0ckMdDUOKG2nHm
FXI7gJFGb1YONzU28C6w/TFpxYxndQdT658cIj/57Qko0h5Z9ravTesAp4Wn5aCYklOxHBXlfqBr
55TyKk0XFEosDR0QVwZ7uXegZ86Cqwb+g4/rSND0Q1R+7Q4hvCOe6ZI6e9iDhztMNWOdRBfR6TuO
9Ka+K8x6OMrJkmn4WfxUAn48RzAuevxTnxJtVv49rATTk8h84L7FwEIOuvXSVNxmSEKYlaILYHmq
aou6DeHLi+VkJMU01yLAdoftH78GgEs1Bg68pBdiyDNO0nUyC7JhQi4PbS8WMnAg2B4aHUC6o+lA
hAbTD+fOAlyS5QWsjWrUjNyR9xIbHtSdm8v4R6rzlC6L8YesjjNGQGvShExrdEu0RpBjKKzXJWUy
NXMc1bqxn1HWIZzjKP6oSranSZqHMSeARAEaj2uCtMwheVjAKmqwIOX7lVKu0B2Rut71L9vLqwRL
nJG5lw/lVG3Pwq6m6B9L9ii1i5zU0XPjiNWNjYTwVs5UdI3Z94nVFkHl3g5v69K+qTmzFh9nd8se
1g46WMbo32vgUnORcv+f33Rb7vJkdJ0DzuNKPT+u7P3CuiB6mr56/f+ijpleLDc5EzaqDIjZumFx
N4njnaIsMmV2z7feJUS24fHyweUDpKGsESkJA+B06QC/CGM0ll9ddlwz511/Wu7x9CqW5vh8bZLn
N4x4Ii6FAuW3HxzhgUqSlUqI0L1ELLY7Fw+13gMHQpvQTF/S5FMtreV3xzvREHLgBFCt853UowrV
PQsf0CTir92BEDTrv7H2WyPYzGR7aQec1dqyWk/++6lU/adIDtzBlBhdUP899ESft5h5/NalWtMD
g/tKMFWOgxWLl8IKrkxGFzhMHRgIXuCVE6K2hP/SrqPTRYrhd2TDz83qslyBlQhLM+WeWTy7+iQa
tB2y1/4VuegfNmjBZKDUiU1KHqyEE36aalAaM1VmF0pmx8JHEPjO1Ph0Yl6fic5FytDucNx3lg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E8AC95CD2FF7E0"
last-modified: Thu, 12 Nov 2026 00:46:58 GMT
content-md5: GuEHhwyc/J1znA9q9DWB+g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac43b65c-7e16-44ab-80cf-6459080936db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f3691fdf-0550-a02d-e97e-34b83a9e1686/test-blob-a16a2458-18f6-431f-379f-c2ce74987bfb?sv=2027-03-07&st=2026-11-11T23%3A46%3A58Z&se=2026-11-12T01%3A46%3A58Z&sr=b&sp=t&sig=VIS1elh3BnBaMKfD5JuM1A33sRuole3%2B1JhgpDitcE8%3D&comp=tags

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
x-ms-request-id: e3e776d0-9cb1-49c3-9a6c-777fd1d53158
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-f3691fdf-0550-a02d-e97e-34b83a9e1686/test-blob-a16a2458-18f6-431f-379f-c2ce74987bfb?sv=2027-03-07&st=2026-11-11T23%3A46%3A58Z&se=2026-11-12T01%3A46%3A58Z&sr=b&sp=t&sig=VIS1elh3BnBaMKfD5JuM1A33sRuole3%2B1JhgpDitcE8%3D&comp=tags

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
x-ms-request-id: ae7c0118-2bdd-4076-a51b-f4d54e130529
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f3691fdf-0550-a02d-e97e-34b83a9e1686?restype=container

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
x-ms-request-id: 94501d00-99cf-4461-9dda-d0a56bf1fdec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

