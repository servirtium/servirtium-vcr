## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2decf32b-5353-ca0f-5540-34478f813831?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockFromUriAsync_Lease_Fail
now: 2026-11-12T00:50:07.2860777+00:00

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
etag: "0x272981AFDE6CCE0"
last-modified: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6468b846-82e6-4bda-a7e3-6b957610d790
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:07 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2decf32b-5353-ca0f-5540-34478f813831/test-blob-14619395-ecf8-c7d6-6d5d-76936a2fe5ab

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
MC3zPnJ+ke26uSE+GtPxEwB2GJ3vjkbRIzUKhnR91jT3miFaa3OirWL+cpox0bCCTiFGGWmaQaHm
Iho9dAp5PeLtRn+xl6eN02s78Burn1GEhzdTNrzKXFh/dElYZTlXhTW3RIsw0Ld5uEb9X1GGOoLJ
uOzTJQYlIuknMiNdNG0y42vl9FvGVLd/2X52zP0H+DnHj6xMg18vkiGhCJ2UHITYy3vloEYmA2Q0
VEuIr1XsIDnplaXA5WALtmE5JEsZ6r35nQGCIVfzoYtIGC8UpuLMtehjq4feF+Ua2urk7N4YG2mO
jhFUaf/i9vQZeM0x9g9+bW9jtT82G4UbZ0ZtDrStL/zFhRjRd0vogbSSxZ8Y6ePaZX9utWUpWHOL
OQG4dOc/bEjQa3H3rfUjejOLo1bmAn5ik6g0PnqWnC2lRT5JMA3NU1hWR35y47iJSzoynrUdpTaD
VuA+Ci3OOc9EUWe32UolvU/9j7v/8LDwq/M/ZP13iKAIxdosjkgqiA2uLpFQ0XHwDOBlHxV7hGUw
TV86jtXRzMnGrxNw+S4H0gatUMIen9mBTlgcEmiKjUF0+0Dp8Po43WHHiSJdgBOyXU0OzTOjEq6F
uD98tblhPCLS+/3uHuIMdHNgVxW3JM5FarQbe78O0OmSYze6vCioZk0Ai4QVxD9qAlm/Q7uYzpRx
N0oFRcBjwysTW7qqUrhLuPDIt5lJL6Z0sHllTo0u+pWjSYTdoiCNnMdZAmiFv6+hdIvK0Bf6Jwej
kJVG/XSd5WElBwgzbRXQOhrR8C0+7/DJxNoCZCp+qCJ9ORKLRp9SvBwHYLinbQZ2+ZX8KDfaZaCk
fDmam4A3pl7mtjMCRfN7fzMQNo83IlbUjGqUgYDqotRx5spluCCc0LlawLfSc7ShgakDyS8RbFnj
xQ8VoiXe+xNfkV4pFcYTdGbW3WGfAhi28//W59mkX3pwgvMQhi6UfMWjcuFVeGzj71XJO473Q8P2
X68lBxM6ujHjuJLTAu03QWGc+483YHqT8/eE2yTreT4wGid/b3Wxabevcr/ZD+1nkfktW0gzv/40
kRMctt8M+D9To+jGuNLr65HYh+67ueMKHEoqvR32/FspSt1hlbPYonmAhmwEodgnQW+2WjcPeNgv
EZmU4TohXaaNnG70ilXeAOR0OjN3BnpyA3utP6EjGdEFMYMZQ8A/XijGdwRqMrca11pSmz6kuAse
It6+cx0EaoOc71jRxLwjNdwKsI52CNHEk2dH0H6TYHl4+yHigOsKwQ2BzUJfSBOeL2VhmQd8qBkM
+t+2vZkFCI7eWcmbQLXxAO6B9TqOZEtUqaEYMcdx+1IH1oULVARze8W0gO5JAu6wcJkZ+7PffQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27B2167757444A0"
last-modified: Thu, 12 Nov 2026 00:50:07 GMT
content-md5: DW5rlRroiYPu5YiVOSZ48w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31aeb1a0-6b6c-4dfa-a213-fab6d94f5a6e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-2decf32b-5353-ca0f-5540-34478f813831/test-blob-75790dea-e4da-0a5d-a6b2-68c12d58009f

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
MC3zPnJ+ke26uSE+GtPxEwB2GJ3vjkbRIzUKhnR91jT3miFaa3OirWL+cpox0bCCTiFGGWmaQaHm
Iho9dAp5PeLtRn+xl6eN02s78Burn1GEhzdTNrzKXFh/dElYZTlXhTW3RIsw0Ld5uEb9X1GGOoLJ
uOzTJQYlIuknMiNdNG0y42vl9FvGVLd/2X52zP0H+DnHj6xMg18vkiGhCJ2UHITYy3vloEYmA2Q0
VEuIr1XsIDnplaXA5WALtmE5JEsZ6r35nQGCIVfzoYtIGC8UpuLMtehjq4feF+Ua2urk7N4YG2mO
jhFUaf/i9vQZeM0x9g9+bW9jtT82G4UbZ0ZtDrStL/zFhRjRd0vogbSSxZ8Y6ePaZX9utWUpWHOL
OQG4dOc/bEjQa3H3rfUjejOLo1bmAn5ik6g0PnqWnC2lRT5JMA3NU1hWR35y47iJSzoynrUdpTaD
VuA+Ci3OOc9EUWe32UolvU/9j7v/8LDwq/M/ZP13iKAIxdosjkgqiA2uLpFQ0XHwDOBlHxV7hGUw
TV86jtXRzMnGrxNw+S4H0gatUMIen9mBTlgcEmiKjUF0+0Dp8Po43WHHiSJdgBOyXU0OzTOjEq6F
uD98tblhPCLS+/3uHuIMdHNgVxW3JM5FarQbe78O0OmSYze6vCioZk0Ai4QVxD9qAlm/Q7uYzpRx
N0oFRcBjwysTW7qqUrhLuPDIt5lJL6Z0sHllTo0u+pWjSYTdoiCNnMdZAmiFv6+hdIvK0Bf6Jwej
kJVG/XSd5WElBwgzbRXQOhrR8C0+7/DJxNoCZCp+qCJ9ORKLRp9SvBwHYLinbQZ2+ZX8KDfaZaCk
fDmam4A3pl7mtjMCRfN7fzMQNo83IlbUjGqUgYDqotRx5spluCCc0LlawLfSc7ShgakDyS8RbFnj
xQ8VoiXe+xNfkV4pFcYTdGbW3WGfAhi28//W59mkX3pwgvMQhi6UfMWjcuFVeGzj71XJO473Q8P2
X68lBxM6ujHjuJLTAu03QWGc+483YHqT8/eE2yTreT4wGid/b3Wxabevcr/ZD+1nkfktW0gzv/40
kRMctt8M+D9To+jGuNLr65HYh+67ueMKHEoqvR32/FspSt1hlbPYonmAhmwEodgnQW+2WjcPeNgv
EZmU4TohXaaNnG70ilXeAOR0OjN3BnpyA3utP6EjGdEFMYMZQ8A/XijGdwRqMrca11pSmz6kuAse
It6+cx0EaoOc71jRxLwjNdwKsI52CNHEk2dH0H6TYHl4+yHigOsKwQ2BzUJfSBOeL2VhmQd8qBkM
+t+2vZkFCI7eWcmbQLXxAO6B9TqOZEtUqaEYMcdx+1IH1oULVARze8W0gO5JAu6wcJkZ+7PffQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x213AFF530BE6240"
last-modified: Thu, 12 Nov 2026 00:50:07 GMT
content-md5: DW5rlRroiYPu5YiVOSZ48w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7bb7b7c5-4094-4996-af11-5b49d5a66002
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-2decf32b-5353-ca0f-5540-34478f813831/test-blob-75790dea-e4da-0a5d-a6b2-68c12d58009f?comp=block&blockid=dGVzdC1ibG9jay03N2VmNTgyOC1mMGYzLThlN2ItZWVlZC0xMzkxZDM2ZjgzODA%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-2decf32b-5353-ca0f-5540-34478f813831/test-blob-14619395-ecf8-c7d6-6d5d-76936a2fe5ab?sv=2027-03-07&se=2026-11-12T01%3A50%3A07Z&sr=b&sp=r&sig=wYdH3f8uA1xS998%2B2qlzCgUc3tu0sDuWxr1MmERO0ns%3D
x-ms-lease-id: 60ff3325-a8c7-65c4-b62f-cb51875fb115
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 6a39da68-1022-435f-b0b2-3ba42626e292
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:07 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-2decf32b-5353-ca0f-5540-34478f813831?restype=container

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
x-ms-request-id: f72f2c45-b41c-4c15-ab25-bd951dd46e04
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

