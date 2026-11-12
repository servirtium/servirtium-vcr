## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-19410da2-9fc4-be13-2bbf-422c20622312?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_File_Tags
now: 2026-11-12T00:49:00.4613164+00:00

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
etag: "0x2622D9A24B22760"
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f4fbee83-58ac-4954-a44a-ea793b6880f5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-19410da2-9fc4-be13-2bbf-422c20622312/test-blob-22749d1c-22d9-29cf-0751-16664efebeb0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-tags: tagKey0=tagValue0&tagKey1=tagValue1
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
EmpBtGoK/MuEsGN0DoNdsWRnGjmwx4Z/PhcSc4msbywAkhq1IW+nEqGpnSi/WhqE9GUC5+SFAErj
wXVT+IlC2EE2c3xop5D1vwiXBildv+P8jX4jqohIe5HQ0l/6VBkYZsXnieedG0zVDCfb7vkghgKR
VmoKHi657ffrmNUx+2vuf6BkdjX8XnIyTp1gbI2Xr0tcaP2vDUiXLpvvsoN3pBG77W9ZvBDMlff4
2M+QWIFqU+iJ1JJtPnFXzUeaDKzuuqqMpX8dPvM7kNMGtzV4BtYahF+a7c9+Ta79Ae7IMohKCR0k
A7ICTBT1TkO/Z4c83sZxf4dNU83aDlfQIDwEcl5Ku60XUwMjGDdKpZ+MvuYnwSIoV7IB/bZQSvVb
MSzY8dvldavZJIvDTWdPAq4tTk9xqV4Z3BurSb33xgkNyOYLcbTEpkk6TZyXZAlLsfoHIvum6ojN
vhS/OSzt4l2BtoWARJD6aacFNlvBgncRYJfC76MNZt5ePbOfBG0dTWs/Fq6Ey21pDLlUoLQsCzyd
rtmUKvK6c0+mIQbdW2Q56OjwgmvIjJUqWeLqucYqMjF3AVaUiCJ4hKJf3almjLFUGrjLO4nQ1CFD
atEPz7qJfO/VZlkOpV/GeP3Jaa7rxMwxlZ4OX/aopi01UB5QabXo1mG6kCZXRnVYBMOLB2pyV6YF
3jobeh35LL8s2VRBdg9I4ZNNMTOm2U8ptloyHZ7Cwvl4Sop6zFtDwWNmKm0gFo20QibXJSVyXwTr
8sTCxg8gahZbySuEzhQ4CXDPP67hCZ/Mfdt46p3TBeuGj9mWgPpURb9WxE1iMHMRnxu0ox9VCekl
9kg0qIB4iMM//T87oYh2e/ruikRSak1nZkuCHmLMMIXwcYqxH5w/3jyKIjI01v2SPickZn6k04z7
zUI09mlgc8y5Si/+xFtdr6wIx0caMpBN7986p8oGS57+tlFaC+fSKa9me4vNlHrMx7fRnAtE4Zux
5gaJJssCsv+R/w4JAqTFNZ6YtLYEf1tlbuATNa+TudS2qSThSAPjY8iMPJRswsQTDGZsqy3krGer
JLjq7n1P/kU5U1l/5O2btFDteEPG+asc/yhJJg6n0fy9NSRK+XRLPT5OMm9qkyh50ffd9jQj5CsM
ze5UBdc3kYFdwq7JULvbojsFeMY7smwAz1UXydrHmVD4PiuF9zdmFqDuDNB5sIA7AlT4Hmxl0BuC
VDaBIMimlSld0BKPVaoEnmElTaWchh/V28eGz3vkkm0QA6IB5fbYSHenHN9urK2p9H8KQIN15s4W
rEUAH8aueD2kf1EIA7lrTAUu9Wk/Zi8a3Nr72VLqmh3U6jix2Ciw+aOiySxbofHGn/R9R/Fk1w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FCA9083BB2CCA0"
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
content-md5: X9ZQXcxi7ssu82ozyh1f2Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a02ea11-3fff-48f8-beed-8ee9e44610bf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-19410da2-9fc4-be13-2bbf-422c20622312/test-blob-22749d1c-22d9-29cf-0751-16664efebeb0?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: cdc1547f-a5ab-4e85-ba9d-e3c44abad426
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:00 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-19410da2-9fc4-be13-2bbf-422c20622312?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
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
x-ms-request-id: c7caeab6-c697-45ce-8363-d60575f158e4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

