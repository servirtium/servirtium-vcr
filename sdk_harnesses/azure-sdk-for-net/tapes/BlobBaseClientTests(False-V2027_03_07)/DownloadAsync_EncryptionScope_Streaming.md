## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3d4aa8a3-2ba5-65a9-3ff9-8c5f594e2104?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_EncryptionScope_Streaming
now: 2026-11-12T00:46:38.4165927+00:00

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
etag: "0x22721A82607D4E0"
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b59d3d3d-ed37-432f-952f-7cef8a6fb74a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3d4aa8a3-2ba5-65a9-3ff9-8c5f594e2104/test-blob-1f35f31d-51bc-8bfd-caad-370c082510ac

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
rInyCd/CxtFaPNqMGjJYZF6pYjjdY8J0kcH2FAt3p0f2/hoU3X7e4OJ54mhRHEsMoCcAsOzpJknH
fncezLHF4pSSlRwXRIbgyoFWZIBZInV26nPkd/dbDdfRTV8GwBQwtADUv4cu9FygH+VqksLIblsC
p+E94WqdNohERfcn2QptJbCAhGPtR/UXQ1cR8XoVCd4DBBgy8tKVNoj/6a9leUbb/W0SR+n4FGDs
Jp0SjEUNLzwYI9TxOjLd603a7l1GsskRNfMNAsL1Cu+4Rsw1gqpC8bpzTFVx6cM6NFubHSUCpXPT
AVZS/yx5IxjlOfNlqGmjmPyj02V0n0sw081mWezKtqBYYYBT8PKO+Sk8jLDP1Izy+IUoX9IOX2EL
ISxeE8ksG4JSDUfoT6gKFdo7NxObYP5Bc2BnoVfOSgEfSM7GL+VgEHEtfMdFCqndHkr40ihOcMAt
HZ9oxHorhMJFyQfZROX02yaibeM3+2m3ioIM1XfZ0NgOmBJF90z3AfgF/0CiBNpkBPYBqwLc9iE2
sTr3Hq9KbPguyqvSruTaq2vrMvsoFYWoqNCB2CXVMaLxD0YR/+JIupNIczkukVUSJgCX8cQlDZu0
T3beyZPTWZkJ4Z6dyauIondn4KJMeRZ7brEkPkDeywKqXLBravEAdBmfJbC2dF1VDk5MvSz5Z9Vg
Y1vhrxtYKhac82z6HDiGZ2yIrFNmxPlUzi/ykQ3VsfTbCweVHsX+RvuZGoHwWvEWxVbAcbqB+p5i
jeDrZpkJx0J3HxEw8EmmiWZYzKp3Y3Q+28u3FT85WRBoM5DlE+BhkFI/eTvg5dUMGedUKC306ils
rYrNUbECPcUAyL24wXaF9jxXOOo4Xvb2qvtY5THic0lneWZVlD6hPDt23x0XU1dxzzHxnbI+M06U
1qe1qliUHVR0UUgPMGL9tvuvwX7Y3lak5hX/8daWKEUXwL2X65Li4sHIowIOYp7P9Oe3j3LPu/dQ
EcNClCx+3SkD92+kZctozN+9EDpUlYR3L/3v35jSRwTGR9nOoE2USsbZC2ouK44bTsOTEqu8/Hw/
y2Uvj/2QMLBr3h7xmSyRKMZ0eooZSARv05HVPzVZCUtdj9ToZbrJSNq6w0xvKrSXAerlSIHxJYNg
wLxru/F7EdXTlApXqcILqjKvX4S3/6jcPT5KdMDKa2lRiKX+XYzpPrJ3m5WpP1gn2Z1OQcX+qMAT
j36yMJ0UCSihBiEdDU2lxiDSQGQTMv3mI5oieymjU9/l6s4ONg4UY5JsCDk3CsxQqXukK2hbAFyA
zAwC8Y7//bJBNyJ+lo8Svd3SpirErxnN0tKu/yd3iepyjmoBEXEDbQuG9dKq0hLrkm2LiVoyvA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23519738D242760"
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
content-md5: fJej9/1lMvJEulTZdUCyKg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9fd3dc63-f8a8-4114-a8c1-7f7c17b6d1a2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-3d4aa8a3-2ba5-65a9-3ff9-8c5f594e2104/test-blob-1f35f31d-51bc-8bfd-caad-370c082510ac

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
etag: "0x23519738D242760"
content-md5: fJej9/1lMvJEulTZdUCyKg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e73e3d83-75bf-491e-8aca-dfb05af57b34
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: fJej9/1lMvJEulTZdUCyKg==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
rInyCd/CxtFaPNqMGjJYZF6pYjjdY8J0kcH2FAt3p0f2/hoU3X7e4OJ54mhRHEsMoCcAsOzpJknH
fncezLHF4pSSlRwXRIbgyoFWZIBZInV26nPkd/dbDdfRTV8GwBQwtADUv4cu9FygH+VqksLIblsC
p+E94WqdNohERfcn2QptJbCAhGPtR/UXQ1cR8XoVCd4DBBgy8tKVNoj/6a9leUbb/W0SR+n4FGDs
Jp0SjEUNLzwYI9TxOjLd603a7l1GsskRNfMNAsL1Cu+4Rsw1gqpC8bpzTFVx6cM6NFubHSUCpXPT
AVZS/yx5IxjlOfNlqGmjmPyj02V0n0sw081mWezKtqBYYYBT8PKO+Sk8jLDP1Izy+IUoX9IOX2EL
ISxeE8ksG4JSDUfoT6gKFdo7NxObYP5Bc2BnoVfOSgEfSM7GL+VgEHEtfMdFCqndHkr40ihOcMAt
HZ9oxHorhMJFyQfZROX02yaibeM3+2m3ioIM1XfZ0NgOmBJF90z3AfgF/0CiBNpkBPYBqwLc9iE2
sTr3Hq9KbPguyqvSruTaq2vrMvsoFYWoqNCB2CXVMaLxD0YR/+JIupNIczkukVUSJgCX8cQlDZu0
T3beyZPTWZkJ4Z6dyauIondn4KJMeRZ7brEkPkDeywKqXLBravEAdBmfJbC2dF1VDk5MvSz5Z9Vg
Y1vhrxtYKhac82z6HDiGZ2yIrFNmxPlUzi/ykQ3VsfTbCweVHsX+RvuZGoHwWvEWxVbAcbqB+p5i
jeDrZpkJx0J3HxEw8EmmiWZYzKp3Y3Q+28u3FT85WRBoM5DlE+BhkFI/eTvg5dUMGedUKC306ils
rYrNUbECPcUAyL24wXaF9jxXOOo4Xvb2qvtY5THic0lneWZVlD6hPDt23x0XU1dxzzHxnbI+M06U
1qe1qliUHVR0UUgPMGL9tvuvwX7Y3lak5hX/8daWKEUXwL2X65Li4sHIowIOYp7P9Oe3j3LPu/dQ
EcNClCx+3SkD92+kZctozN+9EDpUlYR3L/3v35jSRwTGR9nOoE2USsbZC2ouK44bTsOTEqu8/Hw/
y2Uvj/2QMLBr3h7xmSyRKMZ0eooZSARv05HVPzVZCUtdj9ToZbrJSNq6w0xvKrSXAerlSIHxJYNg
wLxru/F7EdXTlApXqcILqjKvX4S3/6jcPT5KdMDKa2lRiKX+XYzpPrJ3m5WpP1gn2Z1OQcX+qMAT
j36yMJ0UCSihBiEdDU2lxiDSQGQTMv3mI5oieymjU9/l6s4ONg4UY5JsCDk3CsxQqXukK2hbAFyA
zAwC8Y7//bJBNyJ+lo8Svd3SpirErxnN0tKu/yd3iepyjmoBEXEDbQuG9dKq0hLrkm2LiVoyvA==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-3d4aa8a3-2ba5-65a9-3ff9-8c5f594e2104?restype=container

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
x-ms-request-id: 42baeb14-b4e6-4caa-8bad-2e1d69672a5c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:38 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

