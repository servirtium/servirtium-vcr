## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-42917a8c-acd4-efc8-6895-43c775b19384?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetTierAsync_Version
now: 2026-11-12T00:47:12.7095639+00:00

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
etag: "0x20BFC7167431EA0"
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 50c14ff0-4975-44d5-b141-175116008959
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-42917a8c-acd4-efc8-6895-43c775b19384/test-blob-601718aa-a6e1-6c1f-eb04-f4e60ccb1357

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
JL+PbekY/6qAQ03AYAkMonG6+/1VZAmHQi7UXQZh7gMdZZeDWTuudHvmwZBeB45eiKBWuraVL8C2
CCu7Q6GkH1RKo/pxiUk2DIeCbqJ4KDqfdtRlCjNMiDbXzVEP8zDZQqI8FGSU7P9XIK4vE8AdPd/x
G83MPhQh/RrDmbz3JhlWqCv/PBTVC4nVDuqFHXV1uo9xHdhjDQSOGhZK0FNDX/mU2WqUHQHLHA9E
9y8pm+ClTd8shglB8psncSH+izs2ka7w8UMK4ZyNpgHIHxXUZH81pIJzFtnwUubPbazgzZHTDmWA
OamcmmxDn98HeNOFUgyhyOa5wnrVAJ5dO3Pvrdlw9BGwVCvVmQoVMHf56NkTSRqfPgSqGkvqqzgK
P174U/EGl4PB1f7hyy7co5ID2xjFSfFZUG7UxdrGxajyylmrHNyF81FVUXQcvXLWzne4588gRfVt
nwODMdGp+w9V7wDUMIa2fufGb/d8PJL7/vdiDd7Y0YVkPnzZAsJ/q1Zlxs5yAZ3wAmnoWdb98GNw
hzLaR+0wfB17cPIK3HwlR8OhF3XDif1Zcgt18HiuZk0ZaHqPpGRoNEqx9pCq5iXtwhETXNntrf41
gNXiu4ykzQml8HQBlaNeOOIrEZJsrovliC1mmgp0K7p7WiOPhXi+DCmHBfWw6y1utCP2wptrydJJ
/TNePjL/MMW5hTt/zrNpbQRp5amVNJ0A9+XmfWgfEJBRRohFX872iNQw92Xx7+VwjFWWAeMos8mW
XUZMGLJcmnWqLYgqJA02c1zUZT03Dgf/dvETiA6tKJO/rwKHqW8h1FzwR8FdRWhIYI6GVE2LXk8+
TaHBSBJm/QX1a3QLrsntspHhRsdGojCIyyeAJtRFM1CySFzNX4tJiUm8Z9rzPLLEmaG8qheI+Kpx
OX3r5tcwsDckWGVtH1MFl719iTpWlI50u4wyiIg4KlCxXCYOXaNyi7eiz+RMV3pOtxJaC29wG6Tu
ditL/Seu6y0VvMIs9jkZCv2Cs8SqKGQR5NF23R/gQUCCIOd4J42P8+S3N5u4IcDZQQBx7WjfRE7G
ORlWOA0ONHqBqtZSoeJw88Dg8vDJWcIQnJweb1PYotyZse10ObrWqQMgNnfphp8dAfqn/1Fd/eBW
RZxx78QnqQf6ue/0+7kFCUntqSNKJhX8AW5YMKKKO7QNHfMeZbo++Ixw782vKAVAovYHb1S8Cx6G
dO1Vznhlb307597G5qOPr7CW2jdITdhpGI6rg8tfUBHUmPHM6CkUC39Qc0EnertTd8CjJjHnPicV
7Lbqueyx3JbM8U6xw8eGgc+3+NmXQp3SWAsLvCrg7VrKt/tzKlGSnpeqWohtobP5HKRhL0ZNfQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x269826FA46809E0"
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
content-md5: W0tvTD59I4iLXwamcK/53w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8052630f-d09d-4e2e-9352-cab8df431849
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-42917a8c-acd4-efc8-6895-43c775b19384/test-blob-601718aa-a6e1-6c1f-eb04-f4e60ccb1357?comp=tier

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
x-ms-request-id: bb80956c-270f-41c2-a45b-603a7a458d30
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-42917a8c-acd4-efc8-6895-43c775b19384/test-blob-601718aa-a6e1-6c1f-eb04-f4e60ccb1357

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
last-modified: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:12 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x269826FA46809E0"
content-md5: W0tvTD59I4iLXwamcK/53w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d2858b1-a1e8-49f7-9f0f-da3debe0c728
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Cool
x-ms-access-tier-inferred: false
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:12 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-42917a8c-acd4-efc8-6895-43c775b19384?restype=container

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
x-ms-request-id: f85a017d-0ceb-49a8-8d9d-d324bb07bc85
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

