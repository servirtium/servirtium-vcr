## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-67512858-c2c9-eae9-c141-64c1026fdf2a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockFromUriAsync_NonAsciiSourceUri
now: 2026-11-12T00:50:08.0219812+00:00

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
etag: "0x1E4FBA60004F940"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eee1ab05-a3c5-4480-ab24-7989bc7f0927
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-67512858-c2c9-eae9-c141-64c1026fdf2a/test-%CE%B2%C2%A3%C2%A9%C3%BE%E2%80%BD%253A-2dff2cd5-5c50-ed99-7a78-24806621338d

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
Yqfbn/c0KBrmYyhUS0TCxYcPEk3KSqqBfYp9Lq8DpXHymKaRSEOMIwA2gGWalZ99f58581ySYBf9
WSFtt/pr4762YrKdMHxEgu5NlMlE5+jrAK4PybEVXziOlO4hH2wFyp2n4zLs308j9XFtRctOuHI4
grdMXBkMoQJ6D5uOImKCR8ksnAO2/iBe7NRApxlsQNt86Z21uW6Dm0IvctC0ldMO6/4CIRxugoOW
7XBFy/noDc6/ETnFzY1bqQHAhoxQqlcAMbwbah6/DWYZHsv9Pc9JRmQB9IOaSR1wp3garfz3RUMZ
RZo9zaOwAATSq67BXWwxdz8nT7XTZueeqsKmpF9qItiI5Pg1C3nAUfN+x55ur0oM6Ta8z/aNRd6y
nyLgCVukaIjWOXh0/GzFZv7CVJ9JL/t4mrsprVPi+p8Zg2xX30eX2l4VmHbRl+3K9mj3y/A/aW8m
aG+ge7s18z7ZWnn/boa2KnpAM5aFpgLOX7bq6i+u2hn8MHfY916j4KU3+D10yojhQKF1/jbYocFs
0hwESwgPKoBfAz4P3jMbnVPxTa7FWpQuCKmOONvjI4+2bCVCnpWcKM28FMZK0mJtWmHi51MSp3iH
1kJfgfGle+CvWXIO2P69VSXgCEXO5DZHIN55ADw7o8Ssu8hSPKbcF5nmmnnvX4FjJZEtMZ4yufEL
F2ETK3qjc7WtYR01axh/BPCs50m9V8BdFtuqDnEmegLXRiRFyOweQifDQv5jLbp5riythtGoTsCh
tRSf+WVEh+YbXiTzOTwEjqQi+RXB+ekhMV9EePMwL/hkpBPXfknCf7sXSM6VhXTwqPgshVSq37wr
fcgF/w7z6i8rj5UpLQ9bYHpaqbAai6zrVND7BKmjucRWqwGAvICsJF6favbfx3vo0CXaUDYLEfIc
Gqo++OWGiNXQ0oEO2qP6rYVSeiG1C4xUEjODyWmOSpoOZKHVbix4GeIgDvX62vWC4KKwuZbQZg4e
6eayA79rQYfm/3YBJD5Y2WE/lfyXWjc+AOjH3ZEDPv6TtoVGxhUitc1tE9t/gLtjV+A1kdERh4+u
cwLWpGP248F3bm25EhJLHN8vKUZcvoAsY4axzqwtgS/1l1ITTBFpdzAZBxJOqkXN6XTx4l5JUbWC
qUHdRBQUSuw+xHvAN9DOxbEWQrZt3rhA4+Q4PJ7RrEWdkaLPjDIbBb0lD+bKDbGkIhysMg//FMqI
nGEw3A1NbBc1IqYt/jl/+j34R8/SdtYykxmCJHk2nnzYR+/R6ymv16LOlOoLdyTjLTjRBsz7tSWK
/Uj0y0ed/oQqVbdJrQ8TSG8sBOLsJxz0nvdBZJev3JLJR+3guwxbMJZl4SFtmX8ovb5dz7FDng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20286830BC45420"
last-modified: Thu, 12 Nov 2026 00:50:08 GMT
content-md5: it/SvTIBCqWawGnvzvOsIA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1de9eb2-e5b2-47c9-a0d3-247cf8b6dd30
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-67512858-c2c9-eae9-c141-64c1026fdf2a/test-blob-4bd3d163-4686-87fa-0478-18a6d9520de1?comp=block&blockid=dGVzdC1ibG9jay1iNDE4YTk4Ni1kZWJiLWQ0MGEtZmQ3OC02NmE5NDgxOTE5MDc%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-67512858-c2c9-eae9-c141-64c1026fdf2a/test-%CE%B2%C2%A3%C2%A9%C3%BE%E2%80%BD%253A-2dff2cd5-5c50-ed99-7a78-24806621338d?sv=2027-03-07&se=2026-11-12T01%3A50%3A08Z&sr=b&sp=r&sig=aCaGa%2BIH6K%2FeFr20Q59np3AgKwecNmJXIa%2Fhsq9z9Wk%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: it/SvTIBCqWawGnvzvOsIA==
x-ms-content-crc64: PccfegSI7SI=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c7791e5b-01e4-44e6-851b-f7a35141d699
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-67512858-c2c9-eae9-c141-64c1026fdf2a?restype=container

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
x-ms-request-id: 4b79ab66-f190-46b4-9bba-deacb6c3e447
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

