## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bd135b52-2a6b-b987-d88c-cc76da6d6bdf?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_AccessConditionsFail_BinaryData
now: 2026-11-12T00:46:36.1213890+00:00

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
etag: "0x230CA3197BA6760"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36cbcd0d-1240-4f59-96ad-75605bf5dcb5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bd135b52-2a6b-b987-d88c-cc76da6d6bdf/test-blob-0b31983e-c905-c298-34ab-fc9603317a72

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
KtqnmiRh4VJjYCE1KXSASVIndO3PX79nXp1moLuUf6XXlh0wdTLg8HnAWQoJUZBkC4Ijsvh9EMsa
PzyH+0CXz+B8XpJWUNMgR4RzDgW0XgwMAZQ4ccysWoZRFTX1WPQ5KYopjPP9DbuuA2t0CQHFZeEw
evqsXl0UzwQMBTqdKu6POuR7itEYD/PZiW1gN1CEjK9Uxd36jMssFb3v8QiAENl85M4dStoPF2sG
0tXws5ezh3iLSWQQlK0ZTnUUKB3qWXiU41OCZ0HURa1y9Lr2PGIlPGmQ9Md0bFAgA/tl+u9NG3lc
W89EMSA2tgS2nqDzIxIT7+y0WmSxIHcCYWRFb0q+JNhAmeCS4AtJWT7Dvc2vLN/pUgsCmcEUqztX
Qc+88Ea6+HrIsokxgA7gagEl7WKpUzSEXB0+u4oWK+6lOp47jWj3CcVT5npVuNH9Ii7A773Zru6b
OJQpezzvsYabi0Vvpd2YLeScVmy6LqNLQJlbVjwwzIywoFXTzY2JYzXzuiyLjXxRJ8HYPFeB4Anx
3jqik1pKar+5vgSHxWBXE/I3xnN2v7McCi97V480L79L4e9S5tDaqU9t0s54yWFhgSllSRqWex6H
hYkrzhMvhI9EPONwBCwiXB0kCO3kpEDNGtZmzuWltWbQymFGr9o8PU0/M41+8Hz9Q+z8cXIxo+BI
XbQ8ybapn4d9oDrK261C6MqgpXGzTylZaIv4qEP0nyeA/lEm/3SXlZMGAE9CMmg/uomnkP1ulQ6K
42AqsPZDiQASSt1bHOlWCQ/drU7ZFjYiue66TA4pEWhDmxsTbOSdwndPMOiL456gUIfukee/sMwq
CPcIiDzx6Dh0GIHNQpwqQOrWiuZNl9VQGvuHO4CBg+pP6WTtlTk6XUewFsoc0g7qw1D86Cbm3HAh
t25Baq238pWWflg4PKuwnCyfnYALM0ftnHcwhJrDaQ3zzN3L+fOZ+CQ1hlS1soalS0z5Rj7wFoQm
U801h2760hVLRHDO5aI5BaVc1a3zN+nwizhNyiLOA7ZYpaYlY3G1O7M/am0W1maqv0GZk0HXMhvk
Rfw1rAjyfEG6dT/7FKEzppn6tM182rTRowrhNW91gXKKQR51gI+qTO0sW2EnrqufZe2n3H5NZ2pI
Ywj9EUfSRfPNcdODviYKT2jgUH5SqvRfQc+BzaT0PNm0LByGrTqlWRZtWj3XHKfHnY0WbRfr9bkU
ndB4UHdO2DX6zpEJg6EtOvZo5FC3hyUnujAX3s7ByDdjchBqLAmeHoEH3U0VvRnr6DIhgxBoXBWq
UJVHN/pmOAZaphGRww7tycbPr6rXEv0WK/Wcn0Qm+xX6v9xzV+eGoaVGuhYHWiUkNLpKmKxr0g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25DCE02FFD8C520"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
content-md5: BuA5KbRLLWC7rZsmR3jNcA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f1f87f8-596b-4faf-b713-f7a3423db233
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-bd135b52-2a6b-b987-d88c-cc76da6d6bdf/test-blob-0b31983e-c905-c298-34ab-fc9603317a72

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:46:36 GMT
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
x-ms-request-id: b7e1279d-5f89-41bd-bb12-403a8c181b77
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:36 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-bd135b52-2a6b-b987-d88c-cc76da6d6bdf?restype=container

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
x-ms-request-id: 6d68991a-b9e3-42ae-bc48-640d614ca3eb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-040d49de-5791-0fe7-d1cf-776b89db6269?restype=container

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
etag: "0x247A850171DD6A0"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe1365e6-eaef-48df-8f04-332f5ae42250
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-040d49de-5791-0fe7-d1cf-776b89db6269/test-blob-79cf0576-19fb-5997-0770-4bd8c5bac423

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
j+2d2ybbgNgMhIZrC8Mi8rlIbE+eZkHnsSI6NVEsOFhJkgcVlJ9LA8g1+AzQewMNrYWxQW8Syiir
tikEoEuG30wuIXi8DF4a/GiHaG40FjUeLYjMevfpN8jfat51R2J8rxjAolmKUKEnl0QGimG5d5/0
5XLDuWRVROqw3aJ/pbQGCrhWc3Pbk93mpeOy4qxmJfI+gGLvufaza11v2nL+p/GPAH+oYwMsGVGV
3BOBomI+SbivQSVSFlHCoggVbLlq6P7yIuIsvcHvEmYQWtziMsj7MZC6T2XLPeou5sH7Fq2XK/QV
jn+AEYv2vy++Qbt033A/Gjoor5iYJuX4/tcA9Pu5eC/ozaNJeyAFw482DfsuuQZQu/tyb3tbfGea
iBK09sszBMiMjBHM9p8aI+sJYhnqyUXQrzj/RwmzjFA7rvMNUc3DAggyoS31hMVcV0uPUhpOsL7M
40eTM72/2P/AkUerDdIeRV8RtygY2ytyo+++JDk27f41QG2GMM9Kc8ktNPN9sUp4cA27PPiVtAcc
IJDOALTFiqNJdsxlmBSQx0Rf6qc49PKlRrMse7AFn4xmaRA+e3IUaKlPNDp+E9j5KnW0Nspg4yue
KboAmQ7zQ9dA/y4DUUvSSoL96cC3JjLbMlA6UWjBBYXloFK3E86aW/FjPhSp9dkq4exIYvpr5gKH
JWa+uPFufvmoHrH4GjazYo3OVOgeMT13EG98eaKLerlQL+1o3KIA9MAaAdcoMce1lQBtnJIZafQp
R6iB8gRWHaT3qOpJSobqzmAoBDBmT9+ox+SiHd0nNsb5P5X6fgK7xOMyMInda0p6gs4y8GTEw/fI
2Cofs//G0HEjUAvw8E9dbEBMMx5Vy1uaKJsP9UVhNHudMabXnBDjbF8XuRs/iZJ+1IMkd5DZcg3O
hYtkttsrwRuPU76phtAvace/PhI/W58IkSHBPb3rxL6YCBeEfrWE6/cArzbU1U6z9A3IGjT7jyns
XCW6aYRdo47/EH25quoSOlIaP6toNLvTDkivI6qKnHntmCKPyoJyowyn1MTQ+Uoitt/h4FB+gydq
51s8rYDkdXQDzBHIgm/QqJyfwWD3AhX9jWzKqLspbhX6JeMmNfWMw19QzC04WjNvETiz38LHcuRF
PiATGcy42l38zV2MqXKmE/0ApzXoxTI4WpaDdY9TM7L+4PbUeKmSl/LPO4zW42fGDczExsuvXXnt
2741NWTOqZqrjch80ZpUbg9DGIqmYncvvWjDjmznT4N95p3qXGKNAJLyKlafSTsxcFi7bETvR3hH
Bnj8Cxotwz1F/ur9aRGttRj3szcgj3MtkR4ULOM+jp8ko1bpkfV4xGcZWUtQMwZHDbYs95RAJg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A1D0925B52160"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
content-md5: xqiHsGl4V4Oa1qax9crS2w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da4bc81a-eef9-41d6-a643-7951135295b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-040d49de-5791-0fe7-d1cf-776b89db6269/test-blob-79cf0576-19fb-5997-0770-4bd8c5bac423

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:46:36 GMT
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
x-ms-request-id: 6ebada6b-a9c0-4850-8283-b8e6888525a1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:36 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-040d49de-5791-0fe7-d1cf-776b89db6269?restype=container

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
x-ms-request-id: e7755151-d44d-4d6a-9f81-b49846a31483
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-d0ef7f23-3507-dc27-5e18-cc1f2d11960b?restype=container

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
etag: "0x20D80DD7F43CA20"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4325099a-9567-4758-8639-f0b7b1dc5aab
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-d0ef7f23-3507-dc27-5e18-cc1f2d11960b/test-blob-63838de6-1d5e-0d92-c364-8a9eeae43fa2

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
5Hzf5MJ7favQv1LaBFpBjEmSCXikbx9A3fIb4013LPXZQPRJ299hpwJEAEjjTdcD1j/WmggeZnRd
ngfPYJldWJNcAMRm+LFpMGF2YG/WXZAaFwwNoZHtu9p/6z3Ykkdo5qi0hkwTnN6ObGmnpwUFhkB3
tEmNULYBb0Xp5wx0kZ4aDXrHItZDB3otfjUoRRPVeWT8YN7+25XxsxcHKrXSGtrLjZmKPmRqM63O
X9GB2SkxFG2oeDC/GzLl1W+/PN3FW2RaXLh5Sjr/kS0xL3vDcNnt1RVHKaKpC3FnpWn1qvbQCQRt
J3xxt8kyqOYDjuy3IWWV0mfHfTHCsFBGEqXRCuc2YCZ2Vkhdex5LFIG8pn2Fr4MDYNiPCIvSq3Yr
KqQkYZ7+zS3FQMocOFZIe2mwBgrTwWMhzqkOpliao6vRMVF5J7PjvdhPv2645yiCRowiIqRsWGhB
ApL08CbVK5wfSgYFz1S1zUkxhAL0aOeBjF/LeIEGZdnoOCQg7s2yeZTRmZwhfHc4bFVbO9NmTJmr
cmPGCrIbGOUtHJcvlN58fgpuI89KYA/okwssqikFgeuKdHtp62/htoC282DgCNd337zI+CnKYRJT
3nan7227J5urpSBiEpOajGxOk2yvB4oztcttPIjBvxNpFgz4OcYT+8vENWO3FM0pLWu8fM2mo9fr
dDqiTusS6eUN+fuGolKlO5ig6tIne6D9Qw4cBENFwnM1DMWMcKzgskt9qhvRo4sZFkE1BrgFw/iZ
pArc9eWhxzaIUJWNGcrrvziHqtGFK6CDA+4CELy6MEnN8suhBL1m3OPkSVL2jP12SUaAfhknFHhq
WfH2n7d6ziBMvyb+Sbt7Ic7toeJOjHfwi8Z1OrIvpt5SN6rLbzwraXsxqszWdwCKBF1LOXOWG815
BhPwBJNuHBlIrBEQr7GRwTdnHeGrGRTG6zVV42xrvBzdUWgpO2Tnw42yjsvuelWrunc7L/7rzuz/
KhleGTmt3O/1Ml1JaIbSf1pT+IpI13Dfqin1L40e8oN8KRBLiapUBbHb+Uf3YlHwaa+kl9Zht1Oo
fm4Pt61i1kDazD92h/Ww//LYbN0p6EjYBMbdelusGnK8ogs7RU0EeSIHHJUSeuK69JjjiEp1f5Um
N7PnhVzlLbLMueTqdLmk1PO7IsuyxYrkI4bCyZEnRyN1FA6aHfPGIe7iRcD9z3/ePrRXul3Kc3Ep
A2LWImQgpXLBdWCrCrb/9QDcz3/J5lMH5Irdz43FqqCccBqR7/+KwqBOPFoeMzP9WMVc7aTxYBwO
zz7aQtXl+8rAD5qcbQUAUg3feqr56LBW33fHaL38qhD9giDBr3/KaUCPXiOZYeq/XJuWEeVyFA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x266E2088B083AA0"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
content-md5: 3Lcf1gZMuihgbkLXVYkt1g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 32c1b159-6636-48ae-87c2-c4e914c814b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-d0ef7f23-3507-dc27-5e18-cc1f2d11960b/test-blob-63838de6-1d5e-0d92-c364-8a9eeae43fa2

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
x-ms-request-id: e18ec547-2c66-4501-a8c0-f33e70ca1d4d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:36 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-d0ef7f23-3507-dc27-5e18-cc1f2d11960b?restype=container

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
x-ms-request-id: e4c0f2fe-8618-4edb-a54c-11aa90146670
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-6911158d-896a-bc8d-7e8c-080c2165982a?restype=container

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
etag: "0x27B8B77AC07E0C0"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed14d343-22a4-4fa0-bf43-4ba608808028
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-6911158d-896a-bc8d-7e8c-080c2165982a/test-blob-3b0c6802-3f15-d418-a33c-686ff1d3532a

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
i245Mysca0ytgpq/D8L/2hz4CPzUCKpcAMbk0hWF617LXxJ8qwx2carFu+fvza27jC3wKFycVoPD
3DNkOJk2KJY886+wgy8QgZdRD0zCbTIZKEXnlcIBLwmPuc7YETkQjpNRstr9Cwn94KfFSkY2AG8A
Sw9TTpLTO8SmIMlgN29eQYC4cbpYGx086rUbO+TCWLhf2MYpvT8BfXcWV+s/nag3ZwnGfo+0qC/y
F2TduP/f48cRAV+pNIRAt/NDQsQx/EwM5NTb/NooqjCXN6XaI8V3NnMjLZtJjjKFhcabcWZqwBoX
0dQqBOfs6FYuEvzeZZMuywtQDs6xwlWiVXcTjTnKLHeKw1LxTTKMNkVFGnw1px8ybaZaGbJLZg5+
iK5w2VsdZOWFU6JBPH7ZxNeJbKfZbK5X4B+TbxLFPlxDc8SDHF3pJ7WWsFN88TEngVXawvpmpBz/
GPg8ivXTvxRG/cm5Vad5n0TxQ7tb2u/ua+686nxh3c6ogwRlrZ3AwvE+NvRnbiuuYSK2dGBgpD0J
TR4GF9SY5SD6EdGjFPGmMYHKHKT7hv3DDolZq2htSN/GXGB+uascplHTbVxZCk0xD0PflYeZDcch
QwhLPjm3jMjy3biRJ3fWrnZTJxmgaQM8KJsljrJXLU6YXXWi0WcXG+CTZy2Vn+fLCecRReaugNoE
Dhaekv4Wmq9p+MoBM9wPPAs4DAHWp4izWYTLRudn6tybncJReInifc19K6cdydUKAgnadnTYLmeN
6zh5S1THAQ7tZpUavcOCVY40WXzhlpCuwETejXRowm9bw41QaTJ5tSmYL2M/8ERFWCDlpNTrrFSo
yooP6XSahaMmvvo2Muxcu6NSSGYtb8//mTRTgh6acBc4p56nacy0/qm/GTFJDyY0iOgxmGPte1u6
EFA/RgOEi07j/YpNtFLXnUq9bVWetYkOHvk1ade0SixD7Fl8dbimOo3jZhGb59SWWfoZMA0FHFrG
MScJTyJ2LrNdCsf4WyiRFzLHuk94cjclng/dmxkfPdD/tUOQnOtrbDdePt0Mnf7RhxnaPmELTb7v
5LASmZOZPsz3+aXkAXpGXE4XGjRaGAAQCxQARP9u82eFoLg7WdOkxAAQFKRY7YWflOIT8zOJlcuv
AY1/mPnNiQU9XmDBCwJ6clUzSgRcuB6OYbAdWv8z+wvti1dFJCwGQ4ueGo4k3YjfmIHeVUvGU0lv
8TdJsC4GCmJV03+rNU4oLQd4vp2QaYMnPcJ+VabAJjgN1jP1vZJdmBArzwkIM2MytShETpSs34ez
IXJsh7W8lK1HnV8aM290GyaMZZl6HwpfS599fNikYfarQZwg8RBbbjpcwZYDGIK5zzJtIHrtOA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F0B351ABFB0980"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
content-md5: lePr/H+Hc9SJMaf1c6S7PA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a306a09f-9843-4211-9914-e99cf8b546b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-6911158d-896a-bc8d-7e8c-080c2165982a/test-blob-3b0c6802-3f15-d418-a33c-686ff1d3532a

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
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1F0B351ABFB0980"
content-md5: lePr/H+Hc9SJMaf1c6S7PA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca982921-e185-436a-91a9-a5ad742e9e59
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:36 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-6911158d-896a-bc8d-7e8c-080c2165982a/test-blob-3b0c6802-3f15-d418-a33c-686ff1d3532a

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1F0B351ABFB0980"
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
x-ms-request-id: e10dce4d-c570-43e4-8229-80b1fc16297d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:36 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-6911158d-896a-bc8d-7e8c-080c2165982a?restype=container

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
x-ms-request-id: 89792709-bcf3-4e9d-9eb5-5c3be7548042
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-5ff63015-5e1d-5b74-331d-c3aca636417c?restype=container

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
etag: "0x1E1C859D3910860"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 910ec9fd-2c88-4f6e-befd-bb4b60afb2bc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-5ff63015-5e1d-5b74-331d-c3aca636417c/test-blob-1d8c8b80-8b71-0093-f222-9b3743ee912a

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
vQiat+TVRS4hiB1Zm6iQ5nsIWO+Djhuj9LEH+HtsLm3667HoOJtGQOrHPZVAGr+Ljd0wnt1S+S/t
9sMyzU2ztVmwXq/3p63fwRcEu1CFY9nyfGueO5CPqPKC+kLYE3OdFIc7kLsPk+UvUNzGTT3eaJPp
QFDhFHrJILa9dKxrB62jZ6bJSdIe4uiFbuqzyFu0o5Ku7tMiuwANcW8FUh45xEkuIuaXFR/By15n
XKWPFldaCNEZvBjagaumu9diGY/JS6qhhaZ1HY5z7SN1ul9aflsYqkpNHwcwVKE68VlHXrHPnRD7
7ZGx5epCps/1ZcZMSz17Sm5EfCujcTAEOiw0K49xph1OX5DKZsVgC3k4Ou/b7qUcyxNDiiHkV3xg
rKq9Dno/g76p/eysseOp5HCyazZBKUyHGGB7Lhv7agcUabkaov3++LcwMvC4bxkwmaaxMexFH4Ne
NvUaxFWjrZPlmEcpjkFztHN/EPdbzqhGS5R1Sjgazko2vGwH5DNhjYRd09bSBgtkPX15xQ6LAmdN
03nALmNaysr889LVbM8/HoNz/vvRdESJEAy6oQk8q7kEuhC6oF8gAggM1RI4jtGtOqeKGANse180
Nx1WoCnAwEgZ0bK/hX0kUvzyxZ4xUYE7DWZhspK1lz6whWlByWLeSxXKH70e7rQqZcUHebbBAuab
G5LCXw21YzlzDv8T44maE3mIZzHEHB+yNkzNrh2I74KDpa7PHOwHFbuDq9+0FoI8bWU8OJu01/5z
ECjB6LUb6h99kD3ayveNgFJ2QHE//SDKkEC4TLbnzs6wWwvDRiwGZ8C/N4ZFYqJurrdJPpaMMxII
9ld0Y55olcFuKm7ryjklb9ixgMWahS6dSZ3+npA3JCj4u1DUkQMhV6LE1jg0guR9I8692rNNbnEp
1hoBafcxNwVG8g7pUN3VkCgj1a72aca4gHrCeUl0q0zeq7vpIO2qk54y7o/VlNLw6EqKKZjCMm1T
SOl8br280UbCC6Ui6287eUIPxHs24uyn0ZD+6YKzHHhNltcELiThdRxIE4gtzv3aT7BWsm7yHGb8
1J0tvefEDu8s1FWYN0sdLk5e7s9jegOSJJrSXWkJW3lxB1mHs7g0hAWZAPmoQhdkOIMgky6XmFqZ
mplN8bCFInnbJi/ylnuWKWnJynkK6uGCbSTl6cdL2m/+7Rkf55JUE91/zRvocqIIiWnEzc3hj7C4
yoSMoDixj0y/86lidkLWdbabih3FmvqC3V9dhgyhHF1pZx0OyHOkzj3PKH/5phMn7lgXRgWS8i+J
CcLZUwlAHtdL+Q8kyK1C9rzg9nJ7iDdMNpi0itZY1nTthL6xy3ozjwqnrq0DAiWq1E9Jsvy9Dg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x230E44E6CB55420"
last-modified: Thu, 12 Nov 2026 00:46:36 GMT
content-md5: 5yWjXWAibCsPwo5sAgM3Hw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 973433f0-e072-4862-ada9-016656a7344c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-5ff63015-5e1d-5b74-331d-c3aca636417c/test-blob-1d8c8b80-8b71-0093-f222-9b3743ee912a

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: 3f56e591-872c-590b-1242-75470a1dcd05
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
x-ms-request-id: cc34be50-f71b-45c6-b796-df42223a2db5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:36 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-5ff63015-5e1d-5b74-331d-c3aca636417c?restype=container

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
x-ms-request-id: 812b1ae1-bd1c-4d5f-a4a0-c20287c1c6db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:36 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

