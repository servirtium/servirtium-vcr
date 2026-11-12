## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-639b57fd-b33e-6598-859a-2a5e3916f35b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).UploadPagesFromUriAsync_AccessConditionsFail
now: 2026-11-12T00:51:34.6196790+00:00

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
etag: "0x246C8BF9DEAE3E0"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bc6000ec-7a2c-43cd-9121-4d90dfce9e2d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-639b57fd-b33e-6598-859a-2a5e3916f35b/test-blob-84dc102d-e6f6-8c7a-a97c-3b360dfe4016

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EDE881EEB86B30"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 668fe7b3-b147-410c-b4bf-0598ea8fd244
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-639b57fd-b33e-6598-859a-2a5e3916f35b/test-blob-84dc102d-e6f6-8c7a-a97c-3b360dfe4016?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
o8cI3Sow63NIRk8tIM7Dew4Fkavu/m3k5FbMBmMB/DMpBgtMAvxyzGsnGvdkakW2169PM4VIbaRZ
JPnTZOUQR0obBBnDdngRk8Q/xuN2gHkRFS6zscmu4Jlm890DnmeGFtOtSGUr8mA2PqDACabB46N/
wk+2XZaAbCSAXIOaDvRcuK8PyDcT5SLNfHMo7dfypQ86g9wYz7k9LdtBq5bdmy+sY1D2sRtra9ws
6eAiWH5Mjbd0YIoXROj20ptc0jmM7+BDfIqH+/P0zhj/7ObYGtVc9R7eaTuklB9nAN9/D5mjn/n/
39v0xZLEf5JyGFcCHbfG/9wbrYalnudqH/oUdL5+XEzt2Tv5ZzCLGumpMnzHZeMnuRC8h/JyWkD0
iqWXrwvT87sKFUR8zJesj5Od/GxqorkX7bquwtRaen77Bd2K9Grd1T7AvVCeq+x5EPhe1V3Uiefs
gMJRJTHnsJrFgMe5IZsovyYtqeVoeEHNNLHb+6QgJ3v2nnSojLAN2Qy12Solv+5cNhU2pt8BgweA
g/B/C7T2pFlMw4MnfzN2INDYs58XqHXDf8SO6oCc9BpsJwi/jc1YvzTR2PxqNbbiwIUOKdBnadt7
vIzvZ7rYr89pulgqtpMCgPNrRs94WEkOqyn6jctKBL0tRNBBaFh5+CktAXteuAnyC6jc/CMLAmRD
4buR3SIDHrWa/HLDwReb8U2mS1bNr/MfCIEibQiaIkJs/oec6BsGKeLGw7uXL0qQQAvWZLYNdTHH
cdSg4bGtANovV8OQ/wkxnyJ0B+w4iNk3kiz9w72LXohV1HdGZUgxGMLgZ9iGAEEBpMSUmW1Ej+j7
aU+Erz0dpPg7OiqR6zrZQu4qVyAAsJHq+x749sUbEEWOSvz5rWmFw8LgS8UXcLmKulZ+GjfI+ri9
mbQeJK4yHyrlA6A94JWFpZRdIGXM04tlbjtunPYNxU9EPBO0Zp8UrSubMWwZTdnB+HWjatpT8MUp
ubVyw4M01z1Q+aSB0T71SXM5MaEeSyFhraOAalt18EtOi63poemnZ1ouyVM1Pyc2riFnGb8jCm2U
ERbgs2zi2ghZM0aRC6iJkclH8ILNLG17Sbw6DteLKoA/VJDTx7PtTO5L2wzhpaJ43of12xrrx+So
ZGqwqMwwzQnFUbcXtcoWWqSUgVFhmqMawTBQlk5mVIyrK2NJPKMhGg4CG1PqYSm934F2VkWTRsnG
luec4De6X/0qbIlnzB0AcmdCXn9QL2AGk7bN7/1HGOSZg6a8hDnWSLtWwPWfVhNjduPeUOhJdmaG
lU2A7W8A41OlzUh2Q+0tbBbE+W5rZz2jaXkZaMf8UA1ANe/sVlpLVt2h+YjK7TP1seTRhXz3Gw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2007F87BAAD3D80"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-content-crc64: aPR9FDTh4Tc=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b747b30f-ec0e-4c4e-bd22-f2ce5df0a916
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-639b57fd-b33e-6598-859a-2a5e3916f35b/test-blob-91a379bb-6dc9-d9b4-7b46-24b7e32acb91

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CF1F6575CA6BD0"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ece9eda-a788-4df1-bcd3-9c5a791b1edb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-639b57fd-b33e-6598-859a-2a5e3916f35b/test-blob-91a379bb-6dc9-d9b4-7b46-24b7e32acb91?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
If-Modified-Since: Fri, 13 Nov 2026 00:51:34 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-639b57fd-b33e-6598-859a-2a5e3916f35b/test-blob-84dc102d-e6f6-8c7a-a97c-3b360dfe4016?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=6DOVJwRTvSgbutMfEETsMdf0olvQuhiGOhe4YV2UXEA%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: e15629f1-45b1-4b8a-8428-c2518918b6d0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:34 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-639b57fd-b33e-6598-859a-2a5e3916f35b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
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
x-ms-request-id: b3012b0f-4348-4bcc-8d82-2081508918a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-dcc11948-d579-6f55-6314-500c8eb725f7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x215B20E6D373740"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4761b9b-4b1a-428f-9caf-c6e38f1d0b16
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-dcc11948-d579-6f55-6314-500c8eb725f7/test-blob-8a45b6a3-790a-e712-6969-c32d1eccae43

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2086A85753DA380"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f8641525-ae36-43b0-a3e5-69fab0d16ce4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-dcc11948-d579-6f55-6314-500c8eb725f7/test-blob-8a45b6a3-790a-e712-6969-c32d1eccae43?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
cM4WC9hmUsBcAwivwsKof7Gq7fM9ZJzlJDMttR2oSsQgLEcVE7+44ccBf3XMpa2ha9Fa5MkyuQsx
MOekOZ2itLhEjpV7k2vy8QsrO+UnGH6FjElLTWb77nI74+PXE6gqXsu9iBYYJthmaPK9Bn4mChdp
HqxTVmZSSaAiP6+HG95iAN0ZapBnbWZx5eV0Pef0FdnMbvT81gdlaj929uYo3kwUWgahDKCGAbFF
4nCA3Qu4LSnWu63pZinVtP9Q8XZ/SAeYYOPhUwg5RWxDtvSW5I00vci9UiOfKvPcy1igNQ86xplp
6H0o19kgnHZApa81PtByHDStwvbk+DXvBIewmA9dCPBaLfwPDOXvnLWtX4VDp42ILhnbjQOihe9I
ONJRcANm452/2hHUYhBOviVBN5mwq136KGr2gXvst6cMx9MTnSuyRnznhMx8tMwIjc7eYU5WmI11
V0iZcGEi0yJpx5o9OyH6jvAcyCeQfnOd7fSsDlZZti9GnUXjGNYbxbGpE+wxy1Kt49JdOc9m5NnU
+4JtdcTMDxFr953bF3YaAQN25muHayKi/yqD/Hxf4LhsDhxTrk/s3QPbxdO00sxcQjjM8P1uTZBf
ynaaSBKVCxfkbghZx1KziQlnrKZO7S1dJ7pDk/C7/sGM9OPZUZXwRrq80GPEAnvlGWb0BqDpEN1J
PCBYUXgmKW9HzNJv2Tdzdmbskh3JmSQ+XXmJxvggouMFkBV0l/RBlabzfDaodj8ugI86/X7Af6P7
GvT+nWJ3JynvaUki/95xqvx21Rzuluc6W0Zo5aRlRRFxeH0AQvhEfFUMuQz2C4GwyFOCSqmGDYMN
xEEcDkGFiiM4sYZhcWcDMVjG4t3aQ1DFtx1R4vtn6mv58n63KG0Uhy7ovlr6T1frfxhQwCqmMoDx
VlYkM6co0MYaZ37pSwnqsluu8YX1ymjFZWLjFipAU8D9xtEX8FOGwO2U3+jYATMOZQ3P+EH7+4zu
Xs1ERLqb2hS+64U408EIJzCXYep/7WMv1LAdcVp+AcpFKJKFQnsy+QXUGRWu1pJMx9ERZJqhb3Bp
FXAKfmi5QOm68qsvguW1ZGflqtNOgP0d0KqJbZ0wo7khGywLKHudGtkr8+PmHETrW/8yvMSdG5Vz
7K2+MNNMik/yDma5qjzsSJD6Io0ZN7RlnRGe/ef0g/+XlzvO3uoG32iU9A3dMrHCRXM0o/kHWbX4
WJLBrY1n/YpmIhIBHmml80IkhEKnh2pf3LdzwOAGjz6F1YZXRDLbLfeCdxCfwScKjq+349RzUdAn
YtHV8zyqYJLTe0jiTq4PSVdKJBBavxqPaTIwTqtqEoS1L+JgBTm72BZ9zEXfJ0AAqJp8KSzAzQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x236703406EB38E0"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-content-crc64: HzlP7X77npk=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f65759aa-1985-45a8-8c84-304465bd843e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-dcc11948-d579-6f55-6314-500c8eb725f7/test-blob-fa4c8f1e-f2dc-b0d5-42f1-2fa611ede957

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2132F088D7F06C0"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9dde0c7b-f031-4cad-bda4-75cbfdf00e19
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-dcc11948-d579-6f55-6314-500c8eb725f7/test-blob-fa4c8f1e-f2dc-b0d5-42f1-2fa611ede957?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Wed, 11 Nov 2026 00:51:34 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-dcc11948-d579-6f55-6314-500c8eb725f7/test-blob-8a45b6a3-790a-e712-6969-c32d1eccae43?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=Hizh6ATAv0E5Bg1B%2BUOm5fMU7Ter4auRyVENIAloz1w%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 22ec28c0-70af-479d-a911-a08f216b7a78
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:34 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-dcc11948-d579-6f55-6314-500c8eb725f7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: 788001ef-76be-49c1-acc2-0d30e4bb93a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-aa3f62f4-afbf-5eb1-0396-62dc1bf92234?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26F1198A5971A60"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1905495-8678-464c-bac7-3f39b930e5aa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-aa3f62f4-afbf-5eb1-0396-62dc1bf92234/test-blob-5f55908d-4668-aad5-f439-4c9c722b77a0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2534103C599AF20"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6f091d7d-6633-4d14-9165-5c527f0fae74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: PUT /devstoreaccount1/test-container-aa3f62f4-afbf-5eb1-0396-62dc1bf92234/test-blob-5f55908d-4668-aad5-f439-4c9c722b77a0?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
+VZdmeDG8bDhlUgYSWzWe4BsOLyNBINv3e32RY/5lUjP+6y6j092LnCOyCpnmBSXwOZbrsFlpvXT
7rzzz6sg6P8ASU6/G+wx9QlL/jtZCEXZXoWpneaGaVW356GTg17FbuArZk/G2KT6Kri3Gqe5euV2
GXEld0sYed/4BzRLnXKqhZBbLaH2E4XgrnItzk+t/my7HGrtoPeVEu1vzdFwr4xGDJQXXkxEgAbr
RMjY6qqQSgnHj4EHveWYxRuzhkW0cP7l5sK6lp8gd5tjAVsuvCdD34LIqB8LPk+vfpgwkPrAN9TK
8wPo1rNpphjlpLyJagnzcKbC7Mje2adzChgG8OahosmHZMgjWgnPXgEHJpqSJROPPB9T/UsL6xlc
dcubY7YxQwHyAgZB0BWd843G17MN4OUFd7PGTqR+e3mux+U9M/tK1eKZoCINTmwJtQq9RBNmTpTm
lusDavVcdIeNkggwX7+SfAHRc0DC9ylHvZmawDZlSHhQV50PR2rtPSubgLtj2VVKK8gRlNpUI57B
u61cwbRRKEmQ3wgigjSX4zYUJ3dt5ORDUJVtU7Od+zP/TYu8kXt3SVhy0/lNKKiTerGjQPwnVNfJ
GHEe49WV8uPUIzSp2lK7nd0f+xHq9ijt2tgC+bs31/m083gKWGaD3OAVeAVz6p9e6KIeCFnG3yJI
MQn8kvgnnUs69OfZsER3mx4w1H4jee84oxEYGM+g7RRWwSdchkno7tq5OPW4hDdep2w6lgqkJbga
w+/mDoV7mgfTg+8dGxTUR+ajaUD5gB/ZunFiZlcJsptvQsNaAd9VPZ7u5QFIQYtXZk4kALx3IEPP
DVQUGTSwydBTrdlReUUGTiuiC5sdkXjlC/8I5LLf9yGAi/SKQCRqPhsw9JOyBu0JHbKR1BSnsnzc
Lw00p+QedLa30e5RfA0GOM2A7ZzkMgUS/8f/TiMN2Nh3rhEXNZY2EYDd+zT+t6GkipxHJ8Tf9/0I
IqgdHiaSqvgV2c377wI2SdscBzbQE0clW8OGxbEUl7cUDhPuGPJaSlE86d7TqJuaEN3pw/DGOA5g
98NiDORHAUEW5+HuSDHowbzklClpUrIo67XTKtTHTdUEjSEu9z1t9eicvcG6q8esAAIz4qTl9qUQ
OiEuc9ZtT5kL6roQusp+d59BzZTxbkDtJyrSk2sxH5Z7Hr0cPoERL24nr8ENnEY3tWsFoykRH8zh
QUyrm7wt2csjlJsNYTgdL50myr9+4Ivkmt0ALHxtav7wO/01ZZOy+dX26QeqKlQy53OM6lUNYmDA
xwDeLa1OtiqdHCU658kKc9DpiPeDOnCJzUQI4X+p49mddJ6S08wopzLdDA0u+ACpgXaEI9loPQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x272053AD75C9D00"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-content-crc64: 2VCpnDKkWEs=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 283237d1-b7c4-4482-b077-04d50ea97f6c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-aa3f62f4-afbf-5eb1-0396-62dc1bf92234/test-blob-c5e1c104-2da6-5b62-d544-5e5f0824bfff

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21EBDEB0F7DC700"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 94dbb8f5-f328-4d9f-9d8f-835e865af24b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-aa3f62f4-afbf-5eb1-0396-62dc1bf92234/test-blob-c5e1c104-2da6-5b62-d544-5e5f0824bfff?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
If-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-aa3f62f4-afbf-5eb1-0396-62dc1bf92234/test-blob-5f55908d-4668-aad5-f439-4c9c722b77a0?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=afAIO%2F%2B5RKDcMEIdKFSX8DcqCWDjk%2FiEARss4eUr030%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: a5a97d82-0a2c-4353-a9f4-20e3da4d8fa3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:34 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 17: DELETE /devstoreaccount1/test-container-aa3f62f4-afbf-5eb1-0396-62dc1bf92234?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
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
x-ms-request-id: d3ae4355-c26b-44cd-b045-10e622710ca9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-01103734-6c7e-60c0-5c32-18d4e15b8d7e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x200775EB9760F60"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95dff2b3-ab3f-43bc-b696-f24e211c92ef
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-01103734-6c7e-60c0-5c32-18d4e15b8d7e/test-blob-e8a2ae6e-0645-0054-2f5b-27687dc605a6

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23958699C5D69A0"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe7a3e91-6bce-4f83-a575-0e230adca156
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-01103734-6c7e-60c0-5c32-18d4e15b8d7e/test-blob-e8a2ae6e-0645-0054-2f5b-27687dc605a6?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
CtaAYvejlmAu+ooj53ahz3lMaDsadSGXAIFodBSNeXm34FQyo10IkKGw04TinHjlkElblfNSY5W0
6GF2OyJMoIAQbAchbyscRNeZaqGdtWQIguPKMuOGZX2/fbv7kVV+YzMD0S9xwyAdP1EbuPjzFzP8
brg+gW6ciQeJYvJwILKBGgZumeM1lr7DrfOSa62FzGaH/iOdQOLEZkcn52EurR6emZ3xhH1Qx9f5
etN7Ch5aBJWM6SGO5NojqTKbDa9dlADU89EQk0joNjdMpMUOSVwpzePLosP8D7XCzdpKtbkonOXT
phZNSnBNo7LqQkAUFWDWckDLkfI81+McTcVtnYF+JAjfO6NF3IJyfv4REs10rrh6dEN5XArzl88y
MP2r4AYxbB44NNq8kJW9WRP0KsQWp54N8yg+BMf97KPTE6uFx5734KavPHneveOtuwP2/mwKG4le
nezd8mdWOkc26H3qN5F1/EoeZ2okLjVFkUnEBu02yfchJymxGe0+WQIyp9RmwoNxgQEh67QeOW+2
mGEekTNZ/x+FyBBoxOJd3w5o8oZh3s7FU4XrFN1DA+26+oGLIMfO2Ki14flzCb0fxAymtUboVbqS
WD6ubepBQsUirclh0b5GmhrerPzUUUrIzFDRnE2m0qXG+ciJIGq9c580UFvzvfNNXxsrCai9vQbz
5aGab6V3fNsjmtj2vXmwIThdoAHu1A9chD0xesj8CTvBlTrJIgT5vNSAzyIbVqKie+hwYB0FBBGR
PepoRgESJ5GcNSc/5/4zY+QtbgTsQS2bj//gi6gevJApN+QZkXbTbaiRfiF6Y5PpPPw42JUMpfu9
zLYBMpvofnmWFbAaGtFuWQFcW8MMICxr90+r5eP6HJHoXMS/0ToMqP+o403jziIqyn6UsEo4sKyK
lTtMPZmVnPgeMb0Nr4jGT7LDZD3eiCgsgRplZmxGsKsYNDv/wGtmEkdUxJ1kHRv2zWCXdUxuqw0T
H7t+LzWM14ES9HpMx49HXFH1isOKx2P+b5gLrzteqYgu7KCv6OMRx+wcUimgqQXRUBj7eCFJiFdY
f8CcgChFs0ryHtvul3Ru5MLXbnU5XsWSOl4jYzFn5GNIVmgidEfD1p7frosq4rijjJRechrhHyH6
CUXKIlAZijp4pUEMS296E5fXWq85aFelf9acCHFIZjdGKGsB+bNNxiNRsj13l0El41+DCsRxwaHu
JKN5fILILz8JxSMEeRrjiZSM57YaLeiUdyUSxVxy1WbJE9QQ1EmhiYL+btEeIGpEn4Aw5dnq1Pa6
5AVctmrilvC8OmZF07VK6l40HL8Wdla6zSXbQu+N3z/dVe9ERNIXG9fgYeYE/8zK5fp6trc3pA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24E0BA3C65E28E0"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-content-crc64: 1g1qKStzySw=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9248be9d-b9b8-4d24-a1d5-1d4e22ed15f4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-01103734-6c7e-60c0-5c32-18d4e15b8d7e/test-blob-e8001c8b-1435-b670-ce59-105cf4132887

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26E93EDEB09E040"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b8a41b0-3ddf-4e5a-8015-b756c19115b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: HEAD /devstoreaccount1/test-container-01103734-6c7e-60c0-5c32-18d4e15b8d7e/test-blob-e8001c8b-1435-b670-ce59-105cf4132887

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x26E93EDEB09E040"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e0a6185-d647-4ad3-9498-5325ab2aba60
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-01103734-6c7e-60c0-5c32-18d4e15b8d7e/test-blob-e8001c8b-1435-b670-ce59-105cf4132887?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
If-None-Match: "0x26E93EDEB09E040"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-01103734-6c7e-60c0-5c32-18d4e15b8d7e/test-blob-e8a2ae6e-0645-0054-2f5b-27687dc605a6?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=%2BP43Bdt17VhjI1qDitezdpnNyw3eNrZ36NaWv006LWU%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: fe4aae34-aac3-434f-b800-9d50be2c7c1a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:34 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 24: DELETE /devstoreaccount1/test-container-01103734-6c7e-60c0-5c32-18d4e15b8d7e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
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
x-ms-request-id: dc02ded1-94cd-4e7e-8cbf-2a2b5bde72b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-9681b1a6-eaa2-14d2-83df-328adc964e04?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E21B9AF79BEC70"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3e6e2b8b-b916-4d40-b90c-13991f2121fe
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-9681b1a6-eaa2-14d2-83df-328adc964e04/test-blob-76ec62c0-ff3e-fa49-7c42-7dda5c5aadbf

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x204C4FEE1F73920"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4cc42cc1-befe-424e-9b38-8795402fe1f8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-9681b1a6-eaa2-14d2-83df-328adc964e04/test-blob-76ec62c0-ff3e-fa49-7c42-7dda5c5aadbf?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
31TumrdOblk96xrr9fcLGzOgwsxFbwOhSexlVeLl2TcKDHygJI7QV0MnWLfP5h+M0xZXPNSCv3BQ
TVDK6Rh2VxHj4el6a/ekz2qIHRZM0mPN2IHLjp1jh0wMUNc+BW4rsQCl7AQ1EWgesmxq+aJZA3rt
/RCWq8l0f1qcbhsgZsr8XWwWpuZel8cZrNsw+Y2qs0xcUQddlAU2MWyqmKNN/kyhbZs2Q1yUjmZJ
fP7uQ4bM8rvPxBXDnslm33V6s/4jzK6Pjovxc2/vyMKgFBgGSO3l3aXofjo23s/Sz2PnGtpnJbBQ
X7X7239L3/xTI4qxX5aHlNZZO050WLC7HqMLB63nOe5ntuk36QImnJ4+4rtEIXDNX4UEDuli3AYF
P7zbP9hObOqbSaitT6vUMp6vNnX1dvwzPqco4ioFBdriMqlFS13G73bQqdjHHxDaMNtLsqaQEMnA
pwAwJYm/lkTOyx0BjuZB6Ub+JM0kbB+XTrJOuVI0USLghaRdlsntERKT+FTy2KH1Cshfkez7mzvh
mNfWcdzxmnn7IQlC5FN8ERO6kHPLpHYRWa+J1MA25eloe/3yF6A1oV7b97eXsiV144DYQArHFvNh
xBcsZ8a5xDsg2mhVivlyhO4V8Ky+eaeJFPE/XaTeoWUKkFKICTmYITN7d9i9H1iHZrscsiVGokpw
olPUeWeXQTkCS/mm6nu1fc55QwLOzPWYuPbpwu4/w+4HGGbmw6fL5DWfu9Nf4Hw/ZjVXzV5IodZd
PMFwrX5KwogKn9EVzrkmrl/MLxAhONd6qVu56PWPv3ePiIfmWja3VPhKVEGqKph7MR7/e3HGPAPq
9QQikdqSe99ahkUyQFMoFdsY1uOW0H/DPbbXj0MFyUyD/GQylMMeuNlhUKNSSfDL1maWrWUfUyWE
X1Qju+ubVL35rkTu9oEX+R4KNIDbcPPFC7ndbxvnY6g+rTRv+vztxvvmWZqs3N/lfrNGFR6lqO9g
Xa8yveWiEkubsElMqP8iHG6E9RdZGS/Z+PBnoE6JmQVFDpxMuwgVREZPECyWmNW0JPmwILPYB0SA
WMX1OnL9EhZEB5pi1WBlb7HQCQgDQl8asntU2HhRbAZYzGJCHwnUUv4VUpE7UU+YSrECCP07fBZm
24j2qDme8pqTCgj9I0+n+7cK7u/O3mErvI3GT2QJHFBM3ESB3qnEdmD2qEZHmidhWgxGMI4ml/wm
yuyr16I2iu23sEYLJRwNRniP2DYa5CFmZfVXwuzCJkRHWhO9GJ6+wB5Zj+rgVTTvOOoWlr/GDOXK
RXKt3scB9YoBw8sITy3Z0RgXwFU3hQ/AZ4kBrI+FgU4u8tMsEeFWWJlg3pJp5+m9PMWnrkuQkw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CE7A8F7E20CA60"
last-modified: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-content-crc64: /Qbycxz4lwI=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9488f71-8a76-47fb-a47f-fd957abd9209
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-9681b1a6-eaa2-14d2-83df-328adc964e04/test-blob-bb68c136-a6d6-577d-80a0-446fcaded202

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26EF77BD313C8A0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f74adf95-9874-40c7-9937-dbca988dfd6d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-9681b1a6-eaa2-14d2-83df-328adc964e04/test-blob-bb68c136-a6d6-577d-80a0-446fcaded202?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-9681b1a6-eaa2-14d2-83df-328adc964e04/test-blob-76ec62c0-ff3e-fa49-7c42-7dda5c5aadbf?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=h88ZUrS02WpJribWaVyu6TPf5QyntI5ElhuBLbZkhYA%3D
x-ms-lease-id: 51bb7c97-8da0-355f-4a1c-62ae140ada9c
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 44f8f7ff-d7a5-42e0-b582-b65ffc5393f1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:35 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 30: DELETE /devstoreaccount1/test-container-9681b1a6-eaa2-14d2-83df-328adc964e04?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
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
x-ms-request-id: 55b26273-db6d-4dda-986f-835a3b221226
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-c9125f9d-6b24-5818-5065-624fec0c8c62?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D11FDB34479800"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 460383e2-a614-4694-a4b6-0c586fba0245
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-c9125f9d-6b24-5818-5065-624fec0c8c62/test-blob-2eb90a4c-3086-a344-28bc-58e58b1d1ff2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23D7D3CBA5426C0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 27bb8490-16af-4d26-b85b-30b34db151ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: PUT /devstoreaccount1/test-container-c9125f9d-6b24-5818-5065-624fec0c8c62/test-blob-2eb90a4c-3086-a344-28bc-58e58b1d1ff2?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
jwVw7eLVvBrllPWdu9kwnnB6Pf1H45rLqBBqcUMta3QU4eDEbeQfx6L45JB1epx2NcTfcc6OG6tq
pUTSakvWtymBidr5azCLWnVbT/8KVi509Dt/TvmlhsY0WcigTV1WIixm9PHCfMqTUxZYMsysX08W
XXYQVmgv2wMUxRJn6w0YBSzSpGE8sndw7PvjTFP5h/l5ie/nRczENhnurbe4K2cJQC2f2rvt2qv+
n2ltTI6vGj0Y7mIdMb9gDm1ITgTAuMCT2gwlWq0+jK9D6KViV+qLPpN5nz0F6w9uP8tNpIunPueo
2XKBisCQ2mGy2UkZ/raDvQ9wRhmDje79txrh8OcjnKm+uX14CbTS6cTbUxHGVUEVyed7NvfNJUuD
hNKlrul6jz2fWkQ4C7Rbnl1UqDrcN2LZzCYAp2Wy8ZQx9IThLTvbYMPUJvr83L4zIJiaeXwRpk1w
y+HCeufX7WmwBhYvenAieUd2CBBn3e9ozIfNF3cXIE43cGFZGObc/TmRS9WnBKUndwA0m548Ce7x
Wq1gCtXxmObI9wkPyWFhmQrW1ZEawcjhpaB34oWv+mdyZ705fPNkn7Pv3wycF66e0wGTZjNd15nk
fmQ1erVhGP2hnGGjJx0XcjXeK+G8RY3x2A+DHJQ0FZAkVf2OLyX9jccP+ntN+6zjfPP9fqy3KDnW
Q6Gm3ftobYbRftIfiEMP4J0arEoSpN1joKCgNpfjbSzEuOuEVrDLpoz0e3zZw/Ow7Z0OnHvvw5/E
Qz1bxzfv7RGlW9BXi4rtTwW9Hihgidys8Ej51dCx1fRLwBNyb95VBI5qNGgjWGITIE11MaV2Y7pg
r9fu9hdB9IXbC8t2euAnZxqa9VRziJjm5bSDO6NP1VxYEr8HZw52KUDiSEyXnKZsTsmK3G5l7CY/
BxBjvrjiizZuHmggHwALJMwUkUBMT0kOFu3axPnu8yWZyF/9E2uHAL0VKH49TC7If7ehUVvl87jH
VKfLB8Y9gCpDhlehDhFhjJCDNifK0Mq+EUVBTKHJs9WmNr7DvPj316dT+sXXJ3CmQMTKYryR/IPd
DfaA/DOIedOB+thSnc+YjF5/dtUE5urVmgvc/lEYFTk65a8Cdtt0yoHyVSyYU6L1MtZdEYat2SYM
q2EorHqCaeSfGLgglhWDC6xUEpC9PEdp58x6uwOzjAyI9st5TB4Gb+xH+Tvq1ZzA2QbZWcaVTm4a
v8SuB63h7Iusl59KCr+NTqKkdkMMfhIvueH92TNF8qdcX4xaV2g/Zg2vPT38ds9HTAsj8dgrDUCx
f03L4xNYZqT47aoyM/Y6ZQ81XEHUMkIStYwoIQHPMFJMqNgac4L6V9aZBIklFRkU6YzI9bD+3Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x270256924A5B0C0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-content-crc64: pNg1LxkouQU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3c976847-2cd1-4038-a5da-026110f83995
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 34: PUT /devstoreaccount1/test-container-c9125f9d-6b24-5818-5065-624fec0c8c62/test-blob-6a053b8c-2e3b-ecb9-a073-133874063ba1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_35
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x236322F91A01940"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41109892-1559-4720-b53f-db4ab62acbba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 35: PUT /devstoreaccount1/test-container-c9125f9d-6b24-5818-5065-624fec0c8c62/test-blob-6a053b8c-2e3b-ecb9-a073-133874063ba1?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_36
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-c9125f9d-6b24-5818-5065-624fec0c8c62/test-blob-2eb90a4c-3086-a344-28bc-58e58b1d1ff2?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=psTvL%2FWw0yZJwaREbxmsJy3XCTwgb1jNUGlAokeaJtI%3D
x-ms-if-sequence-number-lt: -1
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 4dbf893c-d05a-4659-aea1-e51467cdf06d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:35 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 36: DELETE /devstoreaccount1/test-container-c9125f9d-6b24-5818-5065-624fec0c8c62?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_37
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
x-ms-request-id: 30ce1ebe-69e6-4ca8-b13e-a5459f437d5f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 37: PUT /devstoreaccount1/test-container-0f8bca4e-54b9-2773-91f6-dccccc2f8ef7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_38
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CEC5A25F9375B0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 836761cb-66c2-435b-b265-c6064974399d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 38: PUT /devstoreaccount1/test-container-0f8bca4e-54b9-2773-91f6-dccccc2f8ef7/test-blob-0a688d0a-e5a3-ed89-a6fd-a6220ec6e57c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_39
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27ADB3C05BCB5A0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 767b96a1-03b0-4368-91a7-07f5746a0edc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 39: PUT /devstoreaccount1/test-container-0f8bca4e-54b9-2773-91f6-dccccc2f8ef7/test-blob-0a688d0a-e5a3-ed89-a6fd-a6220ec6e57c?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_40
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
yZo8uquToR5RzI4SHAwuIYG3l8CSEDg4x97ZRVLtIHDlHG7ayoD2uihtvuzGYAqFx7pKFZjNZLlh
A/LNulzMZKwdLQCdVFcAwd2XJFFMcmfTU32XogvXF7e1eMaOKP/MoFpAqDMJ53NiSlS7NkBnFZGK
+WbfNMGhRhZJ6NyRcZjdy4P3DMozymwKNVi2HOB3TWI0Ay+Y7WyYnmEdv/6W0di83Wu8cAnHVi/6
1P9p6ik10pt5XG1oRd0XXm1oFgptc2N/+j50ut1Zba3/nhhsL7Q35+1jHXVqU5iNpBGbX0AljGCc
6e/rwBe+IO/AaafFqi+5MC4dClbtFKem5xbLvQ1s2hG30EXETCfVpf2GqenwyPri4i8RB4IKrtRI
RNkB8mLhU46VDdnq9eMHR2VZZ2q9tR4b6NveW9OPrSJwewhO07KapVVbWrog+OxLCr8dsEZqio66
5QqHAvi7BmC3eXnbuHSyvsIUYltk+/Duk1ATcvzbBvF5lO2oE6JdoFRaaX5zcFJLavGEVSgzVuoZ
mG+oqJRj23OHYiSGCqsgt8IGCZJyeyP+xwcKV7HJRT4Dj3oytffA9o0K6w4txV9GZJ1lLExYph1M
qeCMWYTCvhzlgnsx7QLKRhMEZ48V0AGoxPMTYxnyq+hd5gsXM50JSC3xSELkFXeam+Y4Uz6NN9je
5JSRrloD89eT0wb3shJ1+x9iI4i/w697eccyuVepz68yOE8Id5rS7lRrUUFwo+jTw1gfKhRQHyDl
FTSS0Dp/6QRXxHrCbYOFkDQzU3JuC9XfX/X/iaSa4hgvI2JlPx4a7Gc8GN9uEFbUmprfHMutdwlf
s3BEf2BfvOJhk0kgIFEVGWcLMfP2cE+fK+8Ku8VMgatZBYuu1WwG3Vv9DHwMs3pIygNkokYWaEIh
pFRxVAEcFBGexxrGZ0P7BFOX+WTSk3d0wfDB6N9lQ51IjDEXlYhZ4PhqbuxggmLAaZ3yfm/eTxDd
/JIQWywyOIR9fdsS427LPhhsZyWLFD+OAX9Bc8QtaTwgOpn1SIXLODZn4gSHrYUvJj9WcujrUudT
glms8cS/TxSe8anU1fWToC/vIzI6BlP5Ek2F1vdUNOeyosYrH0ZxqJPw6bvcWlFKwtK5/C60GHsF
s993OngdSb3BIjMvaIHofXufSh2XHLf7OxQkmzi5/YlKJWxn+m0a05/+GzcdGlpR0H6zFc5ebZYn
e/9k+K2ECCSp5UIUgIMNhXd9mQGA3iC508q6Bee77LjWQH5utdryehMTdDUYPFD6ppBW4NSUp53e
qyTiyQI87vmKPkAEns+cix7ubWrroZd6v19XZAvjQZnhkAm2D7AQ1oU7jv0Q9gfAulW1pjoz8g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DB341BB7222740"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-content-crc64: ncvaMDKX2u8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e10a91e-ecc7-46ba-b813-593b830bd817
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 40: PUT /devstoreaccount1/test-container-0f8bca4e-54b9-2773-91f6-dccccc2f8ef7/test-blob-e496dd6e-12af-6a9a-c957-96aab62d9a5f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_41
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F683C2416FF220"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6e9d2b38-0d00-4666-898c-6c55fd0ee4fb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 41: PUT /devstoreaccount1/test-container-0f8bca4e-54b9-2773-91f6-dccccc2f8ef7/test-blob-e496dd6e-12af-6a9a-c957-96aab62d9a5f?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_42
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-0f8bca4e-54b9-2773-91f6-dccccc2f8ef7/test-blob-0a688d0a-e5a3-ed89-a6fd-a6220ec6e57c?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=IKitYUBmO09b%2Fa4cmCqHoxei0XUDSWvDquTH35BDWTI%3D
x-ms-if-sequence-number-le: -1
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: cdfb091d-d0b9-4d64-bbdc-685362acff64
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:35 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 42: DELETE /devstoreaccount1/test-container-0f8bca4e-54b9-2773-91f6-dccccc2f8ef7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_43
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
x-ms-request-id: 8facedd9-95d6-4fdb-a844-2c8eee3160c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 43: PUT /devstoreaccount1/test-container-29ff9dae-a6a6-f06c-fc4e-e7ff69d3f9fa?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_44
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21BBEDC4320B8E0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80c9566e-fd91-4911-8378-90dfa09077ab
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 44: PUT /devstoreaccount1/test-container-29ff9dae-a6a6-f06c-fc4e-e7ff69d3f9fa/test-blob-213f6cbb-556a-78a6-66f8-133e9b2b8b38

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_45
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BE76E1978F8490"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4076e37-b4c6-4b61-b500-92d0874c67ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 45: PUT /devstoreaccount1/test-container-29ff9dae-a6a6-f06c-fc4e-e7ff69d3f9fa/test-blob-213f6cbb-556a-78a6-66f8-133e9b2b8b38?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_46
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
1NhHyaNPQvfz/kBMT983eGJHdHDGvNXIcKbnYSuaAfZem9Xd5tG8X1sINqhlIKEcF2+dIV6INBcD
flj9Z+DMWP1K7bMKWZGRixUVvoYsY1AEykq7/d+X1me92mh5vvd6O92rGjLtEr3dDJZJcnaQ1hsI
+JyVEFsdsxdMTH8pGMwdm4KpgUgdFreN3vFITWPxLANMcMVb5CuBjWcbocY+tPPJK9fz51XT6+Hk
CDFq1WW0Wx973KcGwrZWKPPhAnXxTyr9fiGL/UWueYXkdtv5FrgBZkWmwtdMw2kgnb5h8els87kH
bVZDKF7azWMiIkvbXBE74JsvS4xSsLu4al+GTIecd4Mh8qlivT3nzPR0KaAdRUCtJhFNPKcttbya
i77+U4HbhqvIuWpn2CJdR3+X3YYbmiUf2CV1Tjrb9DztxzJ/6XhzmaP1VYzWRk3v7/Uoldc1f/CZ
33pbZTdw7MQtehHw3l4GJETjJUWYSJLXhl5Fsl9kt0hB5gr9FzNshGjHqMs8/hGXInGTUlmrAJbn
hN/YKzplyMLJr/dTCAwQd6Hc0aDHm4dNrZDt0WXuleZ0FZNUk1kuYt8Jc08ZQxllg9q4zy/2IOhX
i32pd/dc2hkR3/N4u+RHrW7AvSg3M2p2iE2KNsa2ffSq/QfbhOrorJg2B2Qm7Mf2cCHANmPAH1gT
Mu+q0aNTW2H+zr7caymD2BGPASsGUJyFk8al9keR6t2uyFH7Pdr14qwCKB4JGgT4PF5SMR4sDOJS
JD3crmQZbOThLaLXiJo2mR5/Ayd9fHnCrbnpP7i+grtvqBmcGDRH6Ls6J+xhILTDG5f/rQm61KjE
GgGqMCwrIqvnZ9+AmYHqNxtrQ1SNYIwFJSMhv9WytNRx2P0znLiPDgRAernUQ4IVFXXuTpFTNrp1
pQoJCmPWNLMLD8CEt5pi3DRPTebSMOKhC6pfxGVCHaJDvveuhQShakUFyTPCkV3ai3JcA+nTonQn
aP65d29NyPIeQPijtFYwruOgzWav3nlMhDjz5hq4bxyChh0F5/LVuAFAo1FkN9cbK1QGM9UNd4mF
bfI3WuHYZdDcIC45KsfwyhRlbjso50xh17rFsjxGdA6UgHoAnl0faD6AiBao4gCNFmjAqAlOXYam
1YImErOTlqwfpKpN8Cu3RgX8p182uPW5OJzUhswFRiL0Wcnb+FaL7PFqiT1WPyY8CGIDUbUmbx2M
bNoXvw/gGl6HWZZi202vcbttyy+4Y/h1l35pAfRtzemrTot7cyziim7fzuaP2iwVU9/5uaTt1Ani
oSiRdhhqGousto3BNP2OikHA2ZUR5rxRVK4UcxNFvnqCmdIDURNWdLRb4yOfUx/iay9iLftz0A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x255312780AE83C0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-content-crc64: p/+TKFSYnus=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bfd9524c-8b3a-4990-bd8c-0ba9f66e7944
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 46: PUT /devstoreaccount1/test-container-29ff9dae-a6a6-f06c-fc4e-e7ff69d3f9fa/test-blob-e1646a2e-02b6-b199-018f-3208e4e3907e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_47
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x270AE807DB0A7A0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c7cf126f-7a30-4700-85cd-b6cfcc4dc7c7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 47: PUT /devstoreaccount1/test-container-29ff9dae-a6a6-f06c-fc4e-e7ff69d3f9fa/test-blob-e1646a2e-02b6-b199-018f-3208e4e3907e?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_48
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-29ff9dae-a6a6-f06c-fc4e-e7ff69d3f9fa/test-blob-213f6cbb-556a-78a6-66f8-133e9b2b8b38?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=el6tsBnfymugjjuHOA1uXolPOhqFEWeE%2FwLvFWN2LtY%3D
x-ms-if-sequence-number-eq: 100
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: f72f3fe4-6ea2-4cde-89f9-73214f6b69c4
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:35 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 48: DELETE /devstoreaccount1/test-container-29ff9dae-a6a6-f06c-fc4e-e7ff69d3f9fa?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_49
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
x-ms-request-id: 892fe348-fba8-4e60-a1a0-91e14b206be5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 49: PUT /devstoreaccount1/test-container-9717c80e-f111-1feb-0ee2-7d2a8c1484b6?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_50
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23B00BE1089D5C0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a44f67c-dfae-4520-83e5-4f09b9cc1dbe
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 50: PUT /devstoreaccount1/test-container-9717c80e-f111-1feb-0ee2-7d2a8c1484b6/test-blob-1f9f437b-e881-aa5d-d1b9-c9726095a1b1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_51
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C965D388250500"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 13711f73-a295-40d8-9b76-f9fafc71a479
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 51: PUT /devstoreaccount1/test-container-9717c80e-f111-1feb-0ee2-7d2a8c1484b6/test-blob-1f9f437b-e881-aa5d-d1b9-c9726095a1b1?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_52
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
3/Y0w5eSGrjSjiDbIp2Tg2iUMNIU8yY8fkTS04VuJOwKeynur83ne65exYPREPxwT/nC+OSxouzP
90RSv0YzY2k00KZ0pdSarLQktS6ja25HYoSLrCwHWdk8HreIlLxnK2EZnD9V/KklJ0swjey9LIzW
Cl3CqLc8LHfNN4YcEhj4vIrNic4u8mXaZYTh18vsf/IrsolepIOp3XDIiMQjCRUzONBi8KK9pxj3
6EIzW1Wr4LiU8V+OmRgHI6xeZmmgtlxurp76io5QbQpwZrxAdoEbHKcMjxe1pJ64Wsz1X0GvVzHm
xK22sFYpRIRVHTNbxq0qQ0nBlCdFuAkAQi/CWg3JwQ+KWrHUZGtR4kqSYIZrXJQeyxz37cIJoQuj
tW4nZ+l2jFwj0Gz8Vt7ecLHdsliClOWbo4/x0dNMgbmlMa/9KXphHNQqR4wnInQ+GXwQLO6zICCJ
jMRahbqI10+yViUu4UY3e5WDV01Zc4Aas7hXO1TK8hCOc522BpYaonA8dMtPDzc22bBZL8jTLxhD
QNIBMJv66GQUoG2pgHX+abXdHP60yqOAIWKkccJHu0SFcsbEGHHUQYxnO27KjVg7WsUT9RIajnUu
gA84VnahzOUpIw2vOlFDCNpxTY81tpQJaRf8NMUxa+RQlpdhm+sVxW+JoWlKiyB00O03qEHm+cp7
L+xfpJcg+LgpX6O64WzvXIcgrBQqv932iGPY+cOjaZ3M5Wz+tSDXaKmwISx8uu+ASEu5xky1UW8P
aRw0SP71hfUG7fsA8KZmSENrep2xes50V7B36qJQF5T870wEoyCqups2dc3zgFelUn0JStbSXe5N
v/BOfptStdVmAwFZYqUiwb8CegQBgddY0pclR82+KpFet+MwWzz/47/3jX1WS/DX5ogW0OPpSz0Y
9awELW4IqNhv+6rC8mWDApZECvRaAoamTWBEp1qudGulF2aP+7ZR7uSk5k9FFfQjk85MpUFJvvMl
XeAOxAB+wYc/HNr/8wbg8xsPths3YDdrIBOMYs4pXFlyap3WQirjJiXHBvkaJJ/Ha7ElOgfY7v2o
oqPt8V64FsCAjIloCrDxK4/1b1o9UfxzxPYcAyFRmXugLaCH9jTHDvA5mpcWXmABNA93436ialGm
eS1nnBKeLvINyNwQaTRbLmBqBLZkXWaWG88S2rb9/sNO4H0HX3Ldm2ylCZaE8MrbHLUdN2aaQhvG
0YBDjFQ8EMkZwYm2VM7ujGlKv1TQESoENr0B38Zcs51iQI3xmg4XafjMai9BJMfmL6v9T4PH9r9W
PlWWOjEDvQ3rVBRA/PFaMlVbBKf7wxL2G68bX2MamkrOm1y4gS7HyK0hVdCzpTO5oh0ta/IXWg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2795D566D231AC0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-content-crc64: la5XB7PPLvQ=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c7fcada4-86b0-4bc4-95a1-dd7da8f69d8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 52: PUT /devstoreaccount1/test-container-9717c80e-f111-1feb-0ee2-7d2a8c1484b6/test-blob-fa3b9427-6eda-4341-757c-61bd46ec2f58

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_53
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EB3FF2A1853B30"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9a3c6981-1db6-4f1b-95ec-64c6d694db61
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 53: PUT /devstoreaccount1/test-container-9717c80e-f111-1feb-0ee2-7d2a8c1484b6/test-blob-fa3b9427-6eda-4341-757c-61bd46ec2f58?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_54
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-9717c80e-f111-1feb-0ee2-7d2a8c1484b6/test-blob-1f9f437b-e881-aa5d-d1b9-c9726095a1b1?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=UPRtaIA%2FvE9aA3D6yLFA7I8To5FF2GBGs2jtXRDmooc%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-if-modified-since: Fri, 13 Nov 2026 00:51:34 GMT
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 4fe2c138-8898-4e03-a8a0-74d8096109bd
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:35 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 54: DELETE /devstoreaccount1/test-container-9717c80e-f111-1feb-0ee2-7d2a8c1484b6?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_55
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
x-ms-request-id: 560ef729-fb01-4eaf-8f79-98b3d1a1205a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 55: PUT /devstoreaccount1/test-container-75e040b6-0ee1-e045-4f77-8317e932d223?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_56
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23D666382B2BF80"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4f87cb5-cf5e-40a4-a5ee-494156485eaf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 56: PUT /devstoreaccount1/test-container-75e040b6-0ee1-e045-4f77-8317e932d223/test-blob-303af53d-e5b1-8975-b75b-968059a60d4b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_57
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1BEA97972A16310"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 74d012d1-9f6f-4fb1-b549-39559f2e9c25
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 57: PUT /devstoreaccount1/test-container-75e040b6-0ee1-e045-4f77-8317e932d223/test-blob-303af53d-e5b1-8975-b75b-968059a60d4b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_58
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
AGsG1rYcgA0BXKkFhqBj5YlxvB+0LM8YT1urY+sqWUOpPbzb5lihmcDTc4RlQFmuE52NeHayb9Sb
7YdbcR0h1wNmW0nkiP8xzyNf4bhKsw4C/E9NneDN9s7nP/jQRieisZyB/+QPyoueW6hTU44cUDp4
WHXO1DoimWR6/UkGYIj7vC8cybQq8jHDr0E4eqNAyu6+WO2y1N1hXmaAlM1Cl/sfV5ZeAIeFTmZD
CyX56h7BOjJaSAibSOhRumpOql1kgBdFGCIM4cpnOAmHb8i4aHRHv1qa50/yhA+tDEYcN6QI34oN
s9L8tFho8w/+E9kfmVH2BuoDyZjIU5MTX9SESgBlfpA+qrWiSgsBMvQ/83E1jXP1JTC5BRXxRGA+
6FSD5KkPmZVJ4e6bVLzfAZakiF8i3dFhjiTPq3l6TWVVY2K2fU5LMFrb66yEWdF02QN/TLwAHAqD
IlWEP+4cz5OIRfFaKYNIWVgFRvIl3DVTW9F1+wCpVEZXM1v5xvFrvxwY/BPgGrB/N/Nj+9YYXUUf
MeQdptST3vCqAvYoTpJnmYbVDOAhckAh9cQNRlhwPtUW2ZUMThlIhR0jNRe5V+hg+2JPQ1Bk/r6j
+7EPhZeXOsQgEXX8WkttjIfD/jwoZ53brEv2IPqEsdvXaVJnOP+Fi/tSmUVzZKAX4rbJoACBepQT
NNhMoRrKnGCZJfH4BVSIPnJB1s5XaEiq3z1EuxHaVe+9VAQmOOrhiPzl2T6vHtxiQWKNQKTGu8uP
osLchuBPv88BOrFPYQWIX03Rco4J+sBg4XquTRRK95g4lpUoBAIclhpvreQrEt9dBOBW9Uk9hqgB
e6RmoHG6tkMZF8pvYFpKtdt0mkzcNc+aUEg09AFO+xDtJoletfWotPahEfsV7aOFC0BuyetcJUbV
zE8ohsJByxy5gjrR7P/ly+VVOyPUhWOkrujB4DIlkABDiemmgC40X0bfW2pptB9AiP0GBuoiAUfs
g9jagOrqlPE5jmMWP0q2Idvd9Cn4O/nJgFc0HooWIIihufxWWt9b9cZ4MCW8KkmzT+UPRQwd80je
EP+TtXVnI23adIVOYMb8gf9igAvUDVYOgc+kB9t8g8azd0nfyD9REQy34bXDZO4eE8QMu3M9CgOp
hTSlwxySXvG/mul9HLnAEW7+HCygShzhhfQXcMhTdm1FNkIKq03wJYLEBMkFofYKS6oEPu7XCDoY
xD0neu4obCN7OOZ2tmUhDfap3EZS3OT9DCQeTjd/bi0H8uYQyKuUm5emiWkQlJVE4zH3LSz0xehY
Km3JCh3s/Mm4bsN/EERKFUCurFJ77HiP2WsGh0ABEy3+t549ypF6uoyfVyXRxdLsrBjrRRiV3Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20ECA8F2F481940"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-content-crc64: PrVae/oPasg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e84bd6cb-b70f-4c40-a5a1-2ecf75499904
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 58: PUT /devstoreaccount1/test-container-75e040b6-0ee1-e045-4f77-8317e932d223/test-blob-c6f234af-94dc-be52-1499-19da2816cd14

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_59
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C77A9537E426A0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e693d77d-4712-47c4-90d7-b27f20dc3a85
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 59: PUT /devstoreaccount1/test-container-75e040b6-0ee1-e045-4f77-8317e932d223/test-blob-c6f234af-94dc-be52-1499-19da2816cd14?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_60
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-75e040b6-0ee1-e045-4f77-8317e932d223/test-blob-303af53d-e5b1-8975-b75b-968059a60d4b?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=UJLcEEuhD1EIfkVd9U6ufe%2B4N0axraoIahU%2BKgg%2BrbI%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-if-unmodified-since: Wed, 11 Nov 2026 00:51:34 GMT
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 15cfe1ef-6e03-4027-92f7-aad44e4c209d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:35 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 60: DELETE /devstoreaccount1/test-container-75e040b6-0ee1-e045-4f77-8317e932d223?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_61
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
x-ms-request-id: ce11c132-1873-479b-957f-88662f233112
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 61: PUT /devstoreaccount1/test-container-4760da68-618f-d4c8-1616-a0ca3a447846?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_62
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x246CC033CEAD3C0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96f00488-dddc-42ed-bd77-aabf1a81e8e5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 62: PUT /devstoreaccount1/test-container-4760da68-618f-d4c8-1616-a0ca3a447846/test-blob-9a99413a-0f23-527c-d1f7-40a5209b552d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_63
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x270E2BA26712F80"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5b77707-704f-4707-9378-d90c5f7bbc9e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 63: PUT /devstoreaccount1/test-container-4760da68-618f-d4c8-1616-a0ca3a447846/test-blob-9a99413a-0f23-527c-d1f7-40a5209b552d?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_64
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
n808ESbPAKijfBsYzJthoY2CGH9FxrtOax6vxvOHg9Ag0jta2rzumNm3pBNFrwd7tP89uCv5AdkR
7aUHIDq1G/lL+PlgBsbQlICmjSKoCLwWMxH0SsukJtBhSewW5neeAoga+rcOG644bCSrU3O3aeTp
8e0owNEuptEp/rzaua4IB4qZjQ4FCBhiu92m+dNdqt8HLfSKdUG37FPl5R3xXrJ2o0zoHdvW4+nU
xgXzh6z+y1Pc04y5fZFJ4qG6HyP7cFwrMFaHdI0EMUkLta88w2Wm5xnJFYomvCW6nzs5G8TF2VWo
yFZWdlfG2KJCrsfhDR48FDgKMVvRBHQwzNRRyhWFRdtak/sOUHDBAzzo5A5d2JIc/QeLu6j518Ph
JamDdA2MvGjrh3kiLcPHSS4f6SBl0/RBNc0O+okzYbw3LSvGPY4uXCemclEY+c9Dw3J52e2jfFK1
QT9AfcLeuCa96wCYAAug8Iz4v2CiKDv+yzYXuYfOlLHYEftP7t9kx7krWg7Oq8Jn2elhqrzxEhkD
QrKMx/6f71ZPv+8PUAKtk/imd84sLx9zsOCebOn05/7iS6ws2P+7i2q4f+vTV4jmtBbDSppK1hKS
GBceAINsWtfxLQVWgLv56+tjdLAzoFlXt7jSMJ1jl3SZmr/nnYvnSyQT4SmCkDNbyl+v52JiX3i+
xknKmSo6jZWRvOb7EU1geymMH74v1CeEd2Y+tLASNzpHKNdCHLH52VOT8dNNX7gRTmw41j+5j/Eh
RiLE/NnlfoWrtOh2Hl54kkZqm+JUNxetLGVD2WD7jZnlINaONdx6rnJNoarPmi8NwET4TvMOzQ8K
FtBzoaQlrydPkf2I6Vxq8O1wBpVs3ZE1NhkcAz6l1lPGhB8MBgzNKPKDgAkxhdbnjl4GnsZ6njk+
PWuKCKzpqbqqwWU9Xengot6j6V2HA7BDNHTfnjeMTOblzsigQx9FmtZOh8NxqjF0Jfzo17Tbtjm7
R9M4CQqDHnV/V48gQF++XU+GOHzt0YpDang6o3UxCheO5ftMDZDLy2hO8lOhU+WdKnllVH29zXZJ
9Z6SSXr/TU13klpjclC+u20Tnt83oReTnHn7y7WZ0ReFAhfxOYLuTqQFKcGLOrgoppkQqS+WElOH
/6wBBIGX3sBD3m84zYLrJVA6MXdVCGLB0yUbiSjo7vDEajrV7UoibksBR1tJ79kXJIPfXODbMvZJ
PzBce1SYW/B+dGNHFTgFGMMsU8AHeONMBGWkCJIP6DdDi60ZxvL3aexqynt2zw9K2UMdr942QsdN
EHfv81JebosrBImL61HRNerTnK1n1jVVWS9O8jlZDEnly7Z7CHWaDFvvSsuFv+3yTHrzYqYZ5g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CAA5B4ABCDDDB0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-content-crc64: oa/SjKZGzfg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 22298519-895f-4fe4-92aa-3c68ae389704
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 64: PUT /devstoreaccount1/test-container-4760da68-618f-d4c8-1616-a0ca3a447846/test-blob-528f3975-8b78-d06a-9941-5ca5bf66aaa3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_65
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F573356018AF50"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3df8a0a8-d177-4f5b-939d-e66601dc0a6e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 65: PUT /devstoreaccount1/test-container-4760da68-618f-d4c8-1616-a0ca3a447846/test-blob-528f3975-8b78-d06a-9941-5ca5bf66aaa3?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_66
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-4760da68-618f-d4c8-1616-a0ca3a447846/test-blob-9a99413a-0f23-527c-d1f7-40a5209b552d?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=75%2F4MbgT3zpZpnFmFFXit78hk6zA5adTYhY9nVctGss%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-if-match: "garbage"
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 8f5489b5-b25e-479c-9372-0fb3108918f0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:35 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 66: DELETE /devstoreaccount1/test-container-4760da68-618f-d4c8-1616-a0ca3a447846?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_67
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
x-ms-request-id: 2119633b-1ae9-41e9-9587-0d01a6759604
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 67: PUT /devstoreaccount1/test-container-397be5cb-db6e-fc77-de9d-78d3441acd56?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_68
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2438EEFF8195CE0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6d26b899-1765-4ebd-be17-1e736c025ad4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 68: PUT /devstoreaccount1/test-container-397be5cb-db6e-fc77-de9d-78d3441acd56/test-blob-0f4b4497-927a-f2dc-880e-8909df1a21b0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_69
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x270CF24880BB720"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9ff34632-7873-4fbe-a7cc-f805c373c2c8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 69: PUT /devstoreaccount1/test-container-397be5cb-db6e-fc77-de9d-78d3441acd56/test-blob-0f4b4497-927a-f2dc-880e-8909df1a21b0?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_70
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
9k19KRbHba7XyADis9aTa02d2TofHL6awpJz2hKWjH9zBa5x6ICMA3fNYabblEkHCQ2GpkCTNtqO
42aDVJKcQDyAbq0oIYPMENXCUroXvi1Ja9EFEOU/4M/U4wQaCa/kMCBpWyab3+iJupZq0OMfdyU5
OenBlzBXQI7eUz5/sgcm3SGZrWMHrovoe1ZP1A/rtWve4M/FI5nwEhqYvYyqCQiORPLBhcnBMote
2RvaCGx+8p3SoNE3YLqIqZtJbvD+PnFNwJAdKS+iHa5DZ0l9FQquGcvu12k3VuM3OdwteMObX5qq
jEfbYchuL4Mi8/hwC5ORm1UlD2YIFmqt5fBTdaXrqAev04nC0rgCgKjlFGLqxi5InNxudU8zoXXd
LnzXGrreNkvwwTcKzsicIo++IwIHwh7CC9jIfTK4fDIT5aQ8K2XtBt0X+QX2Ps4U0VPAdH5z1mtd
FA/hFrkYOEUF9ukjYPcp0Rwk8MkZzMwKs6vf9wezoA853hZWC/Ak/8DA8Efl8HBbl6NhT+aiREhC
12INOEE9UVba6oLh08UsAPAIWNuFJcM7hF9jUlEol5rNEzSNFsZ+gp/xCgbuecTdNU71mettvbKf
0rTh2f8FsVLnFMCRnuoqidY8lBq9TAqbhRwCM/2uYFWB7kMSnaif61mzBmUETJdkyg8VMSiX4YWq
RVPiAn1VObRqD6+mGOwunKjBCUaklzmFnWjumS4t6gy+aFdUvOnbXs2xmjzovrIj55SA1tc/Ba4a
XWQUZp+FPCWi6LCV2d+/5at48/38nd+2yrKarBM0fmKpOV6Ex/ctLF0XRdYCjg21wPEsxhKwHcCF
Xpzt65ASbWlN65+AOx60S8ag5VcJtDyl5ewhCLhQ+Bye/mhbP0HNBNhttKJtNIXTd3tLDzhpfKpf
SAaj8GSw/fOD4jy1WQuF0+B/m/+ZN7BmTpA8BejkNIK++/c7KRNzvLev6VFJHh5wxTxX6uCqxRBV
PaLTdPgKn6269l4TSqrMC99H6k1eHS9yzD+sjEqhEzXm5etxn0e/pEqkjifAXHqSit4BYtvD9h9y
Yai4XhJiGOMoLWS+W2uXiEUDuo4IsW/EGgJroLBZI+/M/j6fBkY3QXZEly4V0y5yadqVvzyRaq84
9EQQ93gyzgp18lwt94L+zHgYxBlBrkbU+TbWxGSyO5SOZxICJ0r+EckkoOHSRXFXl/LDeKWV9kX9
PP5BWwqmw7fHn5Bw/KUuGbJQHA5lAbPFfyxx78Lv+HDMBetMvba+ft0pCqbh55pNlV/zRNk3lzpK
e9zdNNT12KYfo/a64lz7kp4xO/cN45eRJFli+7SWlW2xAkHa4UkJNDEAwkOkkrMC97I7BlxCPA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F83CF620FD2A0"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-content-crc64: 9q4r683oamE=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92761316-2ab3-44ae-a354-b70141197ee7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 70: PUT /devstoreaccount1/test-container-397be5cb-db6e-fc77-de9d-78d3441acd56/test-blob-c5062854-210d-ed53-92a6-6003015b8f11

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_71
If-None-Match: *
x-ms-blob-content-length: 1024
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DB270D4F0BBA80"
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9c37fee-b15a-4e88-ba16-db2afb9a332a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 71: HEAD /devstoreaccount1/test-container-397be5cb-db6e-fc77-de9d-78d3441acd56/test-blob-0f4b4497-927a-f2dc-880e-8909df1a21b0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_72
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:35 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22F83CF620FD2A0"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93550776-760d-4d4e-aba1-c9ca16a13461
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 72: PUT /devstoreaccount1/test-container-397be5cb-db6e-fc77-de9d-78d3441acd56/test-blob-c5062854-210d-ed53-92a6-6003015b8f11?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_73
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-397be5cb-db6e-fc77-de9d-78d3441acd56/test-blob-0f4b4497-927a-f2dc-880e-8909df1a21b0?sv=2027-03-07&se=2026-11-12T01%3A51%3A34Z&sr=b&sp=r&sig=NIhfbswA3A5Gdj%2F7jTME5VTdp53GYrrOMk23to%2FLl2A%3D
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-source-if-none-match: 0x22F83CF620FD2A0
x-ms-source-range: bytes=0-1023
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: APINotImplemented
x-ms-request-id: 8a960aae-3c0c-4d7d-ba2d-5179cc8b9c64
content-type: application/xml
Date: Thu, 12 Nov 2026 00:51:35 GMT
```
### Response body recorded for playback (501: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>APINotImplemented</Code>
  <Message>Current API is not implemented yet. Please vote your wanted features to https://github.com/azure/azurite/issues
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 73: DELETE /devstoreaccount1/test-container-397be5cb-db6e-fc77-de9d-78d3441acd56?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_74
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
x-ms-request-id: 6a3abb7d-f93e-4990-85f9-278a8394c96e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:35 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

