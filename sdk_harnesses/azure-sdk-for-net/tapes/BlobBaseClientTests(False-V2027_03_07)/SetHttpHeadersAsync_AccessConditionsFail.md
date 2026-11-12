## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bc501b09-a44f-8d2d-9f83-938ab6d95da0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetHttpHeadersAsync_AccessConditionsFail
now: 2026-11-12T00:47:06.6561957+00:00

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
etag: "0x1FF7DA60D4D2080"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b0a0689-42c0-4971-8357-92666d281cd6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bc501b09-a44f-8d2d-9f83-938ab6d95da0/test-blob-4842abb8-7afb-72b5-232b-8746da2eec57

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
jmGdlhXuFj2qtEIpbaVrkiUloEXKNjmPZt6YIxznsnGXO/xVO8eKyZQEnkc3iwR+wPQgtY6njFcn
DjA3VvMhwgHRkTGoFlZemtawxZfyV9rZGWMnxv3i8K6lLS2WU3Oh49tFZvrS1aqdwRq39se/NLdW
XTyP+fwE7qGDA+gpyEZiD+G8rfHgB0S5igTiK/nn5fl1QPY3EerfQHdYT9LCdPnTVOblA4bGdlb4
1m73IsKnmx3us4dQKv323G15h7hx9xUKDtYTAeJyr8qgPzt75x61sLO008Bygyno7iYZTO6dht9Z
7RPrlJk7fAS9sOvCe/ROxNcEvSNVmIutKhO7WGLcArlcIvoKyRsZeFa8tdI+JnMxy4gWmMi7A1SI
PmqGgCOh4K4yZlj6RPu760XNmeK4bgOgiY3axWnwoB+lgYqxkvcyG9QkDMAaN4aNWq2D7Wpxz89m
5veWxxpEQsU5VMJwClhNmn4OlGJDhVEGTGu8bLO1M7K6S6wAnFO54Mn74eLEHFBUNlPrYztsImCl
j3qviNUShCAQtr+rTP4qVLOYSKNuQi8bZzVfydB2TShLWgzZClf06V3Cs2aRqOlUwQ+H09q9NkxK
lCCgsrpQmWiWYPLyUEpcpF5FrI/Iib9LCwfB7nlOjiO/jnU2UzajcRn++kj3YnDEKy97d4q9ggph
VKezj6vvSNHOMsLUJVEnojp1yo92VKiX/MNK0haZAQxq1f+P8OJuD7J2KDCu8AbeU9VPSLd76wD+
G5PnpHW7NTC1aVBSmLJYBrvdACt46Ay9bH5BSblV7+r+kdRPhmo8u/P/+Ia1i7si9kL7nuvVhTOG
Kjj3eut3YHplUwbeCH9RoEQ3efCFB+DCHlJ3WVH/KAygyFwyRUAHiJcMUDi1RO3Cqv2mnQxDASNX
NFuYAAcoZir6PUAjHlsEL/FYebeoDdpktK5TWYv/Xcc42xDkb4iQ4+kNugatnoyhoW0b6odsryaB
M0tZ1A2f+t9460NKH8BoyJbNm1LTtxYisbcd5HJAzCzqYjs9Ng7cbcAmNLNIVoKtsiLxnhTTrXw0
NyJWgRVsOB4XYLyEK5GH8S2SrYJi2Vs1cDJQTi0YFrS/CP/rheyqufyUMfbFKYaRaa3mQAD50l3H
IBHjHOnx/0oHxCORm2tB6POGzadlb0arv+R/MdW0xTWhI2Taxp0SozKrvWRi/85CpVgNcwS2YrHK
N10Ecc50U/7t73cGZiFWcyp1ubHiSL8WPYt9plIw68GzD49ADTFjN2pldRBWOz42tv/aQKn/6O6d
7jND9qysvQO2UleSFmb4EoJHfdOvwAFMRvBSVqsXsyagoh/9IEC9uLcMn+jnpKCZ4i4nuGsb7Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24B389FDCD6F140"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
content-md5: 6Bszj0wSre2WdqVi93Z0KA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eafbf3a4-a976-46e1-97d8-b5f642316854
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-bc501b09-a44f-8d2d-9f83-938ab6d95da0/test-blob-4842abb8-7afb-72b5-232b-8746da2eec57?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:47:06 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 65a41ec0-f94b-4ff1-9e10-63e188465435
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:06 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-bc501b09-a44f-8d2d-9f83-938ab6d95da0?restype=container

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
x-ms-request-id: e55f9572-7d15-4c58-885d-5d4a1d3de6ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-b0f6322e-5abc-5867-9f9e-30f27346faf1?restype=container

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
etag: "0x24C1836B0B39B40"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 33ca9800-d410-4f1c-b3c1-6ac2c0ebd3b1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-b0f6322e-5abc-5867-9f9e-30f27346faf1/test-blob-1bc48941-20a2-6519-a24f-b8737df0fbbb

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
hbTxyymQAV5QtABKtrEsUug85S6m/0oNGJENbKHz2q6jdW2+VS7HsYdmyu4fz67wImaLQArMFIVq
47KXgpS8XdlRpkBEbvy5dDSnQDRc7knjHEo7Z5mk1mDnVHJ7Ly/zqW0UzShtrLRp0svWJdRRDfRo
tGVKgPU/rdDgXRmJPUQFtJfHRyEhdXCV0pXNzrCMlkZ+EnvJqCh41CBXjU+a35SH0HE9icXTRz/1
tK5fcd4fU8bSCyrJOwtuT3MAyuch+/MBRv0/TwyAqss71PN6GGJBODqIx9NpvZRlzjpS0n1X07m7
Xivg3wO5UWFejWcX8zYQvpGtmTMfl4lo2YDRLtdO4wA6v7o3YFg2znVyCy8tTtsEQhPrqjqFm8eh
eAaD5yOJEKpn3TR82F45d8q+rYxZO4ulzevDYznGtSPzlehSs+ZR6fqFxXCmiGq1sTNwxu46SDx6
3Ro4xaxxoSgRiUJ158PjbMSR1HYa/0WBDrEFVe40uE2r19XMGSNOFCRIlP8nP8pvjFkqqXPGYN3V
t7f6a0s53ND1yRDtF1OgQsBR0WpGWc7mlsiUCQ7Z5Xb492FsU6jYDrguMna6gXUFimazdI5zjl3o
FNWCpdLBG+SZ9R/yNO8XecOyFydYLBRSjn+oJnDnhGgEgz/TVWnlbBaRIYtVE1V3nPvLwHY1kOfA
MBZSGfVzsXC37bGwQyNZzKsQxguI/HoqMYp1HMTxzvJXEiVSklMhHm8bniakx1jXcfTLJcrcNzOc
KOhr/ZWsxh++WDD+BjpY7qebbV5UhmkxnqrPJakoetvytmpqtiHabtcH5W4n2Gu5czYiQcrUR6J+
OV/q3KF1lt1VDFDP7TiGwP+HTaD7CsU/FbFyBTkRHW7H7H3B75E1kU+R0cwa6ob9m4DLTfoCgy6Z
q8bvA5CkRO/hCAC6xNFtUbxRajn4JCsrdGq5RdB0xWlPKETKRo6+7IzdOOGFQ9avXfs+sBj0oIaa
w44m6/4ebUKXa5yMogoukn2sG+tJpjGTCejUNRRQWoe9MIL/lwGNvsuf7tc6IrvwEB6bR4SbUB1c
kuEWSjctRhEUz3KHLvp7H10gqrdaWect4yX2tRICIt9lowUgd3OUcqjFJVNIaOEjHygne6ZmATn6
6WYRNpH+EayTIov1W6fpizcPlDOT5HpE05Xp2qc4/6HLJY4NgjsWxhSmtUZWLcOBPu9uVmwFZgTs
zWL7FDYFWiPpKTYZ2wn8+M4f7S407abRaJy4yqg0xr+JILXYGrHdoVsibQONZ2Lmcl6e5XjVuOC8
KqyaTZB7tGN2j7tTI90cQkzTEYCiQwE50ldKleFGtGjVHPAFQlTLp7igF9inkk+AgqIsAqZgGQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25F9F2525A2BF80"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
content-md5: sKoVGd2f6cHOYs3L+awznQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca59de13-ae1e-46c0-aa19-a0d4562f31d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-b0f6322e-5abc-5867-9f9e-30f27346faf1/test-blob-1bc48941-20a2-6519-a24f-b8737df0fbbb?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:06 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 263e349d-e279-4892-85b6-9cf467151a8c
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:06 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-b0f6322e-5abc-5867-9f9e-30f27346faf1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: ef60f0b6-893f-4873-b9ac-7af428f13cc3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-7b61aae6-3138-821f-2fdb-527e06ed16ff?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C0BBDE9A6B5050"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 60665727-6105-4818-aa30-44c978a7727a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-7b61aae6-3138-821f-2fdb-527e06ed16ff/test-blob-c76908f7-2c02-9128-3f07-c9123e19b1c2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
dAIKWuHZknaZHuf9VRNIkmyjNfo8mBe5gtA7MGcMQxYpkAkE47sdHnXzLuRFKzsrvzammuS3hdzq
UNgRnWEPjdrR08QJRK+xhRaESWoyc1aUD3EwZakxcgstGZLiDIAU5KEKdFh3InuG9BTOMjtyuNyC
fI7v3icwn2G53CodznmVcGXJKP/+He32qXCUYz/Pu2G1YI/yJAV62dX2vUVQaSabOMLVqI/dg1+h
+TS2nDwi6SDIZ27po0xgT08qB1+npUBK+Cp8+hLS2NwvUSvQwzyY1NMlhwG3spV2dVlAs3v/+VP0
a6QRpe8O9o+RuVIhj4sSkTOMgh4+k0aVBoS4kSVgMFfX3FiYhi/jFpFxJfhDVebOLSFIc3c1tdhd
fJ5rVWVqMYn6SbIyeQoEqWuMzW1NUrGe6WMDGL3goieAOgqQeMErB/RvSAsznLQWRMkLqOhqECnt
zGsBZhjMGaeLsj7/czCqYcV53gmla02v7dPz1fk+Firho6xVKqDboy9kp+l1FtCZYUci8TIgR2Ad
UnlE2EStTZwTHtCEVDYlnTraQcNjOdYDWnOyGyT4wVtLN9gnl8rqtlpNYfgAFAwQ/VT3RQaduRii
QX7Q+zF3G110ORxe/gVw74ppFtfeAkVmoR7QAXtVrn2/hFVLGrso1kaai9vvsv9OhlZ7M6NAxD85
aVkSphriH4ufnnmwJNTPQD+RQ3Zqd+8fgnok2nraf8AWErBhFi8suGxQUBOFnWGBq/JjroDIzvJq
8ySfvUUQxR+5mRIkbioQZYsKGibbmeQYoi6HdtBATkS99yMLjPomP4v0zARPXT3IU0n0vbTMjlk/
hxoWiE5OeEvOZ3YHBNiQ49qa583gyEXwvyKGS5CP8GjKywXfD7c9plO4gfXGwU5xZNnZMaeLX77V
Jckrxy27PnYNPDnTsNMjXUB6KEdPKv3UFea2tr/BPmtHCuntEd4l/UN/uIQVnbQGtdRmETd3hfvL
V7FHBIe3TP7NjKXpNUxiVCoDz3F5v3cysADqWi00z4TuIrks3vi7yGyGRxEOHH+IBL0Mc7WKUpg5
FFSHzPHRmLwh+xOSNXUxSAcE8ndmJJSAYlZwJ1vPY88h8sqkNPx7ta5V7SBs9c5H2iuuhV8g0+/A
BmmaYHBgUZdDcEKrjBMKiT3JEDdzFG2HKE0wIN5vAR/a5C2S4FQ99JuJKISLnE0Xo/siVsK4TPL8
EzgjMDG51G8j0KfmeKnoixyc6uvo/Iz/GHzjTapcIpg7lc0cGcRp0FQVZ8umMStROcumG2IGFBas
JBe01obEx60Pq+LczHJXMhmX0pTAWeZRkRPftQc1NIG2cPSstfrNUaAdloZIdG1ZTuhIbkGC6w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20160BB57E70EE0"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
content-md5: whRpSCo3vV3YYYu+E5suRw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0ff8d4d5-67ad-43ab-b218-7430d75c0ed2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-7b61aae6-3138-821f-2fdb-527e06ed16ff/test-blob-c76908f7-2c02-9128-3f07-c9123e19b1c2?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 9911f03d-7dc9-4cc7-8471-8ca66d2a8b66
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:06 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-7b61aae6-3138-821f-2fdb-527e06ed16ff?restype=container

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
x-ms-request-id: 8f17648e-b21f-4181-9b31-023ec0e3aab2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-446231cb-e473-a611-da76-60265c7dab7d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E204BD0614D320"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4df2a21-d82f-4e63-9663-703716d63422
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-446231cb-e473-a611-da76-60265c7dab7d/test-blob-f381ca1f-c2a2-0860-1ca5-86661eecc640

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
M4Qpe1K1WWyOdrsQ504Q26NqKaTAjkgI0VkozV6qiO6wIPLXUy8ranAVZCsHTyHNlKrDs8Mhf6U7
IKr4jYsN5O7NYMdbOYh0P74zqykcAYE4Wji059UqjqFNmzOFM93kB4A9Oe9ZclsiTnQE7dR7Hx8o
vzJSWfwZotEmDp1U7gvhT6Oo38eS3+jdkZhgJaDM0XwUXXOqka2EJJYeM2S+zWBoI54w0j9XluBK
dcdjuH0wWTwgQJGYNr32JLowc6uEHsM4+AICnP88vMeTXxzmIGwZ7donno3P0OzhOq2FJiI1xlcD
K8B6Lr0944PKBNehEAROFobQXIA1aCcVIGFRt5akXpjE4vSrnr8d6roKBcsVQCqpNg+bZGrXzsKY
ZQ1b7CzsJaY+3C4PonjHs3LFK2Nb/983p4CGCPou7BMyEzmxwf2OHeAl12T8mZSX1LD4EqNfPGUt
I0SrZhyrD+8a3Y8+FfF0Ng2DNih7Ow3s7jNJNtpw09bTg5654rfDesd04rwEWL++g9uV2wY8seg3
v3joYdkUqQq4a5FTu1NWwLthB1lR55V0i7L/2/fQl9K1giM+2hjtXziyTO0ua8iHPxtK26qP5dji
dNYmFc4S6NS/nTkwF+WjdKcgn5qnRh/qd5vchbwnJpxKXGZBxkpqn2MZbs2PVig2p2cCb0Y9Oi62
PJ0zNmMYl3ec5bt/Ya1dtf83jtdSWiBypt1UJLdVDSE3i4msN2kAAdZW8nBttkW5pblHBqxWZOJ9
wI+Fw3O/RtiaR9YjsX2VNowA+2iwBe+Xm3/9Dgd04CanLnfZez5jl6yY029vlvM8sdAfVWl6zLug
7Sf0wTfRJWawe4IGvLpOnWS7FzGAKAWLwV03VYq9LWK7OY4Wb9V0x60IvxpxNfUV0bgEvrWJH8Qi
aADamtDb8k4gSoIrNy6PR1CEeGnqGotoIYPSuG+sMhnK8wbVmSzdLMzMUOty6pmKdXZkBadbN050
cXhMCTrecxdoYUMnua4jpkucHsmg9TfqSEL5SC1ybry4YSe0kSOS7d3TCYhVY7zIQF5cvxiF03xB
YsH35Srq9vOHbliGbxUoCjHrzOyulOSGMAjOFq+jM42rci9imgey6RKVzfRjQtBJNLXnmQePks3c
cLQiG+BD5DvL2v3mxW8pOeLZGcfwI+43hOL6u5mFG99hhilTkM0yUei4l2fTY25FvV8ktnkG603F
6pb+SSmhRb4dhD9F1qkUpsfeOIuHZCFztP06YGVmW5rcjaU3Mwi/FlKptt8uAOe2Dw+yJ7PCPoZ1
ipQrZ+RZtiikaUgE3XO/HiE53q1CRLQVg1BVtDPnGk8fwahzk69tT/+2ipafsjKc8gmRiWDYMw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DE883E056E7C0"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
content-md5: 3l6+E1KZBCCGdwYmwaNLKg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8a06670c-d5ab-48f7-a766-397e81f07956
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-446231cb-e473-a611-da76-60265c7dab7d/test-blob-f381ca1f-c2a2-0860-1ca5-86661eecc640

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22DE883E056E7C0"
content-md5: 3l6+E1KZBCCGdwYmwaNLKg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0cfde434-ba7b-4caf-a0e2-b1b2b2622180
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:06 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-446231cb-e473-a611-da76-60265c7dab7d/test-blob-f381ca1f-c2a2-0860-1ca5-86661eecc640?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x22DE883E056E7C0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 87a7ffd0-7e22-4713-82b6-7407298cf709
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:06 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 16: DELETE /devstoreaccount1/test-container-446231cb-e473-a611-da76-60265c7dab7d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: 320afdc0-665c-49ad-a2bc-c24abfabc7da
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-e315e046-0394-f502-bd4f-f9e41bca4b8a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x235A28B7A853FE0"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2fce2d48-2eca-4b39-a37f-d2e45edeb819
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-e315e046-0394-f502-bd4f-f9e41bca4b8a/test-blob-ad8ecc72-ba8c-761d-d11e-b9c12a5590ee

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Ro5ik33L2Uz9wMxHpc0W0qd+H73SKqaLwp8RdUpAyme+C56MZ7gMpvNCsMvu1tAEB+cZrDXTHBzn
19HeuWMBvPZkiZoviWrvcXjJkHrbnezODW1jJh4y6u6BpJDnLuyPQPPUiUw21X18Kju8CYuiDDrk
EKz1npXYMp6rreXaCEKMOlCGBhOfmDfv5vzideBi35hWAh5AmaFd/FetiiiYoiL4MM87GwUmRXh1
BbiZ9b2+SM1MgwUkS6CvKAq88Q0PV0PZ6kQRJ8OTL72ly5PowweZ70FaTB4c0+QujPL7alNqZa50
wAp4rSEKuVNIfoAMxmQCIgLMtAokvBdf4prQl8VpO2XldAP9IEEfUJLL1FRkIsaN+EdRnbCjTwPz
GcuHOSGO30MbJ1JhBQHArGR4WejC+8DUQp9+F520QSQACQd2mBZxPfURSPpzLPNFkPFMK/UbMB4L
svaCD8elZ+UtYPv6ShROBhzzsbLFYBarOYesaBUu5dnoa+Yg7y0tbOEVRcz4Skbd/SXYJ39rRlHg
19ZA+P7P/3shEd4tLhfvxUXQsBpJsu5Az2rwVb1ZfCWUPxhW7XPiRUZQ1zhnr88O6WI6mpU2liTo
/yiU36m9x5W5me7+mNjR7mrU+du12CCa4mxbH+GPXanzbu1KTmackg+jrRXhD1CKaKwrYp1JMiYI
+fw9YqezKjxFCynqhp8EN2bMESoKudMb0Lc1ZPoLqjvHQlRpXzBn8IPZmwQnoOEMJio3fSH7/T8p
IpHwfsZBOWDuIkRLmtg1ZCGnMR3O9DDWKD3Q1C0ay0UVPz2ed3K8mGKjOX2dwYtSARgAVMwiWi1g
GlWJcGUz01f+Nlqbl+2u6pi7K7qzOGaxftMUGnZ58uUPPV0cMyf9cGUlnoswt2krUWkzZi9yreHv
1/KRHrnghUN1i1qQkrdxvrpVjpragMdp6cgNRoy1nJB7LVs0a1GsRBlIuysPmr+ywah0HR5HFFcr
KDTw0z+2wO/JFGRbPFNpqUmAksWbWU4JW4TkQH9xNBkDCUIdu3Dakfo8RYZaVoVVC3TUxoGSkM7l
53i60n9wWOBLWDMQTO3ZpgDKXxPIrgX/jzQKnG2XcXl0N9T4H796zO2mDv5RRL+H+x+BxzC6HThz
ukNLZbxytOa6mxQY4YdBT5MmIqAHrUp1g6BNFqlIuRmchGR8L2YxM1oXl6mqbhqYQHedlPuXbA34
1uIbJJ48ceL6e1wixCAs9e5F7xahyhSGtdUxqiUeBBhXg1mEFQ682yXHr/O9dntXcJ4MUn32VwvN
lG/ICse83HZEykHGqN/giRTw2RohyD5a2jmHErKbYCtNtoCe89BeCtN8eas6kMi+K8hoBn3xqw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x231105FB1E90BA0"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
content-md5: xnTsalHBxr29AjHXIeKNOQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ca77d8c-4e7d-4699-bcb3-d6a3a5437963
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-e315e046-0394-f502-bd4f-f9e41bca4b8a/test-blob-ad8ecc72-ba8c-761d-d11e-b9c12a5590ee?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: e241d7e2-00ac-2130-6c83-c559f00d7f35
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 25ed5576-49fe-4791-b766-ab42889bcf64
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:06 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-e315e046-0394-f502-bd4f-f9e41bca4b8a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: 32dd512e-44bc-49d8-9962-b05e53024766
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:07 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

