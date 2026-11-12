## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-94f1d9ef-1e25-93f2-2aee-4ae90ff1b586?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockFromUriAsync_EncryptionScope
now: 2026-11-12T00:50:06.8161292+00:00

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
etag: "0x1E9874A95EAE9D0"
last-modified: Thu, 12 Nov 2026 00:50:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9333e99d-0eda-4e76-8daa-71b175136e34
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-94f1d9ef-1e25-93f2-2aee-4ae90ff1b586/test-blob-e2d312ef-ed4d-8a42-0363-f6a3b702239e

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
Y+YREIcDH0hOkb12og4as2Vfogtmwoju4WFgNTCxedzEuKpvg4X867qpRpRhfPAb1JaDsE+qIKBe
Ii8lo+kYnRfhsepjqjDfYrZQvHz0jGVwRGGaLcmMGZcKEWFW1kjQkah8f8oGuClmo02YWmMkaZXJ
tV+IfW9OVJhSWJnOiIttgCvTdwyaaos3NIl89L805qfLjCHpRxM4Lisxs1+QlxrBKtk3UPGIL0vT
UUnl0WDZHnLxA/xqhDkYmknhaLYspp1uusnl/JW1Ql3VFfXKU1zLWJXsnpMeVqagH7Wop8aUp6qr
dheX8yHdPMGelW9DTkftFhAhPwgJT2MjRd3fDZqXQG5LHtxFNGVzD2LRgME2XdBuu5G2c2iioiez
dK5E/S4mBlQB9y9rqOKqrS+lOM+i7OcMcVIJ4c0FqXy1kb+3LxIzq3ltNWWgAhKvC8U4/GpXEYfG
N4vcHSWH+06zthYi834dcoxVNbeBa24/WtUHzawSXX848PiGVo1U5TkX7Uz8jRdHG4rdAtzQRcsd
ncNQgC6hoVmW6gOGlxv+AU99an4iQ829wLEiNFujZ6ssaLnKBGULdUvzZaIUwINu3gCNU9pM+lr1
kr98f2z984JXWS5hNP3qcvUzL90qqf8ts1ZbFhTQ325e1XGljvXe9XEgvGZVDKoCo+HlGct8y+nA
TswVot1uh3rAA16LROP/VDlrCuyY2KasWHMz68ai4QmI5D8pyFOUsTXslQlLdl795sWSEcH9J3Yl
aUppO5uzHiFVA1+j1Yvm11m2rEOcYeEUNQQBD9BIi73JBF8IKnWaOHfo9XP+WRE5rDpoRnsziAho
VAWXsg5QDHei2tAs3azjHHPLs2ttFtzzx2OW4ERBlntXn9VvAoVomOn7XH9ADc+OhCoHZ9Wc+z4p
o+uruSwyYENV1D3WcxntYxuCcblcsrmUCFsaOi6muqSXRl+avd68yfw76ziRtxERGQS5GomFzfEx
F7DRGCYVrxqYPi26U6Y9xai9IMeBAlBJCSAq7Z8aEXhtaKYt67DWJjwe+HjkVsZefFTgyKwqsBRg
hw8G6sF7fS20TOr/D9r45/qKYwrXZbJZzHBKOknMQ7iRzWOg0Dx6o3pLMArbXmx56OCyn00KiCFd
rB5RMEPj5wkybUF3Vxe+EL+PizWofW4D0FFoGqRqh0VBQyMdKXI2aEgAqfArApHJ846NevzstS6v
TV/yes1lx+b8NRPzoOdNWCPtp9R92M7AnyYV3Q1JVY71btwTRO16m+EKLs191lOnQCHY/w1aMnSR
MtumUOrZs+CE/jILORQ1cgvyc6kBQsjSbZzrcFWBmjtnghIS1Ev3MXvs+dghnAcNo4wBZ77KkA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23C62E32FE5B180"
last-modified: Thu, 12 Nov 2026 00:50:06 GMT
content-md5: chcWedD+zZWfcJANnMFYxw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 169a78b8-d5ba-4ddc-91d1-cf4668386239
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-94f1d9ef-1e25-93f2-2aee-4ae90ff1b586/test-blob-2d42fbc0-4914-b1f0-d095-ddcdc87f337d?comp=block&blockid=dGVzdC1ibG9jay1mZjIyZjI5Yy02ODAwLTQzYTktMzk2MS1mNTc0MmJmOTRmMGI%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-94f1d9ef-1e25-93f2-2aee-4ae90ff1b586/test-blob-e2d312ef-ed4d-8a42-0363-f6a3b702239e?sv=2027-03-07&se=2026-11-12T01%3A50%3A06Z&sr=b&sp=r&sig=TfzsQ%2BTVemd0unIUrmlWacNx78gn9FGwmtyjIRRbF1U%3D
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
content-md5: chcWedD+zZWfcJANnMFYxw==
x-ms-content-crc64: YpLKLzEE3L8=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dc7b47ba-94e3-4d4a-af6b-47c76b7531da
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-94f1d9ef-1e25-93f2-2aee-4ae90ff1b586?restype=container

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
x-ms-request-id: 9db950b4-d9d1-4669-951c-4c0c15c28ff3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

