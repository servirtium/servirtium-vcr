## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0eb19bf5-9c2b-d8a6-f9cf-c580b1bca40c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_Metadata
now: 2026-11-12T00:48:30.5637770+00:00

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
etag: "0x207D11899D368E0"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 68ca6fc7-41cb-4487-8cf3-3b6c37204024
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0eb19bf5-9c2b-d8a6-f9cf-c580b1bca40c/test-blob-116a7a0a-9012-5d6b-f6fa-9216757b4c51

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
n9WCbaAhJFbnmjewo9ms+ll90P3pOpBlL1QXMQqPYn2Cc+DcOjds6VYTKXhYu7odTZi8+KtPZ2VF
HD1MCfJMVzi6Li/40MAhEeam1hEXDXSZ+uNx0mrSMgt7lh35H99jxtFAno2KJHzYm+bEqJFTLQ/J
sg4P2oXN5/sjfDqiKPEHQw8/127nDtZnmTeDDop6J2gOL2zQVOtMcreSZ6dBNnL0vWWBFFag4qQ4
p0FNSthwqVTSk/iENu4j8mS3VacuJWPFjlEk+BMRbk3ImKyq/yjeIb5Tb6J5b4Z2XiLx6I39CYLd
h7uHTLBBwCWqvJ5BefI82TPp27XASx/KrZrwIIXAy44qzHdtVtUNEa59z7PoNeUvtQ9ZFC7MHDyb
vJ4WUKCf6vAPF6x6z4Je28kGQ3xr4ni0wGp2ZrdfXa870Zo39sAO3uTC2B05teaM+jhlxdnAMNkl
YY81KIM5r7r8P/3oJ+QI+GWXqApbewuE6mt++pfWe6DAEZUx2bVgiShjPHXopNNTXM10KIfPyuWD
sD4XurUiJcRcJxVP1x+vNx/h9z6WnEWYKp7KYVIZ8UevrSh3SM5zQBaxi329BISuxPFn7dKn7RP4
f48WWMRxQzXOoCr2OO5Rbrcn5BDI2yYZHJxhsQN1CL8Ufsk+XOhSP0hH72Nat4wDFn8bfwkDMKNp
/DwnEJExWZhr4bokExHO1aTIgOzCv2QQXpuDWYm2EU4l1GCsKy+2FZXL79bS3gNuTKlkOq+3pj3Y
FrL1rf8OtM9s/j6xIql1EWtW9s+NPX+YFQ3fUdeebi4i1BR9wWeWvDoGZt/FvSoA7yhEYa9tStky
XZjxL2L4zZAPjk2V91ADvzmVhtef0lfi32KuWgx+tIk7S2POpI3XDphPtS7ca/fYQKJ22MQBkopB
D1AASXODkdrEWaztNBqsvXc+UB0oBnNq1hlqCNvFOrjYjZU818QlyyNUGBFL6wyHyRtMwkJtGAnc
lXNZGYn//h/0FKaEb+azGIT51O1iH+oM4j7AeXd1a3WMYEJQzLGaVRryV9ZlAlk0mam9c0QbenWJ
TDZKPoSofqgx9w+jYkzTX3/ScMgTp9/ki+DNt/cwcebMx397TxaVStguNApKkTZd6hTESAmtdaVW
ZbOk2sewAIYp15rNVw9pPSbv5XLUmvqpcMzjbCjcH1LZJOlj8W8RfTOEIbmcj5IFWwvjvY8zgsu4
+mr6zZReTbhI8zMlBUu23mg/UHlADeA53RAc+GHCpqEeqvYFFq+eJdQBU5xf4Fa/Ld8n8zFSd+2K
wO+EQVRWhU2RBltUsce4oCulP7lE2v26XcuCm7JwyzIJe1a/GuR/qs5Ozdn6a3sXblMGrTgzRQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27CEDA149400540"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
content-md5: LILHxCSwe/i6ajVfLPJmZQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f29ffe83-0685-4a00-817d-09143a2f8d85
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-0eb19bf5-9c2b-d8a6-f9cf-c580b1bca40c/test-blob-e4c9f2e5-d489-9aea-213b-284b3671f985

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-0eb19bf5-9c2b-d8a6-f9cf-c580b1bca40c/test-blob-116a7a0a-9012-5d6b-f6fa-9216757b4c51
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
etag: "0x266F25D20B102C0"
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8c5982ef-2b91-4e8c-a3b3-3db164f6c5c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-copy-id: 2a24bb10-441c-411d-b7a9-d3e1fd9a9406
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-0eb19bf5-9c2b-d8a6-f9cf-c580b1bca40c/test-blob-e4c9f2e5-d489-9aea-213b-284b3671f985

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
last-modified: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:48:30 GMT
x-ms-copy-id: 2a24bb10-441c-411d-b7a9-d3e1fd9a9406
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-0eb19bf5-9c2b-d8a6-f9cf-c580b1bca40c/test-blob-116a7a0a-9012-5d6b-f6fa-9216757b4c51
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x266F25D20B102C0"
content-md5: LILHxCSwe/i6ajVfLPJmZQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8a4682b-9578-4342-b4c9-78bbcf381dea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-0eb19bf5-9c2b-d8a6-f9cf-c580b1bca40c?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b24d355-22d2-4b64-840d-66e27a40ee42
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

