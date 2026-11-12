## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1222fb60-c679-34df-03fd-ef2eef3eb1ad?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_DoesNotOverwriteDefault_Path
now: 2026-11-12T00:48:58.0297962+00:00

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
etag: "0x226407253C73F00"
last-modified: Thu, 12 Nov 2026 00:48:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3fb2a0d0-43fa-4c35-8827-8681daff690c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1222fb60-c679-34df-03fd-ef2eef3eb1ad/test-blob-a201efb2-8935-af3b-3ca5-b4e8d8cabcac

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
ne9ea00pTV+3Kl1fuZ+OTDLRjiJr637Xv3LV0xL3WzhBQ5AA4EZfiKGh6gss3PWdF2e2BjuZQLFw
hqvaU3pMv84kHXYOjmzrcgaByQBzquJ8N7uqQVT9pwLej1mahDQnVSs8CL9/j4j7ypQ1GHew/NzJ
XRu+on55JnZzL/4SUO3RWXTVN6Ij/agyr3bAyI+KLZN90SYZaLOswuFJC1+K6XqnZL4D28Q6pmBy
i/IIuV7m6QJqlX/GuPDBKXXA2vFJqMX8GGTRh1LOQyvGpt3ApAiDYiJdH1T64avNQbFPectvKeMt
C6H6FWGvnFFUABITAYVsPXfO7IhxATe4A0ahfslfVnz6kphmiE3BrYMCpuGZuUAs4jxUoD1auwpq
QhEbDh2H9KmVGW7tBbQqDT4Fb1pWHkkFdJyNC7Y/n9eN/EY8pp9lerE3BKDSP9yIKpP+VEuvEyPH
FZmB+unzVXmWXwlt7WeeoPSpHhqpMzW/BOAiQUuL3egjdZAG43/HRK4nO9/TGjwsYLRWBvUJHuFj
wvUI0BQuCoEgSnjWmLx14dprgfhW6+qk9uCWNNfzGVeuoiGKvnOa+TBds9DEVcf44SQbnpzpDdYL
ZNozl9WqLDAhKPWa6yJm0IfH+DgZ4KEZnVOy2Hu6xZRKflqZZmFas4agoy3RXfYCtM0UIRWe8oQ4
GvqC91S1ZmJhT2zIzGkmbUSxeT10Rz9csCOtpqN/rIzVYExn17wx6jzKcA6KOehj7rTQ7HhHxNO6
JUcxB7++4aPf8msdvpWIgI4AqdYx0nY7Sbfvr8ATjpx5rbJ0AON8C49qqkd8RjAeR2zqRhr8iFPQ
9r0HzzLizGPPpBDjE3+rg55HxygvvgOH0WdUKUeBfCRepAoldTxch93jrKIfOzPsPsN8tcEqoTe6
f/7KjqIbTijrhG91hQ5h6j9KSxJhaJUzaOqEBMZjMwLSa/U9kfk7x156M7bDdri1GsqC4FUlWBdo
lia3l0lhiFBsohoZJFhGDoSz5zXfcPEyz+n74VOtrRLe1fvShDAVGKplVtOdnPZyPNHRcnHhiCY1
hchfZaf9v/UIO05dc4pTnc6LehkdlDPyiaSC2zug/E3Unf5otbMDaJfelWCoFchGftSiVg4NF/GU
bNsCe+S6aD4BiNWL6ucbhxKCP/7SSnTcO11m/aY+xoYN00nXAOyzJC0ip4zyupPsh878i9fywiJn
Jj+GU2qYwsFPfheeQ4clzxvRsKPo6YDKeXXXQTuuGxEncNqtLNDCiuTKozx7TkRH17y8IBJ+fz2+
u9n1wIGGoGMFd9OteKJKDyW+HkVETisxkGp/8vr/qPCd7nD3zcljQwPZdddxmV8acRHswGD3eQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258BAEC0110CFA0"
last-modified: Thu, 12 Nov 2026 00:48:58 GMT
content-md5: VMlfvDkUJmP+ozcyX76syQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15ba63d3-d902-471b-8f4c-b384552ddf93
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-1222fb60-c679-34df-03fd-ef2eef3eb1ad/test-blob-a201efb2-8935-af3b-3ca5-b4e8d8cabcac

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
ne9ea00pTV+3Kl1fuZ+OTDLRjiJr637Xv3LV0xL3WzhBQ5AA4EZfiKGh6gss3PWdF2e2BjuZQLFw
hqvaU3pMv84kHXYOjmzrcgaByQBzquJ8N7uqQVT9pwLej1mahDQnVSs8CL9/j4j7ypQ1GHew/NzJ
XRu+on55JnZzL/4SUO3RWXTVN6Ij/agyr3bAyI+KLZN90SYZaLOswuFJC1+K6XqnZL4D28Q6pmBy
i/IIuV7m6QJqlX/GuPDBKXXA2vFJqMX8GGTRh1LOQyvGpt3ApAiDYiJdH1T64avNQbFPectvKeMt
C6H6FWGvnFFUABITAYVsPXfO7IhxATe4A0ahfslfVnz6kphmiE3BrYMCpuGZuUAs4jxUoD1auwpq
QhEbDh2H9KmVGW7tBbQqDT4Fb1pWHkkFdJyNC7Y/n9eN/EY8pp9lerE3BKDSP9yIKpP+VEuvEyPH
FZmB+unzVXmWXwlt7WeeoPSpHhqpMzW/BOAiQUuL3egjdZAG43/HRK4nO9/TGjwsYLRWBvUJHuFj
wvUI0BQuCoEgSnjWmLx14dprgfhW6+qk9uCWNNfzGVeuoiGKvnOa+TBds9DEVcf44SQbnpzpDdYL
ZNozl9WqLDAhKPWa6yJm0IfH+DgZ4KEZnVOy2Hu6xZRKflqZZmFas4agoy3RXfYCtM0UIRWe8oQ4
GvqC91S1ZmJhT2zIzGkmbUSxeT10Rz9csCOtpqN/rIzVYExn17wx6jzKcA6KOehj7rTQ7HhHxNO6
JUcxB7++4aPf8msdvpWIgI4AqdYx0nY7Sbfvr8ATjpx5rbJ0AON8C49qqkd8RjAeR2zqRhr8iFPQ
9r0HzzLizGPPpBDjE3+rg55HxygvvgOH0WdUKUeBfCRepAoldTxch93jrKIfOzPsPsN8tcEqoTe6
f/7KjqIbTijrhG91hQ5h6j9KSxJhaJUzaOqEBMZjMwLSa/U9kfk7x156M7bDdri1GsqC4FUlWBdo
lia3l0lhiFBsohoZJFhGDoSz5zXfcPEyz+n74VOtrRLe1fvShDAVGKplVtOdnPZyPNHRcnHhiCY1
hchfZaf9v/UIO05dc4pTnc6LehkdlDPyiaSC2zug/E3Unf5otbMDaJfelWCoFchGftSiVg4NF/GU
bNsCe+S6aD4BiNWL6ucbhxKCP/7SSnTcO11m/aY+xoYN00nXAOyzJC0ip4zyupPsh878i9fywiJn
Jj+GU2qYwsFPfheeQ4clzxvRsKPo6YDKeXXXQTuuGxEncNqtLNDCiuTKozx7TkRH17y8IBJ+fz2+
u9n1wIGGoGMFd9OteKJKDyW+HkVETisxkGp/8vr/qPCd7nD3zcljQwPZdddxmV8acRHswGD3eQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: a5d35be9-fd40-4fd2-9b1d-4d403ce7c692
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:58 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-1222fb60-c679-34df-03fd-ef2eef3eb1ad?restype=container

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
x-ms-request-id: 0769f583-50b8-47f5-9242-cb9062b7c79d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

