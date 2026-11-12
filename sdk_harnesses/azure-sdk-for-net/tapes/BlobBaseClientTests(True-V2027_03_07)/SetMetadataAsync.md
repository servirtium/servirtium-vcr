## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ebd4e0b7-337f-5765-a8cb-ed9d8a3dbc93?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetMetadataAsync
now: 2026-11-12T00:48:22.4964512+00:00

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
etag: "0x240B08121F1C2E0"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ad24013-1416-4caf-b79b-3ba3d1f4f87e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ebd4e0b7-337f-5765-a8cb-ed9d8a3dbc93/test-blob-73012f91-15ec-a9a0-7ed7-514630d584f1

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
qJxEgPChselwl4PgAbQs2B18eQ5ZrE6hQCptqOIeJ9NG/PXu+Tyi8H4XAlWSv6fJqnkps1t2l/xN
oj/GMwgHUW+vmQW/Pt7g2YmPQan5D4CCpP5o9XR40GT5oVf83Lx1ELDl4iaiCWubSNnR5lZSU5O/
Q48Knlv7N8ihxp2H4/3MGjH5FCxa4JqSza2apuoOpk3DPZgta3FU6atdAUPOFGTcBcwkWT5mZGP1
d9GuYZDekx9Pw6Zkn67ApCuA/d9Ww7lIvqEe6U0OXdg1OPOgpocafm0jflC9d2YdZLUT5WeEnrMX
ZaPvwKnSQWbNL2a6H/6jZn5xM0Voi0Y7AISY+ndxsJpAiEDkKr7EUT3q8Ej/Y0S3cH/oE2tur9pc
tMAlOUbuXH7Mepe9vjvArOEIfZr+O50/4Yr3iJ0v0dlmiHb+nxf2+5PJM+it+bFDKGaJZjE/XXgj
5Vi799Phnai+VjbFwQ3KEYEHNQi0kufZtGA2pWunJir927m+OwTA55VA7qJ7fWZYv1SvOChwblJx
4kJyq/c8FjALx+ZTC9V9Rk5ydKNEXTb53eYW+O4CjWxnTVjBTTyeA9hyb7V/BLN+MvHZ/fquLIQL
ec0RJR5BCTp67L19u/kS1HHL0u6Aetkyl8X8KI9yuCHTtdRujN25MWZ7BRj2AXf4xymJ4lqWi/70
341YROCqBzOcqQUko0iTEqGHBXTAO5ZOBGBm6dbHPSrVeqxPYOyF0P3kWVhy0yTh9dC5DoWJM6P3
CkCAQx5d1WvaTymbRLG0AjR23OI93DA8hfQFDi6lS0YIV1arBY3fh4Tsl4T7RbEfBAxQE1fBui4Q
Q74qV8Y9NAPik+xaCPynl1VdUUSrQUBD5gkhVDjvRp0om8HOtS++rmKBGLLExPsQqXsBZGnpZAJ+
53G8HODK80xOMmw62OEmn6LhKiiNfiEOEau87eE0Pje+UM69AZKCtiRmdZGP1dCZ28XGBzrZ8GhQ
rgs1DQVqGvM1e4gTaZ0PX3MDJwiPfzvaIxEcbTf95WBlbFKHTKge+1udWVlIhnInt6jG1shfwC/P
W+r0Tqy8OJYnrfxLhxLK5Cut8SXhkZ2f9LWPNg6XBqwit/G+Kq2u4SHDINh23C+V/PGcss4K7slN
VFn2LQGHkKdPKM8gDLl+/hADHnDEKReG+Tod+lPdGMkocNZTuLMgO48wJrRgdO83HrO+Bs9YiCtC
cDTHapZTcg8F+JvjKkZc4+PhlAJjJYRK5tygHhH6z+eqEUd/WNH53LOkWnxTU/NtYSPsd/Qo3kqv
fIO6s1P+CyizOBn+3YoS57dOvssI95PoMrzuDljzgjL80NxNPyhfpk9UnxraboSY2o882SB/pw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x254E46E9ECB0C40"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
content-md5: siIvAXQeeTttIcRSj69E5g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 17526b21-1917-4082-b1fa-dce2b8242ce9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ebd4e0b7-337f-5765-a8cb-ed9d8a3dbc93/test-blob-73012f91-15ec-a9a0-7ed7-514630d584f1?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21089B9219C4F80"
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b3757d39-e6cc-4959-a603-a1826e543edb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-ebd4e0b7-337f-5765-a8cb-ed9d8a3dbc93/test-blob-73012f91-15ec-a9a0-7ed7-514630d584f1

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
last-modified: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:22 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21089B9219C4F80"
content-md5: siIvAXQeeTttIcRSj69E5g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b3dffdfa-7d3e-4c23-b2b6-a7492522f33b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:22 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-ebd4e0b7-337f-5765-a8cb-ed9d8a3dbc93?restype=container

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
x-ms-request-id: 5d68013a-36af-42b8-99cd-f428ebcc8496
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

