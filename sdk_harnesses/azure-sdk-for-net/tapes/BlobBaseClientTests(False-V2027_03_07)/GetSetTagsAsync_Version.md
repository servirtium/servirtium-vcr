## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5415dc8a-e37d-8554-82a7-94947908d458?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetSetTagsAsync_Version
now: 2026-11-12T00:47:00.7893824+00:00

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
etag: "0x2657C9E885FDF00"
last-modified: Thu, 12 Nov 2026 00:47:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e4d808be-01cd-4851-88c8-68e8842f8057
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5415dc8a-e37d-8554-82a7-94947908d458/test-blob-181fbca8-cf1a-60be-5337-4b05d2991eec

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
GE6NMNgVinmmPEbYnu5csSOpXIXK4fy7HrUARpdOsuiJp3sreqSAkjKmcd6I5cFl25niKTyYITZS
0hEjFEPhWIldTvZyMTd+KclTJHAeMjjzm2v+bImr8IVE2aiTXH7uxBlVK5bK8qliY/9yRP3FM6DZ
MHjY4+v/sV5xLliP681LZF9XyQahKKnBnAiJOauIfqUHuiwFFuEtVXo4WcNR0ngyJuCdbmqZNwfP
Fkbjdniy6a+yhzGgRk5+KnOMac/lcMmPVhLL6hA6boIlNf+aSt8BhnAUnktHkuCRH0P2Dc436qZ9
Ux9l5v6feBmuexFO4+CUiuJe0dF+SMQxOsvMQ2G07UtZHfe/nJ9ydSYymRbPQjtjYoLr2BnV/wpb
M6wy0jS3+Y7F9cXo1O5D7FurS6+tYveQaeHeyRQyhB7sZGjzP6Lxep+ICUx2eo2TqOy9KbNbrdG0
omlT2TB6k3Gm/HCGUK25udEQJVmrGe5TSiAodFprkbeWPp05nqFuDXXaz34dDVg/BHDhS4d4CYh6
/44QUh4XO2u57xEPfxswoRfj0EpwNj3I6XDqikYvHjUVv54SXrtXw5QTZB5GL4RUsalvlDg9CslR
R2muLbAlidDc+sB8HUNcjA22XNIfgrnrldmcv4n817TVwRdSqJXj7dpNajXE15NlEwgrh632McWv
wpfXiMlG4CILp1wsCuN30m730RiEJr1FN6yB0FAG349Roub9C2URBooTuTA2OQkls7U+/l+tK5va
kVEcxQ/SBMjM2mf9ecYJ5suNcW2ND/2jWxyax+AvpHZKI3kU9EF6QLRnal6hKDruNReUH7ouTIJT
eWnyNzznnDXxs1ZM9fKJEzC4JaSfAjPirJLImoW7G9b2wHrXiAl3gM0or3XkoUAlCguKdSfds3c1
D4uqHgGvNZd/VjR3soonQaXXdlK+/gpSo5B5MaavGQ0DoXh+zWHLeHrdZEsLrViBYzSBBj0kdxCA
V3txNgPwzz0ncxARqXNEDP7Y4Jq/RvY3+M5xLRLQ3ypo/XXmWUJ27ZQO5DlHb7nAPfk/TJZ2wBGF
OT01fqIqV5Tmqav9XrK7YfMFsWK88IkUsfAYkJKT8T1kYB8FQW7y5I2lYcUOw99Hg+qicQ+vyUmz
IM2xEcYCUrhumP2StSCFE8zUFo7DBu0R0Q2n8IAttZfVUSCgQNPGog8NnyrhtM3KHV5C2rK78Brg
oD+5WmE4QONlvGT/5dL5DXN/tmbDLx0/3dMi6tvlGmEGwJ+TDUit1V9GfPdpyjeLSMw+OzmzHHEi
eX2OFVYIf6IC+SUyZv8r0eEHfLMl1RKblqIOp94nU6MucZTKH78JPvxVZtESWOLMEmlYrJ+9/A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20A88566641AA60"
last-modified: Thu, 12 Nov 2026 00:47:00 GMT
content-md5: sKEZlGNmeftgQhSWQuICpQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 37861158-7e59-4a29-8d09-856716eb325b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5415dc8a-e37d-8554-82a7-94947908d458/test-blob-181fbca8-cf1a-60be-5337-4b05d2991eec?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25E07229AA27260"
last-modified: Thu, 12 Nov 2026 00:47:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: afe1e025-74e9-4e8b-a83d-e686e5ef378c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-5415dc8a-e37d-8554-82a7-94947908d458/test-blob-181fbca8-cf1a-60be-5337-4b05d2991eec?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
x-ms-request-id: fbabc10d-bfdb-4dbb-afd2-9d2ef5dbbd91
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-5415dc8a-e37d-8554-82a7-94947908d458/test-blob-181fbca8-cf1a-60be-5337-4b05d2991eec?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_5
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
x-ms-request-id: 980a8b1f-3f70-4826-9804-af88974076e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-5415dc8a-e37d-8554-82a7-94947908d458?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: 1a10415d-1340-4bba-91e8-2489138d2281
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

