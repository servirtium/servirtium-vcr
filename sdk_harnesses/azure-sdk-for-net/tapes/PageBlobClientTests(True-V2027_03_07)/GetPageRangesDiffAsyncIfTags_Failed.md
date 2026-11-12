## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-da66c532-f93a-f127-e4ea-e4a888d0da64?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesDiffAsyncIfTags_Failed
now: 2026-11-12T00:51:54.0919701+00:00

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
etag: "0x1C6B0361DA9FDC0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ef27968-5671-457c-9d22-cc575eabd6aa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-da66c532-f93a-f127-e4ea-e4a888d0da64/test-blob-4cbf94f7-3a44-cda3-e427-421f6caa9aa1

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
etag: "0x1CB9A833D8B2E70"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93a1aabc-7dd2-4e30-adfc-d94acbc2404e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-da66c532-f93a-f127-e4ea-e4a888d0da64/test-blob-4cbf94f7-3a44-cda3-e427-421f6caa9aa1?comp=page

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
H5QCLim9+bxh/XNvY9cxXQ224cJlf1v4IZj2ErcIhDpQQ4jzzaw7OpsC6kfGNGoM9uUStsnXPKA4
CgyQxuYFWXg5HyBOPY9he6YmYpUUMe0u6RzR9s5weAbnusOfqnO1/ZDOjRRKvrhVsDoisdoKJNke
Yd3KM2KqyKYZZ4LMwdAzcWQERqPY4ytjfEWTTccr3JbqgEmV6souI8VuMFY2ie9q70B1Bt01RX2y
Z7YdFnre7Yrr4kCHnYaa1iLearPULPNWKV2Htda4tDrL44MTEA1KkELMSqau4lK52zC7VtvK3jrD
x+0cVzezMi0FvLkDhsUVlNpwB+FMp0YLzdqm/V5fAAVIUEkfLTgKGRd5qCaYtlVqpsEBWdZYdh+m
EYldDTXOpru0ujZ79WehZe7K0/8gcheFO1edXaYu79kqeBuurQviqgFq5Pse7rBZYPPojqMfhp9y
2NHdMUkVhspcUXxM8rji5yj9tY0bZkymQ/2yRmE2CvJ8O9Q5BHm4VV4xwp00DW06Bad7ItARV3KF
N+5LYj9pJkaK0LbkqOKuRGAv6aSucjWQd0C5u+ghauRitM2LbfMex5xXqj22VlzEzN1w4m3N1sS4
u+r/r2pdaGXSgfQUI9dtECEIV8j42SHj9e8LsIh2lN4I07EJHhgx+UHY49Vor6gFA9FLxX78v+HJ
G7p7UbjcXOwVDFAlZPIJ1l2HIPZMe0VGBa23Ks9fDBPPQANetaiJ+4boUqNY4J/fQu4hdZ/rfKB0
NUwKJDIdtgA8VSTuqyG1/SRvYymh7SUN2OjgPpZ05MNj6YBbftZUypyjG4p78JfNa3d6fBl300cm
/ExKPHdpyHFgi8GgWX9OGpmM/dKbkuhQE9Me+Wep7BY5NIGKCo0lOlMYGmTVLBH4K2KA6tV1i2pj
+SmjSs4Kt5+rZiX+xA8LZ8N+g3iDe+bBJs0FKQFAxKkXJhFkge+EDWPEKcXs+WdSdYIR9gfx331C
4iMABY2daqJ75p7+pubU+XUUvlEg1SxmsrR/L86hJUaTIp/LhAjVJ78jcBPJVM6bPfyS3SArIQz3
mlPYHjvT2sFXaoNHCXVtP5eS/WQZnF7l4/LRD0glZwCS1Om1/QmDT5ZRcelKUzSGJJ2JmSSn3f30
8zpIAsp4MgODtTSMuEGODq3Nxyp0mo++SuqqnM7c6vfswAnOOk3M2T/mx57/+mtc+op32RXSf1iq
irffzpU0pso9n/g4v9RfAe7rjtLxvlB/TqFEZRDhGUCxJLCW7AqpsSHUwVpzIzq2F9cm5/CFuctn
YH/08EG5XIa3hpskyRXjQd2xHf31CypmjU04ujJPK2vkL4uKtcDfGmXUu52fkk7CQqUT05vOcQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23D237A0895F140"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-content-crc64: yM9xqzmI+FA=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f97ac0cc-9498-4a86-9ee0-f0f154b22828
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-da66c532-f93a-f127-e4ea-e4a888d0da64/test-blob-4cbf94f7-3a44-cda3-e427-421f6caa9aa1?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:54.1620000Z
etag: "0x23D237A0895F140"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e402590e-100e-4c19-8922-19c88175712c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-da66c532-f93a-f127-e4ea-e4a888d0da64/test-blob-4cbf94f7-3a44-cda3-e427-421f6caa9aa1?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
H5QCLim9+bxh/XNvY9cxXQ224cJlf1v4IZj2ErcIhDpQQ4jzzaw7OpsC6kfGNGoM9uUStsnXPKA4
CgyQxuYFWXg5HyBOPY9he6YmYpUUMe0u6RzR9s5weAbnusOfqnO1/ZDOjRRKvrhVsDoisdoKJNke
Yd3KM2KqyKYZZ4LMwdAzcWQERqPY4ytjfEWTTccr3JbqgEmV6souI8VuMFY2ie9q70B1Bt01RX2y
Z7YdFnre7Yrr4kCHnYaa1iLearPULPNWKV2Htda4tDrL44MTEA1KkELMSqau4lK52zC7VtvK3jrD
x+0cVzezMi0FvLkDhsUVlNpwB+FMp0YLzdqm/V5fAAVIUEkfLTgKGRd5qCaYtlVqpsEBWdZYdh+m
EYldDTXOpru0ujZ79WehZe7K0/8gcheFO1edXaYu79kqeBuurQviqgFq5Pse7rBZYPPojqMfhp9y
2NHdMUkVhspcUXxM8rji5yj9tY0bZkymQ/2yRmE2CvJ8O9Q5BHm4VV4xwp00DW06Bad7ItARV3KF
N+5LYj9pJkaK0LbkqOKuRGAv6aSucjWQd0C5u+ghauRitM2LbfMex5xXqj22VlzEzN1w4m3N1sS4
u+r/r2pdaGXSgfQUI9dtECEIV8j42SHj9e8LsIh2lN4I07EJHhgx+UHY49Vor6gFA9FLxX78v+HJ
G7p7UbjcXOwVDFAlZPIJ1l2HIPZMe0VGBa23Ks9fDBPPQANetaiJ+4boUqNY4J/fQu4hdZ/rfKB0
NUwKJDIdtgA8VSTuqyG1/SRvYymh7SUN2OjgPpZ05MNj6YBbftZUypyjG4p78JfNa3d6fBl300cm
/ExKPHdpyHFgi8GgWX9OGpmM/dKbkuhQE9Me+Wep7BY5NIGKCo0lOlMYGmTVLBH4K2KA6tV1i2pj
+SmjSs4Kt5+rZiX+xA8LZ8N+g3iDe+bBJs0FKQFAxKkXJhFkge+EDWPEKcXs+WdSdYIR9gfx331C
4iMABY2daqJ75p7+pubU+XUUvlEg1SxmsrR/L86hJUaTIp/LhAjVJ78jcBPJVM6bPfyS3SArIQz3
mlPYHjvT2sFXaoNHCXVtP5eS/WQZnF7l4/LRD0glZwCS1Om1/QmDT5ZRcelKUzSGJJ2JmSSn3f30
8zpIAsp4MgODtTSMuEGODq3Nxyp0mo++SuqqnM7c6vfswAnOOk3M2T/mx57/+mtc+op32RXSf1iq
irffzpU0pso9n/g4v9RfAe7rjtLxvlB/TqFEZRDhGUCxJLCW7AqpsSHUwVpzIzq2F9cm5/CFuctn
YH/08EG5XIa3hpskyRXjQd2xHf31CypmjU04ujJPK2vkL4uKtcDfGmXUu52fkk7CQqUT05vOcQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F20046FD1012F0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-content-crc64: yM9xqzmI+FA=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13c4bf86-8a89-4c55-833c-e02a82e085e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-da66c532-f93a-f127-e4ea-e4a888d0da64/test-blob-4cbf94f7-3a44-cda3-e427-421f6caa9aa1?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:54.2150000Z
etag: "0x1F20046FD1012F0"
last-modified: Thu, 12 Nov 2026 00:51:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8a825370-020b-4187-9871-d7b4f90bba7a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-da66c532-f93a-f127-e4ea-e4a888d0da64/test-blob-4cbf94f7-3a44-cda3-e427-421f6caa9aa1?comp=pagelist&snapshot=2026-11-12T00%3A51%3A54.2150000Z&prevsnapshot=2026-11-12T00%3A51%3A54.1620000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_7
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 89faf255-f432-4c3b-b90b-273cfba00c4f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:54 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-da66c532-f93a-f127-e4ea-e4a888d0da64?restype=container

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
x-ms-request-id: 2bb8cd9e-c0b1-4ee8-b0b6-5608a2ccc172
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

