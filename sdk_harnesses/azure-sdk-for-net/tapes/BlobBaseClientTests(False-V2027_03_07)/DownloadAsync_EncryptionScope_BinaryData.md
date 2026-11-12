## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-19d4ebb8-fc11-4e7b-1b22-e3251dc13e18?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_EncryptionScope_BinaryData
now: 2026-11-12T00:46:38.2106890+00:00

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
etag: "0x256F39247239480"
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ba844b1f-9b2f-4932-a7fc-fdaf1ff92e3a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-19d4ebb8-fc11-4e7b-1b22-e3251dc13e18/test-blob-6540795c-a881-438d-132a-e97fdc3fd985

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
U3YK1k53egNWe5eT6KqZfeGVtyyPzMmAdx79ORYFzO+ZLnLCnp2WQHHQw5Vl6GVxiWZDhwoRiIes
il4vekDtUa6n+rk41t9E/3e7vgk0Go+4jK+vwUTlh6XrFRM+ZsYw43Hmvu2rOLOH/4iTVsl9eG/P
d+2RPZBqwnIUTcHLBZiwi9uXTVyhDFP8KMG8UjHbbZykb+/YnqbhfPx7l+vxvPrv4sru5isSLWqZ
lRXPrW9BON8kJ5ap2O00tdBgJnRnCmvGzW9m7YZxkUGEPgiREs+MOl8MzZVjRQnduTBasgf2Moup
COD/2ktYs5ZUJZnko6MB1OwVWzzWYodmiTNWF946jgx96ArujF8Usxr/DyBv+RaMWN0b4NZO0qVY
mVAXApu3GpaNZ7uZE0iMAagi11Nm9pAdyb4BH602LhVllvIO/LF+R/WK4pFa80WVjt8uK/tR8aPA
+jjdtvroVzimNH1VfQX2pI9e3BT+wtZ5a5DOCAIaE6RPTgF4oZH6oYtZtL/IQBHaN4dr8xWPwjdi
Y0pqGk81jCDYBi8DfQP+ZDuIpA4XsSt+9NB7riCPwIvJFj1Gj4c8JCee7zni1rmEbI/ZBh4pS7If
6yV+ut0ASUWjOmfGt9S0TIDmeMHxnB4W9kGRtbltoMuKJ6RhvWlKnaXzPpxSvrW6JbmdQtLxLU4H
aMObb5SMNpmbO5AwUo8WnNsb/V6CwziM1o8Az174mPlVWlWmri4RZwgCt4IkitMqh6b21TDwhKSL
DpgEjGY7oqKX2/g5b+2tCpVVgAy1aEy81Ui3AcPIZNWxGp+VDNuixhTfjK7b8Re4ScuamwSY1qZM
SLYeg6DfznciiFVNGP25s7n31tue4eQw/7j4LsnQGET5ScQlg0JzAL43uGjCazHN4OdLoP/LrWbS
7YTo56CtUW8QVM45lC93hNUcZih7bpOGK03hhXhELptdUpa9ihkeiWb5sRdilEy40xsqrkc9Vn/x
YbtSzMz3yyUz20GZufm8/tzCgrx8I5YBKLFcGn9TH/sWzChdy7yaAeXxL7gKHxoiba9qe9TDdD4l
UaMamrGm37tFgu3QXzIfKIDWivTe9gmXOq3P6aQnU1fqOHoZf2c0S0/9xJ0tUQ19SlNT7OpJR1qa
g18D1vUXHi6V5ie4BqgZoj+k4DJsaumgUp9R02dtofEgf/wHMHVa5qZul2vlxUOrOkqqpWYoLRh2
Y4NWxUrHJ0Q2l4erEXHKSvqL/dJ9uo1bppkdw/uK+FHjkM3xAyBbp3Amri28/yjY4FpsnC9G+Kj1
+x+xqmRJq581x4Gk2EfZMFZiVwtgn6ZwROKgHlshnZck/AcAqv0L3QONhjenNAcTkmzZ5KGdlQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x241D6433B7A64C0"
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
content-md5: knI45oJk4EWaxD5/n6r33Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e0ddd53-e409-4f71-bdc9-c98c953e6885
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-19d4ebb8-fc11-4e7b-1b22-e3251dc13e18/test-blob-6540795c-a881-438d-132a-e97fdc3fd985

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
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:38 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x241D6433B7A64C0"
content-md5: knI45oJk4EWaxD5/n6r33Q==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95e4c0cc-e363-4192-90fe-68442af97a4b
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: knI45oJk4EWaxD5/n6r33Q==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
U3YK1k53egNWe5eT6KqZfeGVtyyPzMmAdx79ORYFzO+ZLnLCnp2WQHHQw5Vl6GVxiWZDhwoRiIes
il4vekDtUa6n+rk41t9E/3e7vgk0Go+4jK+vwUTlh6XrFRM+ZsYw43Hmvu2rOLOH/4iTVsl9eG/P
d+2RPZBqwnIUTcHLBZiwi9uXTVyhDFP8KMG8UjHbbZykb+/YnqbhfPx7l+vxvPrv4sru5isSLWqZ
lRXPrW9BON8kJ5ap2O00tdBgJnRnCmvGzW9m7YZxkUGEPgiREs+MOl8MzZVjRQnduTBasgf2Moup
COD/2ktYs5ZUJZnko6MB1OwVWzzWYodmiTNWF946jgx96ArujF8Usxr/DyBv+RaMWN0b4NZO0qVY
mVAXApu3GpaNZ7uZE0iMAagi11Nm9pAdyb4BH602LhVllvIO/LF+R/WK4pFa80WVjt8uK/tR8aPA
+jjdtvroVzimNH1VfQX2pI9e3BT+wtZ5a5DOCAIaE6RPTgF4oZH6oYtZtL/IQBHaN4dr8xWPwjdi
Y0pqGk81jCDYBi8DfQP+ZDuIpA4XsSt+9NB7riCPwIvJFj1Gj4c8JCee7zni1rmEbI/ZBh4pS7If
6yV+ut0ASUWjOmfGt9S0TIDmeMHxnB4W9kGRtbltoMuKJ6RhvWlKnaXzPpxSvrW6JbmdQtLxLU4H
aMObb5SMNpmbO5AwUo8WnNsb/V6CwziM1o8Az174mPlVWlWmri4RZwgCt4IkitMqh6b21TDwhKSL
DpgEjGY7oqKX2/g5b+2tCpVVgAy1aEy81Ui3AcPIZNWxGp+VDNuixhTfjK7b8Re4ScuamwSY1qZM
SLYeg6DfznciiFVNGP25s7n31tue4eQw/7j4LsnQGET5ScQlg0JzAL43uGjCazHN4OdLoP/LrWbS
7YTo56CtUW8QVM45lC93hNUcZih7bpOGK03hhXhELptdUpa9ihkeiWb5sRdilEy40xsqrkc9Vn/x
YbtSzMz3yyUz20GZufm8/tzCgrx8I5YBKLFcGn9TH/sWzChdy7yaAeXxL7gKHxoiba9qe9TDdD4l
UaMamrGm37tFgu3QXzIfKIDWivTe9gmXOq3P6aQnU1fqOHoZf2c0S0/9xJ0tUQ19SlNT7OpJR1qa
g18D1vUXHi6V5ie4BqgZoj+k4DJsaumgUp9R02dtofEgf/wHMHVa5qZul2vlxUOrOkqqpWYoLRh2
Y4NWxUrHJ0Q2l4erEXHKSvqL/dJ9uo1bppkdw/uK+FHjkM3xAyBbp3Amri28/yjY4FpsnC9G+Kj1
+x+xqmRJq581x4Gk2EfZMFZiVwtgn6ZwROKgHlshnZck/AcAqv0L3QONhjenNAcTkmzZ5KGdlQ==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-19d4ebb8-fc11-4e7b-1b22-e3251dc13e18?restype=container

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
x-ms-request-id: b7ba9ed9-b9f0-4b1f-bdd3-e4a5f9a7e5a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

