## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ea5e58c7-5d44-632a-9a36-c79f9377f2d8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteAsync_BlobAccessTierRequestConditions(False)
now: 2026-11-12T00:46:09.6419504+00:00

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
etag: "0x256BF580023CE80"
last-modified: Thu, 12 Nov 2026 00:46:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79ad01d9-f919-41e6-afac-0b7fc164a5af
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ea5e58c7-5d44-632a-9a36-c79f9377f2d8/test-blob-393dbcb3-adb2-f7da-13ff-e85f3cf6c448

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
ZRpnDGMywebLojYt5Fr4xoyeGT0T8KQafWbWRHXLJ6Nxfzp5EOV0gftXbRB2rBO5ByLSndyGNHV1
TI78W3xw/3qSu2Qgf7anKphCvIKUo9FTHT1S+InH60rEBMNWdyV+5m2V4/GumYhrK3JDQ3jz4Km9
qT4/Hgfwy88aW3rzULJzxNYU/sDfpIS0580Xg6jS0CMamc7mPshmpBghkz0NeNrA0H6h3+Lp3QS5
ijY62UcnR4pX2bfkjIYOrVmnvhBHp27yVrMpMfFBMLvJLLORLMvQ+Uuytp8i20P4kjGIQR/zcuPI
R4KU/haZFqj8Gl/SfYGO18XFlfHOz3tvMJ7AuO+c1brPyORIO/o1GZ/3JsDjJhWv+WlZLt3y+XcH
JM542F24X0WlArSdRpvKkHtR16m6jAqJEb+FQqfd3M9sQBcsvEBCPsZ7PiNgEbPNj55hoSHOTZjD
78edMh2eyCXlMQWEntM6DpjiPk3mKP8Mt7MIezutnvJ/aMx5pAyp3Xb9e+CtSfHLJpKJ6w9K3cbH
kXpplUzqOJITBDUGwWqMOWDX6a0eXm7CPVSoJLLjNIsFshKRP0gpE0JNmkS7xGUo/LGvc/MZqTMM
p1j4QRPgL9CpAA9X+/oYrdVq0MQpBnjvgCcANMCX7AjfhJfvMdEvbWp0EsNW0QG2lsYdrthu46Hf
CMHs3/sPERQGd3ZjKHsEO2NZtPS1ma8mSZ36ej0wcKH2ECgQQo1vZACvUFmLU25KGXN1FS6sKm8R
xZVeFZfW1QbUbRhT8/jV6lD0BUhVm/YvsGDJu1tzSea4/nz4EU9o2HpStuZW9iV6nyreuCQmuyqf
LmQ3DBqrYSMymvV73NkAjC3OA+QP2Lk7TxswlZHBkUJSWeLqMMtfplXDJFwv/sNR3Sz3WLhGj1ar
/L3/e8uRcAizKYP3FlthblyOTLRdC1BY3rdlyjmKC8mLPjQNYCuJMbNTfNU/WsfQlelbt0OhTvFt
p5wUK6XPKB26a9cmVA4xBRoACY56GITwlDVQLlSG6vBDn7mOdQUNhFO3he/vqkDaKbEooERi8o4Y
I5dwfvrJM4Dm4rRUoo8U8oU6w5OVAOr0dQSiXUms4K0rdlJunQVZ7VFuCceMhYchE62+KC/6gyKs
fAn1JtY2OgIHKSs9plWA4NVCJvciZ+99gEmc7bd9MPMvwSD8ZMZ6N8/FhVxb5G1XPUhZt1wrihQZ
d6aMmkxKifg4DuQ0hHsOx+8oXeKTIpzcRK9vI3iWAzcM4u0g7pyCevtjItWIIrnMS/BtAywyhVUJ
r1ac2mV/oQqtKKGO7tlSpePmMP/GUyH2otiIKQAL2VyXFj5G5Z+V44HL2/kXPlwWGl1JS1VWQw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DC5D1DF6D3C4D0"
last-modified: Thu, 12 Nov 2026 00:46:09 GMT
content-md5: nigz5QokXACiRYoL7tYe3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae75f9d4-ae1b-4cad-b69a-94f4ee8d8476
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ea5e58c7-5d44-632a-9a36-c79f9377f2d8/test-blob-393dbcb3-adb2-f7da-13ff-e85f3cf6c448?comp=tier

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
x-ms-request-id: 8724c111-b89a-4952-9664-5fe8ac43afe9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:09 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-ea5e58c7-5d44-632a-9a36-c79f9377f2d8/test-blob-393dbcb3-adb2-f7da-13ff-e85f3cf6c448

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-access-tier-if-unmodified-since: Thu, 12 Nov 2026 00:51:09 GMT
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
x-ms-request-id: 3b69caf8-be5b-4b79-a829-c89f164001e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:09 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: HEAD /devstoreaccount1/test-container-ea5e58c7-5d44-632a-9a36-c79f9377f2d8/test-blob-393dbcb3-adb2-f7da-13ff-e85f3cf6c448

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
x-ms-request-id: 67db1d0e-ca56-47a4-b8fe-694ffe547d70
Date: Thu, 12 Nov 2026 00:46:09 GMT
```
### Response body recorded for playback (404: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-ea5e58c7-5d44-632a-9a36-c79f9377f2d8?restype=container

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
x-ms-request-id: d17dc560-e993-467c-90ad-35e9a7c38240
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

