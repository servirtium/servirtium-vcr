## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-18b15f28-d9ea-2f6b-c419-3494aa2c251f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetMetadataAsync
now: 2026-11-12T00:47:08.1438036+00:00

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
etag: "0x2490F5D22734AA0"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d33b7a7-7fc1-478e-9035-58691c2eb8b9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-18b15f28-d9ea-2f6b-c419-3494aa2c251f/test-blob-97b9868e-26a6-cc80-17d1-42cbb3348770

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
przrbC3nQRmagKfiXXMxg+huC8nJnlAB3uUAGZegfJCSxO3tQbnypkWg/SV/nm6kn77iRSi9pgds
6Y5H5yiC+QQWT5mFREEufGWEKaErgj92XHnYvTZo1B3mgFgrqr8dHgQgaE7VHlt8s8jDOX1mQWZO
0YquqTvOrXt7n8PpA9KlZgudCxnwoT4eWwptpZqffz/x3Ng0bnTIUrvTWX6Ykq/2HdJyyTZMXjBM
j00xYAjg3CCD+Cb5cfiW1LheHUe/hshad4jHLbUIpH6o598nl/Gz8n1eFJqJ/aza2/R97UDojQmE
1uh/GK5qelOoUYkZbz3GqyrKYXIu0Xnc7VHAi7Y9v1rVosAJM9nO85lH4KwiwWy3tkIWHiyWVgVv
oytdqu+capEvQ8x9vXhR+27Y5/DNuSzkCdR0J6AuPky7mY+ucUiqqnYa832gOfjJxCK+vm4Uoer/
eKEaKEPwAAR/wiToooolLj16ssWuQ8/cqmJ+cIDdpvelr/mnj4EyKfJ5IXfU4SKYmI8xmu8kUDTS
Pn3gcpCDoRwsQvORfp67R4nTNCJXB8lA5tfxrAsIgV7E1VEDUbdh9n9bqJ4uBhrwdlJlUBwReja0
oIu5kvUQI8GVzKhNt/XScT6j+18qEt+8ADW4ozBCsloaT7ErqGOKS4TdmDpxo75dk9/dbn/XiY6s
/JG/V4CQUxlOMmhEpsjaGLDaTXmlSl13Ww9RZETbQ8Uif6vSyvMETUUgI3BWGOwWAlXO/DwVBrEz
SPxwPu7Vc++iISccCE681f8zhSftIEIjOmLuDEaJDXj5noL3lA5XSrCBs/bE+foHEic84oGKRie5
TQSM5maoGRSvI2nLxUHx2zp3bG1LXkBo5/ofTCv3b1haPkcKy2NJ2JriFdaQO0zmSwZGEtq6be7D
JP9ric3pt7MRcYf55hDWLZPTaUhp16utOQAksFx9oNBYR6dj3U/M+V4jfsrF7GT2cOVH5wSmWUxU
vlDMxAdWk9C2oZ9oclBDBnDqRljh50ycLj93NrnMse1aDx//ADRWzOr5DkrFjf2UBOGUvBLzctYD
MJXH310X6vCxDmIxQwU7k3pt59kC1qFC4jLYN/TaZ5xI/NCej+2N4iRaE36aY8DbWCmYhYv9AVn0
hfwqP7L716bF6EY1nQON4AS0p8Mip39x/N/LQuERS/t3qgrwYqNxXzzY1Xt5prslC6WGSFmV0d19
uULTL5XFtJxLvvP5nH1hQ0eHStID91YkpjY8igKh4dgsc6lhnjCmEyDeLujHK24oJQUSDocLecHr
roleiCmZqtwazSnT/6UX4DexJcluXHrHFGT9j9NQIProde+nSIr2RIQLrV1FVCVf+i1QWlP3fQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21E4EEB42FFD1E0"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
content-md5: tXJJ9XpRM2PioEEznihOow==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d6e4b1ff-25e7-4ad2-ab58-314bf7766afc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-18b15f28-d9ea-2f6b-c419-3494aa2c251f/test-blob-97b9868e-26a6-cc80-17d1-42cbb3348770?comp=metadata

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
etag: "0x239FEDBD57B6AA0"
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fc5d2f23-cfe3-4d4c-8da4-1fc330f25aca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-18b15f28-d9ea-2f6b-c419-3494aa2c251f/test-blob-97b9868e-26a6-cc80-17d1-42cbb3348770

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
last-modified: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:08 GMT
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-Capital: letter
x-ms-meta-UPPER: case
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x239FEDBD57B6AA0"
content-md5: tXJJ9XpRM2PioEEznihOow==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ce9cf3f-b1aa-4529-8033-055042675485
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:08 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-18b15f28-d9ea-2f6b-c419-3494aa2c251f?restype=container

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
x-ms-request-id: ad475d23-d72e-4e62-81ce-917922061fcc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:08 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

