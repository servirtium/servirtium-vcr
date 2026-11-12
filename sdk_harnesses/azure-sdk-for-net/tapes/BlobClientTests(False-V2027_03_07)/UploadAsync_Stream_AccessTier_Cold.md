## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-21065647-07e0-01ad-83ae-65f36cfce2f1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_Stream_AccessTier_Cold
now: 2026-11-12T00:49:02.0732192+00:00

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
etag: "0x224AD5564EAC920"
last-modified: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 18b51739-62a9-48b5-a682-23fc7a09187e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-21065647-07e0-01ad-83ae-65f36cfce2f1/test-blob-7ad21150-23e5-2400-aa50-991dafd205a8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
x-ms-access-tier: Cold
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
04spSbDLyI2JwPdajiBxd4xj4Z7mbhQkVuF3j22QUrCpvSDh0phBhUhE8CUrpZaJ3yGQTPFmwWV3
BfPOUzkf+W5GsdAAkKXzIVtWon3v+LFL7rBM/wa/Qvy7ac2lczEPJPe35PPFiE58nSqVDx7niAxC
gmWI0/poh27URSbXTq4pRn2GNxO9hWVh0GLbKjLd0+HBY/DMhlH9T12F8EIopU97a8mhYVD4hfz/
JwOXjF0793JEFeq+XcAsiei2N5QiOCoSX75pO3KRyN3zzF5NZcIASfnQ449kvQ0IdNhnQk1n3e7Y
hCye0bsAs00NypFh3iQlte2bUlWbrqKwYceZKoWQi+9vdeCWYXg90DBBV/N8p5a0QYxfzIuZPNaK
7XD0ZonHfT6i8WlEj1R1XoElWVeuNLkw5ej4ML9k1jgJDHMHSGqmetm02rUtb7I46m0JdOJ+27m2
w4Cgzkx+PhswOoLgbhUXft99+VoEA3U1wEZRWmFVizG6UIXpBquNNZyZ/DUvWHxY8vYDAOFfsr8K
ag4GLeO62q9RJh2QLXg08MS9agdABmfK+WdqUopPW57F35udhgi43yGG3TJeyMV+zxAdoUe4ymSm
PDN7T4gkAst+yk3clmm7BYvluSg1azCi7IN5MrlXDBU29krUPJCZYdtn4P13oTimYZy70xA8cNED
2GIFq88RJ744pp8f5sj7TFdMzoszK0tK09AdmzkE+oZ50WMtk7YLVbg/P/uYh3rTwIe576FFz60X
u9j/9IyEM6sZphVkzrigQXjS8+tQsUtWSdqySwvkMwG2FdjeDGEsugtPf+Flb/LOGK0oc9zBxwmM
qaqx0uigNHITrrjgwjQXpjjgADJq8Nro4zJdu8Al9E7PUmO2eugirkpuUcA57lZ5Ecyj4cbWIbjQ
yO61Qnmy7rppEG/RYCxPvVHn/J8ZrvXc5KrzgROI+DGr5rH5bGzRu2IG0N3mp7CgVCN07yQYthn5
2V7Pv22n4Rc+Jnp6VVHlFkA9Et4X9jz5Ui3vFAkMki+YAJMNAvz0X+/FqIE2Jv7Sjtjj26Q74eIi
1WxAt8wOMZNK4lW91xNESLPvUU66wiwuHYUwKbaLXR+w6yyQs6git3bt60OoFLbFn5PwS5CUZxI/
EZlH3gjdv4U2DevntJQLzZrXzNfohQnOa4kjmhGOHIQZUKIO2tluECy+cgfK3er+5X31vJo7VouQ
eHJ+uSRzp/BnzWPy/PLAaburKhMCBI2fJLWTmV/p3voWfmJm71cHS8sWYxCHDOiLNFPfkCx4jnTl
35Rv3w6Rfu5p3H6QWnlko95H66B8GBjMCGQLCk7Nne/tgRDCmGu9hOQhHTBp+trZeuxNMKLTaA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C875E8203F23A0"
last-modified: Thu, 12 Nov 2026 00:49:02 GMT
content-md5: sGCQkIiVIQG2TK5FXVbZHA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4ada96fc-5696-43dc-89c2-02ca20448cd5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-21065647-07e0-01ad-83ae-65f36cfce2f1/test-blob-7ad21150-23e5-2400-aa50-991dafd205a8

### Request headers recorded for playback:

```
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
last-modified: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:02 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C875E8203F23A0"
content-md5: sGCQkIiVIQG2TK5FXVbZHA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4b7d2980-2893-454d-83f3-ae4a439ea7da
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:02 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cold
x-ms-access-tier-inferred: false
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:02 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-21065647-07e0-01ad-83ae-65f36cfce2f1?restype=container

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
x-ms-request-id: 34288821-7766-449c-8e70-f2136a269e97
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

