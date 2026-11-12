## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c175fbee-c515-8655-4e9c-841c9217ea2f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesAsync_AccessConditions
now: 2026-11-12T00:51:20.8153296+00:00

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
etag: "0x1C86DC16E1C4A80"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f6261dc-ed19-4d41-a359-2de082f42d75
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c175fbee-c515-8655-4e9c-841c9217ea2f/test-blob-d661bc35-eb40-cd40-2af1-736faddf0c56

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
etag: "0x1E2F4AA587CD660"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 04989120-e99f-40ac-883a-50e9538e4107
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-c175fbee-c515-8655-4e9c-841c9217ea2f/test-blob-d661bc35-eb40-cd40-2af1-736faddf0c56?comp=pagelist

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
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
etag: "0x1E2F4AA587CD660"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 997f2830-41a4-4f06-8166-799189f7407a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-c175fbee-c515-8655-4e9c-841c9217ea2f?restype=container

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
x-ms-request-id: b3ea86ff-159d-43d6-b5ac-edd61cdd945a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-8f6f60f0-7b89-1847-12d1-0e29c74ebfa1?restype=container

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
etag: "0x21CA1B66AA57F20"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 74229b59-c2c0-4b24-a6ee-90767e7f2b2e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-8f6f60f0-7b89-1847-12d1-0e29c74ebfa1/test-blob-a6b0d085-db8b-0398-bba8-972451e6d86f

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
etag: "0x25D91A6A297D800"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b229b0eb-e6a1-4264-8f26-20414da56ebb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-8f6f60f0-7b89-1847-12d1-0e29c74ebfa1/test-blob-a6b0d085-db8b-0398-bba8-972451e6d86f?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:51:20 GMT
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
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
etag: "0x25D91A6A297D800"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d1458fe9-6855-4036-897e-3f2857855ef0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-8f6f60f0-7b89-1847-12d1-0e29c74ebfa1?restype=container

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
x-ms-request-id: d496aaa7-9177-4976-a353-fbe33494ce56
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-322c2d90-5ba8-baa6-7449-c36fdd1605db?restype=container

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
etag: "0x230A64FC951AC00"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 17f7bec0-03c7-4930-a847-3c7848590dd7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-322c2d90-5ba8-baa6-7449-c36fdd1605db/test-blob-dde9d131-652f-15cb-c76c-d3e0e323c62c

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
etag: "0x20E31258B2CD620"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c8f369a-aaca-4410-939d-681278c12fb8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-322c2d90-5ba8-baa6-7449-c36fdd1605db/test-blob-dde9d131-652f-15cb-c76c-d3e0e323c62c?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:20 GMT
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
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
etag: "0x20E31258B2CD620"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 42c7aa21-5ffe-4578-87cc-e4a02a45ada2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-322c2d90-5ba8-baa6-7449-c36fdd1605db?restype=container

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
x-ms-request-id: 445e8670-a2cb-4e56-9cc7-f944a91217b3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-99999ff8-8d22-29f8-29f5-3241172925a4?restype=container

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
etag: "0x236F94B153F1700"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7d849485-713d-4135-a211-eda089e1758b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-99999ff8-8d22-29f8-29f5-3241172925a4/test-blob-80f2bba2-fbfc-2a3f-6216-6a3b87c5d650

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
etag: "0x1D7A70FEA180360"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91450732-7e7f-4582-8105-3bd51760d827
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-99999ff8-8d22-29f8-29f5-3241172925a4/test-blob-80f2bba2-fbfc-2a3f-6216-6a3b87c5d650

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
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x1D7A70FEA180360"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: babc1771-c318-4896-872b-74e3eb545139
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-99999ff8-8d22-29f8-29f5-3241172925a4/test-blob-80f2bba2-fbfc-2a3f-6216-6a3b87c5d650?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1D7A70FEA180360"
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
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
etag: "0x1D7A70FEA180360"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96dedce9-2cc8-470b-96ba-9afcb9de3237
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 16: DELETE /devstoreaccount1/test-container-99999ff8-8d22-29f8-29f5-3241172925a4?restype=container

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
x-ms-request-id: 3bf8093b-c03f-4c42-81de-bfab340db97c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-3e769782-6c7c-a3b9-d8c0-b3393289fd9d?restype=container

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
etag: "0x1EA28DE4767E2D0"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d75eb97-546f-4ddd-8bf7-5c712e89bb3f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-3e769782-6c7c-a3b9-d8c0-b3393289fd9d/test-blob-273e2e46-4631-fd30-5f6e-360b22bca163

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
etag: "0x25BA6685242DFA0"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 898bb773-16d7-471f-bb53-cba70709da89
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-3e769782-6c7c-a3b9-d8c0-b3393289fd9d/test-blob-273e2e46-4631-fd30-5f6e-360b22bca163?comp=pagelist

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
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
etag: "0x25BA6685242DFA0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 593c2437-abe1-4a9e-aa8c-fa2b0ccb1941
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-3e769782-6c7c-a3b9-d8c0-b3393289fd9d?restype=container

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
x-ms-request-id: de62ea1b-d602-4fc2-8492-510e768de814
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-80bee21e-e7b3-3627-024e-a73b4705f7d8?restype=container

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
etag: "0x23E8DC9511B90C0"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 87baf5d5-064a-4e35-b7b3-fa3cf29ca6d6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-80bee21e-e7b3-3627-024e-a73b4705f7d8/test-blob-58f5cd19-ae87-3c1e-6778-de0e35ad801b

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
etag: "0x1E7E8C246892CE0"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3b6273e-c152-4e0f-b150-959e322527dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-80bee21e-e7b3-3627-024e-a73b4705f7d8/test-blob-58f5cd19-ae87-3c1e-6778-de0e35ad801b?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 501b4f1e-7dca-5ee9-0608-25e29ef4b559
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E7E8C246892CE0"
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
x-ms-lease-id: 501b4f1e-7dca-5ee9-0608-25e29ef4b559
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0951d0cd-9633-4bde-b1a3-d107386c7ab9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: GET /devstoreaccount1/test-container-80bee21e-e7b3-3627-024e-a73b4705f7d8/test-blob-58f5cd19-ae87-3c1e-6778-de0e35ad801b?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 501b4f1e-7dca-5ee9-0608-25e29ef4b559
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
last-modified: Thu, 12 Nov 2026 00:51:20 GMT
etag: "0x1E7E8C246892CE0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 65015872-fe46-4183-825f-60f2537e274e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList/>
```

## Interaction 25: DELETE /devstoreaccount1/test-container-80bee21e-e7b3-3627-024e-a73b4705f7d8?restype=container

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
x-ms-request-id: e387c38f-054d-49b3-b77c-11a778d1a102
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

