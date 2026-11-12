## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-93a2124e-478e-557e-cd36-e8f2a8af2597?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_AccessTier
now: 2026-11-12T00:47:13.2856949+00:00

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
etag: "0x2592D27D2665880"
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 40c21c04-ed29-4d80-9ee9-0650d82f527d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:13 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-93a2124e-478e-557e-cd36-e8f2a8af2597/test-blob-be18572f-ff15-8520-0041-2babe1f9584e

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
VDTWq7kvNtoi1W0ZOlQrsV6FxrU2hsVP8h2STBzTc9PemZ502XreACA9nD+SBkqsFnpMXDOjGM5v
hrmcnOm+TmGZOqC2ttjkpsaU+OmFvevS5jWihhagO4DPBFLBQmM3fk3e+Myq9l+haLZsDyDk6snN
yba0HMhL+P8f5rKFI2RiXHmcp8QfKPDVAB1gMytg6xmI83itg2KFkgDMig+tHEVRCrKmSEMFrqHF
3hyq6sXTvvuY/C/rtdkXFhTEU53gKOPYDil5uqLWg0XX56RF2qg6+MsTFR8VZlTYjzEvQVsE5bY4
0dubWgRYwXnqFM410TxriVrRzRLDwqjVoSpxp0Lq0gLuDAjMn57Hu1OmK1KFor31w7cAMxejdQ4z
xrjZ5xo2AEHMR8Qznuq8CRG/HZdWT/5te+OK6Z/qSpf5mdjm7dM4cCoQuVv4wSXNRCkF41d33He5
bGw3qxah4vwtOQQR1hw+hq1sRZaidLm+vaR25GY/gr1hLIFnAcQTbtZfy4ggu24Mx12qCpfgF/ey
eO5yK/6V7bdHsKmb14XoWNa/Q6kxngE2aRwJlXgmgBWJtYjVoUPYyt7R2ArEcfDXwbHAINNOgNrs
O8Hhi1g+ITCUESL8E7eT53jKYMX2cfgsMtPGZV9BOjSt6GWC9z6FkrbaMF/N2q76LDlbgyAU9srJ
tFmEd7vQU9btTypREe86RM0PG0GYXlckzDkl5bcUmPKbuULlARr7CtyI4IuEqBtJIT5SBdqJMFUC
X6uCqm0f2bY3tVitVUOzExFkD37LoCQd3MR4wZMYEojt4qFveF9vaAbVTfLDnMz7nvHIJCDWNr+G
ZM6opxgjHqPPwHKiQ5uy9aZ49VMxWj/4fSKhUO1nFqvh6BORxsHusi5P89xZWFtWFi96XkBsVQqP
ryr1gc61Z6nGwFuHIC7likMl4mZiniTHSjm+7bdqdZIIAhaX+DBfmYsyk5j/zvUAlNT9R3OkLBAF
LTeV93rxW0vIfh4XTZESxUjaLwuMx3xDvVjjbS4fZNUGksr5yaIRQTdNN0/W6UdC6oEqyfwFeGW7
UTkhDe4dqRpIEbvGGfymyO7UP5AsbdQRoYKs9JrZABllPnhp8DNJL401jdeLfNGFhAENMTnVjuRk
D2xrcLV/bxCiYdqDPdi7ig8C9t/8hiSxJ2+ZzM/fj6+UBODG3r/Yth7H6Br2AUYpUaYq0pgEZ4lH
uklF5qJAw9Er7zj39axQKUDANZ0KuiUpcHoptbwXj51XfiN2k9B7hiVIyxINMVz52alYQzLrPf8j
HHUoFw0VE1+boHaI2ZZvRa94we8TGz4dL9sTv0tqbEEkU3daU24XM7iycZHmcQAS6P6DcnwQDw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x220DBBC064ECF80"
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
content-md5: bYrWExv6fKWDQWv1seuoWA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 50063ed7-11ed-4ffd-8e83-5cb0b8551119
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-93a2124e-478e-557e-cd36-e8f2a8af2597/test-blob-e80a3700-0132-1354-3034-3563861e15f1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cool
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-93a2124e-478e-557e-cd36-e8f2a8af2597/test-blob-be18572f-ff15-8520-0041-2babe1f9584e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C5A14661295480"
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 06e6650f-7e75-468c-a95a-dc456bcf41f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-copy-id: 0fb8cf00-e1ce-4858-9b15-e1676fd53fd3
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-93a2124e-478e-557e-cd36-e8f2a8af2597/test-blob-e80a3700-0132-1354-3034-3563861e15f1

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
last-modified: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:13 GMT
x-ms-copy-id: 0fb8cf00-e1ce-4858-9b15-e1676fd53fd3
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-93a2124e-478e-557e-cd36-e8f2a8af2597/test-blob-be18572f-ff15-8520-0041-2babe1f9584e
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C5A14661295480"
content-md5: bYrWExv6fKWDQWv1seuoWA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ce784d4-0fc3-4d54-b3c7-be8ea93e79c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cool
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-93a2124e-478e-557e-cd36-e8f2a8af2597?restype=container

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
x-ms-request-id: 45f2c23e-8e1c-405b-93a2-1099e172c546
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:13 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

