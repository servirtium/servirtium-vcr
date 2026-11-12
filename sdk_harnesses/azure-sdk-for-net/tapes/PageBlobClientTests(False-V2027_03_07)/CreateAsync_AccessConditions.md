## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-688f4071-21ea-888e-2e7b-229b933946a3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).CreateAsync_AccessConditions
now: 2026-11-12T00:51:14.7826849+00:00

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
etag: "0x274679C38B96FC0"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72619485-ead3-4b3a-90a3-d00695528762
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-688f4071-21ea-888e-2e7b-229b933946a3/test-blob-a7321727-30bb-5e04-9e21-2baf828acaef

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x26CABF2BFC4FAC0"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 109a60f2-d3f5-45e1-b7d4-74951a7b8594
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-688f4071-21ea-888e-2e7b-229b933946a3/test-blob-a7321727-30bb-5e04-9e21-2baf828acaef

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-blob-content-length: 1024
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
etag: "0x1D6B726F56E8C00"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca33814c-f8e8-4516-843b-a65d7451e1e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-688f4071-21ea-888e-2e7b-229b933946a3?restype=container

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
x-ms-request-id: d42ce56e-7ba6-4809-9469-84fbb7d3fc47
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-35bdaf42-4ab6-ee00-18ec-c7de5d31c359?restype=container

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
etag: "0x2068C552DC03A80"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0bd610e-e70b-4baf-bf98-e31c514fc5cc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-35bdaf42-4ab6-ee00-18ec-c7de5d31c359/test-blob-77b9e4e2-6486-404e-3b30-c9c9f6df06a3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x233BC37B0875560"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4afa258f-4b32-433c-bec0-adbaffce1d61
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-35bdaf42-4ab6-ee00-18ec-c7de5d31c359/test-blob-77b9e4e2-6486-404e-3b30-c9c9f6df06a3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:51:14 GMT
x-ms-blob-content-length: 1024
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
etag: "0x237B9DF8F29EC20"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 67befad0-3344-4f4a-9716-c91147ee268f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-35bdaf42-4ab6-ee00-18ec-c7de5d31c359?restype=container

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
x-ms-request-id: 60345001-2691-4639-b932-a2d8555bc7ec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-e35933b0-117b-ddec-1744-8ecf6826016d?restype=container

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
etag: "0x2287A09DF4EBE00"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c5cdb1c5-8e56-4012-b8c5-002522dc475e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-e35933b0-117b-ddec-1744-8ecf6826016d/test-blob-9dccd15d-53d1-de68-617c-f9868137f838

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x26366F710B7D6A0"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f731c4bf-1a1f-448e-9d81-6d3cf0076fdc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-e35933b0-117b-ddec-1744-8ecf6826016d/test-blob-9dccd15d-53d1-de68-617c-f9868137f838

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:14 GMT
x-ms-blob-content-length: 1024
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
etag: "0x1C0C74F479B8EE0"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f7cb3686-3302-43eb-970c-9296124fb74a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-e35933b0-117b-ddec-1744-8ecf6826016d?restype=container

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
x-ms-request-id: 2491a8c7-855b-4702-86a7-6b583a6728f4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-2a2e24e6-e0d7-d1de-f7dc-5f42d57ed815?restype=container

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
etag: "0x1C87104EF02C670"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a1dba2e-6f07-497c-ad5a-52e6129f87d6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-2a2e24e6-e0d7-d1de-f7dc-5f42d57ed815/test-blob-246b5b2e-6813-5dd2-ca7b-81fe17665cdf

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x1F529C3EB78F050"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 87ef2a73-6dcb-4af7-b8d9-245bf86b606e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-2a2e24e6-e0d7-d1de-f7dc-5f42d57ed815/test-blob-246b5b2e-6813-5dd2-ca7b-81fe17665cdf

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
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1F529C3EB78F050"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f261a5c1-a618-48c2-b530-02efed5ba461
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-2a2e24e6-e0d7-d1de-f7dc-5f42d57ed815/test-blob-246b5b2e-6813-5dd2-ca7b-81fe17665cdf

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1F529C3EB78F050"
x-ms-blob-content-length: 1024
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
etag: "0x260F5E502E8B7E0"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1064fd39-732f-4348-b428-cbfeeb49a852
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-2a2e24e6-e0d7-d1de-f7dc-5f42d57ed815?restype=container

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
x-ms-request-id: 840b757b-63f6-40e2-95fa-9c7f04e40bf1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-44e9564c-d7f7-7c95-f3fa-a6f4f32609e2?restype=container

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
etag: "0x22605B4370DA760"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2e5844b-b997-4ec2-8612-176c842f49c1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-44e9564c-d7f7-7c95-f3fa-a6f4f32609e2/test-blob-2557e4a4-d3cb-7d24-52d1-5f5c5edfb991

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x2478AF5996348A0"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8b2e8a83-e533-451f-8f3b-b1c518151cd8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-44e9564c-d7f7-7c95-f3fa-a6f4f32609e2/test-blob-2557e4a4-d3cb-7d24-52d1-5f5c5edfb991

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-blob-content-length: 1024
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
etag: "0x245788C0B3D4820"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c977df47-3931-4943-98ef-6a938d6af48d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-44e9564c-d7f7-7c95-f3fa-a6f4f32609e2?restype=container

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
x-ms-request-id: 3a10e3a5-f531-47d9-aac6-071a4d5be0c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-7ef57f80-9394-571d-c6ee-3018c1dd69a4?restype=container

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
etag: "0x1C3D851E6EDF2F0"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 14eb3c89-8866-49d2-864e-def35d25f43b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-7ef57f80-9394-571d-c6ee-3018c1dd69a4/test-blob-335a9e72-360e-7814-316b-f12678381e14

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x1F81880B4C92E20"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3d01e409-dcec-477c-a2c7-03bccb2e19b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-7ef57f80-9394-571d-c6ee-3018c1dd69a4/test-blob-335a9e72-360e-7814-316b-f12678381e14?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 73741441-8a30-104e-c6ff-5fdda30cbb74
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F81880B4C92E20"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-lease-id: 73741441-8a30-104e-c6ff-5fdda30cbb74
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c5bb3bc-4a3f-4596-aed4-1bf6bee7e040
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-7ef57f80-9394-571d-c6ee-3018c1dd69a4/test-blob-335a9e72-360e-7814-316b-f12678381e14

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-lease-id: 73741441-8a30-104e-c6ff-5fdda30cbb74
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CC1D12B7E3AFC0"
last-modified: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0fda4e9f-8a6d-4fa4-a124-809c3b1f6c3c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-7ef57f80-9394-571d-c6ee-3018c1dd69a4?restype=container

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
x-ms-request-id: 01fb5fb1-f1af-4bb9-895e-a891cecc8c3c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

