## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b589f564-b38f-9114-0b03-3b81e8e03ead?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ExistsAsync_Error
now: 2026-11-12T00:48:00.9588546+00:00

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
etag: "0x1D7C60EB3E26700"
last-modified: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e698d350-84a8-4487-b7f5-ddf047961da3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b589f564-b38f-9114-0b03-3b81e8e03ead/test-blob-aaeb12f3-f6c0-cee2-45ab-f366ffa915bc

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
/R6z+hYCsmYsBQcRtx8SQDO3M3E6G+NtErpv48CukWLufoPKLEOW8GCFfbru0RclmbMySHWjguE6
Redbk86mfnSlIzibRxPvIEIQtZ4ofkGjSUoMfEnsSvuhj+ZcOl2S3v9GSa3eilGfQiczks1DEcam
uEmDmQEquNg9+rgtk+blftae4jWTxL/4bTkhubctXX0ftYEUDkX9G5HUoY+Zcq9BThT3pS+REvSJ
iizICf8hD5w6Dd5k0HCQoMajviIvX/qK4GujNrhOjaKNioMZNRKSs5LzX2XQ3H2jZgRp7lPRWSsx
PiiTfdjj7H8710bsdmuzEQuQPP+VuQTu/8+05J9OuzBY6Pfp/jW5EHPllQQ2t++YttxIQR0rnIQk
pX4JLgff7BwVk450yRLV1yyMryP/t0ffGy7CBnoTLUxyxVi3r+FrBqnoISNhJOzJc2nwnuxgJO42
KRPZHOWiAmZCAQS6HSdLIal6F5YkfvdB+JMQIo5fEaBqgYbOkenDRR68HiLoD1VCpX1C5g1YEaob
lyRSkd/Y4/BjT5yhfY/At9F3Z2DVWeg9znwQHCuTEm/bsvrEcLM/4zsyhMC5oCjugi474KpKRT47
FMNiyMbEzz0sxcqV+0YeN4Mlo9QohC1UIpr9WDHFkWy7iVvw3Bt0bbWDjNteWIbnHagmJKJpEo+V
DqUsx3cLZzNd2XHrLVtosDUfpfhR9ckTFTuIn23KUXfLWs12R6Y+dySoAH8V/O9NvXNtSm2XRBjc
GbI7g8jGk4f6H9KN8WmP4C7TqfVK/hhLO+H5XQYJNBa1mi70AvRc4m33Gt0cv8wK3Wk/w5sjkRuZ
70fmzDaA8eq82Fc6m945d8aHUuM7L3sV7n+dynF7kQgSWhKsdhU2dinyYOZ0z0KLBUzUmz83XcDM
0d624yZ5QEdPKEDLjQCwUNu6Sc6UoR89EcUkpvXI2vxS4KU3gJICeR+fJacBwHhLI0pjfRTyNzC+
edJhVJlRhk1Dea1bedBJuNCu9Ht3O1FN2YOrZV3oX6h0eAbAoSSFTp5avUbK76p5GsREQ0O0Rj6A
FHsWpiDvWxkE5gDKiRerKKbdHX0KgunYMUuZoxtlwDHHP4ypb6h+amIsxQipr5CtmBuc1ynAdZKR
PXTVVrf9nybOAkmKArn9X7Ib3rzhL4K66woAyOkIB8n6GDEzqBSqLibi26xHI5Zhn3h2pJfVsA7y
Gmqs/dc8xvuAkOmIybaeca+W/lPWc8hznylxkmMxJGgiQY6p/TFOphWxx5Kt2dXB2DPoP7G7HKei
OF6uyjOYTmuBZoco9HN9R1g+Jaw1xsVTr7kvSeW2ZyXmB8TToNvhGHgmK3NNmeS/avdZfPf7bA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C52058D6481FC0"
last-modified: Thu, 12 Nov 2026 00:48:00 GMT
content-md5: oIyYq5Pvr4Z7Bk3ZDBDHOQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 97a01e3c-d4e3-46bc-9b62-09cedba9daa2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-b589f564-b38f-9114-0b03-3b81e8e03ead/test-blob-aaeb12f3-f6c0-cee2-45ab-f366ffa915bc

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
x-ms-error-code: AuthorizationFailure
x-ms-request-id: b7523eaf-05c2-4d49-b806-4edc9c128317
Date: Thu, 12 Nov 2026 00:48:01 GMT
```
### Response body recorded for playback (403: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-b589f564-b38f-9114-0b03-3b81e8e03ead?restype=container

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
x-ms-request-id: 8ed44d8f-c6b9-4c65-bbe9-e57bf8f27fd9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

