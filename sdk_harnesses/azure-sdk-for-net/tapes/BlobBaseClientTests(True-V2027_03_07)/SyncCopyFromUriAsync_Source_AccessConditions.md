## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bc9fcdf4-953e-3e05-f75c-f25e6f91990f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_Source_AccessConditions
now: 2026-11-12T00:48:36.2245061+00:00

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
etag: "0x246D90DD62BD9A0"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9cb7be9e-6cf1-4ee2-a48b-7984ca226ad0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bc9fcdf4-953e-3e05-f75c-f25e6f91990f/test-blob-5a7aba17-4003-0bea-c1ab-6f98ae1371f7

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
Re8hRW/WPfSRv/fnZeoazAPspriON4604pP6kiVtj+Tq+xh/b1OgQXyFyURIA6XWkKOUwW24aA5h
bWLb26vPJC8T/GrSm1ywTGQ8CW1KbN/tJAKB2M52MZIKHQLwxGXRtaUUNAc7BPVH5HUIfF+gFwCD
7reoTkthnMrXx31Zv4f/a1PHNTfXsh8NOfNYbrUzaQYCbNatKGdas5g8Yzx37SXtCBAL2OHIrDyY
mxRXCC4UpF13V1KxUkLrbYGfmk7ilkvOamWkJ5EkOcCZFYxTAqppJ7/eAJbSO7bNIGpgKRHttQXI
iJ3JcHzMUh6SFz22mGvWNnKPBJW1/C6u1gcmxBCvrF+Hi3kMoLdCEa14QCR5F4j/ifOeXbFvEoxv
Gpl1po0O4mvdLgzxyZW7TPLoPbwKNb5/JjsdEE6uF3jtnYYdzWsgal24m+h7Dr9d4xC/h9XQZOTa
9oBS8NIcLxeUBCsPnX+Gx9JeUprVAxh7vyw+75CiHTmhQ9fqznmLnGzR5gqTTkaROL8CcRJKBPJo
1jGl3kCG8ubybVqnm/lZ07UtBB0N53HmrLbQn6wnVz7lgvdH5b4sS/QjoeDs6pzFqZ1cHADVWu6/
vzGJtVI6yhYbwhkBEe73Abko6kaQ+sIaCvYOyjo9DygJiCaMopWi6dbK0CeDxJevZRtHrG+nLsRv
b6pbKwDb3rLw+InHa14khgFvximalkZfX2Ue9WO4YVlhHDPqRr3W7/J1kssN5/q9IyZuOGib1dhk
/MyavOhPN5YwZU4qOT9Emdc3JAR7UXdrYNI8SinwxkZahkrwPDIJJVs03YGrkunmKp+RY7DU6KpV
L1wWEu1tQJ8Hz7P1U1ykLf+pRnT1v83oVSCKXmKWhp2fmgzW8xJtxp3io8M28dZC7DaxK6I2YG+O
Lb3N4+E9cUkWVrlQzjrsO3/XEhwKsmRJR3Es5Fr6aTqdSMVVoOO7pTJ5H5od8h37xfAiX01Tg3tY
g5tvEIzuG+x+soZ0lpqcG23pkJLJLFVUMB9q1wrtSsRK/R1HTJSliwOunj+Xhi9VhkPfafLojlZF
G99tg0PikWjCKpl9VM/YRAWPG44WvanwFFHGDeHSYm7GATC1Nwe/ywzX1FyV2DFzBiTsWXLIL141
fW/yG4SG78gqtlOeIw3+z1CBPuhNWjwfUwa85Qn7/tHSf7mYza+IUOWUayLe1OIW7okiR/F26CMy
08h9ygm/LreBzKRUZgGg+O4CuO4ZQH4jpfd/2bfgXJaVZfrnC4bb1TxqXQg+woiIgk4CczA0GZJK
WSQSP1UAoHAOvgAHue1nJ+Kyr+N25eNv91do3ehlYUxnnbFhyZXnar2XLwSHgMhgm0xNgmqv1A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CFCE033883CED0"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
content-md5: Jl0UNlBiZGzHn0IIveyeig==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8361fc96-8e69-4f60-a50d-84f53068d5b1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-bc9fcdf4-953e-3e05-f75c-f25e6f91990f/test-blob-48a34174-97fd-87c2-a85d-b49f1c3c055e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-bc9fcdf4-953e-3e05-f75c-f25e6f91990f/test-blob-5a7aba17-4003-0bea-c1ab-6f98ae1371f7?sv=2027-03-07&se=2026-11-12T01%3A48%3A36Z&sr=b&sp=r&sig=MBwECqIRUZzEScFtXDd58Ihm1TT0Mrd5iRt3YqEs0S0%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-source-if-match: 
x-ms-source-if-none-match: 
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C68AA9647D4640"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a06a0c60-8369-4d65-9fa1-b0b010e71cd6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-copy-id: 9513d6c5-b179-4cad-be46-fb4bec20edd0
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-bc9fcdf4-953e-3e05-f75c-f25e6f91990f?restype=container

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
x-ms-request-id: 4d24b0e2-4927-4057-a9b6-8edbcd3fca10
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-2545ca4d-b5de-e7de-768e-07429c18dee2?restype=container

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
etag: "0x258A270808C5280"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 44dd3b41-e389-4c62-a982-a932ee405379
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-2545ca4d-b5de-e7de-768e-07429c18dee2/test-blob-203dc9b8-4d26-d2e9-fa0f-87a7d3e1ac24

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
le0AtySJ9b5iu9Jvj3/rj37R5lL+5Tj/4XIrzi43E5Th4q2uGCe9LtN+vmp6eUJ6JPcoAvpZJbC1
ANWyXieQKqc9ja3SPHdXFLh/gCbNhWcwsKk3DhGah7z8+RhRC9Cs7pPDPeyVqOh/0e1C2qWJ6Htu
ga59WRyVogXw1UJfBQjn0pKSCkd7mwfAtzwjV60XchGd44khLpR3LZrmpNKlIMzkWgcS990z8uam
vKHfcUpY2GIxwiJ/xaT9Gt2slfY1GpZwP/2lBHszafCie3LzmLtPjcxvdF6pZZRjFd0Ah13wcaEL
bjJNstTn/Vgy3EoyCoEhXAcqxaY4x9loQu+eM+KSsgnQ6CmIAtr3iHYFdohJMQpb3ipWxqz70qdY
5XDlSMp2nylBYSJXmFosMjwvMlBQHhDkQ1S3POxd1BWCMB1qEj+sj9deCM/oA0bQKZNvy59WB8Zf
AAV2v2M95I0N1Wg9wh/8g6N58hZB/D8O5xJZ7Qh1KyhWChI5Nc90ISRC2i7dkmd0c0j83RWwHgTG
aNdQ5PaEl6lA5rcNw03TBNDx/yERMFSr5HrAeU4SpuwOc834JD0tvkOEnaywZ7D6KNhFvh7itDeD
pP98xB5bLkDK/k+A2+CSw0HejJOo+n3JxVB1zOfNK76VdH8+sPkkKW5r5mhgekz3s/rdBCik2qqC
s/7N5mFY/NOR6mZhUxNHuWMkPBQUaUoEfRjs7yeW8ZnUvP37V0MMEuqVz5Dlll/nlkvEf56WbUm0
yWhIawyr+vjNjZcVS2EgFykpf5m6Hue4BVnc0nH7Pk+0R43aw6fd6dSXGAnI0krppGd0bO6w+auB
j2azzyiH0U5IYQTURVSCS5XEIwXe8DIO8i0KhtFgBE3iWDNAKhmsEEa6gHFGFF4T8iBY69alo58z
pNz6fEt951238ewgQiF7GBK+JG/Bx97P9pSxCBh3PLWUDIU8sZP7PZkTjyNx86//3NLD538wctz+
KoW2y95EP7U3izabP2Z/wubWrTi6XgPksixFs1U2Y5moPoYNRXG6z09uOmd5ZJ1sRCSYWsSkRMyC
0Rmy/oxfACec8gHfcX11G97pTCSba06O2W8xngnVBPm6i3NXB9DDDjk/3XGcjNKmIj7muveo5mbL
JCQcLmIexu0HJeYJHRMNJT3qXI7c8kydinvL70kCEqQNi+OrpuDWIRaDlWfsnQQr2JW5vYrX7zHY
f6TnU9ekBBNC/JIvYX5dEzp3WF3lse12nxe0SFQZNZyy0yc7784/35BUqqBy+3YWW6lPYJbU8863
cLPA77u+KMb1fY5XIiRsOHjMkAdMA6Sgnu2rydUF3eBZhH8bfvDUloHafX7ovjmF4ycdB2LHag==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2685E4F07321DA0"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
content-md5: yc2/isWULG0jSHW2Ar6CiA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f956b3d-0fb9-42b2-a75f-5c0696ae8879
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-2545ca4d-b5de-e7de-768e-07429c18dee2/test-blob-511f0f6c-13ce-f05e-ef9f-adfd9da451b9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-2545ca4d-b5de-e7de-768e-07429c18dee2/test-blob-203dc9b8-4d26-d2e9-fa0f-87a7d3e1ac24?sv=2027-03-07&se=2026-11-12T01%3A48%3A36Z&sr=b&sp=r&sig=d7dyXFrGvHVW5V8XFyDUmSY11SFoZl%2BkMfH3Lp%2F9RJI%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-source-if-match: 
x-ms-source-if-modified-since: Wed, 11 Nov 2026 00:48:36 GMT
x-ms-source-if-none-match: 
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23E56489B7C1800"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b34085d0-894b-4812-9711-d5fe2a114bf2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-copy-id: f108a320-2e9a-4431-b60f-6cde6f3a5b6e
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-2545ca4d-b5de-e7de-768e-07429c18dee2?restype=container

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
x-ms-request-id: da86849e-c74c-4818-bf07-562428bb59d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-85faf888-8671-b725-dfb3-25e6ade8d67e?restype=container

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
etag: "0x21E2CA72C75EAC0"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ff3ed0db-0e9f-4a24-8c66-9299f2a0bd0d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-85faf888-8671-b725-dfb3-25e6ade8d67e/test-blob-0b121992-9f5f-8205-23e9-8dde3bc19be0

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
km6UD2hB+eXpaHEb7XdCB8kva4OSRVrp8ndhh/hHfB4XRVQ/U8cWUCAtIvYt6pWrpoYVC1YXTkwT
qxzw4HHsoetSA6gjA7QCGRpjZSJjvAfiteByMXDIAPcHLKeqJXCvQIAL2ufsiKPSE/I7tOkpr+8V
DSqQenB6igOwG9YMWPOpsyWhWOEf9Sw9nx19jEsO3Xy4lBhGH8UQkFDkPG3Nxrv/kgDEiFcN9Rj9
U9pS/f23oj1aU8PbY5RfkceROrm/b9lifvpKSlUkq57/SMvqvZNSLZkvcnL3JC9rZPaQe7pePeMA
8H4DbFjnNagk2xrJdNQzPw0gj/xmalnL3uVfky/joQvo6cwUTsBASD3K00gUou8iXDysPq7mmYYk
OI5yiKF4QDoO4IoHH/BN30e/nJcRtjz2PTfyNmJdAlBG7xYyzcCbUpIOBcJkGz1LX15mJv3uE4FR
fEtqhQrXsd46wC/aGxGGJEoFArB6kSH5ptcE9ttSV9uU4FB1MMyHN1PjKVoOcUNN4AKz6RHR1+sp
cN8y0rsC6GhTRTvBEfN+fcpclmfH6zWUtxbZnm7KwwhlS8DsVWSY4EHyuiwHi84ONWxHdEGEYYSp
nhulKUn6iYEzW8UzkSdlxLUm1TEIjCtHymkCgk/H4eo7Q7dI8rf3+DGq1DAI26RE4q+LXYxToRLw
XV7g9wYybHrb905wHNL+Lt0AXrf6P+/EvaCfO4Nd6KGlWJRYFgAqeGi1LORW1MXdjS6vUkJa9R5v
GzpmkjD3fg6sysQ+pRfc1uVORRIKbunawq5UrZZeSmJ16fvGw+U3va7WqgkBn+cX0nxdC7ALZK1Q
i9CCo9B4TYBiyLwcFhL/FodjNMTg2SPGPdsZAT6xaYROdTcVtRreXl2Jn9Yr+rxqXfUopzDpcLKt
vGX0XktBsF44zqHa6mFshdZmVzlMm0Ier6NJicFTZAWFZ/i06f8RR+938ywbj3OTvCJaghl4YCEj
1q+n9yed5GmcVYJot5vXVQ9K1KgWAx8wtsye+eLrDAbXkRNPaU/H2g/CfzrwKgSHgi0JLYt4DNKQ
d0Fa/uqHsEh7kSaHh+u/g/qZVITlP4vIF3a14d97XoRBv/IObdwkO87xdZne//tBSqqR37hNqji2
keZz0c5pADKhRsj5sRUedBm188ny6hh7c5c06X7M8xS5V9v1sWkAiHVmPLgzSJiVc2ufl7duxKfN
9142NBaz1VOzP1k5KMKvtWpUi61gSCv/n3YTLFtdS5M0J7kLyVNesmdkfwg+W0qp7+JMGTj5ba8y
N5WgoKj4VvPGBAAIpOwX9thG+8gjwEMsaj15EDFaO7kK2JG9vhG+bCkUeFdJoEr2NSNgsnLmDw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23F37813D0D3900"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
content-md5: uiSU+YniPC82NL2Nk4UZBg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4113545d-8f20-419f-afd7-a5dbd9a6b934
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-85faf888-8671-b725-dfb3-25e6ade8d67e/test-blob-36735277-7f6b-c245-6cc9-46fdcb5a5937

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-85faf888-8671-b725-dfb3-25e6ade8d67e/test-blob-0b121992-9f5f-8205-23e9-8dde3bc19be0?sv=2027-03-07&se=2026-11-12T01%3A48%3A36Z&sr=b&sp=r&sig=I8ZMgfnU58ol3KwyMOid4nnkGMPqu7eizxeLZR5jWFU%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-source-if-match: 
x-ms-source-if-none-match: 
x-ms-source-if-unmodified-since: Fri, 13 Nov 2026 00:48:36 GMT
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E646F21DE40720"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75691f83-6d90-4331-9850-320e1c3768e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-copy-id: 86571d79-e763-45f8-b8e1-b89e4c7e729a
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-85faf888-8671-b725-dfb3-25e6ade8d67e?restype=container

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
x-ms-request-id: 29a46aaf-a820-4f55-b963-d701a5e50947
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-9f8e88c6-480e-e2ec-c9f2-83db0efa8847?restype=container

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
etag: "0x23327B07A0EEE00"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6bac9507-b87b-4501-ad4e-4250ad04afc9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-9f8e88c6-480e-e2ec-c9f2-83db0efa8847/test-blob-6b1ac924-db4a-ed52-e352-0b8d02a27f9b

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
2+uZKeNGAC9mkWx5+2q0cUD/2QI/7u3rNqG8uzxe3ydz5wAiYF5j3cjrBblu2PF5nppMA8h8XO3+
rfNCikXyB7FFBhRqkRHim/s5VOg0fV2vQx2iEdxe9osSJLJqIVOD+P0HKNLdDwyIamfNQwcEyjCW
kkYnUPXV5w+JV21ed3qntVvrLFSK0jQQGaZ0kbODDlqC1I4NXKgHMUHCU7ifKvPtJY2sGJ3cC8AS
FzZPYVVcBkgS3KLrmlmy4/sSyH58cO6zhmwl1vW9pcjN+kRxuNDsZU1vjE5QAYoz+TWhyUNBlqZI
m9rpNy9SVTbZHaAUQSsqJmIxDOOfYoXi8dzAG9uEjGSeKRz1Ay4dHDcYduPpHrgJdqPhD4nCqDlV
BkVTkTpaVZE8dhcONSMzFO+sh+uh+NMktqQ4o3za3IDjoPzpyor8vSFSraig+0F/rfuZFSFOtA1y
LtqWIbEUYZmXK5UmSklksMnJT0sqg7tiufWBQMZflezud5uvZpxwPUsOCc+sWGOyNWVXhGTCR6sf
M2i7kyDTN5apONOutEktWBH/G3nstmCSzgthCBCHKy/vkDIztKkqO9I5AyCQBIAbKitSwysyM30I
KcQVci+FIQyjviQX+aRn1OCnsrI/AcqLRd3kNGgEvV21KovlFcmis+EU7UVbBDCH6u9LioDKySf6
iSxRoe2knwDGYc8Ygr4WBf7RKxSEL0GtXUl4uDPc6mFj6oudUBL0cE1FlaJhbmgwNIWC+Z4SdVrq
pESjK+bN6XdttZgyebTr3brGP5qfTO7hSIOtWvHDUHUxsqzOUEVneKsr87nP/brRlxzjTDa/S1dV
wuJiH4+GqWQiAccHHIx1X8buc1g1EUrI3MPV4AQ+cWZVeY1iBFgcpUpUrPzzyXqPbexv0df/ILGY
mUPMsMlg5I9hsqP/E1pu0s4O4GRN1RJIRnIXz6COVVjcyWoVUPSA9MhtkRfXj1qRAf4J8EBMS8Qw
g2pXSBXv01xKIknwWILajuyb4EP6cbYXhc2hhWQYj36m5M2JKKuzfr66jG0Qoah8LmJTsGuANRG0
P8JHTU74MpLLSXO0UWVA6GGFP+VJB+QlJFYBxN8SJa671enpbDBwwlraRFc0x939E8gJ+/Urajje
Iij39m2zuSPE+Xt7VnwxFH2Kb8KM8Fx5BLAWCSq5j2qxCkkHecztJoszb85hgbxM2OZ4oPt1UTLM
fvK8na/5C2kQyksyKZuwnUg3WICOF4LzyTFDQO5vO7kXO/vaMInbOmRlUbZxGq5LyAOyPfmxPmZv
yNN+tct6oY6SGu6g1m2/Wx0cKMbLgq+C93jrvP2/Zf2Uami2XYSY6q8n3v/Aq/GV8+LblRWgpA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2281B5E2E03EB80"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
content-md5: CNKUbx5ETeiploNGrNDD3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b363d50c-22f5-4575-ac19-55ffb0a8be4c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-9f8e88c6-480e-e2ec-c9f2-83db0efa8847/test-blob-6b1ac924-db4a-ed52-e352-0b8d02a27f9b

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
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2281B5E2E03EB80"
content-md5: CNKUbx5ETeiploNGrNDD3A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ac3cff1-cbfc-4ebd-8da7-7f48a3fb05d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:36 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-9f8e88c6-480e-e2ec-c9f2-83db0efa8847/test-blob-bdfc2345-8e53-91e4-d3b5-f00b6b0509fe

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-9f8e88c6-480e-e2ec-c9f2-83db0efa8847/test-blob-6b1ac924-db4a-ed52-e352-0b8d02a27f9b?sv=2027-03-07&se=2026-11-12T01%3A48%3A36Z&sr=b&sp=r&sig=sD2hDk%2F2CcMoHipBkhelpoK2Hvs%2Bao9ytAARzZ8HSHw%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-source-if-match: 0x2281B5E2E03EB80
x-ms-source-if-none-match: 
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23BB7841F89F740"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 94433f91-14a9-4d38-a4ac-58750f4b0b77
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-copy-id: 6295bb98-3b65-407a-9bf4-1db9681a1d34
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-9f8e88c6-480e-e2ec-c9f2-83db0efa8847?restype=container

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
x-ms-request-id: 00507e75-e322-4a82-aab7-fed05cec6c5c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-163e8398-a4a3-c1af-4c86-56c81be4cfe8?restype=container

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
etag: "0x2507488F634FA60"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 12c57c8e-315b-4c2a-9fc4-60663c520bf7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-163e8398-a4a3-c1af-4c86-56c81be4cfe8/test-blob-9222c5f4-c660-5c45-cb96-0b4ad09f8590

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
6uRCEtaKAKFzOnHMOBt17+UIF6Xidp3SPuJLDJll8awAxd43ob0RacWBHiVVeCOvIRxlx4ffrXNG
cNT0PvQHDknEzHM9PU0o9q3gYVh4fMW+m+t9ACkkIBdr8TDpHCrQeRDckaywcePOPNDa/0sbzvMO
NaMIig0fn6tb0kwcP9qCEOhHm+sZDioHrsNYSiHLTyI82uaHx+4CvPEAVJ+Wsf32V+5j0zII9Cd5
AdtKxlSKj4Ip32Tz+kj6Rd/6GbmKcPzFYvMyaHzwNOW/DsYSt/WcdcUdbdKZA1ymaY1SDttt7pDe
hGRhWCcGOat+NOuB543qXaP0bQMqLF+Wi//unSYKUSA2MzOQOx2eFjMnG85wJIEAaLE3eIGMtFgF
yswnF5uEc+LLS7NaWSKGVlbQAxGQJWd97jV109mfqX/ai3BRdv6YoqfspdnOpQ6OsCIqvLBHdKVl
qilmD6AJLKIzf86xNOBXN2Fpo4CNr0gm5iK3dOzPkxbL7MzVMZIH43k2miVA3HxB0oRO3dEk1/rg
QCl9Ure1ZOy35kgTggbPYsAHVxQi5QmmdaJogLVFphXR9PFoiZHBgTY4ifYzLVB+f3oQHX/mvlog
1twVTOQ3ckAyQo0UZtkvRdXe6VwTckdS6QA6NIiV6jaWSLK0rDRRARa1AOvCahih4diqCNT+DWOV
w2Pj/D24nVdXfR4me5mgjOhFXXJcj3/nmVOw6uJimDtOHunRbQTZ/WOTauz6emU/Cnvrua/xOTPj
/GPqCLJ09eXi11ywzh7jbGAOyCWT7B7tcOBmdt6LXOW17nGh7vSwH3UHF6IJjjtcCE1O43EOUA9F
/ZfSDX4GV3t3+uCtQn1rXamvjNR75OKkCm6RPHl0p51hXPFd3hH3AMAnkZRbr8bP44XHX8Q6yRm1
LQMQdBoBA1NDS+aMDn+YuIsTU1JNSVqowVn0rEjZJpLYqLAN54umJo1AGGPfQ9UGL6Y5J3bGZ+Sp
Z7LADFcLaSRTs2XOitD/bCzFDDH2yH6E7nyhn/8bEUDMZH/Y5hk2Na4/jI9vN6TVObpJAFqzsp80
PB7bacokOKIlASZRJoYSj9aCtzzuFbbXy2ZF0RDlGbHgpKn7WsvkGlPtSTZ+hBMzNnGDMPtiRiZo
A55k32aRP+h1cYLcFzQLnpzoAMt/WUZSEpufYum2fV2DklctgDvtXApOCRKRVh89eJFeekZb6KpX
EczL8d3+vvQlWYTd3h5h+6PAMU8zwbx7YelYVwIWJ6qs1W5uImotT0oea/yaYJpy/X+imrZaI08Q
T5DzpmfxDjLaMAiw8tg4k+EFFVW/4ABP5VqDdIzzUbEeXtLaOqniLF3KwC+RwQqmaQfVVQ76UA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1ED7CC7CF264DA0"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
content-md5: vcasoxhaRTGLCP1wg7jgNQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9407bd3d-c29f-4362-8916-814d7abf3a84
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-163e8398-a4a3-c1af-4c86-56c81be4cfe8/test-blob-c0a48f6e-6e0c-a599-e6df-579194065e58

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-163e8398-a4a3-c1af-4c86-56c81be4cfe8/test-blob-9222c5f4-c660-5c45-cb96-0b4ad09f8590?sv=2027-03-07&se=2026-11-12T01%3A48%3A36Z&sr=b&sp=r&sig=pR5dgtph61qLZl3Nwf9XBH21N802GC32alcglQaB1T0%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-source-if-match: 
x-ms-source-if-none-match: "garbage"
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25B1EEF28EB7D00"
last-modified: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed2f75b9-845c-47a7-8d99-4b418c6762d0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
x-ms-copy-id: b447aa62-258a-4511-b13b-368e460ec790
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-163e8398-a4a3-c1af-4c86-56c81be4cfe8?restype=container

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
x-ms-request-id: 75306c27-fa18-40d2-b7bc-49d77a76bc96
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

