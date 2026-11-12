## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7a93fc91-3f68-d79e-8866-acfdebf216ab?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesAsync
now: 2026-11-12T00:51:50.3863117+00:00

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
etag: "0x239A86237A04CA0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 81720d9b-3d38-4aac-9e9b-0ef3c58f08c5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7a93fc91-3f68-d79e-8866-acfdebf216ab/test-blob-1cce51cc-b732-5953-978a-f8f659a64d48

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23D6805A07F7140"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9ce5a96-ae07-429b-8961-edf636147669
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7a93fc91-3f68-d79e-8866-acfdebf216ab/test-blob-1cce51cc-b732-5953-978a-f8f659a64d48?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
fxe3FUueG11a+Cwi1IsQGxMPS75JxnnZqDnj3UenfuIZZH3TOwBfLjZwwjmLMIULet3iSVuO/rie
3W0Suj0WsnlJCHANPN8TsByH2QQ/Tne012NpxDWHi2XFNF6TTXP5WQ/AQigU/T39z5k+BiWzX471
XuLZre5Ewn0KSAiBgGOpjn/0fwxPn9kmbPSbSIQ/EdTPnu+QIKwhe3+qCbU0fE82lHilv+CCpb4J
skH5qHn5yzYzsuJzGG7T0wOMpZUj8e+lZbMMmlL0TPgwh21rKNIGsD5/AcltwnwK0uzc9f8p5cBR
VEPF7TDjP2XpQ5EAZ6sxhvRWpPAmOKM3AcdmF1b4B6KsGtSPQMMNnMJkg37qCWpAq28K0kHQKhuf
jetpfCcO8DzuU03XokUxSAcuwrQkTfhdJWzn7jRh3O+477PYpB+aVZNC/LUdaQkp2Yk5omhne0Dz
DFe7JgIHjXddHrKSWKTok2wg4VBCP7tivRSrKDmHUHRy5ZjI3y6RO24+v0pWl4HlUA77Rpnvscyb
WGnuXGU91s4+H3MLILQ+j6biBIBwDCaSxdcqiwnagzTMLIbFot8JAOl8GHcN2jBavbfzDa1MKkxC
W5aNE0vFY5w/PvMteezG2ASX9PSvhOum0M1S53WHgAI6gkdJe+2dt7Tazps9LUTKLDSotTVYk9aq
50J9c3wnuL7w8/alfVwX+T0/1LZQaKKJh7tA3svM4e9xnpSqH0M3sxbcTDlOJa7Xkbv4GL4gWn6g
9OvB5trzJBEGM9/Ibdn5CCGgcxxpO2EMaUwP1MkwUUMVCStYds076SgnR/HODyTi/hCdgOdiN7iK
tH2O409I1uKcsmOtoZFTZIrzQfRvPVonLda5ktBcs9JyzcFQrQXZ33APMlzBNFx+SRtcbvXEGncj
Z7Z4j0MRQP+QO9PQA7aEGWKDYAr9Zfl5Oki1/0TcrbNJLEZPYE8s/fJcMfmJrUVl11WTQblsJQG9
/1T7XEC7s40ghtdvNbkSVmMYoTP/740CTyjvSWz53QdEkmH6MaCyoX1saSZu9aGbgOpWVITOvQ/H
+A0Yy2ogJqnPK6NYGCTDZv+1k4ZmlFmGU8iCo4mDdtRRMzmTmdUTS0N9n8r+Q2jFku2EGCqIYGSz
kniinoIgS7TPBuXrMMwqokdD6fSPhxBfvBCb/16qyNLV3wddca3AXVMVLzyD2mIgWnXiRXdvIwpo
QuJxhExWJD0SFVDFzDGagoygeljT2+GueqXox4NaZrv89S7LTtgHvgr/ccURW41ESMLrzqmxlGcA
wwmnbl26t6+VyNcCzjSzmbtO02ocnB8Xo37Ab5cRS2DHyorOYFCsRLkWfJO2QnmONzXuY8H85A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F83CFAFCC26A0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-content-crc64: z4L8mvpsy38=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9ab22c90-4d48-4db5-a0c4-3abc4c8acb88
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-7a93fc91-3f68-d79e-8866-acfdebf216ab/test-blob-1cce51cc-b732-5953-978a-f8f659a64d48?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
fxe3FUueG11a+Cwi1IsQGxMPS75JxnnZqDnj3UenfuIZZH3TOwBfLjZwwjmLMIULet3iSVuO/rie
3W0Suj0WsnlJCHANPN8TsByH2QQ/Tne012NpxDWHi2XFNF6TTXP5WQ/AQigU/T39z5k+BiWzX471
XuLZre5Ewn0KSAiBgGOpjn/0fwxPn9kmbPSbSIQ/EdTPnu+QIKwhe3+qCbU0fE82lHilv+CCpb4J
skH5qHn5yzYzsuJzGG7T0wOMpZUj8e+lZbMMmlL0TPgwh21rKNIGsD5/AcltwnwK0uzc9f8p5cBR
VEPF7TDjP2XpQ5EAZ6sxhvRWpPAmOKM3AcdmF1b4B6KsGtSPQMMNnMJkg37qCWpAq28K0kHQKhuf
jetpfCcO8DzuU03XokUxSAcuwrQkTfhdJWzn7jRh3O+477PYpB+aVZNC/LUdaQkp2Yk5omhne0Dz
DFe7JgIHjXddHrKSWKTok2wg4VBCP7tivRSrKDmHUHRy5ZjI3y6RO24+v0pWl4HlUA77Rpnvscyb
WGnuXGU91s4+H3MLILQ+j6biBIBwDCaSxdcqiwnagzTMLIbFot8JAOl8GHcN2jBavbfzDa1MKkxC
W5aNE0vFY5w/PvMteezG2ASX9PSvhOum0M1S53WHgAI6gkdJe+2dt7Tazps9LUTKLDSotTVYk9aq
50J9c3wnuL7w8/alfVwX+T0/1LZQaKKJh7tA3svM4e9xnpSqH0M3sxbcTDlOJa7Xkbv4GL4gWn6g
9OvB5trzJBEGM9/Ibdn5CCGgcxxpO2EMaUwP1MkwUUMVCStYds076SgnR/HODyTi/hCdgOdiN7iK
tH2O409I1uKcsmOtoZFTZIrzQfRvPVonLda5ktBcs9JyzcFQrQXZ33APMlzBNFx+SRtcbvXEGncj
Z7Z4j0MRQP+QO9PQA7aEGWKDYAr9Zfl5Oki1/0TcrbNJLEZPYE8s/fJcMfmJrUVl11WTQblsJQG9
/1T7XEC7s40ghtdvNbkSVmMYoTP/740CTyjvSWz53QdEkmH6MaCyoX1saSZu9aGbgOpWVITOvQ/H
+A0Yy2ogJqnPK6NYGCTDZv+1k4ZmlFmGU8iCo4mDdtRRMzmTmdUTS0N9n8r+Q2jFku2EGCqIYGSz
kniinoIgS7TPBuXrMMwqokdD6fSPhxBfvBCb/16qyNLV3wddca3AXVMVLzyD2mIgWnXiRXdvIwpo
QuJxhExWJD0SFVDFzDGagoygeljT2+GueqXox4NaZrv89S7LTtgHvgr/ccURW41ESMLrzqmxlGcA
wwmnbl26t6+VyNcCzjSzmbtO02ocnB8Xo37Ab5cRS2DHyorOYFCsRLkWfJO2QnmONzXuY8H85A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E883CDF74E2380"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-content-crc64: z4L8mvpsy38=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7c41c317-1017-4703-b46a-06b079b76056
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-7a93fc91-3f68-d79e-8866-acfdebf216ab/test-blob-1cce51cc-b732-5953-978a-f8f659a64d48?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_5
x-ms-range: bytes=0-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
etag: "0x1E883CDF74E2380"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c3530831-a1aa-4fdb-b8dd-10457d159cb1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-7a93fc91-3f68-d79e-8866-acfdebf216ab?restype=container

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
x-ms-request-id: 36d2a7c9-4b08-457a-a4df-00ab55cee119
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

