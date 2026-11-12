## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d5aa1d4b-9eba-2ef0-fc06-a64e92b6f326?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesDiffAsyncIfTags
now: 2026-11-12T00:51:53.7600863+00:00

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
etag: "0x2264D8445C97300"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a056f15-502a-4a32-a281-d510b475b838
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d5aa1d4b-9eba-2ef0-fc06-a64e92b6f326/test-blob-d0e4073e-5388-2ef4-556b-8d35ccaaaefb

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24EC0CC2BEDAFA0"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e28a7e80-dda0-4c2b-83a2-80c30d21de24
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d5aa1d4b-9eba-2ef0-fc06-a64e92b6f326/test-blob-d0e4073e-5388-2ef4-556b-8d35ccaaaefb?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
7FBuKHv/3pfmdLnbeDWO+e5ozjTYfKv3KXyATxG7YlFXq2JCSMqrPylN6hOaGLYf3ZNGY9x6Im+l
d//+fo6FKhJohMzTS7AjvI4LipKXXRDGYHJ9df513YjyndHLrMCax78BMpPpTJHiIqZNbpfcDRru
OB0cCLQU8qZD4K7fWBDNccPSlip83RTgmlNXJ2/xFo+33HSjfb8L7D/tpWviA8mWf/zUCnfvclsJ
PG1hvco3UsoeKHybKvQEx6nqjzep/peJwKhyHAwYx2oZmUFRqi90tVOhxNpM+1QIz0LNBOIjYD7W
1/wixTW+BWASgZGzsx16dtrkCDm8PcVTaU3JS8OH9TkDe9MyUu8d4r56OnnDVRwlUo4HP1gEGZo3
zlzo9Lqdi4xXsDdKRyPrxiV7QgJLkBMwpPg0f7Xh/mE5+4SSNO0D3a/tbKXk2wprHHkyiNeX6z5I
uFDBaAvWdbHWEUyfWJE3eGVTXiRuS8juyWM8rnaJoQ9GSnycQXSjFvb0Dsq9y8Tn+xByQ40a2m2H
056omsY6TG89WQ4Vmjbwr0gtejz+MP2eVbNmF16BK28PFG7W+3wvucFagHK20mDZgZNF7F8wiaOg
CUUT1DQQuy2eBoXHGrTL/cF6pK+L6INTjJXKPD8P3ovKNfE3HOSNScRFF8vaEWffee6eteXzFSHB
wEieRn/tjif6/eTClOHc7VrqRdC3eHou68JQcSmm1iDQdVyc7gNFV4mk4BSCHeUMwseKCM9QCkjN
cFq8nR3+UybE8R+FQP9Wpe1GEpdlrM7dQ65hG85Qf2oTzn6piLpspo3uvSvFh4LINGPiCvewaMOM
31lunDdYdHK0cXGBrR0z2mwJd+6iF7wsmOZrbXVyY2a6HKhh/QlVlki5ERUQR4dFry+LpvHU6cic
QgRQ7Qb8QQ4Lx5B00dxjtOCm6QamHFFfJb5F57x15TLgxLsFBKlBvM8HBID20N1SJ/IQLgDC9iWy
8cdItllSluFelAwhXq83ZCw2nxfRaFXh88DJZLYxHs6VUhPh+QV2tG6emDzQMclD2MnTi1YO4Yly
ZsOZiTEqLHU+iwubVmsmwOqoMs8ZEMH2hYztXpJ3hnGKb5JC3Cs9c2zGkaW9p4JerctrZq65WVUB
ogOkPc7ixgSaEebY5OO/a79iUn4cON4KjrDHDCDC0BU9QDknmDae48ugI5WbhsjnrPrvVwbW5Wkl
mq4dG7rk2EHQm6Spl9OIw2+zexVIbwjo318l03kPZlvPAv2HgcgQvEtUyuokPRQnZpOXI2lU3Sul
NTxavgTIwTVI2pTVAUKnor/K9KQew6FL/WzleELxeyXS4kyLtf1Giwi122N/UmVR8ICqiuiGhw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24FE83248949340"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-content-crc64: cDnsoIkK+Eg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 38476385-58b2-4b75-8691-4e8ae15918d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-d5aa1d4b-9eba-2ef0-fc06-a64e92b6f326/test-blob-d0e4073e-5388-2ef4-556b-8d35ccaaaefb?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:53.8300000Z
etag: "0x24FE83248949340"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96a0990a-983d-4248-96e7-757e14f285f7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-d5aa1d4b-9eba-2ef0-fc06-a64e92b6f326/test-blob-d0e4073e-5388-2ef4-556b-8d35ccaaaefb?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
7FBuKHv/3pfmdLnbeDWO+e5ozjTYfKv3KXyATxG7YlFXq2JCSMqrPylN6hOaGLYf3ZNGY9x6Im+l
d//+fo6FKhJohMzTS7AjvI4LipKXXRDGYHJ9df513YjyndHLrMCax78BMpPpTJHiIqZNbpfcDRru
OB0cCLQU8qZD4K7fWBDNccPSlip83RTgmlNXJ2/xFo+33HSjfb8L7D/tpWviA8mWf/zUCnfvclsJ
PG1hvco3UsoeKHybKvQEx6nqjzep/peJwKhyHAwYx2oZmUFRqi90tVOhxNpM+1QIz0LNBOIjYD7W
1/wixTW+BWASgZGzsx16dtrkCDm8PcVTaU3JS8OH9TkDe9MyUu8d4r56OnnDVRwlUo4HP1gEGZo3
zlzo9Lqdi4xXsDdKRyPrxiV7QgJLkBMwpPg0f7Xh/mE5+4SSNO0D3a/tbKXk2wprHHkyiNeX6z5I
uFDBaAvWdbHWEUyfWJE3eGVTXiRuS8juyWM8rnaJoQ9GSnycQXSjFvb0Dsq9y8Tn+xByQ40a2m2H
056omsY6TG89WQ4Vmjbwr0gtejz+MP2eVbNmF16BK28PFG7W+3wvucFagHK20mDZgZNF7F8wiaOg
CUUT1DQQuy2eBoXHGrTL/cF6pK+L6INTjJXKPD8P3ovKNfE3HOSNScRFF8vaEWffee6eteXzFSHB
wEieRn/tjif6/eTClOHc7VrqRdC3eHou68JQcSmm1iDQdVyc7gNFV4mk4BSCHeUMwseKCM9QCkjN
cFq8nR3+UybE8R+FQP9Wpe1GEpdlrM7dQ65hG85Qf2oTzn6piLpspo3uvSvFh4LINGPiCvewaMOM
31lunDdYdHK0cXGBrR0z2mwJd+6iF7wsmOZrbXVyY2a6HKhh/QlVlki5ERUQR4dFry+LpvHU6cic
QgRQ7Qb8QQ4Lx5B00dxjtOCm6QamHFFfJb5F57x15TLgxLsFBKlBvM8HBID20N1SJ/IQLgDC9iWy
8cdItllSluFelAwhXq83ZCw2nxfRaFXh88DJZLYxHs6VUhPh+QV2tG6emDzQMclD2MnTi1YO4Yly
ZsOZiTEqLHU+iwubVmsmwOqoMs8ZEMH2hYztXpJ3hnGKb5JC3Cs9c2zGkaW9p4JerctrZq65WVUB
ogOkPc7ixgSaEebY5OO/a79iUn4cON4KjrDHDCDC0BU9QDknmDae48ugI5WbhsjnrPrvVwbW5Wkl
mq4dG7rk2EHQm6Spl9OIw2+zexVIbwjo318l03kPZlvPAv2HgcgQvEtUyuokPRQnZpOXI2lU3Sul
NTxavgTIwTVI2pTVAUKnor/K9KQew6FL/WzleELxeyXS4kyLtf1Giwi122N/UmVR8ICqiuiGhw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x245DC1AC70E0500"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-content-crc64: cDnsoIkK+Eg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 566db965-3880-4c6d-abd7-eca2f541ddbc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-d5aa1d4b-9eba-2ef0-fc06-a64e92b6f326/test-blob-d0e4073e-5388-2ef4-556b-8d35ccaaaefb?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0691407b-120b-46d7-b4d1-f7748d864df9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-d5aa1d4b-9eba-2ef0-fc06-a64e92b6f326/test-blob-d0e4073e-5388-2ef4-556b-8d35ccaaaefb?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:53.9330000Z
etag: "0x245DC1AC70E0500"
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6556c05f-ce12-4e95-818b-397707eae04c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: GET /devstoreaccount1/test-container-d5aa1d4b-9eba-2ef0-fc06-a64e92b6f326/test-blob-d0e4073e-5388-2ef4-556b-8d35ccaaaefb?comp=pagelist&snapshot=2026-11-12T00%3A51%3A53.9330000Z&prevsnapshot=2026-11-12T00%3A51%3A53.8300000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_8
x-ms-if-tags: "coolTag" = 'true'
x-ms-range: bytes=0-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:53 GMT
etag: "0x245DC1AC70E0500"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 926070d0-62b3-4bd6-a890-147ced8e6bbd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 8: DELETE /devstoreaccount1/test-container-d5aa1d4b-9eba-2ef0-fc06-a64e92b6f326?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b264db9-81a1-4d55-8a72-ec269d76f9d6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

