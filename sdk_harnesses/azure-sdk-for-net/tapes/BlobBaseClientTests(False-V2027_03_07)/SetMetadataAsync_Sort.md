## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-29c7e1d9-1e2e-458b-6031-16689cd01206?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetMetadataAsync_Sort
now: 2026-11-12T00:47:10.4570831+00:00

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
etag: "0x27BB445816A7780"
last-modified: Thu, 12 Nov 2026 00:47:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 276e98df-ee55-45c8-bb6e-dc42b799bdb4
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-29c7e1d9-1e2e-458b-6031-16689cd01206/test-blob-19df3d40-87b2-67f6-7854-d44ed528947e

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
lVXqLRKud+X+NXaUefRzba0D/kkOKMZS62Cw2Uo9cDicmNJH5uT0kcX6G3wRYe2E4Gag0SpLb2yP
mEKx/p6awcU++OEhLIfIDmyDFA1JQIlyK/jjnJ4NUChluE6iQ5MnX1m30mkLY7Tf2MO9x1teRVe4
PtKltyQmMKe4u3M4JsvZXLWzkm0fZ8hEA8TbT4nNBnL36QTBgqc0kKLCU6dAp7H35GqlqrLpmNcJ
YLNgS+Ad67QBQD3HGNoNfwLLXRQhBFwS42oeJ1u/DlAstyH000XBpWfyP2Z0MMyQmCuwHTvD51xX
Tmd1/sNZQTHsmmC4GKu8CbesL8T1nbOejo4wDvAUaM/FnYXdTKakmf40iJZs2H+A9BODF7iXYbG0
13A0KTJA1zGQ8nsl370RB5bGwBUdMbUPrxrdkFEWLjvUKXQ1b3DM87Bk2+YDWhRWcg8i0KCbl6a7
JXkXY0bgesM/UbZJ25gl+s1kuFbPC1QFhh5B9F6bOJHOekr2tI9pg2EixAleDJZ3/NXTN95P6xkk
Ed0onoVlpBkke2FNL0U9+jT0rUdLp3mHyveIxwGyfo4w0aOyQeXbvB/wOpE0Kc2QljyqWz7S2Wpj
oNSO3dwYcf3THV2iirlPGfAnW2zoU6Eq+DHECCJPXfg5T6ERTd9D2MiUYQtw7QyDWkJNq379ek0z
ZOWqU2nag79laDoYPssR44OkU/GVuQolQa3gArJ5PNVT3en5mIReut5MCoTRaxx2O8f6WCZbnqra
hRK7+YAN6yxlxGDiGEv+RpkTSK+FU9aRasfqf+Ou+D8/HxJyosBdPh9YbKa8lCN8/BKNSFX7VTI7
Ko+5I2xJt8sgo/g4jKPYtQqPLecv1NWjboPRILDqRMrgNngxoxuzDrXbnPEqQ29vtJJKaydLDFW5
FrTpeJYbNV4uWFUqpxLu3B4xVDjkeCsTYWsdoNiilSoid41mypYfv2aS++saRA2AW44JGbgd1Z2J
1RYq/ZWGjMIrCC+EiBKHEpTSUX0/+B1enURKmHxyBaHw3fSA9MHRDG8p7zzd+9N8gQYjS4MgSdz5
zF9QO/RGuQOOlKodBx3TAEUNFgnhgKJwzRZ1T7od0JMXhihhgNB64jY4T2cpXnrpT0o+EjLSGEy9
4G7d0GlJcMMXBoD1cYB1kjPTqDA6R2+cjP9v375gRG7cpJ9inRLM79+jElj5897KyH///nAbgpn/
QERq2ZAFtsESGc3gE/UhB7hQljUWo5ghpRY/YUX+wCEGY1zNYRZPnluX5toQ6bWJ3fe3yutk6Jyr
STN5xlR7FFis2bCYU6ahAfjZf72+ELxhtYRORvY1onq/IRjj1dgHG9KBZBAF8YlQFcjzimjf7Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21236F192FEDEA0"
last-modified: Thu, 12 Nov 2026 00:47:10 GMT
content-md5: kVZ+sJeRv5h9jIcJviF5lw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cdfd1ede-bccd-4b47-b18e-fe67700bafa9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-29c7e1d9-1e2e-458b-6031-16689cd01206/test-blob-19df3d40-87b2-67f6-7854-d44ed528947e?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-meta-_: a
x-ms-meta-__: a
x-ms-meta-__a: a
x-ms-meta-__F: a
x-ms-meta-_a: a
x-ms-meta-_a_: a
x-ms-meta-_F: a
x-ms-meta-_F_: a
x-ms-meta-_z: a
x-ms-meta-a0: a
x-ms-meta-a1: a
x-ms-meta-a2: a
x-ms-meta-a3: a
x-ms-meta-a4: a
x-ms-meta-a5: a
x-ms-meta-a6: a
x-ms-meta-a7: a
x-ms-meta-a8: a
x-ms-meta-a9: a
x-ms-meta-a_: a
x-ms-meta-a__: a
x-ms-meta-b: a
x-ms-meta-c: a
x-ms-meta-F: a
x-ms-meta-F_: a
x-ms-meta-y: a
x-ms-meta-z: z_
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20006BD7675FC60"
last-modified: Thu, 12 Nov 2026 00:47:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f59ca76e-f090-4d17-8eaf-4067ed310ca6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: HEAD /devstoreaccount1/test-container-29c7e1d9-1e2e-458b-6031-16689cd01206/test-blob-19df3d40-87b2-67f6-7854-d44ed528947e

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
last-modified: Thu, 12 Nov 2026 00:47:10 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:10 GMT
x-ms-meta-a0: a
x-ms-meta-a1: a
x-ms-meta-a2: a
x-ms-meta-a3: a
x-ms-meta-a4: a
x-ms-meta-a5: a
x-ms-meta-a6: a
x-ms-meta-a7: a
x-ms-meta-a8: a
x-ms-meta-a9: a
x-ms-meta-_: a
x-ms-meta-_a: a
x-ms-meta-a_: a
x-ms-meta-__: a
x-ms-meta-_a_: a
x-ms-meta-b: a
x-ms-meta-c: a
x-ms-meta-y: a
x-ms-meta-z: z_
x-ms-meta-_z: a
x-ms-meta-_F: a
x-ms-meta-F: a
x-ms-meta-F_: a
x-ms-meta-_F_: a
x-ms-meta-__F: a
x-ms-meta-__a: a
x-ms-meta-a__: a
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x20006BD7675FC60"
content-md5: kVZ+sJeRv5h9jIcJviF5lw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5cfe4ad8-9ff9-456b-aea1-c125f1b0c3b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:10 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:10 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-29c7e1d9-1e2e-458b-6031-16689cd01206?restype=container

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
x-ms-request-id: 4a3349a4-d508-4166-a066-7b74939c2fd4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

