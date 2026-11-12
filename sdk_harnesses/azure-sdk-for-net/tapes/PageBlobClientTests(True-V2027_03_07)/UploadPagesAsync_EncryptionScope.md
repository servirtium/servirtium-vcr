## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-675e38ba-88d4-6060-3736-2160d5634824?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UploadPagesAsync_EncryptionScope
now: 2026-11-12T00:52:02.7843644+00:00

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
etag: "0x21AF47D6485EAA0"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b7d27c3b-5711-4b13-8441-214aa023aa2b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-675e38ba-88d4-6060-3736-2160d5634824/test-blob-1b77423e-3251-d000-2347-d8d13c6d8876

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
etag: "0x221B81504760480"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 02bdd5e4-ad9c-448a-93e7-754400f84f8e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-675e38ba-88d4-6060-3736-2160d5634824/test-blob-1b77423e-3251-d000-2347-d8d13c6d8876?comp=page

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
pm5S6x38547sagtfvo+ANDD90ijasf2HN41EjK+OI8qtqrlnEFwGQVvpLuYmoBGTx6SgPptgnPRw
y7OPt1veXkdBsRTVGCPU95DM8YIWYJZ8scUK7eQuTQ7F9kWodor/CtCf5O/9vq6BzEcKk6pyWmoc
EwaW1HBiEmQGECLeK4AGzeeyd3ynf/IWiSGdJLpjUpzbi2OEaTVgPNKK962MoqHHBMbDwOPudJQT
f0tPxe6por2GA58dgmOxUTqpHYdFiuaA1R/0n5K57BbOcOrqEXfj4FTvBZ4BqoJjEm6oRFcMzvRk
z+/OtQIrzRaIThF4xkDDxjwzVYRHfiudkY0kEKi/wqL1hkKHFCtSxDiIeVtw6kwt5X0b2XlwHFDE
MSR0B7xtyYxvgz/+O7EQ4JBMvwTPLKZB9isqo+gphWrxwuMG3b17GrDOAWYMLqnMCvjoJFxM9AR9
MxCRQiakRv7VDXjNCgPT0KRUACtANceBXpjvQGENpM7fiKqs6teJKrpoNiAw/wD1FVO39/PYPf5I
EOSNtAadx2iq7YFZJubNytVx1/6nUF+X+isNVq3aB0qrY9rz+3a0y2+4hhF+nO5t6iweZmYAob+F
9rnaj3G70OY2rcIM2s5fvQyO78pNGF08oGuAvKDkq8IabQW82Tv9/LUrSO4rYRBevqlZcbL0ON1b
nu8FOhRFUQEA8WzJouPQkPIVIdBuED5bIv33izoPJTUnYDtM+MGh5vbtK2+klBzGieC/3xYM7I2w
qhgXTsbH8cs3oUGohJgwdDvageXPt43gMAFZT0YfG3Sum02piZcvJTqjbfPbHgVHj2vaMmqn4fOK
Nh3FbaGFF4bN+ehKh+qjq1yrK0qaBRL8EsDaROgJBrpaHlN6areYHVVtDSQc/AeBN4cO+7Wp8DAK
yFvgq9OdxPIu8GiWKUCkEw31Lffu3xW4WQ1h+gsEsS4jb6Fct3KBz0kx7gyf6g1GauintMM4HOhG
KFLGPMnnKT86c7mfSFubc12uvPEJGW7/GpAjXf1r6lO4Fo8gu5J/SsXMZHdUpyKMDEBlil/3PA7k
xiI5xMxCzohl5zHMerjKLnIsPLT2qnNullC8BWDzwNmAPPRwRoX5ipbu7r/wwJGHmlvtygBZ7Ruu
yi57hcgociZYSz7EWejsM7EeB7yzfdW/NGsFBvXYJk7YwntXfQXNxnyZmHRTw0BzAJdPO+Zf+01Y
vFFdI2wwfyTw65dslLWsUUFAGeVga3AqkgVeietoeMcu/8G0b6MQaRlQYtepBmvho+mlH+Fn91Dg
M5Fm0fY4h3PQPpX0+OGdMLDMEAiYgYuZfOUCw1nlxghx0zwSqZciF9tk2MfW7aoIB+8wm+ZHRw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F71846B836D980"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-content-crc64: mlEQL4B16zk=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1d8c5cf9-fb0b-4224-b740-070b874d0343
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-675e38ba-88d4-6060-3736-2160d5634824?restype=container

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
x-ms-request-id: 6b73f0fc-a19f-498c-87e3-1601c90493a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

