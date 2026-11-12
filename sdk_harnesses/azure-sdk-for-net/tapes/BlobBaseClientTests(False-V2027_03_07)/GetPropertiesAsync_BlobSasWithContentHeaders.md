## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-59feba0c-63c8-a9bc-398a-46887a863484?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_BlobSasWithContentHeaders
now: 2026-11-12T00:46:54.0316823+00:00

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
etag: "0x1C7F01241957C80"
last-modified: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bfc45e37-a90e-4c0a-a348-cea0c2acf4cc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-59feba0c-63c8-a9bc-398a-46887a863484/test-blob-030b5df0-9fb2-8696-6e36-e20e1c470c11

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
R4jrby8guyeywIO2e1oTraHnlDk/mnVtI3jqkYGujfJ9NEDym8RUz6HkUfIb4AoTIzRtNLPS0qwS
fUu2NSqmAzOROEcaIRHcksSYW0mDUkNu1m5MQVg+qmKT3x14npl3Pk2+iafC+QIikKHuOnZjjisI
SF67WcLaUo3lhkH0ZPQrIB37xMicrN1rKbC3UHDrMFHycFU6u+SK5DYa3HPBLiuswhpZZ8libJyB
UC8RIgId+lbwAvSf8GQ4ceCSgs9pqvqEC41WksiHjwS5uGu1eME0/OId0Cw3DdG1Ifbpz+rMGKU0
jBd0x2eNaXLw5Tj4g/geXoXsS9nOTf28oHDSnb8Z7aDGgOuqwDV6kGe6RyiZvZ39ynFk38zLZj8Z
uCf2usuy1viXMgIMdJ1QcbtxEwXVIuPT1NNOtQ3T+hmskAgOg9WcCHEwAYqa8VXTFG0QWVI5RJVE
I+b3ZCHqwzfpX+SVQu7l1QuUpSBYOOJ9eqCfwqDGckxyyV/vpaNQRT1TsZFxPtJ/K4RHpJ516+sD
eemASwGWIu2YI3iO9i9nRGDiBIZRDDzOH5ccf82t/d507Cu6z/k8vI+k2BpZ8TVU32A+kudlsW2t
sSxpeqIf6iaaGgkErXRmpUj3rDQhdC1ix6Btb2r3Djq+DB7N00Hshe30v9crUDHr1+2ebgU4jD3+
B7MCsXu8owvORqFWmNIGCidGLbRWNndvgZd8WKA1hYDhz8yO6tNxOBzMXAmQlT8amGPd8l6IqNA8
kzDkP0prmcAhdckGeCBU1PSYidlt3+tYYr88V5MhWCb7UlaijfjRYMNIbiB1FCBDiR1q8B72zrRE
i92LL0Et/xyiCiXJsUb7xikWJHDL4k2f+M51t2gIBIOiXQIbRjGCG28D0wn6edjWbir14KpEeaiP
7DZzuEi0mgaiJlNE4H/3lAkAxw9EpH71nkk+EyTYXuRZi1r6DmInTzgDV1OEkY2q/UyhQ7KYS0e3
fRn/dobhychv61Ql/YWm2XfXQEwrcAy7kxbYNxoxwEASQ5BJJ9mxIY6KFaY5hADG+2k6wQr6iwwM
Q+JwCZKtPSsUErn0XLGeJR6+oVtmgQ8WETyw9v41F7eEPOP3QRj73Nh7JXFG0Z64nJzrPOqxpsLT
WvdV/EYs3voCcCDOpuMFwsSD6lydz0Ce+FlhSdvN05UhI+Yhpd+RTkZ2Q2F96fa45nklLrxlNoq2
twTsy5QfNZ2KrIL94xzl8ZsWJoveIA5jqGNhp6XZvO1bau7bpIOxVw7E8j1zuwJdQDwgTw/+2Jb1
iSIxvo34se+VoXguCk0YZM59Gi7R8O1hBGdouW3dXJJX5hthgJmAy0FN3RmJLjbuB+tBgb1oIw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CFDCB1B467C6F0"
last-modified: Thu, 12 Nov 2026 00:46:54 GMT
content-md5: y7gGew4yFZtmA6oelZiYIg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b94e5e74-e08c-47ce-a070-b45fa32e1f9d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-59feba0c-63c8-a9bc-398a-46887a863484/test-blob-030b5df0-9fb2-8696-6e36-e20e1c470c11?sv=2027-03-07&st=2026-11-11T23%3A46%3A54Z&se=2026-11-12T01%3A46%3A54Z&sr=b&sp=racwdxyltmei&rscc=%5Ccache+control%3F&rscd=%5Ccontent+disposition%3F&rsce=%5Ccontent+encoding%3F&rscl=%5Ccontent+language%3F&rsct=%5Ccontent+type%3F&sig=gtw93O9Bx65njpDnEYZldqDvZ7vsL%2BdL8IW13HHOddA%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:54 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: \content type?
etag: "0x1CFDCB1B467C6F0"
content-md5: y7gGew4yFZtmA6oelZiYIg==
content-encoding: \content encoding?
content-disposition: \content disposition?
content-language: \content language?
cache-control: \cache control?
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c5ffb0b8-2254-4fcf-ac2d-7fed49558ae4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:54 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:54 GMT
```
### Response body recorded for playback (200: \content type?):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-59feba0c-63c8-a9bc-398a-46887a863484?restype=container

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
x-ms-request-id: dd22c98b-4499-4b67-ae7d-e8584abc8620
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

