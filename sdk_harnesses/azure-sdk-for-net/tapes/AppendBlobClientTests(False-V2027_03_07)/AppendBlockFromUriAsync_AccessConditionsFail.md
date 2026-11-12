## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1427c8c9-02bf-f261-8bfb-61f4211dc022?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).AppendBlockFromUriAsync_AccessConditionsFail
now: 2026-11-12T00:50:31.8014344+00:00

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
etag: "0x2178B57B169C320"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e351826b-ee95-44f8-9baf-1b8be4b881e7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1427c8c9-02bf-f261-8bfb-61f4211dc022/test-blob-7eea78ea-19d8-b819-b326-ee97a92ad179

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FF89167F010310"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2a32fe53-50ce-4981-a11b-676170092333
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1427c8c9-02bf-f261-8bfb-61f4211dc022/test-blob-7eea78ea-19d8-b819-b326-ee97a92ad179?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
kFhai7uxSA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27AC46154E43000"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-content-crc64: J55v0iNufaQ=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c2ee6636-6b49-43b6-8f7f-6d6049a2b29b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-1427c8c9-02bf-f261-8bfb-61f4211dc022/test-blob-6b3dd316-8701-a647-8db8-e4f54996e758

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24AFF8534473360"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4415d9bd-4e58-4a5a-8735-0aa18be03cf8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-1427c8c9-02bf-f261-8bfb-61f4211dc022/test-blob-6b3dd316-8701-a647-8db8-e4f54996e758?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
If-Modified-Since: Fri, 13 Nov 2026 00:50:31 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-1427c8c9-02bf-f261-8bfb-61f4211dc022/test-blob-7eea78ea-19d8-b819-b326-ee97a92ad179?sv=2027-03-07&se=2026-11-12T01%3A50%3A31Z&sr=b&sp=r&sig=AxFFJEb3dfNZGv4QbX4bUJtD0PmLK3k8RFcNwLcaUfE%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 1695c36a-1169-4fa4-b84d-12806cdca23d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:31 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-1427c8c9-02bf-f261-8bfb-61f4211dc022?restype=container

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
x-ms-request-id: 401dc7c9-b829-4e46-ae34-02646d6e181c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-9b3c8017-84d5-d889-7242-adce338616f7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FAB0BD34F81C70"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e999803-abd0-44f5-a16e-0d37ee60fb69
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-9b3c8017-84d5-d889-7242-adce338616f7/test-blob-f0433163-341f-6e24-1d3e-967f29ed35a4

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F55F9E971C3880"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0548316c-243a-4cff-b019-3b51b3779020
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-9b3c8017-84d5-d889-7242-adce338616f7/test-blob-f0433163-341f-6e24-1d3e-967f29ed35a4?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
v95EuH1GRw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CE7F73D528D240"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-content-crc64: b/HRtoxgtYA=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c92beecf-b641-434f-97c7-7b18edff8c74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-9b3c8017-84d5-d889-7242-adce338616f7/test-blob-f9644a91-d9be-7378-07a2-ed356a522fda

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FFC5792966C8A0"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e74bdd1-c3a0-4606-8fec-9a77284d688f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-9b3c8017-84d5-d889-7242-adce338616f7/test-blob-f9644a91-d9be-7378-07a2-ed356a522fda?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Wed, 11 Nov 2026 00:50:31 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-9b3c8017-84d5-d889-7242-adce338616f7/test-blob-f0433163-341f-6e24-1d3e-967f29ed35a4?sv=2027-03-07&se=2026-11-12T01%3A50%3A31Z&sr=b&sp=r&sig=Fau0DvwaaocvA19IAfY22heh%2F0ehgJPmAbpv51sLY%2FE%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 70a4d03d-0820-4828-a5c0-e34b212fb83c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:31 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-9b3c8017-84d5-d889-7242-adce338616f7?restype=container

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
x-ms-request-id: e9a004d7-626d-4d01-88e9-366bc16489e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-69d938d1-9491-a469-4ed4-908f9d06ed09?restype=container

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
etag: "0x229A7F65289B660"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae5a21b7-d60c-471d-adce-cfaced281743
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-69d938d1-9491-a469-4ed4-908f9d06ed09/test-blob-e8d0b98a-477d-03ee-ca0f-bbaef014cb12

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25409C003E97600"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 76596188-0609-463e-89d2-b83b356742fd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: PUT /devstoreaccount1/test-container-69d938d1-9491-a469-4ed4-908f9d06ed09/test-blob-e8d0b98a-477d-03ee-ca0f-bbaef014cb12?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
iTqybhhNiA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23E2A3A635A2500"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-content-crc64: Hjs091AGwT0=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b8d494f0-85cc-48c0-b49f-aae73956594d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-69d938d1-9491-a469-4ed4-908f9d06ed09/test-blob-abc0e0fd-49e9-d5e8-01b4-e3ac30a0c1c1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23CAF9864E15940"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 48f645cf-04ef-469f-96cd-f6deaaec3c8c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-69d938d1-9491-a469-4ed4-908f9d06ed09/test-blob-abc0e0fd-49e9-d5e8-01b4-e3ac30a0c1c1?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
If-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-69d938d1-9491-a469-4ed4-908f9d06ed09/test-blob-e8d0b98a-477d-03ee-ca0f-bbaef014cb12?sv=2027-03-07&se=2026-11-12T01%3A50%3A31Z&sr=b&sp=r&sig=jhWQsxgm9HVs8zUCX8WclHwnxc%2BLo6kSyIK5WKRZNw4%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: d2ce2c35-9d45-4928-947d-356f3b9c34fb
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:32 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 17: DELETE /devstoreaccount1/test-container-69d938d1-9491-a469-4ed4-908f9d06ed09?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92a4a86b-4d56-4a1d-8080-0d7b5981dc2a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-b04fb084-abc1-5ceb-5fd0-c580e157fdf5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D88B8B4FB58A60"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0f0285b-0934-427c-8dbb-6f68465cda63
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-b04fb084-abc1-5ceb-5fd0-c580e157fdf5/test-blob-e6fad040-64c9-d342-2a4d-f92a40c51b50

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2618DAB9E263E20"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e096f27-c5ba-4823-8770-45498f074864
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-b04fb084-abc1-5ceb-5fd0-c580e157fdf5/test-blob-e6fad040-64c9-d342-2a4d-f92a40c51b50?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
vSi0jVihng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DB7BE9E52E47A0"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-content-crc64: dyc9xm21TKg=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d3e8659-4689-45f7-bf5a-a70db93bcc5e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-b04fb084-abc1-5ceb-5fd0-c580e157fdf5/test-blob-4b63f551-8419-f468-aab6-eeee08eb3369

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2395BABE895F560"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 46b2460e-6a73-4b89-9aa5-048f4edfd168
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: HEAD /devstoreaccount1/test-container-b04fb084-abc1-5ceb-5fd0-c580e157fdf5/test-blob-4b63f551-8419-f468-aab6-eeee08eb3369

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 0
content-type: application/octet-stream
etag: "0x2395BABE895F560"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7aeffca-8809-455c-9c4b-f8e49f154f70
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 0
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-b04fb084-abc1-5ceb-5fd0-c580e157fdf5/test-blob-4b63f551-8419-f468-aab6-eeee08eb3369?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
If-None-Match: "0x2395BABE895F560"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-b04fb084-abc1-5ceb-5fd0-c580e157fdf5/test-blob-e6fad040-64c9-d342-2a4d-f92a40c51b50?sv=2027-03-07&se=2026-11-12T01%3A50%3A31Z&sr=b&sp=r&sig=MHorruiAggQUABC4x7kNYOpZD8PKU2qJBz4MkRflGRM%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: af0cfe93-1b72-478c-973a-5ca4546ddbf3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:32 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 24: DELETE /devstoreaccount1/test-container-b04fb084-abc1-5ceb-5fd0-c580e157fdf5?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
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
x-ms-request-id: fc9bb3ea-0e93-4194-993f-1a2768761bf5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-e00e11e2-c5c7-f822-1dfd-9a32e82cbd2f?restype=container

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
etag: "0x23A5BE6C68A2460"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1a357c3-908f-4bca-8472-6356ad48ac7d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-e00e11e2-c5c7-f822-1dfd-9a32e82cbd2f/test-blob-3c0667bc-7612-ca54-3e19-8f482fb73a89

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x262BEDC896F23A0"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3fd0289-a243-4743-ac98-c437688c071f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-e00e11e2-c5c7-f822-1dfd-9a32e82cbd2f/test-blob-3c0667bc-7612-ca54-3e19-8f482fb73a89?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
otdjmPRWhQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1ED65F0AB727070"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-content-crc64: USxyxBbPT8Y=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5f02891d-34aa-42ff-9fe1-f25e54a71da8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-e00e11e2-c5c7-f822-1dfd-9a32e82cbd2f/test-blob-2d6bd28c-e91b-0b35-7df9-be4b31889b75

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F06B86ACC9F0E0"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dd1ace60-32ab-426a-b76a-e3647f5ed2c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-e00e11e2-c5c7-f822-1dfd-9a32e82cbd2f/test-blob-2d6bd28c-e91b-0b35-7df9-be4b31889b75?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-e00e11e2-c5c7-f822-1dfd-9a32e82cbd2f/test-blob-3c0667bc-7612-ca54-3e19-8f482fb73a89?sv=2027-03-07&se=2026-11-12T01%3A50%3A31Z&sr=b&sp=r&sig=RnTElDp2Ec5dpurOivjf61Xfc3NHKM45PaNu07SGW9E%3D
x-ms-lease-id: f72f3518-e8fc-c83b-ab78-0685a2f17313
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 4eddf2be-706a-401b-98d8-f6d1a3807783
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:32 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 30: DELETE /devstoreaccount1/test-container-e00e11e2-c5c7-f822-1dfd-9a32e82cbd2f?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
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
x-ms-request-id: 98b39f57-5ea5-4c8f-bc2d-ef383fea20d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-78528b8b-88c1-820f-c932-5b1858e48e78?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FA46A819F06890"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f387b685-2516-4471-b02d-017cd331eb98
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-78528b8b-88c1-820f-c932-5b1858e48e78/test-blob-bffa32d2-b818-9908-b67e-1abca364c2c8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x203A41ECBFA2260"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 414b6132-7be1-4d0d-9519-75212af2333c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: PUT /devstoreaccount1/test-container-78528b8b-88c1-820f-c932-5b1858e48e78/test-blob-bffa32d2-b818-9908-b67e-1abca364c2c8?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Z03WxYgoag==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D88ECEEAEAAD40"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-content-crc64: qK/lBHpjQb8=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b69bf82f-dd5a-4ab7-b3bf-4417eaffd8c0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-78528b8b-88c1-820f-c932-5b1858e48e78/test-blob-64e9c304-8de8-b31c-986b-45e4e3b2d6ec

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_35
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26B82E9DFF8D500"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 739432dc-d5b3-4f6b-b6c9-106f07cf305b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: PUT /devstoreaccount1/test-container-78528b8b-88c1-820f-c932-5b1858e48e78/test-blob-64e9c304-8de8-b31c-986b-45e4e3b2d6ec?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_36
x-ms-blob-condition-appendpos: 1
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-78528b8b-88c1-820f-c932-5b1858e48e78/test-blob-bffa32d2-b818-9908-b67e-1abca364c2c8?sv=2027-03-07&se=2026-11-12T01%3A50%3A31Z&sr=b&sp=r&sig=4RfOVeEzvY991cCWRC04HpdWcqbn0Na8dvnmUnMvB9E%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: c9d6db90-bdfa-4f0d-bf4d-e000d13ec19d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:32 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 36: DELETE /devstoreaccount1/test-container-78528b8b-88c1-820f-c932-5b1858e48e78?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_37
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
x-ms-request-id: 244180ef-83ae-406d-ac8d-abee395f8227
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 37: PUT /devstoreaccount1/test-container-457f2063-c8c6-caf6-c198-a59a3e27ea13?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_38
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FADB2C0E964B70"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b64257f8-3a9f-4d5e-b495-49777966ed2e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 38: PUT /devstoreaccount1/test-container-457f2063-c8c6-caf6-c198-a59a3e27ea13/test-blob-26471644-72ad-b623-04a7-2d5982e57c01

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_39
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23D97583D4144C0"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9396d9ed-311c-4327-9a70-b6d9ed746a72
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 39: PUT /devstoreaccount1/test-container-457f2063-c8c6-caf6-c198-a59a3e27ea13/test-blob-26471644-72ad-b623-04a7-2d5982e57c01?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_40
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
pYTRAZ/DgQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223C0B1F488A0E0"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-content-crc64: 3pTgkFrYmIE=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: df857dae-26eb-49b5-8b98-48638d4a7aa9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 40: PUT /devstoreaccount1/test-container-457f2063-c8c6-caf6-c198-a59a3e27ea13/test-blob-a31fcc3c-e84f-7481-7181-313f5ee0d44d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_41
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25F0AA5C0E56E00"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 097f585d-801c-4627-a696-e87558cfe1ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 41: PUT /devstoreaccount1/test-container-457f2063-c8c6-caf6-c198-a59a3e27ea13/test-blob-a31fcc3c-e84f-7481-7181-313f5ee0d44d?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_42
x-ms-blob-condition-maxsize: 1
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-457f2063-c8c6-caf6-c198-a59a3e27ea13/test-blob-26471644-72ad-b623-04a7-2d5982e57c01?sv=2027-03-07&se=2026-11-12T01%3A50%3A31Z&sr=b&sp=r&sig=Zz9krQE6LPnCExqVjfkky9%2B84g1zYYpYJ0xsIOw6xzs%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: ef1efefa-2f7b-49de-8977-ac335f564ce5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:32 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 42: DELETE /devstoreaccount1/test-container-457f2063-c8c6-caf6-c198-a59a3e27ea13?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_43
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
x-ms-request-id: eec7e4e0-da51-4936-9f6c-2fe3c06395c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 43: PUT /devstoreaccount1/test-container-2f3a9f9f-a17f-5749-9de2-a1f210cd672e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_44
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x249B295AA933640"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64b4906f-0c52-4aa3-bbc7-761c7f1485e4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 44: PUT /devstoreaccount1/test-container-2f3a9f9f-a17f-5749-9de2-a1f210cd672e/test-blob-b5d2945c-402b-57e4-23d3-dfbae3aa4d82

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_45
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2564EC16D2C06C0"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d5889ff-6202-448a-b756-20aeccec37c7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 45: PUT /devstoreaccount1/test-container-2f3a9f9f-a17f-5749-9de2-a1f210cd672e/test-blob-b5d2945c-402b-57e4-23d3-dfbae3aa4d82?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_46
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KIKVNX8gMg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2335A4AB6933D40"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-content-crc64: 9Na/WoFCiUM=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72dd22de-e77e-4442-b6b0-c717ae05ad51
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 46: PUT /devstoreaccount1/test-container-2f3a9f9f-a17f-5749-9de2-a1f210cd672e/test-blob-05c7829a-476c-638e-a319-0317db4a9fce

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_47
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C8174121BE95F0"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f6857c2-6b15-4b88-9604-18b76b605380
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 47: PUT /devstoreaccount1/test-container-2f3a9f9f-a17f-5749-9de2-a1f210cd672e/test-blob-05c7829a-476c-638e-a319-0317db4a9fce?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_48
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-2f3a9f9f-a17f-5749-9de2-a1f210cd672e/test-blob-b5d2945c-402b-57e4-23d3-dfbae3aa4d82?sv=2027-03-07&se=2026-11-12T01%3A50%3A31Z&sr=b&sp=r&sig=pdnqlyC%2BAhSdEDBdNPtyPrktVkesIQmI1y4WlWD%2F9CM%3D
x-ms-return-client-request-id: true
x-ms-source-if-modified-since: Fri, 13 Nov 2026 00:50:31 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 11c7d602-07cd-4dd1-bf14-1a2dcd1cacf1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:32 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 48: DELETE /devstoreaccount1/test-container-2f3a9f9f-a17f-5749-9de2-a1f210cd672e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_49
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
x-ms-request-id: edb52e2a-9d05-4842-86b5-5834d7870d29
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 49: PUT /devstoreaccount1/test-container-9ade6c7e-ebad-171d-b98b-7d1f30138484?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_50
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C67573E5A75110"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 61a411a4-b00c-4f04-8fd1-d23d8dedeaed
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 50: PUT /devstoreaccount1/test-container-9ade6c7e-ebad-171d-b98b-7d1f30138484/test-blob-126e0614-3c12-7bcd-d933-113c76cbb2d5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_51
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C68C4D1EF34D60"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3e147b06-44f5-4e84-a777-aba05527b11e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 51: PUT /devstoreaccount1/test-container-9ade6c7e-ebad-171d-b98b-7d1f30138484/test-blob-126e0614-3c12-7bcd-d933-113c76cbb2d5?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_52
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
2wD7srcbxQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21F526DC6DFC3C0"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-content-crc64: sTk8fvQp1nI=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2063a5a-4bca-4b13-8cee-87236d46696d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 52: PUT /devstoreaccount1/test-container-9ade6c7e-ebad-171d-b98b-7d1f30138484/test-blob-4cb065ae-c9e1-326e-8f95-7f3bdb4fec16

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_53
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263226A72568740"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 07e014c7-85bb-4d2e-bbcc-4232b3839a7d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 53: PUT /devstoreaccount1/test-container-9ade6c7e-ebad-171d-b98b-7d1f30138484/test-blob-4cb065ae-c9e1-326e-8f95-7f3bdb4fec16?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_54
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-9ade6c7e-ebad-171d-b98b-7d1f30138484/test-blob-126e0614-3c12-7bcd-d933-113c76cbb2d5?sv=2027-03-07&se=2026-11-12T01%3A50%3A31Z&sr=b&sp=r&sig=o5cVBC%2BciW7Q4TWMeMRUdAQEx7CnDd%2BC%2FaovzJHW%2BtI%3D
x-ms-return-client-request-id: true
x-ms-source-if-unmodified-since: Wed, 11 Nov 2026 00:50:31 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 1a66f82b-3d2f-4d9f-9282-b6a1d974f76a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:32 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 54: DELETE /devstoreaccount1/test-container-9ade6c7e-ebad-171d-b98b-7d1f30138484?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_55
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
x-ms-request-id: b3547e32-420e-439d-b4e3-ff1cbd0d3a50
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 55: PUT /devstoreaccount1/test-container-94caa763-d93e-da0b-ec0f-a4ec1fd70db8?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_56
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2496FABCC904980"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f7642d37-154b-4dcb-a2c3-a8fe6561e4c9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 56: PUT /devstoreaccount1/test-container-94caa763-d93e-da0b-ec0f-a4ec1fd70db8/test-blob-823b974b-bd7c-a091-8946-fbd8ce011e96

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_57
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FA5072EA6FE500"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 469cb346-7f87-4624-bd83-49dd0ca2ae65
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 57: PUT /devstoreaccount1/test-container-94caa763-d93e-da0b-ec0f-a4ec1fd70db8/test-blob-823b974b-bd7c-a091-8946-fbd8ce011e96?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_58
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KCtMTQfP4w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24392323CB9C840"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-content-crc64: 2AZUhwdm0Kc=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ec9fd76-7118-4fa5-9b6c-159aa7b6c2a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 58: PUT /devstoreaccount1/test-container-94caa763-d93e-da0b-ec0f-a4ec1fd70db8/test-blob-5fd559d5-24d1-1382-b888-c613af029f0f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_59
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EFC85282A69AE0"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da1b5bd5-f3f6-4902-8bb6-ef098ee64e3d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 59: PUT /devstoreaccount1/test-container-94caa763-d93e-da0b-ec0f-a4ec1fd70db8/test-blob-5fd559d5-24d1-1382-b888-c613af029f0f?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_60
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-94caa763-d93e-da0b-ec0f-a4ec1fd70db8/test-blob-823b974b-bd7c-a091-8946-fbd8ce011e96?sv=2027-03-07&se=2026-11-12T01%3A50%3A31Z&sr=b&sp=r&sig=yT6bqmeOKjAP3kwIUnuf30pv16toirddVxVcMRtdMI4%3D
x-ms-return-client-request-id: true
x-ms-source-if-match: "garbage"
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 9e513428-92e7-4a61-9856-29a0ced781be
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:32 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 60: DELETE /devstoreaccount1/test-container-94caa763-d93e-da0b-ec0f-a4ec1fd70db8?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_61
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
x-ms-request-id: ec5f292e-a2b9-4cce-a5a0-9200b0a10baf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 61: PUT /devstoreaccount1/test-container-fd7ec394-5602-1d8f-5b6f-1aa523fe3eb7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_62
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2320A1790F103C0"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8e41981c-2ade-48a1-8272-41de02528eef
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 62: PUT /devstoreaccount1/test-container-fd7ec394-5602-1d8f-5b6f-1aa523fe3eb7/test-blob-c9271426-f6f4-f17d-86a7-ec440b822093

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_63
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D90AD7D9ECFEC0"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8b287313-8677-4350-87f9-a0afd025f774
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 63: PUT /devstoreaccount1/test-container-fd7ec394-5602-1d8f-5b6f-1aa523fe3eb7/test-blob-c9271426-f6f4-f17d-86a7-ec440b822093?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_64
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
CpV29DFvEg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26C5BF981FAA420"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-content-crc64: XuFn/2SfhhY=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6d694c0-5305-4b59-ba31-35287c81ffc4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 64: PUT /devstoreaccount1/test-container-fd7ec394-5602-1d8f-5b6f-1aa523fe3eb7/test-blob-04b8ca7f-0962-f0dd-ba49-0f091a8cabdd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_65
If-None-Match: *
x-ms-blob-type: AppendBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21EE1D17665E880"
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16b89e4f-695d-4645-83b4-5ba3c4ac1fe7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 65: HEAD /devstoreaccount1/test-container-fd7ec394-5602-1d8f-5b6f-1aa523fe3eb7/test-blob-c9271426-f6f4-f17d-86a7-ec440b822093

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_66
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:32 GMT
x-ms-blob-type: AppendBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 7
content-type: application/octet-stream
etag: "0x26C5BF981FAA420"
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e2b76163-ec3d-4b6c-966d-8cc7b641b657
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
accept-ranges: bytes
x-ms-blob-committed-block-count: 1
x-ms-server-encrypted: true
x-ms-blob-sealed: false
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 66: PUT /devstoreaccount1/test-container-fd7ec394-5602-1d8f-5b6f-1aa523fe3eb7/test-blob-04b8ca7f-0962-f0dd-ba49-0f091a8cabdd?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_67
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-fd7ec394-5602-1d8f-5b6f-1aa523fe3eb7/test-blob-c9271426-f6f4-f17d-86a7-ec440b822093?sv=2027-03-07&se=2026-11-12T01%3A50%3A31Z&sr=b&sp=r&sig=rzD%2BrdmsFikMD3HRqXm5QRHdyQD5G2gphoZn96a18lk%3D
x-ms-return-client-request-id: true
x-ms-source-if-none-match: 0x26C5BF981FAA420
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 8046f696-b23d-4d1e-9d50-c21954335cb0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:32 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 67: DELETE /devstoreaccount1/test-container-fd7ec394-5602-1d8f-5b6f-1aa523fe3eb7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_68
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
x-ms-request-id: 7cc39b29-a2ea-4861-9c68-e86959af72d0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:32 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

