## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5ada70d9-4d2e-8d36-4e42-b2eee004d5ec?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_File_StorageTransferOptions(8)
now: 2026-11-12T00:49:05.0152309+00:00

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
etag: "0x1FFD285F33CA330"
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1383d1f6-c178-41e2-a1fb-937e71ebb497
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5ada70d9-4d2e-8d36-4e42-b2eee004d5ec/test-blob-c989c462-a70a-657b-e268-ab4403c3c8f1

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
aArsqaTkr7bT+ZhNUh/LBqMPHkH8L9cy9HV4xaLxiYp6wIbWGCxIfhTT9REOLhLCnaWh9KWG9Tgy
ubQva+kU4W8N05KZ9e12x6AtKTrGJMZitij8UJTl88tNo153GBIqvxShAFuAKae3Ki0FWcz+a5Xu
zLXBF5HaKN/GS1GO/66NAmkmJSNq4o2ARSVn4Jn/TzjJiUxdaaeCxth7ut1WKCt+d1di2EZxg+ko
QNFsc0hFxvwYxXViMJnCo15L7iivKh356WhCnXfyVwViNCjWFVOQNfPhPWK2HEe9oDToJpTBeBaz
c4nfAyiEJm5vAPtw640Ku7g0zuy7Q8wghf1CCTFwoLsSIqLJsDLKXBb0RhtMTLSm3WvcjKop+DC9
v34rQhw8/l8/XsnqQAuGaXHVxvyx1DhJmyvGlBQR6ClyDPG0nxr5t0e8De3rvJ1fVSI5UzIzC+tF
4qbxdmpKLnWfeDMZ0cpW3A619MdKXd+OZj7y2JX3PwEGbr10CEDdcd54S0NpRoRX4ncjfRcj+4TG
YhArWFbgqDgyE2IN4tPN2IPo0hKbJB+6mvUe08Lq4nM4raYwsRiImKILNzIhSv+kVaWTOyhxKz7w
cL5gwdV2SDHv1DUtnSZqXzlwkO3tmU/2en0cVqZKxoFoP0FaKNbMlO4BMnbJdrh+KNzuAZpQA9dv
aUdYWfKKpA2zxF7lEDZjo/v+7GbYLAPFni3JXMXmFztq676OdDv8do5pFbFZmRili16fUhZwlj1E
k7vEwEhIzK0ieyV31C7AAXbYbxZRawQVJNBmR8Uk+VSBSuF/OLVFIUkENx7yLbYw31Cglycm8ii2
r5x34YXo/YHR9olNQMnBkk7NTDTmIvYZNmh0hGItW1e5yYkYzj/DGzmcITct4p6G3wTZWKXzz4ym
XasddHkfo5oxlHZAqMQOCTH6SQG+7FPJ7aVdVAKyxfr8cXCUpqfAfX6c+04oRjZAyk90+YWL53BX
U4bUwU+Yf858QzdTeWKJOsuDIfEEoKZuHYmzPct0cYkAPVMh7LwuBHt/rAP/7FHs67+5CMZ+UrPf
ZaPF5UIDCNGtUzwPaE0PVB12hfSjbzE4xlIMumnDgeqgQYYYaR85fKQxUpkU3INxqrOpCM2+O/Zy
jB7v9k1n6dJRbybH9ur9PAhQch2YJOnPmxC2Gngd4QWQpdwASYVWyWjGwm1cqbPIq8vFbcnZ2mg0
IFs9sc9ZNI0hNlAO/POC+qi00WF8cvFc7W6sWHQ7t8tzzCgqGRiYbI7fO3Jiuq7YQnMhJAkHt65q
4MRhrdwZ5X+FmzDLWOCPHGTTnTd++jO/1BUAGZLCbBR6wDlTN7+xxVXz3B99DeqTkQikNBl27A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x231188B1F695C00"
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
content-md5: ohRaHL0LfM94jgcM9q92OQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6b3871be-3b45-4e4d-b7f5-b9313c27713a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-5ada70d9-4d2e-8d36-4e42-b2eee004d5ec/test-blob-c989c462-a70a-657b-e268-ab4403c3c8f1

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:05 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x231188B1F695C00"
content-md5: ohRaHL0LfM94jgcM9q92OQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9138e6e2-cc98-4ab3-b216-b2a8108806f7
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: ohRaHL0LfM94jgcM9q92OQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
aArsqaTkr7bT+ZhNUh/LBqMPHkH8L9cy9HV4xaLxiYp6wIbWGCxIfhTT9REOLhLCnaWh9KWG9Tgy
ubQva+kU4W8N05KZ9e12x6AtKTrGJMZitij8UJTl88tNo153GBIqvxShAFuAKae3Ki0FWcz+a5Xu
zLXBF5HaKN/GS1GO/66NAmkmJSNq4o2ARSVn4Jn/TzjJiUxdaaeCxth7ut1WKCt+d1di2EZxg+ko
QNFsc0hFxvwYxXViMJnCo15L7iivKh356WhCnXfyVwViNCjWFVOQNfPhPWK2HEe9oDToJpTBeBaz
c4nfAyiEJm5vAPtw640Ku7g0zuy7Q8wghf1CCTFwoLsSIqLJsDLKXBb0RhtMTLSm3WvcjKop+DC9
v34rQhw8/l8/XsnqQAuGaXHVxvyx1DhJmyvGlBQR6ClyDPG0nxr5t0e8De3rvJ1fVSI5UzIzC+tF
4qbxdmpKLnWfeDMZ0cpW3A619MdKXd+OZj7y2JX3PwEGbr10CEDdcd54S0NpRoRX4ncjfRcj+4TG
YhArWFbgqDgyE2IN4tPN2IPo0hKbJB+6mvUe08Lq4nM4raYwsRiImKILNzIhSv+kVaWTOyhxKz7w
cL5gwdV2SDHv1DUtnSZqXzlwkO3tmU/2en0cVqZKxoFoP0FaKNbMlO4BMnbJdrh+KNzuAZpQA9dv
aUdYWfKKpA2zxF7lEDZjo/v+7GbYLAPFni3JXMXmFztq676OdDv8do5pFbFZmRili16fUhZwlj1E
k7vEwEhIzK0ieyV31C7AAXbYbxZRawQVJNBmR8Uk+VSBSuF/OLVFIUkENx7yLbYw31Cglycm8ii2
r5x34YXo/YHR9olNQMnBkk7NTDTmIvYZNmh0hGItW1e5yYkYzj/DGzmcITct4p6G3wTZWKXzz4ym
XasddHkfo5oxlHZAqMQOCTH6SQG+7FPJ7aVdVAKyxfr8cXCUpqfAfX6c+04oRjZAyk90+YWL53BX
U4bUwU+Yf858QzdTeWKJOsuDIfEEoKZuHYmzPct0cYkAPVMh7LwuBHt/rAP/7FHs67+5CMZ+UrPf
ZaPF5UIDCNGtUzwPaE0PVB12hfSjbzE4xlIMumnDgeqgQYYYaR85fKQxUpkU3INxqrOpCM2+O/Zy
jB7v9k1n6dJRbybH9ur9PAhQch2YJOnPmxC2Gngd4QWQpdwASYVWyWjGwm1cqbPIq8vFbcnZ2mg0
IFs9sc9ZNI0hNlAO/POC+qi00WF8cvFc7W6sWHQ7t8tzzCgqGRiYbI7fO3Jiuq7YQnMhJAkHt65q
4MRhrdwZ5X+FmzDLWOCPHGTTnTd++jO/1BUAGZLCbBR6wDlTN7+xxVXz3B99DeqTkQikNBl27A==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-5ada70d9-4d2e-8d36-4e42-b2eee004d5ec/test-blob-c989c462-a70a-657b-e268-ab4403c3c8f1

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
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x231188B1F695C00"
content-md5: ohRaHL0LfM94jgcM9q92OQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a33443e4-c4e3-449c-9a64-4d2d20333510
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:05 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-5ada70d9-4d2e-8d36-4e42-b2eee004d5ec?restype=container

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
x-ms-request-id: 33b42b85-9107-4e52-aa4b-49039dd4898a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

