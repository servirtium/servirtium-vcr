## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4cf12d81-f3d2-a3b0-9ce2-fafd16a657f1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteAsync_IfTags_Failed
now: 2026-11-12T00:46:31.6757044+00:00

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
etag: "0x1C12FBDF1B86A60"
last-modified: Thu, 12 Nov 2026 00:46:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bdec9929-c69f-4bf8-80d9-bd88451ee248
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4cf12d81-f3d2-a3b0-9ce2-fafd16a657f1/test-blob-723bae6a-6afc-6ae9-ebc8-465007e15226

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
VuRtxVR7IXw8Orwr3xOI/BHBD+0JYeoXRIZgCq1fm7qP1KcyOZGd7o2/NcGuvYrYP0k+RtJlHPX5
VYHNGxfP3J8BmwtsVsOAIyBgSisoaYb7iMpjIVTnKriyOOMQz9N271girCF/a+mGviKyBNHJ0Oz6
0ZJNa7tKGXFSuh3fb1RM6lrTBr1kfB3g3WIyNSXm6Gf3Fv1BKYSd15KwLLDLpk/OZhp39skvlVV0
bI1YGORLbNK26FlWCsHWNS8qs09tFTcTY84Lb/Kdx4Cnzbz2RL+tZb/eFb31d1tYoMCaBOIGB1ZW
RLQWP/3fGCDZrj0E4PFvfE6PjgB6Huxzss4yA8KdocVloP8KlybC/vycHMgeVMDOKoeTdnhW2ybI
oowvrRVdOw13nj/xZeUozY8D3gEjVF4OY9g7CStND8TYQvSZklHnPuC7prWA3MWia6joU/0lpU4u
IUk8IjHiKo97GSPwjjo+HJ8gaK2ojYYTmJ6CZLvHs52manEHqhuv2XwmBcOisdxuqjZdBDyghpPD
KYqTYMXTtGWFSiTINnGEcY8xgojCcObBE7mFaa9gBeTeRICRHHi2UlFeHGe4pXTE2ZOtbwQKALik
0kwMTkq1JURA6vHx8lQWei83ZFR+CG5FwI8cspbf1ETH7UosqgQGqPYjeLuD0+c+l/XU0ptkJcne
x467mXOtYBWsKQUK6c8rMbxdW5Cyweyo3RqhCwGpY8eATuN1Sg6DdRel1qnhM64lqaDfB8o5KwWh
E7tYDFUTA8Y+iZvsteat2eV4DetCxqpse2Fhylv9RyLd1DdSKmnCktLjoqoSOPO6MS3kwB4ZXkwR
7JHzsjlqQEF4DuGvWq98tXsZXyMAWkJtppguGIcExHXqQT7Yzt+YeGJomSoSCtZ+aAqjAP8oEZJO
hguhOyi6dEpsxBlwpOebgObBl8AYW5zCsK98YcN1wi+siUjT9zw5rSXfpUa8DsQjB38YZnnRNipv
3ot4PRKG9wHpwxqex4iqiOqaOLVWBaLrWVlEXFy12lMeZBixwG8SWa5E0kqphD/2bt6PN/10Gdno
jeS5QpqlM+jGgGNw+Md6h98HETJXQdQZTe19JqNWqUs/yDOKWRYTnp9i4gTchnYWFK8ebQenkUsQ
n/WsJw1EcNYXMTCU7y3I83OT9V7PPcZ3ZxLzNzxElzfnerohZ3aRHXIuxFVFgiSBVnmTFJvtQGIu
NMD7UDmZ05n4rHVzpov8AdfsoXhxMuTtceHCsIOb+jlY8jK2ls04lPG7TdWvDq/tlxLEAJ/pvQLb
Dd5X1iIWXLI7G7RZRWoKswyGteQPPmMy1Rlw1/mZbjUw24ju4b3PpfAjc/L6lFGnuk2TYwcezA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x243B472F9C8CDA0"
last-modified: Thu, 12 Nov 2026 00:46:31 GMT
content-md5: aCpPj1wFX1uAoY2dFswLUw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9cead319-58e4-489d-90d7-e64d66b27a72
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-4cf12d81-f3d2-a3b0-9ce2-fafd16a657f1/test-blob-723bae6a-6afc-6ae9-ebc8-465007e15226

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-request-id: 2fe49560-1c82-43c7-b903-1fcee46c7864
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:31 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-4cf12d81-f3d2-a3b0-9ce2-fafd16a657f1?restype=container

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
x-ms-request-id: 94593239-8bd1-4632-9efb-e56b45404b43
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

