## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c642305f-af0b-b40d-e8a2-e27f7fd37140?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesAsync_AccessConditions
now: 2026-11-12T00:51:50.7036482+00:00

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
etag: "0x2380B7A63B80040"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95f6408e-9feb-42f5-b7ed-ca40d297b6f8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c642305f-af0b-b40d-e8a2-e27f7fd37140/test-blob-9a2072e3-a270-999c-0da4-7ad355da023b

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
etag: "0x20A885BEE9E0F80"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2df4e027-92b4-4e09-8051-72f746a9d88e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-c642305f-af0b-b40d-e8a2-e27f7fd37140/test-blob-9a2072e3-a270-999c-0da4-7ad355da023b?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
x-ms-range: bytes=0-1023
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
etag: "0x20A885BEE9E0F80"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5cf2ea53-ab34-47ba-9ff8-7240ec206508
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-c642305f-af0b-b40d-e8a2-e27f7fd37140?restype=container

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
x-ms-request-id: 21e208ce-c6d9-4aec-bfa3-d4d227d8bc6c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-84dc9232-78cc-9510-55ae-5dba153197ff?restype=container

### Request headers recorded for playback:

```
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
etag: "0x230A4AE98BDD280"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4685cb1-37c0-47e1-a02b-255f0078e542
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-84dc9232-78cc-9510-55ae-5dba153197ff/test-blob-cba0a9db-aa52-bc53-93a8-b966343a5f0e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
etag: "0x22EC67EB1942460"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6f5005ce-7c5f-46ba-a557-5129bbf25875
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-84dc9232-78cc-9510-55ae-5dba153197ff/test-blob-cba0a9db-aa52-bc53-93a8-b966343a5f0e?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:51:50 GMT
x-ms-range: bytes=0-1023
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
etag: "0x22EC67EB1942460"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8fdee4c-63fe-4ec8-a7b3-9e20f5e42edd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-84dc9232-78cc-9510-55ae-5dba153197ff?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: dc5d917d-ee46-4639-9726-fc26bc3cc592
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-ec4da79f-ecf7-6b73-618b-44c145e283dc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A6EB0DA1C5500"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2dda75d6-3c8d-4933-b904-d48449e259a4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-ec4da79f-ecf7-6b73-618b-44c145e283dc/test-blob-acf87a0d-373a-87e8-3f20-f024bfa9611b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
etag: "0x1DE65C2A56012B0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6406f6c6-e00c-4d55-a5d9-f1920fc97dd6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-ec4da79f-ecf7-6b73-618b-44c145e283dc/test-blob-acf87a0d-373a-87e8-3f20-f024bfa9611b?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:50 GMT
x-ms-range: bytes=0-1023
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
etag: "0x1DE65C2A56012B0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 839dd9f3-8bb4-45d0-a802-d961bf120f4a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-ec4da79f-ecf7-6b73-618b-44c145e283dc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: af62352a-7a3a-4466-abc7-da5eb76ebd66
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-6e1a4e4f-aae3-ee08-3535-6ac6659176b1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FD7ED76BFA22B0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aac81f3f-bde1-47c0-8316-c1194929f460
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-6e1a4e4f-aae3-ee08-3535-6ac6659176b1/test-blob-b959dc24-b242-68d3-bec5-add6fb4fabb7

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
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
etag: "0x2628761087545E0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2d44996-39dd-4fb4-8eb8-07b4b01a85de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-6e1a4e4f-aae3-ee08-3535-6ac6659176b1/test-blob-b959dc24-b242-68d3-bec5-add6fb4fabb7

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
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
x-ms-creation-time: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x2628761087545E0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 124647e0-4493-4fca-ad1f-4f452a9406ba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-6e1a4e4f-aae3-ee08-3535-6ac6659176b1/test-blob-b959dc24-b242-68d3-bec5-add6fb4fabb7?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x2628761087545E0"
x-ms-range: bytes=0-1023
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
etag: "0x2628761087545E0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ace8dbf-759c-4dd7-9b71-1a0ce8b71b54
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 16: DELETE /devstoreaccount1/test-container-6e1a4e4f-aae3-ee08-3535-6ac6659176b1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: 825afa82-784d-4f3a-8f4d-ce2d5ca2a8bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-f672292a-15c7-63f8-7209-7604cc2222ae?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x274FF649B84F300"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9f2dab7-696b-4196-a759-362d82d7ec5f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-f672292a-15c7-63f8-7209-7604cc2222ae/test-blob-e2ff3faa-a750-9cd8-7bb1-b01dfc32f2e5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
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
etag: "0x237C3AB1D9D2160"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 453e3ff2-03d4-4071-8856-dd7e7b583905
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-f672292a-15c7-63f8-7209-7604cc2222ae/test-blob-e2ff3faa-a750-9cd8-7bb1-b01dfc32f2e5?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-range: bytes=0-1023
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
etag: "0x237C3AB1D9D2160"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 05d0b10a-4dff-4724-a112-b33f4a81efee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-f672292a-15c7-63f8-7209-7604cc2222ae?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: ffc15d55-1808-403f-9994-79b6d86b2ee1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-3b9cb389-7f1f-0fea-e3f5-47383cce9c9c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22BC76FE34A4840"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ff2952de-4a1f-4ce4-bfd9-33e7098a1071
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-3b9cb389-7f1f-0fea-e3f5-47383cce9c9c/test-blob-bc2cffa3-c850-8266-51d5-7b1564db663f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
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
etag: "0x1C684256A3044F0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cbef8da4-cda8-4da9-af4a-51238e86aea5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-3b9cb389-7f1f-0fea-e3f5-47383cce9c9c/test-blob-bc2cffa3-c850-8266-51d5-7b1564db663f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 197b9117-e685-2a8e-55f0-fe5b609f60ac
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C684256A3044F0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-lease-id: 197b9117-e685-2a8e-55f0-fe5b609f60ac
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 142a8296-4608-469c-8e26-2e8d8e43cb27
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: GET /devstoreaccount1/test-container-3b9cb389-7f1f-0fea-e3f5-47383cce9c9c/test-blob-bc2cffa3-c850-8266-51d5-7b1564db663f?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 197b9117-e685-2a8e-55f0-fe5b609f60ac
x-ms-range: bytes=0-1023
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
etag: "0x1C684256A3044F0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 06017fa0-a2ec-4f22-8b22-ef791ccfa189
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 25: DELETE /devstoreaccount1/test-container-3b9cb389-7f1f-0fea-e3f5-47383cce9c9c?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: 87a11403-2d34-4fbb-8d94-2c63f728cecf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

