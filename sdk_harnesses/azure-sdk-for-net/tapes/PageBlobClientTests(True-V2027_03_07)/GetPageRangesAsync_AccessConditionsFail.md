## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-9b605123-440c-2544-a549-543d2a6e4b70?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesAsync_AccessConditionsFail
now: 2026-11-12T00:51:50.9137874+00:00

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
etag: "0x255A1C429A33180"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a97e46f8-3f1a-4783-9504-02ee43d9c6b3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-9b605123-440c-2544-a549-543d2a6e4b70/test-blob-523fd92a-45a8-0018-aa41-7e6aae081a76

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
etag: "0x27087559B640960"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d7667c7-dc50-426e-b749-7dc54a889044
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-9b605123-440c-2544-a549-543d2a6e4b70/test-blob-523fd92a-45a8-0018-aa41-7e6aae081a76?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:50 GMT
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 652c3fe2-9af8-4c5c-a11b-5fd195f1326a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:50 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-9b605123-440c-2544-a549-543d2a6e4b70?restype=container

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
x-ms-request-id: 556ed76d-7f58-4ea8-b891-3fe458e8479b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-94c43759-d9e8-8aa7-554e-4dab126867b0?restype=container

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
etag: "0x24393D5B355AA40"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64191e3e-2ff5-49a4-b472-c375ceba6456
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-94c43759-d9e8-8aa7-554e-4dab126867b0/test-blob-d2fe1421-c23b-dede-3960-f0cac6da769c

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
etag: "0x1DE96B8B3697DE0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72530103-1ea9-4479-a99e-ec16220a8d36
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-94c43759-d9e8-8aa7-554e-4dab126867b0/test-blob-d2fe1421-c23b-dede-3960-f0cac6da769c?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:50 GMT
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: af65f586-5328-47a9-ae0f-8488084599d7
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:50 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-94c43759-d9e8-8aa7-554e-4dab126867b0?restype=container

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
x-ms-request-id: a26c4849-f0a4-4b84-a977-cdfab7477276
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-f3e3dd2f-b6a9-5088-32b4-fc5af76cee42?restype=container

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
etag: "0x24E417F93B76620"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a64a59b-5ca6-486c-8626-c786de69efc8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-f3e3dd2f-b6a9-5088-32b4-fc5af76cee42/test-blob-9948ceda-4809-973b-58e6-5b88e9dcc37b

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
etag: "0x2038D470E80F1C0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f4015ed7-d0e5-4434-a15a-74608b6762f0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-f3e3dd2f-b6a9-5088-32b4-fc5af76cee42/test-blob-9948ceda-4809-973b-58e6-5b88e9dcc37b?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 5020369a-ae23-4cec-8569-66ef11928d79
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:50 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-f3e3dd2f-b6a9-5088-32b4-fc5af76cee42?restype=container

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
x-ms-request-id: d989ec1f-4216-4641-94bc-a2954eacb657
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-347bb1d7-7484-6b06-8cae-9f86c584e7cc?restype=container

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
etag: "0x25F1C9B513FA7C0"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2800a977-be1c-4131-8807-5e5c233c9a7d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-347bb1d7-7484-6b06-8cae-9f86c584e7cc/test-blob-f8f0ad72-dd91-e792-a24c-9ac35aff6756

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
etag: "0x1E85E4489168710"
last-modified: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e93ca25a-f509-46d2-b859-dd19e03e68ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-347bb1d7-7484-6b06-8cae-9f86c584e7cc/test-blob-f8f0ad72-dd91-e792-a24c-9ac35aff6756

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
etag: "0x1E85E4489168710"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3c29f93-13a5-41a1-a2f1-e16d382beee9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:50 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-347bb1d7-7484-6b06-8cae-9f86c584e7cc/test-blob-f8f0ad72-dd91-e792-a24c-9ac35aff6756?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1E85E4489168710"
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: d7311154-3b0f-485b-aab7-f35ec50cb26e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:51 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-347bb1d7-7484-6b06-8cae-9f86c584e7cc?restype=container

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
x-ms-request-id: 69f8dc57-ecc8-46b8-b07c-b8c47602b09e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-458280f0-b9f0-65bd-c7dd-0d5ba8b4d1d4?restype=container

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
etag: "0x1C4B98B22BEBE70"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f118316-92b0-48d1-a825-fc3ac49e56a8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-458280f0-b9f0-65bd-c7dd-0d5ba8b4d1d4/test-blob-3b168fff-cbec-fae9-1f94-9238da43108c

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
etag: "0x1F751658FFA58A0"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6a1ee8ae-490c-4b16-8e9c-8b1582c63c09
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-458280f0-b9f0-65bd-c7dd-0d5ba8b4d1d4/test-blob-3b168fff-cbec-fae9-1f94-9238da43108c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 44954947-a101-b8db-ef8a-31b4cf363eed
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F751658FFA58A0"
last-modified: Thu, 12 Nov 2026 00:51:51 GMT
x-ms-lease-id: 44954947-a101-b8db-ef8a-31b4cf363eed
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9db5b081-48b7-48e8-bd02-484ba86a0581
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: GET /devstoreaccount1/test-container-458280f0-b9f0-65bd-c7dd-0d5ba8b4d1d4/test-blob-3b168fff-cbec-fae9-1f94-9238da43108c?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_21
x-ms-lease-id: f2739acf-66f5-92a5-1e6c-8429ac7a1487
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
x-ms-error-code: LeaseIdMismatchWithBlobOperation
x-ms-request-id: aee8a5e0-ef40-46cb-946f-722cc76a81db
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:51 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseIdMismatchWithBlobOperation</Code>
  <Message>The lease ID specified did not match the lease ID for the blob.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 21: DELETE /devstoreaccount1/test-container-458280f0-b9f0-65bd-c7dd-0d5ba8b4d1d4?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 713f1648-4a32-4a29-ba63-715e976e9ae4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

