## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4eaa09e0-aaee-5562-9def-e79369803ddf?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ExistsAsync_Error
now: 2026-11-12T00:46:45.8468038+00:00

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
etag: "0x25CDE1A5F5A2780"
last-modified: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9dedc08e-20b6-4cfa-a350-8f0ba0953e3d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4eaa09e0-aaee-5562-9def-e79369803ddf/test-blob-febdeef7-1ebb-9ec7-3153-53a9f371cbd2

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
+lgO6LFBTs4UM09SzJ/Oq5KeamRAGXnCQQscmle4YSwkFZgRcVUutp/v6ojPdNGShagXVAZnkeDe
TKalJLN2W9EjLrcGvDo8cLPEUS7x88w5ihWvoQ0lvIO3MySuiJHreI+2q0YajMhu2uNTokCy7Vna
a5qex7nE/XEzTokVjeci2NmfOkeGH/1MQccp0hpDBUXL1B33TbDW8q7U5z0/WEz8MclmE7MSVEyc
UYbymytX70lESrnKKoopyEeYsTfADeh6LaFQ3fKRuYDRWvwp5FeDfff0+w6TMQY/PUpreaMU3EOe
d26JBhJWspE4+c+O/+TwFTM/zBLa5vuaEaCoJj/dvX64imzp+XflnUh8Wjg2sD1le2Nv1BAxw5By
7vVyroxRWztR1XR4Bhy8Wi7JXYzCZGBiQqrcbehuhsfbdgqBc++8K//85NrI7XRHs3rhaGYEr4qU
D2vhde5T406tnI8ROuY/DDKNxn+FmlU1lLpujB5h18eA7GSD27YQqQGLGlHlNniTolszd+kKD3QW
rOA05FcwTMTIkE2CvDF8fBx9+YADUF5B2+nCLV/ddd3vbC7V3MSqW82MHKUrEOYqtvvMjBX0ElyB
8gltbR9l6htvk08Cpp9Y056ydzO5FsoDmHZkEejI+lnSVOm7PO6uJzGKu32WJxBbdLl3QZooyNw+
atWoANkyp5j2MFK1nJavBFACL1tNbXBmCZwvULi+qosNfNIZBSZYVxPkn/e9pdcixz1KJpmA8fxk
Qfc8A1bfN4XHpyDDlv4qqddHaM15qWPEDIl7dITxjIvVtMMvG1S8BGhx9f23XjA/IHzCOYgv65iT
d/bNZMMB1RuU7uI6+o6Ci2RkB7NlDa5YPFQHL1MCpskrnKNe76CkcCDiI3BOBCXtP64kyuPkLWpI
dChu+aXHkUcYD17rJJvEwJaSguo9CjcuGvCl3tvlRm44Fnt3NnZ7GpEoNfXHAhsSXwpMUqqACmnw
QN+1IrJsMsjwsg0gTIofF2dYFNVCZxjUkn/QmPTDtwsRhvWXxfjevAMs108N8hOALTpCKPaUrtjH
4Y8zm5nULPoBDsWUiFJveljRFpDIxqBsUGu5gI8VfNgd0ORoqiFpWKpVDONN7KTo062ewpdI/hrv
x0stGqxq7JHsd7dtBs82aL7lc7q9HmPG0azhd7pA1NLJeePVOz3+6h9RYHXtes3eZ1rZY4tgMajn
Zkj/iHTXq6LlpIzrYSyA54iaa77u2VffAxBfZ3FGaUc67tX1/mGrebTSCNZA8wYuWXsCxcbq+I3w
H4Vkd0QxnjpEsHJWi+gn7/EKG9CBnw8KMQ31Q6SBUPVHBN7bRwFvoWqb+0KT186T29bU4N29bg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x228596069A80EC0"
last-modified: Thu, 12 Nov 2026 00:46:45 GMT
content-md5: HNCyVB1jOTkQWjKIqmF4bA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 837770a4-9906-4d92-a2dd-b3a1d81dd8fc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-4eaa09e0-aaee-5562-9def-e79369803ddf/test-blob-febdeef7-1ebb-9ec7-3153-53a9f371cbd2

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: AuthorizationFailure
x-ms-request-id: fe97025a-4f25-47b3-83f2-019c9fadb9ed
Date: Thu, 12 Nov 2026 00:46:45 GMT
```
### Response body recorded for playback (403: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-4eaa09e0-aaee-5562-9def-e79369803ddf?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 82eee638-079a-4c17-95ac-0212443e923f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

