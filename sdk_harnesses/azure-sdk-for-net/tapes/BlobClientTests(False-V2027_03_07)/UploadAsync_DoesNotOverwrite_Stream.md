## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a109f52c-374d-7b76-37f6-42a2e1c13453?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_DoesNotOverwrite_Stream
now: 2026-11-12T00:48:57.4278451+00:00

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
etag: "0x27CAC59D80521A0"
last-modified: Thu, 12 Nov 2026 00:48:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f94f4ddf-7428-4895-a9eb-dd5900998b5b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a109f52c-374d-7b76-37f6-42a2e1c13453/test-blob-6d75d59a-a01d-22d4-d8b0-f1c0fc56cd59

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
82oWSjaV7X2CrZ9TrntRHrRMrbVYH5CLIOfJnEW2fuEp6K92q+odBej36m8AgXRdX9ILsKgXAdPa
iilPzFA3zC++KsXM2nPKL6jNYDQhip9zbD1zqs44EefbnCDAzjiYwB4/QlaukIRfQYEASaGfuACK
3GASxCFhhhje8D1SCWBvNZ8V4UdIxNu4E2lMN8dFPOQgNvLYhfz83rw9z6BHDDcgkRMBide4QReE
WrC4FE5QmLRZMtNulrCjGQKLCvQ7cQcyLKW0RLIMZ/TaUypLRMpt7Dfr7dljsfpjXXDULTYiSemo
hueonFQBTMvelEOFWNQ4HR29T4MtznurUOZCODq+uAlBor7ixVDi6qEOhR233QWbmw8ZZPpme7ds
/UxuvhSQINs5RLUVVljN22XiH0ld83Pgp5wqpFQP2ycHdccEdCuMfWRBfZlQhUW3S4iUhFxtDgnZ
jRd4ZnuHKmmODuCQyWc5VaHkG3bZkCFXclnLelfLmWa9KuYTFBfpulMwwndkJoEhWi67ifKT//32
IPMhu68Sw3V5056BJkGJ+2Eiqc6q8kvXqiAoEA90KSvoHfMkx/6kHv4B6lPjoDTsMY6RcFUvTC2n
ShGO6bJlBalymAlOZTNifovPqAj49AnrPN6B4rnWuNDFfH3tFTRMnOSpcAcrnsxaL/LJYKQlrlYH
o63U4yPwnN84iem2dWlWgwwkT4MCwJ4SJ7PHDFgsn80n5XKHd7jBudMn8hTjo7mIc92XAV/SBeIO
wrxvKZCHDOkbj5D2zgtUYpWv286JL4P5Ppl7lJ5tVN+PeLX8UZBDn+YrxxQpkaTRQ57JIioUhZI4
der3DHdKrTqwZ1ZWVxEFbDvnXWdv0Kz1qVEAozK1e/Iiw9ulTJNv4RnaeSpOe+uMxLXuLCgryaU+
AmIlSQoH+utjM5Q1YB+oeHxOlVaBpi1ldN98x07K9/o2ZkowSZcP0n8+6khXV2OWRrSs3TNOvFs1
wNUqijKdmDyZ//nVdy/kPsLXQrvlDhx75oCaHRrG56rv+4jC5EdMoVILvVdqwM6FyJ5wd3qfT7K4
rqSxA3oh0xhP5nymIll7iqFp2VHFESayFVV8VW8wT6zWCTajmp7X6uk/G9pS3qZE9ezYNXVg8519
/+4lpX2oHpbQzxgj2PACku9nhfZLXzavN2CCVxo3dRaZJZqwskRslvxEgg+NIR381aOF+W2mMqC3
dW4dJcd7mVkBirJVUuCq+u/6B90nIRZDhoF3sXup8vP6+DzWTnA0yOm1jJZqpoPD2v9+rCrCkFNX
2p9GBOfdWJi+W1mj1Kt+xT/0cpV/2N/9s9Z8KkXJN2jpfnTR7sMB1zP+q0spHwZTAObqzh291w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23168833FD4EB40"
last-modified: Thu, 12 Nov 2026 00:48:57 GMT
content-md5: /6j0mjAGYSAbBfX2tzWJdw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53defdc8-85b1-4f98-bdc3-c773b105d9a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-a109f52c-374d-7b76-37f6-42a2e1c13453/test-blob-6d75d59a-a01d-22d4-d8b0-f1c0fc56cd59

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Ab9IUBBgLlL1I/G6VTas13vymmKBLJTUlNApKl/eaUorpnMRpnLwdgWrtSc3ZbAcUw5u3INbVtQr
c7xANwPzF7qmj6/DmzEJASRd1nZsnC4gDddQb4zHz1Ce5TK1sD8BuJ5tkdYBWLfdZdpe/YBdv9eN
ICksoqgt379eJbX+U1DlWx3Y/gtYHrQfcgmyaNHQQCZbJ5AV1Bb2P7EWozMC3hGJeaJihcDLNAF0
DS+ee3btjeSPoyvA0IcH4r9aQnuBHZT4KO8vbbtlkPKOoMfmV8Q6KRVPcjvlyakaW6IBcfKG8/Cb
plOHvR8oKhM5MS+/IIr6HxhmMqpZEl9GFBIYZB4ACKzWSrFxs2v1JkgnrJd5WjoYBlLZIMFFQpPz
QagND8X0OCiC6dbZiWutcAtiMWXHzLnYAF3MJujrkAgdfXLC6BaCM3Nv9nFkPnzmLK+14xEtLHTu
NQ5oJxI/lljNuwz56of04P7yV9VIc8Hh5vk5Nq3371D907MHGgthL18ZloNw7UEowAMSO9WfpsFM
h0EZBmCq1su7+xbU7MbykSh1Lt0+cPm3EHaq5LR7Xi3xupLJRyj/br+3tPErU9M8IKqsKXfkDhZI
YfXqAPIXQJ3p4jIzKUn/dsAdhrwHjLyibcQJzjS1Dax8geYyFW3NoHNTQXGhCfdhrbO3xodaQNQ5
R5ItDXJpNNSFtqdizGBST+ZItEtLAWPNqCGA/kclIkAR+c7bn5IB6QydG1JP/uBTZHegEYyJ7UUu
YGVQ6DaNYJRnUNKSd69TRso+ruURfalALZnQhBCziAyIrD4tsADVD7u+564OwOzHTcvCSj9fHeK7
ELucvduDtMjGCctwJpXJaJ4pUpb7MWysCTdF8T7MKI5ccaBFOVLgOjPmR7chViY1+OGhNspMwN9O
8LSkPsKJ+eA8FLT1gy9LSRhjFem1irIQEPhcK/LDD7HA9kieO/twXE7W5UFyP3WxVeyy6Kr1mWUB
ky7KLM7ueAUDNI3nrQ0c8rmb36VxntCDq9UFESYGy13jnajNpi9/6G07bwrnyqjflfbxWbrAj/Vd
RoH56Gbe/GkvAw9lT0yJHPc4NS7Gm+EtJnwwFHGjIw2yb1+thv8GXXKguMaYekaqZz3DiFnGl6ug
zMLqruf3jOACst/s25b3Mdi8JeMalKw1hqw04Juz7NizDbo9G6+KqSvmlsdmvYumy1aBCnLHhTcV
tCc7w6xFTsUHOM7cuRUoMXy3NP7kzskgjRREMuJl64iCJ2eHT+V/oUcBX4S9yhJAWNj2EFE5MeVe
GjaXABzjoUxFWZGuoeGWOJO24m9EY8ICBNkJb9s3SPaBKDWv56AqHr43eHCAkbf2X9e9gk52GQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: b3f8984a-445f-4a99-9c22-ec6bb120d937
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:57 GMT
```
### Response body recorded for playback (409: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobAlreadyExists</Code>
  <Message>The specified blob already exists.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a109f52c-374d-7b76-37f6-42a2e1c13453?restype=container

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
x-ms-request-id: 99dfcfb9-46c0-40fd-9ae2-8c855f6c55c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:57 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

