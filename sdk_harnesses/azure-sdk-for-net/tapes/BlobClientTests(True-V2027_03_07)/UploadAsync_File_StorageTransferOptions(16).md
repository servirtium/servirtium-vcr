## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2d3a23e5-3eb4-f1ea-fb1f-ed2e7a906996?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_File_StorageTransferOptions(16)
now: 2026-11-12T00:49:05.2218968+00:00

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
etag: "0x272F37E7725B2E0"
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f265ff52-2e81-44c7-9189-a014ea4b5512
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2d3a23e5-3eb4-f1ea-fb1f-ed2e7a906996/test-blob-70d5c91f-79b4-8d37-fb19-f9e3e22032f3

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
pFq8ZDl6dNVtm97y1NeVWmQX81FFiLZr7Kwym0UHD9rs+Yof1ARcpFX/AxmbRbgkg55+yy3hrRuk
UHiMSNiQZowDBttMdoZfuk78RYWdz6f0DRemiEStC0xueoOM0Fx8b5yMmD/d2A0YHhDe5GiWB4DR
lzrB6d1IVvqO3fsD0+rxgNboEDdoFzUJjmkzzibj2HMCuzghuoW/REFETvoRFUsm7GSRrvZJaYAF
t1tzFIfUqgWIABex0MVQKcz1I8g6+HkeDOHCUSl9uVK3HAIqSy+6cKP1iRQ0dByeQYUqU0W3yr/h
VQilEVnbCkfF+rPDJd2cO7MlRW5k6ZfEIxCkUmUN/1JDSPUnFF5KGX7Nbnpo2xynjReRkoRQfWtw
4e5INrjhuPphf9zodSdU2yzwl3ocW0j0/cVNe23N8suJtjNwAeLG67aAB1s/vxjwPbdYX+XwVIWm
VDnzkz2MlIwQXr/z5NlJKqvEm1TstD2sXT62dZLmmGKtyq2o01h59HLOLmBZ/FjdDjU6LLgwuZ/8
Rjb/1h/6KsVcRRosoVZTS6fhHobdU2Dl2GZdrGyqfRANrIwheR5T1AOa/Lc9sW3f5uEQTpoYH/LW
Gf24nH5ZssgJHvTJMdGJjkmCQlepqCf5fcWKmS519I2aS2AgmzeFQEnuM5J4FbUQh8BRldybLXHW
vh+5zxmZkypnL+ZwaPIS/QEOunSUgGgQehFuJF6w/x3vStwYy3EvVJ9oEebOnx/NPpjbjHP8Qj62
qFQIK2/Lti/IgR0V+jGP3mXVK2+CQdvxoObG1HKq8gieYSIdJykwnVq2BR4BuERmTK4NJxbONGd5
FoqJBOG9Ho4VdpgPcrc8pI4UzDu87+ihYIjDncvxzy27oxCep5h4+OeP60GsV9n30YKHumcrvCai
56RZ+YHCJKZqU86mnf31m9NULQOm9AmuzMtIaRXFkOfp+7/0H/5lzMeaQQMLUDSFkR6U1o8j/POb
qi21ebqRpcPmvaE+AXzV7mA7C7MFo3uXw9f2MblYxv/MWXXRsFINCZxAJZOSRpCiv+cv5/A/lQex
HbbimnMJjvahcagGAz4NLgEWxX3oBXxHVHLRKN8OjMNuH5OcK28oNpac8NXnm7upIrjuKNCJyRg5
mkYBN2UXk+XlmOOrcAOS7o7nSxSnYLi2KAYmH2Pz5FZ6Y5ApJ/4whV3vAgPX/rG1XDpBon4DkTqN
Sg9f8HOB8bONMA1zacaPtsW2uF603ypUccMosULXdtFVm9zv0ZTqbRBQSs6kQvJzsuy4Tdnc2Gvl
Cn+vWUBwtbk8Hc3pn+QxzEpOZJVbsC7QtP9WHyn3ecJxCscUOhTQ35QUZyQkihIHh4GPjXPWiQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D008C4927FBBA0"
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
content-md5: X14f4NMeL6xzM9sSwsqhUw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f6984e5d-4488-42eb-951b-7bb3318b0975
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-2d3a23e5-3eb4-f1ea-fb1f-ed2e7a906996/test-blob-70d5c91f-79b4-8d37-fb19-f9e3e22032f3

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
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:05 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1D008C4927FBBA0"
content-md5: X14f4NMeL6xzM9sSwsqhUw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bf431f15-e716-4396-ab2f-c80363987744
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: X14f4NMeL6xzM9sSwsqhUw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
pFq8ZDl6dNVtm97y1NeVWmQX81FFiLZr7Kwym0UHD9rs+Yof1ARcpFX/AxmbRbgkg55+yy3hrRuk
UHiMSNiQZowDBttMdoZfuk78RYWdz6f0DRemiEStC0xueoOM0Fx8b5yMmD/d2A0YHhDe5GiWB4DR
lzrB6d1IVvqO3fsD0+rxgNboEDdoFzUJjmkzzibj2HMCuzghuoW/REFETvoRFUsm7GSRrvZJaYAF
t1tzFIfUqgWIABex0MVQKcz1I8g6+HkeDOHCUSl9uVK3HAIqSy+6cKP1iRQ0dByeQYUqU0W3yr/h
VQilEVnbCkfF+rPDJd2cO7MlRW5k6ZfEIxCkUmUN/1JDSPUnFF5KGX7Nbnpo2xynjReRkoRQfWtw
4e5INrjhuPphf9zodSdU2yzwl3ocW0j0/cVNe23N8suJtjNwAeLG67aAB1s/vxjwPbdYX+XwVIWm
VDnzkz2MlIwQXr/z5NlJKqvEm1TstD2sXT62dZLmmGKtyq2o01h59HLOLmBZ/FjdDjU6LLgwuZ/8
Rjb/1h/6KsVcRRosoVZTS6fhHobdU2Dl2GZdrGyqfRANrIwheR5T1AOa/Lc9sW3f5uEQTpoYH/LW
Gf24nH5ZssgJHvTJMdGJjkmCQlepqCf5fcWKmS519I2aS2AgmzeFQEnuM5J4FbUQh8BRldybLXHW
vh+5zxmZkypnL+ZwaPIS/QEOunSUgGgQehFuJF6w/x3vStwYy3EvVJ9oEebOnx/NPpjbjHP8Qj62
qFQIK2/Lti/IgR0V+jGP3mXVK2+CQdvxoObG1HKq8gieYSIdJykwnVq2BR4BuERmTK4NJxbONGd5
FoqJBOG9Ho4VdpgPcrc8pI4UzDu87+ihYIjDncvxzy27oxCep5h4+OeP60GsV9n30YKHumcrvCai
56RZ+YHCJKZqU86mnf31m9NULQOm9AmuzMtIaRXFkOfp+7/0H/5lzMeaQQMLUDSFkR6U1o8j/POb
qi21ebqRpcPmvaE+AXzV7mA7C7MFo3uXw9f2MblYxv/MWXXRsFINCZxAJZOSRpCiv+cv5/A/lQex
HbbimnMJjvahcagGAz4NLgEWxX3oBXxHVHLRKN8OjMNuH5OcK28oNpac8NXnm7upIrjuKNCJyRg5
mkYBN2UXk+XlmOOrcAOS7o7nSxSnYLi2KAYmH2Pz5FZ6Y5ApJ/4whV3vAgPX/rG1XDpBon4DkTqN
Sg9f8HOB8bONMA1zacaPtsW2uF603ypUccMosULXdtFVm9zv0ZTqbRBQSs6kQvJzsuy4Tdnc2Gvl
Cn+vWUBwtbk8Hc3pn+QxzEpOZJVbsC7QtP9WHyn3ecJxCscUOhTQ35QUZyQkihIHh4GPjXPWiQ==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-2d3a23e5-3eb4-f1ea-fb1f-ed2e7a906996/test-blob-70d5c91f-79b4-8d37-fb19-f9e3e22032f3

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
last-modified: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:05 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1D008C4927FBBA0"
content-md5: X14f4NMeL6xzM9sSwsqhUw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe6bba34-d2dc-4b8a-a455-8b154de00ad4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:05 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-2d3a23e5-3eb4-f1ea-fb1f-ed2e7a906996?restype=container

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
x-ms-request-id: 4f0d7c2f-d261-438c-93f7-b9e126374183
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

