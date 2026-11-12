## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow
now: 2026-11-12T00:45:02.3335095+00:00

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
etag: "0x20853A4C70CE560"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b3557f06-d23c-4393-83ee-95e2944132a8
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339/foo

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
au2LsHJgsqUSHFp974cKKxCtX9gpCdyCld0CO7CwuOOpJ2z0wgfsJ8/aROU/bvemWtXERCTKEGER
CBqVXXb1YWN31MgaFWkIwDcJT8T3QyfmW+Ha7HS/3hcK47nsV8pY5eKByJkvi0RsvIPswMGdGcXz
rgKVGnXvt/awEDKvG2htsWrhdnuNt8+cbjDw0h1Wbcr0+ajHw8ptkRCjfnsSvKAbfg9Xu6NJZvcy
+KxF/uTYWqNouyK/pu6fdORr6ThUirGP1VQN/7EmqpKxlMoeKJMryyTYqgF+W9ght0e+3n2+3m76
tSmQy1rxQRGPDhEjgEtRPx4Ue+CwEXl77EdqZ8sV8rZcI3NpmwDJ52jw7k3H/jf7bZ9eqWONSqOw
FN4ThtlFeRtaxlzY56QeS5R3wCIss+0Qb/ostkhTztnPuYYhtmCPqnQxbDfaIoX7QF7OFYqBhGDx
AhffGMLTB/eDCS4d/ZUz6BWt+ke2NUx0MXbqhLhPTjUlMLNJr5KxXmU/VhlX3UPImi1004kZOs3K
auZM6II/NLv4+M3i6jiC/Jzhd94zHVQyIemL2nqsC/XmfkWsZXXiACJdXuV25q/08dfsN8Pul02S
GsaYs1lATOzX/Gzz1pYm/3a81b5vuzs6l+ijv9Mx+Ob4GUqvSUzJHRH5n+lDARtAxjhNMcKOI16L
XhxxnI0YpQSF+7xMd7Yp8resdhxR9pbNY/ib5MYkafbsJOowWIGE4PnlvQZe806BIz4K4axBOWiG
oziUfME+YZHFYFPL+Jo2KJUjbDmQbm+qGcGHGodJquqCqrRI72Q4p1t0mJP7tiqk07kXHs0u9jXJ
6mL/tkcJfLVoSU7m7jkx68XdG9bbrmOW40fOMosdU7R/fwUBOPAUahzekmzcveR/5jMHUdpe7Tv+
aNP/O0kpS/aZZm80L7LVyLC5/Rz3uiViTktYFQHZIJHJAs8cFS/StEd1QlZ0S7aAMogqpe8fB66t
nez90TX0v0beai3iuLOA5knVgXfO7QKV2OJ5r3uhqvohbndD1OMRgYMQluGJnXrVqb6mSYU336/p
aPlSew/LPMAywUk7PRFmxAD0vlYhCzpopAa8+2B16o/IWWvqvgVzRVogVtwwmWysQIWFQiBYx12+
6tcJD0Bfvde5c+OlewX6gHn7AbReNwqZD7vb8Kdvb5EOK9QuaTYawJkEdyWIB8SAisGnXMaoYLLM
cP+FhM0wSgRRl1AxyxdD4UAbWcDkEAj2W2XlxxLKZsohYvk2lDzM1CwhN3BzTr+qZHuGjQfy51/3
jilnSoLxhjCFEGkeDEwDToSUw9mYggymOmOXRNnDLnqZPgYSZImpL7A/7j5VjFcugj6CXiSGXw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D620FACE84A110"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
content-md5: HgMC6tpNdQ+JX5/gN/xnlA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75348f12-3b53-4f2f-943b-bca9f0311c25
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
au2LsHJgsqUSHFp974cKKxCtX9gpCdyCld0CO7CwuOOpJ2z0wgfsJ8/aROU/bvemWtXERCTKEGER
CBqVXXb1YWN31MgaFWkIwDcJT8T3QyfmW+Ha7HS/3hcK47nsV8pY5eKByJkvi0RsvIPswMGdGcXz
rgKVGnXvt/awEDKvG2htsWrhdnuNt8+cbjDw0h1Wbcr0+ajHw8ptkRCjfnsSvKAbfg9Xu6NJZvcy
+KxF/uTYWqNouyK/pu6fdORr6ThUirGP1VQN/7EmqpKxlMoeKJMryyTYqgF+W9ght0e+3n2+3m76
tSmQy1rxQRGPDhEjgEtRPx4Ue+CwEXl77EdqZ8sV8rZcI3NpmwDJ52jw7k3H/jf7bZ9eqWONSqOw
FN4ThtlFeRtaxlzY56QeS5R3wCIss+0Qb/ostkhTztnPuYYhtmCPqnQxbDfaIoX7QF7OFYqBhGDx
AhffGMLTB/eDCS4d/ZUz6BWt+ke2NUx0MXbqhLhPTjUlMLNJr5KxXmU/VhlX3UPImi1004kZOs3K
auZM6II/NLv4+M3i6jiC/Jzhd94zHVQyIemL2nqsC/XmfkWsZXXiACJdXuV25q/08dfsN8Pul02S
GsaYs1lATOzX/Gzz1pYm/3a81b5vuzs6l+ijv9Mx+Ob4GUqvSUzJHRH5n+lDARtAxjhNMcKOI16L
XhxxnI0YpQSF+7xMd7Yp8resdhxR9pbNY/ib5MYkafbsJOowWIGE4PnlvQZe806BIz4K4axBOWiG
oziUfME+YZHFYFPL+Jo2KJUjbDmQbm+qGcGHGodJquqCqrRI72Q4p1t0mJP7tiqk07kXHs0u9jXJ
6mL/tkcJfLVoSU7m7jkx68XdG9bbrmOW40fOMosdU7R/fwUBOPAUahzekmzcveR/5jMHUdpe7Tv+
aNP/O0kpS/aZZm80L7LVyLC5/Rz3uiViTktYFQHZIJHJAs8cFS/StEd1QlZ0S7aAMogqpe8fB66t
nez90TX0v0beai3iuLOA5knVgXfO7QKV2OJ5r3uhqvohbndD1OMRgYMQluGJnXrVqb6mSYU336/p
aPlSew/LPMAywUk7PRFmxAD0vlYhCzpopAa8+2B16o/IWWvqvgVzRVogVtwwmWysQIWFQiBYx12+
6tcJD0Bfvde5c+OlewX6gHn7AbReNwqZD7vb8Kdvb5EOK9QuaTYawJkEdyWIB8SAisGnXMaoYLLM
cP+FhM0wSgRRl1AxyxdD4UAbWcDkEAj2W2XlxxLKZsohYvk2lDzM1CwhN3BzTr+qZHuGjQfy51/3
jilnSoLxhjCFEGkeDEwDToSUw9mYggymOmOXRNnDLnqZPgYSZImpL7A/7j5VjFcugj6CXiSGXw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EF631CD565A2F0"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
content-md5: HgMC6tpNdQ+JX5/gN/xnlA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5cd8c744-1a3d-4d99-9c77-2db9bc4f1111
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339/baz

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
au2LsHJgsqUSHFp974cKKxCtX9gpCdyCld0CO7CwuOOpJ2z0wgfsJ8/aROU/bvemWtXERCTKEGER
CBqVXXb1YWN31MgaFWkIwDcJT8T3QyfmW+Ha7HS/3hcK47nsV8pY5eKByJkvi0RsvIPswMGdGcXz
rgKVGnXvt/awEDKvG2htsWrhdnuNt8+cbjDw0h1Wbcr0+ajHw8ptkRCjfnsSvKAbfg9Xu6NJZvcy
+KxF/uTYWqNouyK/pu6fdORr6ThUirGP1VQN/7EmqpKxlMoeKJMryyTYqgF+W9ght0e+3n2+3m76
tSmQy1rxQRGPDhEjgEtRPx4Ue+CwEXl77EdqZ8sV8rZcI3NpmwDJ52jw7k3H/jf7bZ9eqWONSqOw
FN4ThtlFeRtaxlzY56QeS5R3wCIss+0Qb/ostkhTztnPuYYhtmCPqnQxbDfaIoX7QF7OFYqBhGDx
AhffGMLTB/eDCS4d/ZUz6BWt+ke2NUx0MXbqhLhPTjUlMLNJr5KxXmU/VhlX3UPImi1004kZOs3K
auZM6II/NLv4+M3i6jiC/Jzhd94zHVQyIemL2nqsC/XmfkWsZXXiACJdXuV25q/08dfsN8Pul02S
GsaYs1lATOzX/Gzz1pYm/3a81b5vuzs6l+ijv9Mx+Ob4GUqvSUzJHRH5n+lDARtAxjhNMcKOI16L
XhxxnI0YpQSF+7xMd7Yp8resdhxR9pbNY/ib5MYkafbsJOowWIGE4PnlvQZe806BIz4K4axBOWiG
oziUfME+YZHFYFPL+Jo2KJUjbDmQbm+qGcGHGodJquqCqrRI72Q4p1t0mJP7tiqk07kXHs0u9jXJ
6mL/tkcJfLVoSU7m7jkx68XdG9bbrmOW40fOMosdU7R/fwUBOPAUahzekmzcveR/5jMHUdpe7Tv+
aNP/O0kpS/aZZm80L7LVyLC5/Rz3uiViTktYFQHZIJHJAs8cFS/StEd1QlZ0S7aAMogqpe8fB66t
nez90TX0v0beai3iuLOA5knVgXfO7QKV2OJ5r3uhqvohbndD1OMRgYMQluGJnXrVqb6mSYU336/p
aPlSew/LPMAywUk7PRFmxAD0vlYhCzpopAa8+2B16o/IWWvqvgVzRVogVtwwmWysQIWFQiBYx12+
6tcJD0Bfvde5c+OlewX6gHn7AbReNwqZD7vb8Kdvb5EOK9QuaTYawJkEdyWIB8SAisGnXMaoYLLM
cP+FhM0wSgRRl1AxyxdD4UAbWcDkEAj2W2XlxxLKZsohYvk2lDzM1CwhN3BzTr+qZHuGjQfy51/3
jilnSoLxhjCFEGkeDEwDToSUw9mYggymOmOXRNnDLnqZPgYSZImpL7A/7j5VjFcugj6CXiSGXw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x240F6AA6383B480"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
content-md5: HgMC6tpNdQ+JX5/gN/xnlA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 50afbc46-3d24-40e0-84ce-d4b21ef96388
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339/foo/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
au2LsHJgsqUSHFp974cKKxCtX9gpCdyCld0CO7CwuOOpJ2z0wgfsJ8/aROU/bvemWtXERCTKEGER
CBqVXXb1YWN31MgaFWkIwDcJT8T3QyfmW+Ha7HS/3hcK47nsV8pY5eKByJkvi0RsvIPswMGdGcXz
rgKVGnXvt/awEDKvG2htsWrhdnuNt8+cbjDw0h1Wbcr0+ajHw8ptkRCjfnsSvKAbfg9Xu6NJZvcy
+KxF/uTYWqNouyK/pu6fdORr6ThUirGP1VQN/7EmqpKxlMoeKJMryyTYqgF+W9ght0e+3n2+3m76
tSmQy1rxQRGPDhEjgEtRPx4Ue+CwEXl77EdqZ8sV8rZcI3NpmwDJ52jw7k3H/jf7bZ9eqWONSqOw
FN4ThtlFeRtaxlzY56QeS5R3wCIss+0Qb/ostkhTztnPuYYhtmCPqnQxbDfaIoX7QF7OFYqBhGDx
AhffGMLTB/eDCS4d/ZUz6BWt+ke2NUx0MXbqhLhPTjUlMLNJr5KxXmU/VhlX3UPImi1004kZOs3K
auZM6II/NLv4+M3i6jiC/Jzhd94zHVQyIemL2nqsC/XmfkWsZXXiACJdXuV25q/08dfsN8Pul02S
GsaYs1lATOzX/Gzz1pYm/3a81b5vuzs6l+ijv9Mx+Ob4GUqvSUzJHRH5n+lDARtAxjhNMcKOI16L
XhxxnI0YpQSF+7xMd7Yp8resdhxR9pbNY/ib5MYkafbsJOowWIGE4PnlvQZe806BIz4K4axBOWiG
oziUfME+YZHFYFPL+Jo2KJUjbDmQbm+qGcGHGodJquqCqrRI72Q4p1t0mJP7tiqk07kXHs0u9jXJ
6mL/tkcJfLVoSU7m7jkx68XdG9bbrmOW40fOMosdU7R/fwUBOPAUahzekmzcveR/5jMHUdpe7Tv+
aNP/O0kpS/aZZm80L7LVyLC5/Rz3uiViTktYFQHZIJHJAs8cFS/StEd1QlZ0S7aAMogqpe8fB66t
nez90TX0v0beai3iuLOA5knVgXfO7QKV2OJ5r3uhqvohbndD1OMRgYMQluGJnXrVqb6mSYU336/p
aPlSew/LPMAywUk7PRFmxAD0vlYhCzpopAa8+2B16o/IWWvqvgVzRVogVtwwmWysQIWFQiBYx12+
6tcJD0Bfvde5c+OlewX6gHn7AbReNwqZD7vb8Kdvb5EOK9QuaTYawJkEdyWIB8SAisGnXMaoYLLM
cP+FhM0wSgRRl1AxyxdD4UAbWcDkEAj2W2XlxxLKZsohYvk2lDzM1CwhN3BzTr+qZHuGjQfy51/3
jilnSoLxhjCFEGkeDEwDToSUw9mYggymOmOXRNnDLnqZPgYSZImpL7A/7j5VjFcugj6CXiSGXw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21155B678DECD00"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
content-md5: HgMC6tpNdQ+JX5/gN/xnlA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d413766c-8234-41c2-95be-910f03f6fa6e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
au2LsHJgsqUSHFp974cKKxCtX9gpCdyCld0CO7CwuOOpJ2z0wgfsJ8/aROU/bvemWtXERCTKEGER
CBqVXXb1YWN31MgaFWkIwDcJT8T3QyfmW+Ha7HS/3hcK47nsV8pY5eKByJkvi0RsvIPswMGdGcXz
rgKVGnXvt/awEDKvG2htsWrhdnuNt8+cbjDw0h1Wbcr0+ajHw8ptkRCjfnsSvKAbfg9Xu6NJZvcy
+KxF/uTYWqNouyK/pu6fdORr6ThUirGP1VQN/7EmqpKxlMoeKJMryyTYqgF+W9ght0e+3n2+3m76
tSmQy1rxQRGPDhEjgEtRPx4Ue+CwEXl77EdqZ8sV8rZcI3NpmwDJ52jw7k3H/jf7bZ9eqWONSqOw
FN4ThtlFeRtaxlzY56QeS5R3wCIss+0Qb/ostkhTztnPuYYhtmCPqnQxbDfaIoX7QF7OFYqBhGDx
AhffGMLTB/eDCS4d/ZUz6BWt+ke2NUx0MXbqhLhPTjUlMLNJr5KxXmU/VhlX3UPImi1004kZOs3K
auZM6II/NLv4+M3i6jiC/Jzhd94zHVQyIemL2nqsC/XmfkWsZXXiACJdXuV25q/08dfsN8Pul02S
GsaYs1lATOzX/Gzz1pYm/3a81b5vuzs6l+ijv9Mx+Ob4GUqvSUzJHRH5n+lDARtAxjhNMcKOI16L
XhxxnI0YpQSF+7xMd7Yp8resdhxR9pbNY/ib5MYkafbsJOowWIGE4PnlvQZe806BIz4K4axBOWiG
oziUfME+YZHFYFPL+Jo2KJUjbDmQbm+qGcGHGodJquqCqrRI72Q4p1t0mJP7tiqk07kXHs0u9jXJ
6mL/tkcJfLVoSU7m7jkx68XdG9bbrmOW40fOMosdU7R/fwUBOPAUahzekmzcveR/5jMHUdpe7Tv+
aNP/O0kpS/aZZm80L7LVyLC5/Rz3uiViTktYFQHZIJHJAs8cFS/StEd1QlZ0S7aAMogqpe8fB66t
nez90TX0v0beai3iuLOA5knVgXfO7QKV2OJ5r3uhqvohbndD1OMRgYMQluGJnXrVqb6mSYU336/p
aPlSew/LPMAywUk7PRFmxAD0vlYhCzpopAa8+2B16o/IWWvqvgVzRVogVtwwmWysQIWFQiBYx12+
6tcJD0Bfvde5c+OlewX6gHn7AbReNwqZD7vb8Kdvb5EOK9QuaTYawJkEdyWIB8SAisGnXMaoYLLM
cP+FhM0wSgRRl1AxyxdD4UAbWcDkEAj2W2XlxxLKZsohYvk2lDzM1CwhN3BzTr+qZHuGjQfy51/3
jilnSoLxhjCFEGkeDEwDToSUw9mYggymOmOXRNnDLnqZPgYSZImpL7A/7j5VjFcugj6CXiSGXw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA2EF4A4366280"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
content-md5: HgMC6tpNdQ+JX5/gN/xnlA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 068561eb-2cae-40bc-96f6-9c4864b5fbfb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339/baz/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
au2LsHJgsqUSHFp974cKKxCtX9gpCdyCld0CO7CwuOOpJ2z0wgfsJ8/aROU/bvemWtXERCTKEGER
CBqVXXb1YWN31MgaFWkIwDcJT8T3QyfmW+Ha7HS/3hcK47nsV8pY5eKByJkvi0RsvIPswMGdGcXz
rgKVGnXvt/awEDKvG2htsWrhdnuNt8+cbjDw0h1Wbcr0+ajHw8ptkRCjfnsSvKAbfg9Xu6NJZvcy
+KxF/uTYWqNouyK/pu6fdORr6ThUirGP1VQN/7EmqpKxlMoeKJMryyTYqgF+W9ght0e+3n2+3m76
tSmQy1rxQRGPDhEjgEtRPx4Ue+CwEXl77EdqZ8sV8rZcI3NpmwDJ52jw7k3H/jf7bZ9eqWONSqOw
FN4ThtlFeRtaxlzY56QeS5R3wCIss+0Qb/ostkhTztnPuYYhtmCPqnQxbDfaIoX7QF7OFYqBhGDx
AhffGMLTB/eDCS4d/ZUz6BWt+ke2NUx0MXbqhLhPTjUlMLNJr5KxXmU/VhlX3UPImi1004kZOs3K
auZM6II/NLv4+M3i6jiC/Jzhd94zHVQyIemL2nqsC/XmfkWsZXXiACJdXuV25q/08dfsN8Pul02S
GsaYs1lATOzX/Gzz1pYm/3a81b5vuzs6l+ijv9Mx+Ob4GUqvSUzJHRH5n+lDARtAxjhNMcKOI16L
XhxxnI0YpQSF+7xMd7Yp8resdhxR9pbNY/ib5MYkafbsJOowWIGE4PnlvQZe806BIz4K4axBOWiG
oziUfME+YZHFYFPL+Jo2KJUjbDmQbm+qGcGHGodJquqCqrRI72Q4p1t0mJP7tiqk07kXHs0u9jXJ
6mL/tkcJfLVoSU7m7jkx68XdG9bbrmOW40fOMosdU7R/fwUBOPAUahzekmzcveR/5jMHUdpe7Tv+
aNP/O0kpS/aZZm80L7LVyLC5/Rz3uiViTktYFQHZIJHJAs8cFS/StEd1QlZ0S7aAMogqpe8fB66t
nez90TX0v0beai3iuLOA5knVgXfO7QKV2OJ5r3uhqvohbndD1OMRgYMQluGJnXrVqb6mSYU336/p
aPlSew/LPMAywUk7PRFmxAD0vlYhCzpopAa8+2B16o/IWWvqvgVzRVogVtwwmWysQIWFQiBYx12+
6tcJD0Bfvde5c+OlewX6gHn7AbReNwqZD7vb8Kdvb5EOK9QuaTYawJkEdyWIB8SAisGnXMaoYLLM
cP+FhM0wSgRRl1AxyxdD4UAbWcDkEAj2W2XlxxLKZsohYvk2lDzM1CwhN3BzTr+qZHuGjQfy51/3
jilnSoLxhjCFEGkeDEwDToSUw9mYggymOmOXRNnDLnqZPgYSZImpL7A/7j5VjFcugj6CXiSGXw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E9D59B9FC78580"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
content-md5: HgMC6tpNdQ+JX5/gN/xnlA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa52bbd5-4a86-4b42-ab58-715a9dcb7e27
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339/baz/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
au2LsHJgsqUSHFp974cKKxCtX9gpCdyCld0CO7CwuOOpJ2z0wgfsJ8/aROU/bvemWtXERCTKEGER
CBqVXXb1YWN31MgaFWkIwDcJT8T3QyfmW+Ha7HS/3hcK47nsV8pY5eKByJkvi0RsvIPswMGdGcXz
rgKVGnXvt/awEDKvG2htsWrhdnuNt8+cbjDw0h1Wbcr0+ajHw8ptkRCjfnsSvKAbfg9Xu6NJZvcy
+KxF/uTYWqNouyK/pu6fdORr6ThUirGP1VQN/7EmqpKxlMoeKJMryyTYqgF+W9ght0e+3n2+3m76
tSmQy1rxQRGPDhEjgEtRPx4Ue+CwEXl77EdqZ8sV8rZcI3NpmwDJ52jw7k3H/jf7bZ9eqWONSqOw
FN4ThtlFeRtaxlzY56QeS5R3wCIss+0Qb/ostkhTztnPuYYhtmCPqnQxbDfaIoX7QF7OFYqBhGDx
AhffGMLTB/eDCS4d/ZUz6BWt+ke2NUx0MXbqhLhPTjUlMLNJr5KxXmU/VhlX3UPImi1004kZOs3K
auZM6II/NLv4+M3i6jiC/Jzhd94zHVQyIemL2nqsC/XmfkWsZXXiACJdXuV25q/08dfsN8Pul02S
GsaYs1lATOzX/Gzz1pYm/3a81b5vuzs6l+ijv9Mx+Ob4GUqvSUzJHRH5n+lDARtAxjhNMcKOI16L
XhxxnI0YpQSF+7xMd7Yp8resdhxR9pbNY/ib5MYkafbsJOowWIGE4PnlvQZe806BIz4K4axBOWiG
oziUfME+YZHFYFPL+Jo2KJUjbDmQbm+qGcGHGodJquqCqrRI72Q4p1t0mJP7tiqk07kXHs0u9jXJ
6mL/tkcJfLVoSU7m7jkx68XdG9bbrmOW40fOMosdU7R/fwUBOPAUahzekmzcveR/5jMHUdpe7Tv+
aNP/O0kpS/aZZm80L7LVyLC5/Rz3uiViTktYFQHZIJHJAs8cFS/StEd1QlZ0S7aAMogqpe8fB66t
nez90TX0v0beai3iuLOA5knVgXfO7QKV2OJ5r3uhqvohbndD1OMRgYMQluGJnXrVqb6mSYU336/p
aPlSew/LPMAywUk7PRFmxAD0vlYhCzpopAa8+2B16o/IWWvqvgVzRVogVtwwmWysQIWFQiBYx12+
6tcJD0Bfvde5c+OlewX6gHn7AbReNwqZD7vb8Kdvb5EOK9QuaTYawJkEdyWIB8SAisGnXMaoYLLM
cP+FhM0wSgRRl1AxyxdD4UAbWcDkEAj2W2XlxxLKZsohYvk2lDzM1CwhN3BzTr+qZHuGjQfy51/3
jilnSoLxhjCFEGkeDEwDToSUw9mYggymOmOXRNnDLnqZPgYSZImpL7A/7j5VjFcugj6CXiSGXw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223B05958317640"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
content-md5: HgMC6tpNdQ+JX5/gN/xnlA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f32ba3ba-f63f-4e63-aeda-cdbaae754d7d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339/baz/bar/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
au2LsHJgsqUSHFp974cKKxCtX9gpCdyCld0CO7CwuOOpJ2z0wgfsJ8/aROU/bvemWtXERCTKEGER
CBqVXXb1YWN31MgaFWkIwDcJT8T3QyfmW+Ha7HS/3hcK47nsV8pY5eKByJkvi0RsvIPswMGdGcXz
rgKVGnXvt/awEDKvG2htsWrhdnuNt8+cbjDw0h1Wbcr0+ajHw8ptkRCjfnsSvKAbfg9Xu6NJZvcy
+KxF/uTYWqNouyK/pu6fdORr6ThUirGP1VQN/7EmqpKxlMoeKJMryyTYqgF+W9ght0e+3n2+3m76
tSmQy1rxQRGPDhEjgEtRPx4Ue+CwEXl77EdqZ8sV8rZcI3NpmwDJ52jw7k3H/jf7bZ9eqWONSqOw
FN4ThtlFeRtaxlzY56QeS5R3wCIss+0Qb/ostkhTztnPuYYhtmCPqnQxbDfaIoX7QF7OFYqBhGDx
AhffGMLTB/eDCS4d/ZUz6BWt+ke2NUx0MXbqhLhPTjUlMLNJr5KxXmU/VhlX3UPImi1004kZOs3K
auZM6II/NLv4+M3i6jiC/Jzhd94zHVQyIemL2nqsC/XmfkWsZXXiACJdXuV25q/08dfsN8Pul02S
GsaYs1lATOzX/Gzz1pYm/3a81b5vuzs6l+ijv9Mx+Ob4GUqvSUzJHRH5n+lDARtAxjhNMcKOI16L
XhxxnI0YpQSF+7xMd7Yp8resdhxR9pbNY/ib5MYkafbsJOowWIGE4PnlvQZe806BIz4K4axBOWiG
oziUfME+YZHFYFPL+Jo2KJUjbDmQbm+qGcGHGodJquqCqrRI72Q4p1t0mJP7tiqk07kXHs0u9jXJ
6mL/tkcJfLVoSU7m7jkx68XdG9bbrmOW40fOMosdU7R/fwUBOPAUahzekmzcveR/5jMHUdpe7Tv+
aNP/O0kpS/aZZm80L7LVyLC5/Rz3uiViTktYFQHZIJHJAs8cFS/StEd1QlZ0S7aAMogqpe8fB66t
nez90TX0v0beai3iuLOA5knVgXfO7QKV2OJ5r3uhqvohbndD1OMRgYMQluGJnXrVqb6mSYU336/p
aPlSew/LPMAywUk7PRFmxAD0vlYhCzpopAa8+2B16o/IWWvqvgVzRVogVtwwmWysQIWFQiBYx12+
6tcJD0Bfvde5c+OlewX6gHn7AbReNwqZD7vb8Kdvb5EOK9QuaTYawJkEdyWIB8SAisGnXMaoYLLM
cP+FhM0wSgRRl1AxyxdD4UAbWcDkEAj2W2XlxxLKZsohYvk2lDzM1CwhN3BzTr+qZHuGjQfy51/3
jilnSoLxhjCFEGkeDEwDToSUw9mYggymOmOXRNnDLnqZPgYSZImpL7A/7j5VjFcugj6CXiSGXw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x230DC237F182B20"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
content-md5: HgMC6tpNdQ+JX5/gN/xnlA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 28fb43a9-b3d9-4f8f-9e30-50850b35e66c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339/foo/foo?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
etag: "0x233711D27814600"
last-modified: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3f5c8bd-0a4e-4e7c-a953-91527ebb71be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339?restype=container&comp=list&delimiter=%2F

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
Authorization: SharedKey AUTHORIZATION_11
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 098d7929-be92-4452-bf46-041209ddc35c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-57808187-9a01-e6eb-2d65-01d4f184a339"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>baz/</Name></BlobPrefix><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:02 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:02 GMT</Last-Modified><Etag>0x1EF631CD565A2F0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>HgMC6tpNdQ+JX5/gN/xnlA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:02 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:02 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:02 GMT</Last-Modified><Etag>0x240F6AA6383B480</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>HgMC6tpNdQ+JX5/gN/xnlA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:02 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:02 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:02 GMT</Last-Modified><Etag>0x1D620FACE84A110</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>HgMC6tpNdQ+JX5/gN/xnlA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:02 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-57808187-9a01-e6eb-2d65-01d4f184a339?restype=container

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
x-ms-request-id: 3352b48b-0f03-49fb-b6b4-a88bf016ae02
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

