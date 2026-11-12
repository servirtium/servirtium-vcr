## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d03790e2-4e68-7225-56ad-83a2976243e2?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteAsync_BlobAccessTierRequestConditions(True)
now: 2026-11-12T00:46:09.0237918+00:00

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
etag: "0x21E27BEDB206780"
last-modified: Thu, 12 Nov 2026 00:46:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0c86cd1-a794-4f4e-93a2-929de09da537
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d03790e2-4e68-7225-56ad-83a2976243e2/test-blob-528dfe7a-26ed-4bec-0e4f-e212c727914c

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
CEu7l+R5Ez73U/mjnSoW3g/5W+5mPyS7o+vBGWsSqi4bNppMp6v+AOtOW5ktSK3jOQQDzsuj5skm
//P4uPrT5ajKh2aQyTdj+lsCF+OKjlo93d9mDtxjd1DQJai4Bkjxe3XxYsBGU2/NoNNwoM7lnHGY
utoabNbMZxAWv6SOqvQTEZtumSua94pwmW0I89eB64k2IEtu1g6fJPuwMJPLPvbeXI4zdwJF/sNP
qdNpw3M5lNQaWIqppTqMz3Qw6cb3pVt3KZZITnSG8SGHHi07NWGHd5u+sOVrNbdUpqiOFBT8VwR3
8Znd8UZfk2doIYYNUZkTqXEqOPR1C/Tf9KjM+NwMiscow0THqYZVXxx+AxQwRlUOe2ui0R4QAuWl
/fydkpuKW5a/5Y1VS//r1dnX9gjfrq1TvX1xabioF8FeIqyJt8yB9Kd9cWDHuTBrt/xFOQvdxU5P
StQdGfHdFs3L9yhTYh0MVQJgYj1MiwRNBrK8Y961gF1dOmz3ZNu2oFqS/MIHF1XeOOMJfGMRAr/Q
zxM/IbPvFXbK9iewFPEnqsHiuY9CRe5d3Sr6rAP6TDetJ5THd3+no+ZLPSEtLiPy4dKhLkgvjYok
4kOJ9Glz0KrvA+1cXzNCOxap9gjML68GCMowWB3vfZkKopU7Ha582Gx3PSs2lYKfX/IyhpeBWLKU
guyeQneMAIVTUrydBx1nLB6cVPGEz3JIkfkqvfcCiErippvC3pX06z2l40PFAVfUylp45QTBELN5
VbF+YUOOUMlyu2CCpE6Jp2i03uwugo+hVfKciqNFIZbnSIjkdon5F5J5U0b3UiUM7z2bDDHGS9Ih
3AtR8cYmLJnJmlzFpDHfusdatS9IqgPMkJtlqhRlIf21wpp9qCbLUiasLbfJRkoMvFFqbJWj2TEH
hGArwYKFZHleD+KWYRKhjmIInHxMAkpQWO3C+7RnEulodiPFoJGkJ8k9azZndVs/yd4zmj21uoIW
2miUwmnF9v35Luvv2+3QZHSyD5cT6eKSgzHWNHessruhr8YpEGRgd3Q5bkdwUO3wYzbIAqvqA/GG
AT8378KGTXsvTSwnp1QPUpcj2XqbIjNE5dFA47APtqvVog4lKYixsyHLQALByLviuK8Txyl26t8M
8wnxRWnKIJeAUgRF6ikOcSZZz+Iwgh0VXisA/O+CXrgvGTZ/wG63ACBrQXa2nM2GBVYDHBv823Ds
2+Y9ySSn/fNMFtDyj7G4oc7CxUCmXsFdeveYf0GcMj3Fk+SHeTb8w0OCaoX8k3WkSnpMOhYvRX0k
308tDn6xr+STLfvNMCeYxgH9JPQ8YOaB9DTHUPgnlk5mYprnz7TE0LqhaWZ61xlStHQVMiCJ6A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2505DAC8E40B9A0"
last-modified: Thu, 12 Nov 2026 00:46:09 GMT
content-md5: MvhBO+CnWRa4j7kdLdxUzg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f315d350-050e-442c-baef-2d2ff34fd8c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d03790e2-4e68-7225-56ad-83a2976243e2/test-blob-528dfe7a-26ed-4bec-0e4f-e212c727914c?comp=tier

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-access-tier: Cool
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
x-ms-request-id: 1db13017-a13a-43ef-8ce4-be6607758aee
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:09 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d03790e2-4e68-7225-56ad-83a2976243e2/test-blob-528dfe7a-26ed-4bec-0e4f-e212c727914c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-access-tier-if-modified-since: Wed, 11 Nov 2026 00:46:09 GMT
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
x-ms-request-id: 2b8f307d-555e-4ad6-837a-927d85b26eef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:09 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-d03790e2-4e68-7225-56ad-83a2976243e2/test-blob-528dfe7a-26ed-4bec-0e4f-e212c727914c

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
x-ms-error-code: BlobNotFound
x-ms-request-id: ac6ba00f-873e-4ec1-bc5c-968b97e668b1
Date: Thu, 12 Nov 2026 00:46:09 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-d03790e2-4e68-7225-56ad-83a2976243e2?restype=container

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
x-ms-request-id: d38b2172-7d29-4657-b1c2-8c74dd417dec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

