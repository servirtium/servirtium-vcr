## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c6e6cbf7-8854-6b0e-0acf-c2f05edabefb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(True,V2027_03_07).AppendBlockAsync_MD5
now: 2026-11-12T00:50:45.4428086+00:00

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
etag: "0x259820A2B1F8BE0"
last-modified: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e38321f8-cb5c-4839-9425-2272f527594a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c6e6cbf7-8854-6b0e-0acf-c2f05edabefb/test-blob-9c188408-827b-f9f7-e1b4-67d034d93581

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
etag: "0x1F4C7D747B5F490"
last-modified: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc69994e-b2fd-48ff-97be-42791198b443
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c6e6cbf7-8854-6b0e-0acf-c2f05edabefb/test-blob-9c188408-827b-f9f7-e1b4-67d034d93581?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-MD5: rNalYa/+v1kOCD/NKIH+YA==
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
TKkYvNwXbNWoNwHCTrUirDSH6zhQ7+p10+3lnyE9NjCaQKS0wQEe8BdD80SANasskbucrO78MVy/
oujuMc20agDRKA0QbuoyaPogDfum9Z1CuQ1moYpBnQ9H9R4ZML9KjolErg2dGyPQaUP03CNgGK1K
rHi/Tcl2kIr+yXjLGTg61X5yYUaQpJ7plTdGTMDr5txxzoRGi0C/zR6Cn1GrBVALuQal7rdmugfa
1riRL0PJE+KcWkq09Eo9spQoDQVMPo/nO5K6RvglChR8bLSILp3auYtuD6sGVsW8ZzsjPqwBjpcp
qvSxD8zqdk81N4iVtYT2TVR53S/k4OTN/d68Asxnet0cX4SpKam/hJhb0R89JrG3LfBYiLBoRMkQ
5BLuLXSDzbyqeFb/TCSqulmWiA/Fj9YsBdXbDvIttBq6mUWX0VYk2ANikq1buODMrc1X0by6S1Q7
wSieqL7JfMQ8RLPfE+kCcq8LYv0o0U31D2Al1uJdAE7wXA8uhTBEmBXpH3Ms7ZrjVF4MruhXEu/a
qZhdpKbh3kRl7rfZ1O1/xsnnP7HayCLGQYGEUVFlmUkfU9uX5vRvCEAvx/7iCoBxjOcfcNI9AOF2
l2MlXY3yAFRtuYAR6ODUeDdxqgEj5DcBEsRpRSl34VP6IE+RSqqzPMaqdFAAYKQHSvebzFXgU7Mr
I0vJibor9tctFseQQy6MvW46eG/nALEfYfox2xX9Gs2cZSZf6rMMf3540krddwfJDw/npdpDRCKZ
qSe/+RvCMPz6890HLNO7Lvnxbi1nQurzZ8wGFnTyWCADxUCLTIVitaJO4oMpweI7K3fhUtb1MmY8
zJFPvBqHCJu8BGeTL+FzjrmKGF9nyaXpyur8EAVKDpLZT4DzE/iIxtrobL16qPuWbcQcahoG1QLr
ZfIviveVcvbUueBgf3rAAlKFfl3obiLuZqNBLqR40nl+CK0GWTzjU/rGpe4bNe1JW2fIgVakAvbP
QCRTU0NSXOdm4nfMuqgWoitiIsgz0zG199I8sFEi2QW3NhgXj/+2c0kHtFJ1fKG/sd4rQuAtnGzy
nltxFqyVRAhyFYOP/hMrq65/LB/eP3sxfP5y95ckiZqrJfCjRV2dcW9KA2YdL7PL/5Yxrm9NFF7g
P5mtI0xxTYzp5Nkih2ZR4rqvlDwUFE1Kp/cB89oqXhCSwgXD704j2LXaM0vaqHgv4My1nX8hzCtM
Y3xVb1qyvoXIkMRhjfJrjLuHOuACb/5/0RMNdMCRcfbZd4zRzWlbJ3TFEhizzlLaSRDEmpJLSvN9
1p5GpErENx/OhxZlmr5SKxJrPV3lywPBMyqvzNZjji2ZU/fLFIMqANv55Ec7dK9Scm5/3w2VmA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2755AC800D6DEA0"
last-modified: Thu, 12 Nov 2026 00:50:45 GMT
content-md5: rNalYa/+v1kOCD/NKIH+YA==
x-ms-content-crc64: IiXGFPmCBOg=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d181c317-1fb1-48f3-b4f6-0be39848ff03
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:45 GMT
x-ms-blob-append-offset: 0
x-ms-blob-committed-block-count: 1
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-c6e6cbf7-8854-6b0e-0acf-c2f05edabefb?restype=container

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
x-ms-request-id: 3332b338-a9d8-40d1-84cd-14830fb2630e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

