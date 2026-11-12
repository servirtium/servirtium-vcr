## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2b59a930-bac4-1bf4-4250-3035a626916c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_BinaryData_Tags
now: 2026-11-12T00:48:56.5396252+00:00

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
etag: "0x1E8785E403A30B0"
last-modified: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea47e437-b576-41be-a917-1cabccc7ab8a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2b59a930-bac4-1bf4-4250-3035a626916c/test-blob-d58b0536-6c43-c5b5-0742-ddaa86818380

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
LuEXwMEzyj716UIqHM5qUgg7M7bBvWDD85Mjgt1JlMDNrwfED9CrAzpN4Foqi6k414uiS07Mv3CB
U8wtD0hgq1SBXWzHpkI3kC98dN0FmGjq6qtSp0lyAO+WQ7sEffTy7DQGqS48cTBIaroeUEuTe7pj
QySdDgMKDlx9MGOHMxI7iYeo/+86rXl6Cj2OVK+jA8gAoDrPVN4x/JvRv0DNwTao48bE63vLKZWq
IgTGe7qs2S2bhpPXazWpdwNTae45rEgG5nDp3xdMNXelJDLaa4DhJOUSMjuj0HeRGnR4d7+mcXW7
v5VJw/oVT1AcMkcDzwuCckQJJnoNYxb4V8Wj0763/7K8Hqzrl2Dq/OPqh54wjkpo9QR7nEv7rVx/
UGw1cnuSZTKURrBfl9vjHymXItt3yMh6O925O2NnwHFPbEb0tYpnWCJrnEeaCF0pl3whY4qAB4ij
uzad2SnOLIY/DyuU7mmfL8q5CyuB3zJ/kKTmRV3mz2S+UflUyX75nG/BWvkylKgTgjO/x/tcIdsD
HUiE6OcpWUDH1Z1vS2ZLv268v4Q5Tfv708MpJgdoYjAeUKs1dLSImAG4ar8LozfNdAeMoGFWytBN
iRUj/zI4XnNtUfu6FUu6MyeDgOI88DCMW7IA3MLOx4Xb6OqfZZjPfwxLnlE8E1670mw600ntEZnk
l6R/OIKxnol13i1gG86PswHW8FHeUEhURAlVlPQ77tZRus30T0eKmv/HxjUwWredqh9IFiFHBUZb
K/N4WwqVOe9WDmAAmmS5S1ZRF4kTJOlSt+nU89i1CrSHmCRTET71MYxF2UxWnQ+7jsrL9e68SAcK
JqMhwUYXoQSreQJAZjoXXOX8zUqd+xrZGWQN6hTGyk8cSeua03BGLjdHqyMNeyiQs5kJv3u8bCqJ
R6fhCrfw5a+yIx1OfIh0tp4SVlD3y508fDZ7vArUYNzBEYvIZCSAVsV0WlgLQjYQlAncqRbaknwJ
pY2AdSik3sJAjWv8q1F6kf+KgnFFMTn/aigA97bG5n8Pv7+WAOGdz3uVyrXLFOi4YhgWUA8KxHRT
gAoAo+cMeqbs7OyR5JEd7bL1sGaENFY/SJWer5ZvBfpLQn/WnCuUiVAO3if8Jn6G+WJcFBQNz0y0
wFtSbssQfOfxRqESRlCHYSYWdlUuQyEWF7UzE/DmPXMzItzQQRuF/WI/CuDcdLIS1bPt91j2hX05
O1YV3Wn3Cwgu3yR0tiALkXjz7jlBOaMDID09+EYaPJxflgXEbyD5SP/XrpWOnh6T4WXgA5ZE9wGz
ErwruhLCFKOHFSAaRiFY+aY6aosOdIIfqRfgOjgFGp4EEV1jzo7sFJryBon+eZtEhwrwCo12pA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EAFEA7B6FF3820"
last-modified: Thu, 12 Nov 2026 00:48:56 GMT
content-md5: g/q28GbUb5V6LNaOV4dIfw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8e2f834c-6584-4d14-a2e3-db89bf7579a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-2b59a930-bac4-1bf4-4250-3035a626916c/test-blob-d58b0536-6c43-c5b5-0742-ddaa86818380?comp=tags

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
x-ms-request-id: ea64270e-fa59-4f2e-8ffd-6cc478ddf4bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:56 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>tagKey0</Key><Value>tagValue0</Value></Tag><Tag><Key>tagKey1</Key><Value>tagValue1</Value></Tag></TagSet></Tags>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-2b59a930-bac4-1bf4-4250-3035a626916c?restype=container

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
x-ms-request-id: ed839fe3-6012-4887-9785-7eb797c2eca7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

