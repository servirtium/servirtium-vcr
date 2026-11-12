## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-46a2d138-31d1-0328-ac2e-3eb42ebe3a46?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_File_UploadsBlock
now: 2026-11-12T00:49:00.7339186+00:00

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
etag: "0x1C849D7754ED740"
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5fee29be-722d-4a9f-b900-34a0805686cf
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-46a2d138-31d1-0328-ac2e-3eb42ebe3a46/test-blob-bfbec21b-bc8b-a1d0-aa70-a61a7c88dcaf

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
IALKWcTw3rMOSkcv1q2DyDPV6S8nFXV7AAGbYYoNhiNSj5Qs8+CCKuMKsUB0ocr97N3np5+shwqM
T1nDVXwpAMMj3UcYV9VSU75LHGQ0Bl82nnWsJt+EpQeJn6SHvtVm4bB8UcOD5JUIlFThYWqmV0j6
jbcHfNrknzhAjrcxy5To5Du0t7WbsrnfpJGKo0Oc40dbjTEeXmTWmLGKQ1Xe1snA+Hwu8qCSXtr9
KNdIWvz0o6tv1T1jyYbX3R8EEW9jAc7IyqrHbfGnyS9WIDaNjT21lp+qbgCLXS/2VxSAjk1qmiYJ
gJBRLDa5yAwODKhPSlDhT3rQuJPNPGx70RbdJjvi7IYPgw2tY2lo8KX0fVGGpg3Enj/SmuGTO0Mj
1lsg3KHQLCAiP8ZCNOsRZ8ft2L8b9SoIGYj8D1GkfEfKiYwOSBQEI1ExY2dGgmpTwDIapWOEB+Ew
F8MZ1BzOfcJ+d6pfAx6z6bVu6pHDwpcdqU4fitbkRoGr3TFR6k80YuakyAq/9L0UZ7ytFh1QbVUs
+yvNr/PsmTEosyXtYf5mOYerHvqMXrSRCiMaNi9kW3DcJO8jZ7PyuC7YlkCYJgW+R92VpU5an512
PKTQ0WIBxFi0ETwPQtHUuGbLtMd0+OQeXO9Sz7UigYVRrCsPIubL19Ln4xXIrgULweznj+vWAkO/
sXVzrvWikpC3vpWlxJaA/9z0jRTPVq3pRg3JOvGaeqrnT3BwWCjdRFCFEPBvZfxWZ48O4XUv8FvH
iWfn2VieHUPrvnQlD6e0F0jDSUW9euARc9Jii5k1uF8UqM7A9mv45/Otg6eHMFjoWcosa6YWCg+H
1WWFO5GptgUVEWbY9CDdy2JSD/Y5iUN6ejHOCE24/p6/OSAFcqthA82ich7xD2WpT59Ew/oYTUwi
C8Ff2623XRLIGbsA2Fi38AwplhckiGrMJbmtczqjpuvT4mfpASgg6hQLKfWpqXZHjNPu77c1/oJW
krbzCunYJXLPLPXxzu7kCKwCGF91InxDZedntLcznuPkkm9yLOAqMwOC2XyBVr7kCeYLMuYj4W86
sKQCcHC7m44RDDt/ctvL2ORb8kj/wg8og6rQKGz9wLD/N3w7J8OTxj3ub0mDZJcLP1kByO8nOu6U
2uzF63MhE0yKgDpfkLAhyCsKEVLFpR8TxOkS/PjB2P2Opk3WzdvKzFv9+ONdrK+o4ADEHCmbzzTN
sieKDxdTyag90OljSvpQQET3yKw7thg5aRv4/bzT8tcYCBqzQLxDqi87H9vGRZUFc9vkowaHkvwO
UKb7W8vsad4RSkLgnP+ItB59AJY9cyOG8ong707RkXYepfAWR05jTrb9tftTJdfbXO/oCpJm0Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2246DAF1A26F140"
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
content-md5: dbudCpqJPkBFNHyqr8iEXA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 08bdc2f7-33f0-48fe-beb2-02c45914c8a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-46a2d138-31d1-0328-ac2e-3eb42ebe3a46/test-blob-bfbec21b-bc8b-a1d0-aa70-a61a7c88dcaf

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
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2246DAF1A26F140"
content-md5: dbudCpqJPkBFNHyqr8iEXA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 888377e6-ec30-4313-b293-3aa40a2bdfeb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:00 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:00 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-46a2d138-31d1-0328-ac2e-3eb42ebe3a46?restype=container

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
x-ms-request-id: a088c4f7-76e7-4020-9da3-d36e4e2cdc27
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

