## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-24e21527-e9f6-e264-699f-7b1a65761500?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_CopyTags(null)
now: 2026-11-12T00:46:14.2866471+00:00

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
etag: "0x2438D475E39A6A0"
last-modified: Thu, 12 Nov 2026 00:46:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8ecd0ee-25a2-47cb-9d98-7cff691e817a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-24e21527-e9f6-e264-699f-7b1a65761500/test-blob-a0513ffd-a1a5-c110-80fe-253520de0057

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
q4OMtUeDti/1496dZgYuwCJ43EiSYauGBSGj+MQvwYqfJG7h6WC5eogiqsLCclp60GQSqAK4xEnX
Bq8l371qxiFU/kGXTNfCv2G/b7bpxJLGKShgHBmI5l8lCuOwk5vLuOShbXMZ44ONUOmg+FWS7UId
X7aVCakHyxfickHzEivG9LfSSFYerUWk08ww6O4KkhyhkjPlNq46maJbN3FCmT692gSdwKXr/rJw
8Dbd1uMp198kUX/34L4Il660w3bUYTmNcw3qbdJ3tZSBdUV4XcK+Ml+RHUi+xflFlCj2Nzs8m478
T2PWP2oNrZvrdmt5kDrs9pAWQ0Txz64UpNipgX5YRdm2ew1f6PP1g3Cs006NzAPuCkGqJVhKC4C0
wZqSZCwdkjCRwhUsjA2dIL/TRftfhtfUunY9rR+Ba3CMqiZYYx9EjkAd/Anuwn0zDQSYd8WEVTvC
vam14OQREFeln+HnRL2fj7a7QYrO5fj4CaAa6PSqCFXqlqV1jq5cDOuySSKcTMlH+OcPyROx9Nex
vNZE9idj+peL/K0YKgAHXjSeG5zWXL3W0/AMmj5COaHNxNHYGBbETk6KEE8bL87mB2rfEtg722AZ
bSI3VmBYScMMSmUuL0Ye2s1OS0tuuqQhJpPTYybJkuhxvqrzjfjuMseMD+Rpt9gkwDgL7JAVqrJ+
FjDMhOacQ7h9vXCcKkzUYBmD4qvAuG66r6LuvaVYWxP3dXfHIa3g78ws6/pniJbrNox2kcgHvl7C
EdVEroUTJGFcpLTVDD5sovLflMx0UycLAoYY4cpL8LcZBQ/YnEFGGMaYCuTiFilNCu7WJymRTb6t
OKv++kOXEbP8vAcvkwawmHsF20hDKexdytbbdMiNh7dQKmOVRx2DAPkw5VkiHnboJY6ujHF2ag+/
oTBsvJzqbjRP3mmiGlFdgdtOEkSSOqxg80863/tF2r9U1qbtF0RcRXYl0j8NRQo9UQqWJ1fKLWaD
DMhNsI85CQOqTkSrb2qW8s3NbGhsU61E/I3wr7Nniag/agt7D5Tm68k7YvfFkuGg/zSK/MD+F7kb
CLQBSFpQQsScawVeG+I454GfMPC2fmmsUK9+3IznQFNSYAbg5KJu6x8yKSbcQeRRUhU/X+bIZIpK
Vfir0mY4tCqxDLrcVwLeMEXQg1RDzw7KLIp3qOFsift8lo+qwxm5+nX8KjUqdfoSYC+g+OA1B4Xp
4KXbwAtJRIK+X8FzNG0sFonfRqTZn7aPZEiyzJEaR44JweJz3TlpsuWyaxU4nyzBdOFXVcDhD0Du
TFzDl3jxpBgzaXOKuDlPdZO/JzShV8Qc8Fevw/HOKLGhhJHcphtswMf8BTW4N7uoB+AsIecMTQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25867AC87434F20"
last-modified: Thu, 12 Nov 2026 00:46:14 GMT
content-md5: LTnCCdefjxaZflNGzkT90A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b2588dc7-b9d4-496f-8cb6-890f640f7690
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-24e21527-e9f6-e264-699f-7b1a65761500/test-blob-a0513ffd-a1a5-c110-80fe-253520de0057?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>source</Key><Value>tag</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a511c34d-4ccb-44c3-95b9-2a0248fbaa28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:14 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-24e21527-e9f6-e264-699f-7b1a65761500/test-blob-a6a698f4-4221-26e1-6541-c1e934a772ce

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-24e21527-e9f6-e264-699f-7b1a65761500/test-blob-a0513ffd-a1a5-c110-80fe-253520de0057?sv=2027-03-07&se=2026-11-13T00%3A46%3A14Z&sr=b&sp=racwdxyltmei&sig=mpd4zHiZRldv%2ByD7Mg2RPxNDGv0WpNEiBUx9PJiXA0g%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-tags: dest=tag
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22B25D6B2A6F3E0"
last-modified: Thu, 12 Nov 2026 00:46:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20f149ca-c95e-4ad0-aff3-97d367df3490
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:14 GMT
x-ms-copy-id: 035fadc7-ab69-455a-b675-6fa94c603cf6
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-24e21527-e9f6-e264-699f-7b1a65761500/test-blob-a6a698f4-4221-26e1-6541-c1e934a772ce?comp=tags

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 4ae4b83f-2d27-4eba-864c-c1f69951e47f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:14 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><Tags><TagSet><Tag><Key>dest</Key><Value>tag</Value></Tag></TagSet></Tags>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-24e21527-e9f6-e264-699f-7b1a65761500?restype=container

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
x-ms-request-id: 8721606c-04fe-4fd9-ac96-d18277f8e09c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

