## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b14334d0-8377-df3a-9554-14804c3f6d06?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).Ctor_StorageAccountAudience
now: 2026-11-12T00:46:28.9986134+00:00

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
etag: "0x22FD56333573600"
last-modified: Thu, 12 Nov 2026 00:46:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ccefd78b-e572-4c0e-8063-aa89d9bb6c80
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b14334d0-8377-df3a-9554-14804c3f6d06/test-blob-c846babf-096c-3425-57ac-70430da5e64e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
je54KpSAl/a4btPYeMxiGY8s7d6lNPQqFoiqXOK503aiS+DwR7wXT5xN+QmwYWbJ8fvxIFGPYVn6
ThML1jsT/ptcNi3sctHTFJ5CVzvrebUi4GrnyLIkEuqG9vmpDHhgOfpuUyo53X4pHQuzTQkeDtRd
6PbQLDboOCNCZXzXKQcl4R1AfSWK6ALsvaqmcMXhaOclSyOCjwzDhRsH93gBUvQEjmvr3ZGu0v/z
5G+MQcddYfyVst3kolERffcKg/GK6mu1ouFa9YtWd3kjj6udNkRTqZV7bKAWH+wZ2mCZo08OafkE
1p7mA2txPjpkwBOmc0ayt9lbDn3Kn4L1QBsrvNMqFSaymGCmbaUqCi1lsl/Zc2YZ5+x1slp7OTcb
8MNQRoJnOars9NrmDEkzMQRQZewjHMy0EdXmtWPLNl8oinzi2sOq/Xi17H+LM9qiQYBVK9RL+NT3
mzStgIRHIL17vYHNUVdApWdzbi9MKd76RHPidgqL3ZKo6z6P/X3zbcvCD3VY1e8oFYZs14qkqnJV
szwQZKqy8ODvJWYZsafqgABkihlpoW6EumGEHgYIA0DMOUpA4wkgDx+Uaa+JD2TeglaJQCBZ7BHN
jKpJLtLZ5yElTXddqZ32Q3r61Di++qr9ppyvfsIfckw4clZf1+BNuoKOY8LsgNi5k/2lXhjZDpH/
TIg1KmheBtoqJDZGlmyZrRm2MJfnECXD9evFeRQ0X2PEYIpYF5AZL13owVuhc/yQC7H+It76Fzti
cTR9mYzG9sXTgjbhQZWJnAE6/0/JIoLuNG1iNTyFyUhP9aVbm5bQIsuWzvHGr8obdYXcwBjsmU+y
j2QeY8CITbjukkvwLQFrad2EM1SRJ4WjRr+2qQkwYlxWqAwxsb4KDoA42B1/K0eEcFY7aGb6IWff
ex0A0aSvvS/umYT0ObgeeSTTWE9nJBp3Mjiy9Pr2W4ekUjagCTzciRrukJHDjzeeHO5BJ8kYd1cC
iZ9r/Mk1+D79UOaCfnDo9s41eJOJtKIAE9gLtTS+jNvenYCdcIxRuZhTxT9QHJ19WTD64/7EedT8
aunwKUMKPsMLo+DwSoVB47/6Nu9isPY6jVsDw6ncGiSsoAWjYI9VSIZ7RHi9jQ6ruP8+yUPlmbry
tZvnB3saL4m8RKl/nYIwpe1o52t+fQBMVwqqnVHhxgdLsavzbkELYRXvAUllKxt8DiNVfLJPdDib
mq9wcJE32n2iNOzXPDesXIVVjny35yvvLY4ti0pU/D1zWNORm/GEtybLw/cupdLsqSAs+eW75LOE
gEICCk8zTTeuZORjG8CU0NZV6yM0wIi8QeIpJwJXt3MgDRuuga3XmHXAgEDuiI1fmCgPZviPTw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27CC4D16AE39040"
last-modified: Thu, 12 Nov 2026 00:46:29 GMT
content-md5: rBj910KjEIHo+TWEUJ3TRA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1cef1d0e-2a7c-455a-bc1a-82875c83e1d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-b14334d0-8377-df3a-9554-14804c3f6d06?restype=container

### Request headers recorded for playback:

```
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
x-ms-request-id: 7caea7f2-fe6e-4527-8f41-6b538a4d593d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

