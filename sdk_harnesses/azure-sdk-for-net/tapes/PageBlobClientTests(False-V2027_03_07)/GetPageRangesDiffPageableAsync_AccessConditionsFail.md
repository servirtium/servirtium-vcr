## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8a56c849-1419-7295-9e11-36514aab5a77?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesDiffPageableAsync_AccessConditionsFail
now: 2026-11-12T00:51:24.3079238+00:00

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
etag: "0x1D5EB25E89851E0"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b730bc65-3a02-4fc4-b703-c8e2226791cc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8a56c849-1419-7295-9e11-36514aab5a77/test-blob-d39ac126-74e5-110b-e38c-0129ef4aad85

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
etag: "0x236A952DEF15200"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2eb1366c-2166-4a5a-af06-8505cf590515
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-8a56c849-1419-7295-9e11-36514aab5a77/test-blob-d39ac126-74e5-110b-e38c-0129ef4aad85?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:51:24 GMT
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
x-ms-request-id: ee1d9088-f765-4427-a077-2d9c4826ccb4
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:24 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-8a56c849-1419-7295-9e11-36514aab5a77?restype=container

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
x-ms-request-id: dc993b81-8ad8-4d9c-9f14-280f93a1546e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-aead6dc7-f47b-dc83-dfc8-a86890f6097c?restype=container

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
etag: "0x232C769A12942E0"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4c4c53a9-bcd8-4412-8798-430eb45727d7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-aead6dc7-f47b-dc83-dfc8-a86890f6097c/test-blob-694c6f05-c181-d5a3-bd44-a68c136b8254

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
etag: "0x279D479B278D9C0"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4e656310-029a-4932-b4b5-fe97ad002980
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-aead6dc7-f47b-dc83-dfc8-a86890f6097c/test-blob-694c6f05-c181-d5a3-bd44-a68c136b8254?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:24 GMT
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
x-ms-request-id: 6d6f6561-ed78-4bce-9b84-20072f634f4b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:24 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-aead6dc7-f47b-dc83-dfc8-a86890f6097c?restype=container

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
x-ms-request-id: f65f5876-69f3-4a32-96e5-b6384dce68d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-dc89b163-abfe-31fb-3ebd-f31ccba381ec?restype=container

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
etag: "0x234216797B53780"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ebfe249-c889-4b49-b427-a9f2dae8d319
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-dc89b163-abfe-31fb-3ebd-f31ccba381ec/test-blob-7f248483-44fd-0603-cad7-f1364df7c974

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
etag: "0x21AB334916BE6E0"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d78f33d0-1872-415a-b598-0c7b6072073f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-dc89b163-abfe-31fb-3ebd-f31ccba381ec/test-blob-7f248483-44fd-0603-cad7-f1364df7c974?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
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
x-ms-request-id: 95a79ed5-a04d-4ddb-bae5-a883dcc0a9e9
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:24 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-dc89b163-abfe-31fb-3ebd-f31ccba381ec?restype=container

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
x-ms-request-id: 7e01f05b-94e8-4d60-b0b6-0169d4190669
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-df045446-2c6d-5a7e-731b-2bc4cd86091a?restype=container

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
etag: "0x220700A1BA3EB60"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fbf41735-c02d-406f-81af-188a7c30c7b0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-df045446-2c6d-5a7e-731b-2bc4cd86091a/test-blob-8f08bac3-0247-1e56-ad83-1126b9c5e447

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
etag: "0x215DC7D11D6AE00"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aecee98e-c907-48c9-b906-26470c910bd8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-df045446-2c6d-5a7e-731b-2bc4cd86091a/test-blob-8f08bac3-0247-1e56-ad83-1126b9c5e447

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
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x215DC7D11D6AE00"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 38780fe5-793c-401d-a655-6f24a71ad383
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-df045446-2c6d-5a7e-731b-2bc4cd86091a/test-blob-8f08bac3-0247-1e56-ad83-1126b9c5e447?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x215DC7D11D6AE00"
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
x-ms-request-id: d113e332-c49c-41db-8f5d-cd28fcacfb33
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:24 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-df045446-2c6d-5a7e-731b-2bc4cd86091a?restype=container

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
x-ms-request-id: 4082bce4-28a2-4a08-a2cb-9d63b60f9eb3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-77d67ff3-a29e-567f-05ca-0ce2183f3844?restype=container

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
etag: "0x2340C302BBD9DC0"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb086be0-a974-497b-aca3-2023be452146
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-77d67ff3-a29e-567f-05ca-0ce2183f3844/test-blob-9373d7ce-3aee-432c-fde5-31ea1b58a0ae

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
etag: "0x203B95733D7C800"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d15847f-3748-47d5-a743-2801b4fc9d95
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-77d67ff3-a29e-567f-05ca-0ce2183f3844/test-blob-9373d7ce-3aee-432c-fde5-31ea1b58a0ae?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 4ed0e436-91b0-207b-3bb2-897df674066d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x203B95733D7C800"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-lease-id: 4ed0e436-91b0-207b-3bb2-897df674066d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 06d4910d-a676-4a4e-9bb7-0869eebd13c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: GET /devstoreaccount1/test-container-77d67ff3-a29e-567f-05ca-0ce2183f3844/test-blob-9373d7ce-3aee-432c-fde5-31ea1b58a0ae?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_21
x-ms-lease-id: 463b74f1-c779-5347-285f-e6732b1b9488
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
x-ms-request-id: b1fb447c-4220-4f53-8a2e-bb59bfe1a4d3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:24 GMT
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

## Interaction 21: DELETE /devstoreaccount1/test-container-77d67ff3-a29e-567f-05ca-0ce2183f3844?restype=container

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
x-ms-request-id: bc78d553-97aa-40ec-9c49-7d0030713139
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

