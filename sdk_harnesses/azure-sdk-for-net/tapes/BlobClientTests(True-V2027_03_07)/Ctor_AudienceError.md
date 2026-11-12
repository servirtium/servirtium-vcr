## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-dce509b5-f45e-e7eb-2c9b-4e4bbcd7c268?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).Ctor_AudienceError
now: 2026-11-12T00:49:06.9941515+00:00

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
etag: "0x20A7E8DFF63EDA0"
last-modified: Thu, 12 Nov 2026 00:49:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f2a4db0-707e-4f72-91e6-a000aa2f96ff
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-dce509b5-f45e-e7eb-2c9b-4e4bbcd7c268/test-blob-a607b6ef-feb5-4179-4849-75855a981d6a

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
iwuK1TVhEoa7Y5PJCOW2+jYNDdS3XdKXQhHGOi1aZF8NRY7hHq6cVPdeIPthIt9G5VQUr8rusS45
8pIjmthZYf8zu8JX1NuIcLncWDzXNSAyf1TZRbSVH5RfqCsbeLkfBb78LmYc7hF4jD4QEljxYbxy
8BuDfxtKnZwu+CuvbfgAvFN+2we5FpFDYbl2hAw8bkZvqIienIajspDK7fblyB5GEFYEc4a1udmK
QB5h1BiP8YnkQMRvYiDM2il27imaXZibL3S2N/vAue+uE1toQd13OvxtAYhZ1q42OJhdPsqw7+OF
xqSk2bqNJIbVwU7EZJlL/rMsLVwQQVnFgP9jYnsk/iR44ns502FC39wBhBVgcdP/Ej8Wg8KHdYRL
3li6KsELsMMqTIIdEStR6k1/Dr1EZQ4sZFA7Dnph8W327vQJh7Qb9tNRNiVR4QAUxJl0B2fHB3lK
jsZwz6JJyFsUJiM3SGOZZBfq8i7p2oJQJknh7OkGL+d6vvnuqiYwCG3KPLvd3Xs126NP3BRKYLND
IKlZZ9txDvY8vIlqqrnxuunBHp7HcknNqxBFtlPSMF5Fqol91qCRWC3EoCHxyzHpXiIriUIVe61f
i7zLLFejaYwrJP8wc+NJL8ZwA9In29/fW1gwp6YcMC7bHUrkxizWIDaUxaYxueo/4Vp7pHjbN7Dc
69D+c8LlD/TQVFWYZWiamuKbkxU4rqJu8cVLoIu2/+WaB9tb1610r7ayYGSUpnzy4QqWQKSaozwu
kIL9mW9oGlVv/V2MPsI1JuNfhU4+2UpIWb6BIL9BAGOeLEcrdxVGSkUPJKkfZaJIYBnAOh3u8LY4
tECx5/qVLv357hF7Ca/OGTsILrShKfQbOL+lgMVFsDyQ88LUlWNKefarJXaQzVZq8iHi5sECl4tL
la478K44sz7V6hbt+YPXvbW+9QN+i2toO46kY8l7jls3iQC1D4hHc3E4u+JAfPidCigLQ6GHzQlC
0rUgk1B0WVy6tnCDIq0sd4KSRc+JKL6VB1mhb0q6r7z2cjzTJt8hxGGGhcaIGed638we9Ic5uar3
ioz30uoRAAazja9xWVCicYFuA6P3De1xJ5B+m7o1vLmS3JtTKfF3dIXA1Iw3CYV7fIMFy7YH/3ye
hatZkmRLftD23321T0eQ9o4eNzlgOR0KAx83L/ADit0etKNFHuEgdFa8QSoIxSw7ddUn6cdDPkyN
To9EFE/f8lSflpujStis/cPjpPjzAj3z+7kb3KAV23ZXt89S218H3E7VaC+RmCv9euwEYJlUmkxR
URmVxBazirslTJIIWiFj28ipHpkOYmOOHmG0EHrcAx2DAIlGcRc4Id1za0uY9CDKoITQq3yyQw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x234EF07C62BD0C0"
last-modified: Thu, 12 Nov 2026 00:49:07 GMT
content-md5: ajP4GQz1Cz26CFHWpuVpNg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c4af1f6-de88-42cd-8147-345bd4c46d46
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-dce509b5-f45e-e7eb-2c9b-4e4bbcd7c268?restype=container

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
x-ms-request-id: f746c32b-db01-49dc-b24a-31fb833aee9f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

