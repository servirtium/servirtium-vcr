## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-efa13a43-c68d-a593-36b5-c52d8d6c64f1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).UploadAsync_AccessConditionsFail
now: 2026-11-12T00:52:01.7427711+00:00

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
etag: "0x23B6E1754E19F20"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 925409ed-b651-4335-ab28-1eb58fd4752c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-efa13a43-c68d-a593-36b5-c52d8d6c64f1/test-blob-717fb4fa-6159-b21e-b01c-117080c62c6e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x2331DE9E3A8D560"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 82cd49a5-a2ac-4207-b530-4b9ecb77bea9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-efa13a43-c68d-a593-36b5-c52d8d6c64f1/test-blob-717fb4fa-6159-b21e-b01c-117080c62c6e?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
If-Modified-Since: Fri, 13 Nov 2026 00:52:01 GMT
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
MrHrFrxNvlRetiqu0zmYuDM7Kew24KPhG+4+cLUjJW+JVvrbgU01rfUqEqM3b993g1g8RJ0/N1IO
CvrNDk2fO5C6JXw+vDflBnv2DM0AqqsPx+1c5uDRSR6ozXdTaJ+oitcSfEpiOMchVz4iSCuEDl9O
vUdgQ1Sw6dxdlu+/kp7cToH17S1hrI4lOo+irwDzI78XBKpYR0eDYpNtBaLXYcSfRfqqjyAy7RC4
OgjEDTnbanMvqI3zhAc5couZ86fsTdjKA2oGSJOe5Beanww+vlRakpsup7k2q8HycRyVmPlpzOww
+QrP1SHfkcR2WeX7+rM2P2EMvaYflFeoE9d3CUweMNIfDsRKirx5Txb1wFLc93ZoXliXXA9GEGWz
JsFKaId4WCgS2+vv67Slk22PKtQEzBxhDqrzhtPD2P5el2T6L+eOfWcpyRuKeXOk8smht+WRrlml
6FrdhNFVTgLtkFRQqmOGAK1s2wIA1pQ3TpQJISEYzegKVUaNsfiW1HoYnOgeU0dmG7Y4JdNXpBLF
pTY9Sy3h1cNrRVQd+U611QaH5zmrGPpMowVq4KgVs7E0xwvBWYlNN8clsw7zSCJogk/Nz7zYGY07
8KcndvQaVpKi6TFD83x9OrByhmXsWVvjAl1ZSOP1W61+hmjhJsDSClx7UF7wJI7ST5ULZpMoTpZL
RHSXwQ6vrY2DxWwTmxTvn3sIcQn88t3OhvhO6fUaVTjRleJMO0lOzKLRbV8ivrSBG8YYH9yNT1GW
yDoVYMOXaW80QgUyo2MxuqVmK4V9rMhEzM4vATVbREaQtXMPOGvfOQPw7XyuT3dj5mU3JyPMGBtx
0ZP1aGc52P2+oe7vIoI6h/KBjb9MlX1WyxvQJB0jxJxYnWbX6dCbtxV+762Jc8Tj/J8wSotcJTsW
np1MaLPgm91Sl4QbY50i5taqzabQzVdW7Ch98nkQ+3cqwEozT05hnVPQN9w/yJkBDmS1sliVRdFF
9XyLYqljQZwM8KJS75eHSC9SAJV7FiSOfOMVW0kflHt57VnS1TuqbPY/M9f3rh/NLWkoQ0U7yd5X
/ebGTuVT7Vwn2QE9tXP0p5OfO+NNl83DSC3f9lE1PSR6ethU5B4Q7EV70NUej3j2NJuynI36CWUZ
AgW4c/YK8pzdwjqaoMN1j0+d0sf4pbi16MK1gqCWf3ByOuEYWHlPcN44QMw9W5PXPA0+XDeeIVxN
AoozVW/7R0LJJ2bhXDfWTmHpv2TreI0v3UWTVyM51BiFy1XuHBtuPPmJczQt9eDVaA7VtWL4YYr9
BHcpaO8fkFNNXJHh5zJGeoNqYQRYAedlve8UYx62jGrL8BejRdQKauPg4JlO9IDcjjrejf+FpA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: ff14f81e-1368-4340-bdd5-469a200468ac
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:01 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-efa13a43-c68d-a593-36b5-c52d8d6c64f1?restype=container

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
x-ms-request-id: f9d748f5-989e-422e-8782-c735dc79a99f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-aac38f03-0b00-342c-96cf-2716f61aa334?restype=container

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
etag: "0x1E34E6E29BFF5D0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c40a1fb7-4c6b-4f6f-b576-84f2fff81d6f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-aac38f03-0b00-342c-96cf-2716f61aa334/test-blob-21f760ae-2077-174e-c96e-38d5e3d7ff6b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x2677EBCD19A2160"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: adbe1b64-f71e-41cc-8f5f-5cb7a63ac167
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-aac38f03-0b00-342c-96cf-2716f61aa334/test-blob-21f760ae-2077-174e-c96e-38d5e3d7ff6b?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
If-Unmodified-Since: Wed, 11 Nov 2026 00:52:01 GMT
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
RksUE4EpCl+2rEnJJ96JwesFMC0HYy3iQazhkdJXUL7QvNCrBpCzhFWYa8vXhe/r5Hbq3qfSY+Ie
MtLVSHiMX1uK+GsO3rtaUqvXbvdhC7u89q1cbHIX/VjtjNO93TvcDAxvTIyE3QW6j4v7+/XrvScX
GFLLL/Lpc/sTIFLnnXRv+mLr8r4uOBinod3nGwJjAs+spsXoEdwZhdiRcbyz0/EWiwCS/8to6N85
I44UAlf4rx6DOvavh+iF0WzmnMdc9M3r0ZAB0AIERL7lr+1NBIOBmcGdMJj7ZgQXDS1egksY3S/A
KTHH9t8bf/Y4ydf7N83oZQMGvsQ18GqL6sPVpcJyzdG+jdtSuaLhgrCiwpwsHNVgdh1HER5rizjG
PAwcRtozxfwGPKrxlqthJDwTky3NXs3tdS6lK7uzUgKii32VxTvWbv2gJuArb+Bx5u3hV/cL+d0/
LtGrjppAUumoTgoty14APCUwLTjtwQVOM0TO0foKl5KgVpZqK99iX9P2gyDVQxqO4BvS2sulUm3L
XFpVcoDvnbZ4jXXIlRFFzc5k9j7lefAqP/HfN7zG+wMpn86FDOxTB+VqXbWlxkoJjQz9QFsu5uNq
KzOPD2b5sZJxnvZCwMDhEe9Zehs6hHmm1aqvyLqo+7nrGuG5w/d/cKsjNCdUx81LHC9s1WvHMKe6
6Tm7SunYyaM8V6XfKE332QpwF1BRUQ7cY6yKPCVOI+o6/9q+wybBSmuEGG8obPTidPtgVhlXaJcq
3+Y9TY197TO6pSlzORbkr8zkzTmetPe3qMcq7s3R45ZDk+RAhPzeBio8bcbLbzvlfKdMcptdiyru
haXFU/9l6MKSMKUypCrPBsYPYkYw7DiMRHElhHD65Qe5Uf5XGLIq1oQEOD+Vs9h8fWvUTinkvZls
OQ6OQGRRl0qdeFIseO4U5IvCLLP59pGZqAcFJpbe1ZRl6t+knJYgsqD0+DqFUAV9wGmeIZHlc0J9
9JddTHG0v6O+xo0Ob0j0oXkTBf5XE1gBh2YsP7MCgHacJ6f/w2YvQDiWx4p3blAhqYAX0m5EJuA+
W8UKh3/wu0YXcUig9d4T48TFwEzOiRgVC5Uz6q4IWAHHwGehJLi5pgtDYP0IgLShBO6pfmWUcNGs
9XvpvdGYDhhH2TR2cr4LDBpAiikbDYrhkea/X9qbMk+V9C89z+g6q1LkwaeAKpIwnXJLVOaokejx
CCvq2a8+q6fl4X2PzjwxBd7XNkzjYGdTjsFnT91o7WNHTMa8T9KiphUAmkkUoM41Gk8I0VqcDafE
lkrt1lvJfPMZSIJ1dLULNJA248YdPu3yMTWOYBsJqj4f97iItM+5Nh5V+1hMwKWZ/J3JZSrhpw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: eddbd1d1-182a-4430-b477-22883cee142d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:01 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-aac38f03-0b00-342c-96cf-2716f61aa334?restype=container

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
x-ms-request-id: cfd9db09-1df7-49d0-92a3-342357d03a63
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-a4fb5c58-3a25-d71c-109d-44567dfc837f?restype=container

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
etag: "0x1FB1C75C90695F0"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fee16a86-645f-43e9-a079-21e451c419da
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-a4fb5c58-3a25-d71c-109d-44567dfc837f/test-blob-a7ac7cc1-43c8-a695-7190-f5637e404513

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x2787DC03467F440"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4575d80e-cc7e-4906-87e7-c2fa005dec03
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-a4fb5c58-3a25-d71c-109d-44567dfc837f/test-blob-a7ac7cc1-43c8-a695-7190-f5637e404513?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
Content-Type: application/octet-stream
If-Match: "garbage"
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
PVBgK7kqk/sCfeu7B2knnHkdCOh9Ot8Ux1QylUW4Wc9YMBksm1fFluixpUpY2Z4IaFjqYTdclQNx
TGRk+P61SSQbY9dQ+wEhWHIAzJSUvO22KiztzviY+5sVu0/zYJ7q+1wlPXbHt21WyAjFXMlu3JB2
rs3SyHosgmc7OkCyLvfUFdE4b35273O+lgXv0p/Spt6+fLLQFzPh+LoPi3wtpJoR8Ub4Nm0R/75Z
EzF1PbDHaZRh87JFA/6dV3bEZ2T2kfFr3uFZ2W9xrXzzdgQCbLsKRyHoy7Hny+5IWt/2TZhaY4I/
CV/Obo8k8EU2UYz5m+q7uh9DDsZAgxLzEX+QemDjmROCwmJcO9mRw9prsXphTr70O5J4F1S7/4VM
210QlHblUrd4d9iIX35GsUrr1NKXkcLAmz/Na4K+xsPcD2B8gC9khV/C6dbmbNwTMmUK0CqztUma
T/g2GOc1ubEVrE8eyTAbh05y1Kjs2i9juTgctPWYKFoW4jE3LW13jC8k0L+M9Wg070nbQOChrXTI
016uGQW7fIP1B+f/41ng+0h4xwlv1sTP58Wsved5dTS8bloPyXMqaFQ8lu6BNQvv+kWYKOVqWfyZ
3jE/D7+be5GyQnX/0THUTl+1M0DWTbK6vcKi4U1PURRddepB61mVoBtcz/KV8CkTw9mGtSa8w5B/
hFH8+ZlDY/FhoVtHkmMFH5IleX6/JcyYjh50yJvuobJZwmYHmKaBGGwBNE7NzDF2gJWTl0kSv1+E
ZGt7z5pVcgCp7c/8/ofro2ESvvF+ysHs/UgGWwlpRwMGgjQ7BUjRq8FNJN9heYEOp/Pn/wBuBpmq
jtJSTxf2QKbM9ntTsJ4YQRMvMKbii4TG97MWgUcCmHyakHZ2f1yqVuQ4lIMGu/ZUz77tP9XyxwJN
i1dj4L9eyl3/uB8nosK2hNnCqfcBwDy8wbGJFVmmp8lzKfMERnYl2solBgPXLS38Nrr7MB4LTMsb
px8N1LQEWRBWs3jOsT1jnM4t27o45ZSEjN6eqneraN0n6Z9XFwUVIa3ygHm0LYR8l5NP3nAR4sGK
iEjVZa6Zq0ubpsieDITIF7oMRmQa0F9ZIRLjW4psFgbdzI+9P7v/WdUuGIe83osOhsa1BJxccLjp
e0Obtk/AL5DCwED1C9f/DeyP7LfXnUOH1NXDthJqgVvX1MN3Y6OFben2+h1LGXvutvavzIQAEd4A
E+J6/Xh+Vz/kHjYUh6lJCn7O4KMlPLpZ1QAburTX18Pld1DBCnBweKLeZvtE2i9MZsIFMTA62tcn
ICd4Yp2KDEZyLhBZiP8OXWgBRtW/FfrRzlPx0qWTq5x4mepI+BYEU1m00qse8t7D9tPIOJQBZw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 6d64b120-55b0-4e46-80ba-aca2c4a3f746
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:01 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-a4fb5c58-3a25-d71c-109d-44567dfc837f?restype=container

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
x-ms-request-id: 47860c89-e7a5-4d85-8321-4be87190bd83
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-94a72d0b-9949-a03a-df83-73e1ee15c565?restype=container

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
etag: "0x1CB8F16C28E3660"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 709a751f-315c-4da7-9166-ec4970e55c0a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-94a72d0b-9949-a03a-df83-73e1ee15c565/test-blob-7cf2fd51-420b-b24f-db75-2edbd2cb7308

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x1E0A780A6791A60"
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96ee3613-f258-499a-a7fd-7d3a9cb54f9d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-94a72d0b-9949-a03a-df83-73e1ee15c565/test-blob-7cf2fd51-420b-b24f-db75-2edbd2cb7308

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
last-modified: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:52:01 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1E0A780A6791A60"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1830c58-1e76-41ca-b037-2012d948f2a1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:01 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-94a72d0b-9949-a03a-df83-73e1ee15c565/test-blob-7cf2fd51-420b-b24f-db75-2edbd2cb7308?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
Content-Type: application/octet-stream
If-None-Match: "0x1E0A780A6791A60"
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
dzLfG1GBurofE/IoqhHvrjBudjqhhVzI3fS402pezhMPa2m8NaoT0EI4XPdQJgfJhoCqZFU4Z/LV
Fj1cyedQwUTeGD+nM3iGWqb4aShkeLft7k3ps2m+1wR35h9stwZb55uycQ3IIVIIJAquP/7JcJ6G
b9qZZg3aIEA6MExYGaOfnYGNsQepJcz64Y9fD5cGrnWB5kcswYGO11DMjfEGrwpmD6J8O76W3EoN
n4V9exCpNIHX1zJbctsA/9q23Jfb9DGE+AD1iXK26gr9HiL7EFxAI1hvLtjYC5zHfDzk4P+yMqpT
+IIQs6oPIOwoXVO4BO59drk+a8VYrO1jLg020QoLS+x4pxfaMG+tYA7sr61IDnhNZ2lGc8bk+0yU
rIWd2E7iHBJnQFzXokVJkQq2bPxAGh+V6WqgxNclk6zLRYPqEIjACZKa4c0bdcQk/eK8Lo5PVJFl
CO/jQVg7Qa2vDF3CXoCC9mJppTlSeXOlfMf1aWUde/HxhAeY3Mg6X58fa2lnYZ5hOTcs5a9YE457
PsSQRdhIkZBs0Np56RmZL0WZMw0KPRopkzAt8ZZBmXF4HZ4DqRnH1trY+5HE6E8ekrZpvuCBcQCq
Z7GnG6D6KjZoAMx7loUr0VwzMUKJZKvhD1/f2NqR96ueWUJnH7s53tFaW+eCovwxPeyETT+9IAIG
xgxAG1Jc1wkg3TxCw7Gg+VNxLgnEXmxjrZrtDalr4Dg/YVmu+cN+/oPdYsW/7nk741TsTPL5QWig
3G24bspgtP0DA2JY8QCP8i+G5vymo78gsilVf5NFRh/wDhxVxo+4fa3IvOoX4vFTXFrDclts+Tiu
l7ygCjVpvb1CZ+PjOiufzWlO3ufUCNA4ASI4gtPEhBTjpy/TGHN3Xv4t1HoNcCIvJKTxHRtR2Y7s
ZwgTMTvpfePOAJL7y7X11n/opjNVKpH/CV4u0mb5ks2g57BqZC3DRFeWP2+QM1jv/EebaDNalj13
Eyfduqp91G3EW+MFi3FSJWLcvushb9UFP9YfXimaRVFy81AF5omsGWoCy9d06XDVSEPQfddSVaRS
13vUXXZEKhWSkpchTT/ZMKSAH6P+kFZmSRXmycd5IJ6ssw4O2Lv0vaHC4lbYtPoD900y0TUAVEck
bhRgXWBNGHL5dJowyljoi2ICO67/jZUb4tF6Rk9oq17H6WmnlGBAdMnk3z9f0y31SUbT/RiYJeF/
RXuO09EjkMg7aeHuQfcBwcbkG61Vuw+khfwJla5GLsSIKE7lsqH3wU53I2lMBghO0TxRswozKolr
6U3UGfsa9TscZRmoHA8l7Vlf3ZemWH70usNx9Hq6Vf3FechTIqdSXC4tL6HvpbQtLMaw00zxxQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 26540221-c9b8-4f9a-be2a-fbeb0a698ea1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:02 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-94a72d0b-9949-a03a-df83-73e1ee15c565?restype=container

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
x-ms-request-id: 08ee1ef1-e87a-4530-a0a6-7207618d5226
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-5fe0cf91-a837-c100-620f-1be3a346d1ca?restype=container

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
etag: "0x1E908001C696480"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ea960e2-6dff-4dc9-8a4a-58b1f365283f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-5fe0cf91-a837-c100-620f-1be3a346d1ca/test-blob-69810cb2-2978-04dd-140f-44c8b30a82b1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x1FCB7BBD23FFD20"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: af31afca-ac7d-4ad5-bc5a-381c0fea0954
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-5fe0cf91-a837-c100-620f-1be3a346d1ca/test-blob-69810cb2-2978-04dd-140f-44c8b30a82b1?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 8437b4d3-4841-b31b-2e6c-cc91d4c211e6
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FCB7BBD23FFD20"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-lease-id: 8437b4d3-4841-b31b-2e6c-cc91d4c211e6
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a79b9f8-44cd-471e-8b92-d1d9752fab5a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: PUT /devstoreaccount1/test-container-5fe0cf91-a837-c100-620f-1be3a346d1ca/test-blob-69810cb2-2978-04dd-140f-44c8b30a82b1?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
Content-Type: application/octet-stream
x-ms-lease-id: 605bf11a-9864-2666-2597-2d24a1b551fc
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Wvv9xsuITWfx20ooZDcNWI1pD+8OTYlq8c07C1xMMFL+XW64DLvmS2bPk2X98k/2X3QEarMh2A1y
k9X+TEELpKv4KgfJVUzRg8OIP7kjbP59RaznSMWe3IVhRXjm6P8lxO66BchILQooMufwmZlTTyfW
gAeUI1zlWU2BaA/T65vDY3vLaWc2NRiivxXerUPsDfZREGf3kKCR1Kt6xsT6VEdMLDYdh+bAoErv
8mRGB6wKlVoYgtozy9LaOZS7u25Tp2vOkoENzoUQkG8dCJ08Ssz/cDFq4tFsGGBjQ05RBOTbnEv4
eHUq/cbUB/FrFsM0nu7HvEs96MSZYXkgqYo3v4yLQWxSQ9JX1HNqldvfAQKdLqVfiUeZnrOGXxf8
ClM8nUhl4NVX4VoccOjX01PpumB2gnvl2DVE8aK4zOS6W8kfLviSeiEtRkxKQhlfwctgnKS3hYfY
VsQSIO4ynhV2YRQeuKRaVkA+STwum5Uc5S/XWC8/A9VBR9gzgFky+qc30+AEQQkmBUVkeDxKqbou
9ju/W0blNl4+3HDMJtbmDE6V9se1F6MlsFPp2ouZ9p0dBIodc59hUZyCxWSZWd5vfmzttbPzed6X
marz+1zSpeXSryJMyJivNKQqMlE/jFZ0elwfrEHqKoqrhtn0blZAryB/xqq8I7XTPYEOyEeNWAxT
foH/s/mj54SXoUK+u8ZO6oIxwMast1anS27A3GJDHS3NoO/UQfwn294lJYJyFIK7v97EXJhGp8Yq
WGeK4wsiU4MV8RvWeqmGCuXnh5LUNDbsBRyEf8GVhvgoqeiUnPfSAtH+XSNm5EU0PVKzXyA0ViMw
nt7vntTBf2oirdDA8m3tFITA1tYThSDWT0Fv4SfY9FPFY/0Z42P9PN24RDZ0dEvkxUqbc39NHRm9
GE+SUp5DSrl9+45w0zAgwpn4W0HqYdr1ixvdPIDTd0bjXMsUa+o/dfp993m8c/EZe7DmVMHY0rZ1
nMeCZg04qYNIjHdlDFevueZGbWpgOBcpw8HP7SOEC4kVn84jvA/sRE72dOd6tG9ZN5vbkWVMFGSv
WaNMaLxfw4HtT2yJi/zXWigbacQwrw5SdraIqXkkyYpqc2NsoNySl7BljGUC0KueBDc9MKqff6mU
+vEG1xoHyYbiHxiYa7lLidITyiKoT6YK6aRB5pnfyvS516bqjL+VXsPfH7CTBpl+8abYjLWH66pL
++52xeLsAlQj3pMSYf0TfWxeyTD1d+ILw/XyBz4/Muv8n5DRH5jg8h1cbycFa4+pxQ5IKCJ6VYML
awLs+voW5KyoFsJsQV7TfdcSmQe7BVhlSEIv9gnJgkkNxrSW9PciRYp6XVXNPYOvdKpLZ7x7UA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseIdMismatchWithBlobOperation
x-ms-request-id: a97e5cab-6610-4eab-9a30-f749290e567b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:02 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseIdMismatchWithBlobOperation</Code>
  <Message>The lease ID specified did not match the lease ID for the blob.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 21: DELETE /devstoreaccount1/test-container-5fe0cf91-a837-c100-620f-1be3a346d1ca?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
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
x-ms-request-id: 27753821-4119-4008-b618-30f287a73200
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-b187aa66-e6b7-a3ee-df93-785f7baa3d89?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26C6F91284F6520"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 82a8f902-37fd-45f4-a330-4ea64680623f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-b187aa66-e6b7-a3ee-df93-785f7baa3d89/test-blob-7d54efdf-a740-9802-0bbf-80815e7d1a8d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x23B5F671F8BE3A0"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e6bb1033-4b36-4a1e-b551-1688b1970cb9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-b187aa66-e6b7-a3ee-df93-785f7baa3d89/test-blob-7d54efdf-a740-9802-0bbf-80815e7d1a8d?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
Content-Type: application/octet-stream
x-ms-if-sequence-number-lt: -1
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
kXVO7GxFa16c137BVN0IBTcha3do/g++p+6m+GZsRGF4684FXFEcmYT14GgpQUMtt3pKPRKjJZJm
j0R+n3L4L5IdSGgPAqnlBNLzch6nlGWreEDrIgdP1cY8n8wMnvoR/bDVDPnaHrTRZDlAr7Jzvvrf
0iYyDA2LzXKi02Pd2WXY4XVt0Yhs0FqLGr7ODyYUyODRLczT3/GjSj6GOEpR9IvTaM09Bu1ycgHM
pvFPvb5MjguCC6uZBAKEyodK5pgPOiYy+qZY1sLzX7rKBjn/VI1/Oak/z+jfOmPLuDtmKIxpvGvL
HMIX9LdJj6zxzv7JhHb5yqzu0Go9U8BDjB6GjTctYUnNMzjKZ0Xy9UA87mtkATPFbF3geuwBjsgB
1GeZwgJ1w220/FE9LmNm+9oqAGRU34rqwCDZTeZdy6VvyZPdWTI9xyv9rwXihz36eX4R1o1krPTc
rwLhm3WHVzCrzmXPiaKn7Dk5Vy+EBzjj39RoS/UYCxyeAKowXCu1dlfVN7jXKvDcaulTKlXFWKfJ
/ryhHww6ksNJMYj4dpAOhODXr9B/DLXki+AMxeDG2KgCZ15vFFdKmqT1jfhn4/NYRKV17ajXSfEH
vZMrLs3ig1jf9Q8yn3CIjRQrin68fKfts4A6Uev/Kh5saFfEHmzWEgqgh+7jJqU17GCUrL5zS0Dr
PntNqDJt4MrxxjYZw26nVHhzG/S5CY3aBGSKa35f+B0W2eDxiWrYM6ck8l9uHCny7FdG/y9MMTTt
cqPN4nRLks0ZAuqNtssOmuhNlRctbOc7mH4nGfjtyqesAxfHClEz2GCSVBo+ZDWMOGRH/5wcwAa7
kkn1JHjULDhC4bKzRpCWGby3mhfN/DNIm+GUpsoLj0MRC3gHPbTnvSjh+4OD2PHUsOXfZCXu7ZYW
rIiXQIVtN1FvojoXj9wI0Nzu7ACwxcPvv/blKyodIh7i8ZErT32ic8QxEzW2vCAI15RIAACVZubF
p4GPhwwnUYAcNZ5L3IBfS3g8frKNOQLV3FSW1SEdTIuqZqj8E+u4CsG0moeCvfoT6bSHWOc0N21+
uqu3kHxe/ugSoHbYYjiNhHTw2J97Uh9ZguxtlfSjdi46fVhAAHlFVpuebxyEO4Z8+tRzQ17OA2iL
Xg2P8Wj0bypHneTgTIT6q4ID3OIC1Udm8JsfMDPQbHrvtKFrtWQzqQDyPZ2hnK1QeZfcyieGiYnG
KQDN1T/3djFq8JjijvUd0DLhD5epxVTtz7eb86FTaSoYpYtkZtTB+8ZsNqsVbeqhvvr0pHnxHGSr
3wWHXIKPF4ZtyulpuWpdIBTQPY6o12HM+TWnXsSxJognuIbPOZ5D3B8lqKMBOAWPloRlIN/WAg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: SequenceNumberConditionNotMet
x-ms-request-id: 316674fe-4a09-4d83-8b5f-46d1a6f8b6e3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:02 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>SequenceNumberConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 25: DELETE /devstoreaccount1/test-container-b187aa66-e6b7-a3ee-df93-785f7baa3d89?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: 70527f7b-4125-4aad-b98a-e43514c2a090
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-62bba408-e74d-c2b8-bca3-604200e38ee6?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C99EF30A659E10"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80318e7f-7419-43e3-b267-5362ab9d1451
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-62bba408-e74d-c2b8-bca3-604200e38ee6/test-blob-6f618d75-2e83-cbbe-c12f-17c8404b05a9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x210214A0F6982C0"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d169d7ff-343d-4318-bdca-654a49c07d8b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-62bba408-e74d-c2b8-bca3-604200e38ee6/test-blob-6f618d75-2e83-cbbe-c12f-17c8404b05a9?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
Content-Type: application/octet-stream
x-ms-if-sequence-number-le: -1
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
UbV9Kn479vRmY+wAoPUFqwid75N+Zn/Z5u+hHdDwgnCdt/FKZWNoOpZsCCBCvSrLKmy/olxxKuo2
pESOmdgkduF8YukEukakNbX9EV5elyjF1vNjMN8TLI0GFMEe2qC+SJE/xVtBx3AlG2yndBiL1wwc
yMPlwEUBaDVc/aaEhVsUP8nMH9HMgw+CPRVza7h0ejy0AhHc2IdMPlwm5cnJoZURkjVPv7g7UES0
YoIwjv1954Nq0INKOGZCgOB0pp5GuZyAYtmCJbuDebHMJ3YFG7BfqP1GX9ERxlrODT7Xxqqmbqnl
rysj+sLH5lfSfRDwPGQwFP2gAFnLb5t/sxd8rLIHJrnMH2uEO606fnl6P0hJ3tDaprGsBW5PGkCQ
pEeqSzmkyldXIx34rNlPZYHfUC9SNdRHogUAWiBLfAQq85ZmkDM/1XTx8buy4frYXZ/scMoRPm9y
Yqg0pHA3DKYZzblC6NVOoHu7YUMZlcALJ/2AXgw6GbUn9C2KCzAEueUVmBNBlnTJns9OVd0rWc3o
KH1ytq2Z37MEGvSow5RKtqdeA/ysypCIt8A868PX/JtfouKzkQM3e7lfPHyAIdo7BJ81zVXQO17s
6v/tXPPwLB5YSSGyliWkJodCTI0UCJXlAeYkoi9GjmaDx6cDSR/GbxBdJ9i4iG56kabNju7R1+Jp
CFoMy4nvErq6Ls99oNxofNx8t+C9LXh4qhGIeAB4su/FmUHEuaSGbhUd/lqe/PDKZRERVCABq9rh
kyB4Z5q6QnvfuAaao8M49UjLoC8e2a4hvhPvZl7Ow+1m4iWDDgd7Y7vfv0PpL8FO2V7YNgurw7ly
V6iGytwdEPQZNMGdtOdBTzxzPxpqOI5RoYz/9o3iuh5rEbZe9Jjfwa5P0PsAsCR2l+bPOISfBx8a
NSlPHRlnNnmiMqMw4lujk31rG2iTUPBniF+mEoKazAmXRL5ukKSU55mBXn6BRrSLK6QGM+y3huQ5
55S6wST3B2WZmJ6cNQPY1jPOEvJy5kKqGubdk5gc4L7aNagQ2iV0ilcY560W7vagLl246HTyxgBR
D6Y9GXPNfLjgwv9ayPwNWoebWf6UlCvwPGU7Y/hJ6G6nvsp/NnDjSmr1Niz3RWVgq43sVmwCvXt7
Td0Nkhm/ltmQswoxjiMWuA6Tn13++fYA2rhqXZEBpQFPBOmT1bhRNqBTZpJaLxxq1Z5dbh0dfFTm
DbdgVDlIjw0J4Yo5g+JWQWm9q5JjpaucAIfzozbjMoiVrcgB8eFmC9eFUU2SMFK7Byy0X9DBgmcL
xFSyVOvWJq8CpNYaVFCIVqC73lReCc81N5sJLtK30ypg9S2MtLbrriudj4t8obPcLAkvBaMTrQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: SequenceNumberConditionNotMet
x-ms-request-id: ebc71639-ae8a-472f-adbd-60c4a51bc586
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:02 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>SequenceNumberConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 29: DELETE /devstoreaccount1/test-container-62bba408-e74d-c2b8-bca3-604200e38ee6?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
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
x-ms-request-id: 6ba5e410-7481-4713-9b9b-134b46f26ece
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-1d7c85ba-cd4f-ddf7-4ad1-abba5e23fba1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x246F32F0C8449A0"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 488ef162-5c87-4e8c-ac91-d3352682d8f5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-1d7c85ba-cd4f-ddf7-4ad1-abba5e23fba1/test-blob-2930d0ea-7ac0-b943-95e8-2d02c888cd87

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
If-None-Match: *
x-ms-blob-content-length: 1024
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
etag: "0x26C77BA2B602A00"
last-modified: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 54b3f159-1f2a-4b8c-8967-d0321276f485
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-1d7c85ba-cd4f-ddf7-4ad1-abba5e23fba1/test-blob-2930d0ea-7ac0-b943-95e8-2d02c888cd87?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
Content-Type: application/octet-stream
x-ms-if-sequence-number-eq: 100
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
TUhyBzeYnOEzwEW60OdUuTFnRDVz6ew/QcOHZp/1FMEDJGwVsPRpUjNP9gA1iOiuk3PQYUSYE2Nc
MsVzEDVBPquDt6x6Pwk9/vEBJPPrCrjb2dMsJLN9axAIuX0u9UL+DbhVsdE8NFRqk2NSlu9wcSgN
mDdiFBn4BUubcYWMDgivAxY7llnmn6R+wpBQK9QgmEhVIV0Km/ieXKuGoMPO3YVaopPZNdrOJvmT
5FKIp9p2e9g9Nu2rpGcdnDmtYP/gr+QL9YhBRmJthvpkd7emFbXRDyTqkaaYr/4rvJihIcX5sjRu
fbFSNTR10LDyRiyvdoeE3FDa9R49c0aKFYrKzGU1asWDOJcDftrvdMD2pWjRfEURHUR0H7wVMApr
yB+qqwRLvdxnKz7vgF126oFdR83duJhEuK4gwEsJbQeNl7W6Rcm8quiMalAHIpzn/jQ7uOk9jg+G
ZfNVK/2RXr42YemnvKS3oZzkUE5IPZYSOcEWzbUeTwmmM+DWZ3/r+guS0MCzP0GQgxdNWD3BPidc
QvI7e5AIGBHfAYjE4Tkc+VZCtWzVX/p/hkme0PfL5PW4eSSNsH97ibiu0z25y6LdMF/nfom6h+P4
u/VGakcaFB2SC2gUj0nWxyu0Jou8xrqnwJ+Y5GVs/vJBlfSKNB9wlL8fJsA6yaEWEbddBmBXO/U6
n6qngi+3Jg120/lUS5MMQ5LMnZ/5bff9gdOuDveR6Vn/T5V0yRGPaP+yw/WnwsUkUcLNip5VQDGz
qQBcCRgV5OmgVPv9l3qBPTSfRqkBVb8Nir01xF+7qg5kwR8QMl7nnd8MB27JJrlHTExptfqHsVNB
T39a3x+K5KntmdZbcAvWuKnK9U5RQ2ME7ngSUvQU3A/Lz+PfjL2/gSPE3Izi7NtBk/1QvbsF8Asb
VvGneJK12L3GkKEo9yvrCnQqjGfXIQGc0L/2wx9Txd/YwzbMGAmQDwTPG1s6GZvSZbJH22OjQzTv
CqfTvhSdcsvBTzP0H/Jqmn1jCAamYrcjJF5sC+l8NH8B3A1hvVHvMaiQeMlo3UbA3UHlQDsuSajw
sJm2MWfhRRuz80LlCdwsdNddFentukYYqy6olvRE05JkcAy3Of9BrzOutOoD29Nkucxk0DO/A/VT
noU4OK4mbx+vgJjQdDrXG2a1PwZcFNBbRNwo3wJfpG0XZJt5CXaEh0TKU1o7k0SRjLXNCcTu9om1
3fPR/pAdUNwquBCfXRLvMbfBkcF1H7CYllJNkZupKG0RxCyDsoi0rAJ+ENs08S6j3tgMLGTIP71D
OWc90L9AgZCijpnlbH4uDeS+9w/VY6UkqrPCnPsISYRvQHggd9xDPY5KkWOVvXFZ3R9/CkitbQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: SequenceNumberConditionNotMet
x-ms-request-id: adae1d5a-f34a-4e30-9189-1934995a5e0f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:52:02 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>SequenceNumberConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 33: DELETE /devstoreaccount1/test-container-1d7c85ba-cd4f-ddf7-4ad1-abba5e23fba1?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
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
x-ms-request-id: f3601205-6670-4b11-b95f-5cf67d070726
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:52:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

