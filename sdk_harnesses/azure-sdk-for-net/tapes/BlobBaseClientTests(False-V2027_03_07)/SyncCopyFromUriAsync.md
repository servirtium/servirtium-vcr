## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-32b6593a-7105-6690-7f06-87144242642e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync
now: 2026-11-12T00:47:18.8456567+00:00

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
etag: "0x1D44E39E0A21F20"
last-modified: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64ca7c44-2848-4480-8915-757a83fde832
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-32b6593a-7105-6690-7f06-87144242642e/test-blob-3af5a23a-a9a8-2454-3f1c-d5e0fa1837f0

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
cJ1UtWX9sC+36ylgxZhnHMclFPFXAQaRBZLy6Zuwa2bPlqSl7a/IPfLFg7x/9F6mtLgY1QNGmG6X
w7DTCseUBn/CkC7zwi4YXNf/kn1JERA0SzTil5ZiiP01Dir+9TIqMXw9vWMvs/KJAHksRwbwTbKf
nr6SsW/oXwcxvrMEGWak1GABC1OsBJhBWJcdNkH2RMB4X1ZzmH8NVF5b/vU/hecSh3Km70Fe8pol
UVjXyynGOnnyjLkPMDzg9Lb1UQajAtOwCq7OUFV+GWy8TkYnNYk0lcR7TPktAlY2xfuLaKGTgk+F
J8B69+kjdHNMU+L1ub4swLtCJ7XaggdXmIta87DLKcv3og3JuZ3bWNiG4K90QQs8XqjlUFqZqqS4
I19dyYDCgSkW/hawYwYdZ8/dVKJY41d/HZUI5thxXfdpEZY+fY9Xw1+FXUL0i/uhx+mKu1YCYEAI
3avruptRpaAfR1Fw3+lAhpBC0oYUipGaZx7u5qKhZrFWNZ/jawjENLei1USpMOj/SjXFwI269FIZ
UVN8Yr7+fuGgGqlKXBqHfp7OcbVN8DY275xs26Yjm0FMyRq1R9H5o1diCBY+te0aPUHv64KdzGAc
RnMhkaI7fH5o/ZMA0jfM1M5d6ucg9zquUp1kNLC/rv25mABe1xK0J4yX1rdaGmsKIhe0QOF5/E45
cj8F1kjOqE6VRzk2bvy7qMJbiSGCVDgyWRGYC24bQJyyJGTSr1FDyC1pxNIx1LQa+JcfHXMttx4H
0nw3NZ3gegedhEmY6fhxGMDzGY9lAIVcfhLW/CIphG1Gy93UDJOQiUrLlFBqgg+erQWzOZ6PotL3
2reKCX7kc//bUh4bnQwtY49EmWw08fwDOE4ddkvPtigK3DHbBn/M5iBRjy/xghD5hdYOSghmwui6
h9Evx/2zC5v1EMHaUVwQeLJL42LMErU+I/B0wWwgpBlIIH+unB8inYOU/HJPHjR5/dFVGt+F7nQc
8aMNP0kv1WynkTDdYdyTKEXfNxZD7gW7+8Oayoo6wjIKkqp7FV45ZSYGp40Dm5z1wvKZprZe2QOe
UUOGlArhbc7+088xFxLnpdLvPUd3uF8npAeXoBx7q7mn3cMas9AcJDq+BcjNxKvfsQHjb5y7Jpnk
XvACSsyygigWijlOzfIC0hgMubKXWuBcuO4alzwd67YqNVTgGdptC4KgtzlxkOQP4ZyDr23mTQQQ
ppHel+vr+Z6DJJedIrk+n60v96Km6ygJC7WfmTxJQ+hPz3NIj3SXtL6b7mtNcb/jRA+/t1Zhabpp
1Iw1TF9iOeGuTVJG9g85mELkC/y8vJr2vFUsiYyS7Wa437voYmdeOLSKnyNtnU7/hh4TfV69rQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25CF1B0B8AD71C0"
last-modified: Thu, 12 Nov 2026 00:47:18 GMT
content-md5: c8R+A6ZaVtBvN7Hc2RIgIQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca73407d-2430-4f91-baf3-69565e54ba23
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-32b6593a-7105-6690-7f06-87144242642e/test-blob-903ff217-360a-54af-1c5f-eb8d17545136

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-32b6593a-7105-6690-7f06-87144242642e/test-blob-3af5a23a-a9a8-2454-3f1c-d5e0fa1837f0?sv=2027-03-07&se=2026-11-12T01%3A47%3A18Z&sr=b&sp=r&sig=aKvdaQCyAOge94QB8EXKG8H%2B5PU03ZWA6fH1IqdaeHo%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24F0A3750D256E0"
last-modified: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91cfcbb1-fcfc-4454-8dfc-5548e8ed10b7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-copy-id: c113b222-3794-48a6-8b14-87eb6889c824
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-32b6593a-7105-6690-7f06-87144242642e/test-blob-903ff217-360a-54af-1c5f-eb8d17545136

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
last-modified: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-blob-type: BlockBlob
x-ms-copy-completion-time: Thu, 12 Nov 2026 00:47:18 GMT
x-ms-copy-id: c113b222-3794-48a6-8b14-87eb6889c824
x-ms-copy-progress: 1024/1024
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-32b6593a-7105-6690-7f06-87144242642e/test-blob-3af5a23a-a9a8-2454-3f1c-d5e0fa1837f0?sv=2027-03-07&se=2026-11-12T01%3A47%3A18Z&sr=b&sp=r&sig=aKvdaQCyAOge94QB8EXKG8H%2B5PU03ZWA6fH1IqdaeHo%3D
x-ms-copy-status: success
x-ms-incremental-copy: false
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x24F0A3750D256E0"
content-md5: c8R+A6ZaVtBvN7Hc2RIgIQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1109a8f0-ac2c-44ad-b6a9-34164de210e3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:18 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-32b6593a-7105-6690-7f06-87144242642e?restype=container

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
x-ms-request-id: 8d6af584-a0d5-4e22-ba5a-4638c3d8371b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

