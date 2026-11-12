## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8df13ba6-6ca5-7506-511f-ac1fe2138867?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.AppendBlobClientTests(False,V2027_03_07).AppendBlockAsync_MD5Fail
now: 2026-11-12T00:50:31.0847916+00:00

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
etag: "0x1C04CE76F81F910"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9cebc433-3c4d-4ff4-a958-a58abaeaf899
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8df13ba6-6ca5-7506-511f-ac1fe2138867/test-blob-8d52e0ae-79fe-4eca-c359-815550448f19

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
etag: "0x24108A521F270A0"
last-modified: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9b000cab-78a4-4c5e-940c-3361c69227f5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8df13ba6-6ca5-7506-511f-ac1fe2138867/test-blob-8d52e0ae-79fe-4eca-c359-815550448f19?comp=appendblock

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-MD5: yOjfiVwsrhZrrQJ/3xUzWw==
Content-Type: application/octet-stream
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
EZVChOvrsGbDAEYzIGEPWg2+wUB3CnIscaPKS+qxJQyQkg5M0AN7wzDryf0yly1hSSdHkoNOogYj
FRNIIWV7Eds5oo1Tw4kJQv0Qi0B0+dl1aAHDapKIQfAHKbvwM6LLcLci+fSgDoadPVCFPhbGrhs5
07hjuKdJsGGcTJrNGQ5bRRuIUQDl1Fl7JSxBAwPaQXqgtmDpZ7gQ2UiSA8Hs0CRBKvn6PVwaVP5e
6JJ7B61ewgofLGKuct1jeHi4UtCYjlUI/9gJ3wQdhmJhin8lldKaNEG3zKPBk7gbl8TkYQEtxlk9
cgfVVOIGAaYATOddPeOmHR6P4MGxR2wg7kg/OSRgM8Mm6CLKxd9fsMv8wEbQvVnhPkTjnuWXiyub
tGaZx8iCoBgjN1XA21g+MDD2tIclUDDvXfrgfJXdjl33LhF5xegCeh8trIYDIGLrpW61oNakdmQ1
qmrNoiODRqj4yaxHxGpI9Dpn96Oq6zyY9NcmKO6GUrisRBp+Ndj7qmbeC1a2pOADbKycPH7Ai74t
Na1MXB26cXbzmoBQyr9ha009zODl4U/2I7tB6hY67LlbUP8qr01IJJrgwgpgs6LtOtAxg7/eSFNd
VTlheIZgua7G9Hm/Nrz/9KhGBR9FlW8ZVK9FCWj6fQirzFkU56sTfwlbmb8oLQQUMo8WmEI0GL/J
SCPXGq9FzHZxE2li6gz8M4UW6fyw8CarMNfZ4+XFd7SaSp+HO2RZFs1ItxqaskeCGmS8HS7DGVj9
K+rYbOmQrJy1yJ9tdPcgvdMuZzgMEH6PV8iACFmF1jBGihB6gKnjuAt95eqnFKZtnGBblLIf8Rts
SBUgEKNCL/FuJ+rnpjwpS68tjiqT6EMiE2z5KUF+J5j1DjeUwqdnO7b4OO27hvUjMUkD8WLw2GDS
/vw3SQWw8P9R8ZcFlYgHxVN0m69VZox21fj3ejU1BTbWwsSrMPKwSEftapReHpzB/CwPez2xfJdv
wHMNuHbKG+xhLtLEW5RhxFJnaPz4GLdbNn0JJon5JEYsO3B+oo/RI0+n/e/K/KCXrrbqShSbd6i7
sYH4wfViZwqMlyAk4iHDlUStUBrIkTrdcXjSD9oykMPHw/EO2WJZRJXlPmSAc8uVJ7TP7ieN8iBH
G098kFgvWQZcXR8wtLzhUwuF41PVXP2sPeglYqKcOdDQxr4S3bQ8teRdIxasZXL47ZsbBw/Ncr5S
0FJwCfdkwCNOX+39z3ZWSS1vdznn/9d1LXUHgTHBA1QAwAxhy6vs+WPyXgWE+h4lxL7hXvqEatF6
+tyCXT/xjVyZ/Q5p9H2Cgn3V9KHS8TJW4rxz36RZe1U75tDPapwkAdCo6v0Pu89AX9x9rnUvqA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: Md5Mismatch
x-ms-request-id: 55f9bb3b-858c-496e-ad20-d2e9f3987cb6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:31 GMT
```
### Response body recorded for playback (400: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>Md5Mismatch</Code>
  <Message>The MD5 value specified in the request did not match with the MD5 value calculated by the server.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
  <UserSpecifiedMd5>yOjfiVwsrhZrrQJ/3xUzWw==</UserSpecifiedMd5>
  <ServerCalculatedMd5>oRKFPa8MsgyiiPIOmne4Xg==</ServerCalculatedMd5>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-8df13ba6-6ca5-7506-511f-ac1fe2138867?restype=container

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
x-ms-request-id: 48f02865-a24e-4ff7-a8f4-581c6da0345c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

