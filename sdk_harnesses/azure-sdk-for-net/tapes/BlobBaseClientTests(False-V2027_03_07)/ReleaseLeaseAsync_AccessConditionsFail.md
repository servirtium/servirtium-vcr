## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-12ecef4d-a10f-45ee-245b-0016f4d5cca5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).ReleaseLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:47:02.6382540+00:00

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
etag: "0x24AF2724E2F3AE0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f69831be-ba28-4b2f-85a3-44b32a8a0221
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-12ecef4d-a10f-45ee-245b-0016f4d5cca5/test-blob-3138dbb4-b112-f734-89dd-fdf9a4518fd9

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
JN8H4tKsJSsVCDOMXGg669WdCin+9m6cu/SJMaP0odPLJ/IVzurSB7UMGwp+p5sgoxIkB0Zl2i1x
aybdI/SIIGdgwTV1JR3rygJ08tpkHRNZaI6R0JqNZU3FpGPD9eTBhPujHeZlqn70ODxD8edSDU0T
g7tm9k/M0lvosIG5KNQesm3fwQAt870QnJddSXRlcpcWsHEpWo2r1kuKffn8OxBnJD56c0xN5Y/9
Vlq3b4nngz7pondj9VffM+q0onbDE2CH9SQ16v9LycrhKwQz82bBo/q7EpiYBC/mmkBhmEMZOUP5
MHlkspg/ntmtgclTrD+E8/97CADI7vH1Tk+/6jGHyPLBOcPtXfFhfHS/64Nmk+4A3aRDnTFCMUKH
b2NIgLSnJrnXkXJ8lpUOGYuMCQNujrthvg2MQyrAfgeAZe2NGfy/F8TKjgF7hEYPNYSltig/GeCo
58GnG+KOFxJq+zGngACPzPE+owC55TnGfQ2mGsjfQUsN5TI6F/vhO3fvEYgVZ7WDFuk2AXbg7wGI
4Z7V6PxKi7rlmpvOVLX2XGiIydSwsRZYIgTeqD/VLPUwsjZdDFJ7pIXOMMwatcE0QKUNWCUt1y+H
fMb4bOJ6D26lnaJ+mE8WDSVO4oFJPmxCqWeayNTQAtsG1ZCLgjiiUyBedBcetqhV90sA3vSuPT5Z
tcN64EeZ1JrHeMK/iortq49g68lVI/O/RdCJ0CPnV5hRMsx0KHLYxKB8Vz7llm3AEjNkTlJ0BJLP
u5t3EAR24CAqbVe9eIMciCcp2My12a5jyL3wgglF3S06pWzXYbObBXcduygVApqwR8UrSyvGGuHs
FEdGhl0W5JApg9MWRCdzjdNUlx6GTcUjQDpEGpECdIqL60xsVH8ZBteY63/HmQOdt75YcYPDZcaB
I0Yj0sr+Jw5Ji1naBjhTOpBH7WJGXKY3pmLTqQIHx4WG6jE49jMMmcNwfg6pw7GFBDbyfHhkO8ef
6yxnK30MQcPTVBwHG0RcOlSe1d6YjeKxTaXLFUoNIq9pmQoHpW1GZDxK1m+UfenylUIjxWXpBl5J
td3YQCx4xTJtnoE5VZTmWHGhTrdzHNC72X8I6VxJf5Ksve+QbSQP0RA8J99ouT+uPW30R7im1pkN
HGescNzVIx7ujJilVepNkn2mNvXwUx9AWqzuVDfaBudWglC9YmA0ZgPBeS2mCeeCp7U6/5+jHchH
bBYw58/mE4axTtKZjy8ccs/yLtrymVHEbK2CnwZHsmWIdfZKBH8022Wm9boU6BeGHo3Pse7uVNLF
a3ohZHN/aZttERk40m5PvVN0S6SWsIOV+4F4eAF2mSEjhZgFEnfxJ4sep9b9TUwef/ObegguLg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26577B92B530840"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
content-md5: 5BSHo6ox2HvJsPuoTf6CYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d195209f-9b21-4d78-89f3-feaae0db877a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-12ecef4d-a10f-45ee-245b-0016f4d5cca5/test-blob-3138dbb4-b112-f734-89dd-fdf9a4518fd9?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 688bf7bb-07f2-9af1-f678-f8144cd54aab
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26577B92B530840"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-lease-id: 688bf7bb-07f2-9af1-f678-f8144cd54aab
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6667cca4-052f-4740-a1e7-2cd9360cba35
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-12ecef4d-a10f-45ee-245b-0016f4d5cca5/test-blob-3138dbb4-b112-f734-89dd-fdf9a4518fd9?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:47:02 GMT
x-ms-lease-action: release
x-ms-lease-id: 688bf7bb-07f2-9af1-f678-f8144cd54aab
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
x-ms-request-id: 7cd3e949-f667-45fa-9e67-5339ec587e11
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:02 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-12ecef4d-a10f-45ee-245b-0016f4d5cca5?restype=container

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
x-ms-request-id: c0574387-ca0b-4bae-aae2-583922189b38
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-182482dc-0878-98ac-ae35-5af80ddb1f18?restype=container

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
etag: "0x24EB55947C80E80"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15b141c8-4e2d-4919-a014-5c25b12f10e0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-182482dc-0878-98ac-ae35-5af80ddb1f18/test-blob-0ddd57f5-0e86-1fff-9a84-b15e0538ff49

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
NEi+9+MWtbJK87m9rPmMGljfH/X4PCTNgwR+9FdOknU1EcPFHCg13qEqw5JUQXOh95YFJRgJUPcj
8XPemMFb+2FEh5s1xv4wqkFUzXmSeEGR3fzBSGxcLMDMoiu0Vkbfz8cxELrXazGY1XvXtIN+kXgy
TbvFmbP051vbaSPSfFT6df2xYGeHunHLKXPxhHc9TRGyggiLGjUUPSle+wINxVkn3T+FzDARqpNK
+nBAA2LjnhsSIPpLb1vInSI+KL5uvWMayac4t4Dgodd1QSDF1DrHe13n+6Vf3G3jvS8O04HU2zwM
Jjm6quabMX4i1S47Asnodqxgh8K+uu05VfpQ0s5VoGXjuK4BDNF3S8kmPAY/qLpmJlzVdFR6TmtM
gFXrSl+wzDTJV0oa52rb6Tv4mH7m+qxA6qxygCwRaWpDtIt8iwFqdm/SdlBwSz7x+YoYgbbsZYao
q1+yPkwHt+3f1zLeX145jSEOFIRc0J5tgIai+Oi0Vk8F1OChuDgjyr5ikHQMEpos3/SU3VEBS9vB
Rb3FZb8FK4Hi2Yp+l9Xp60rG+T8qYG3rdhnzIHj+A4gF4HN6XWX/XGXyKTkPrUcfqvIHO1Kbl+RP
2e6lEgsI5NUCebdib47kx5zaNzY028jR1HaG9sg2aUmOKoN2WUpa6kVjDTSQvTpjInO1wF+tG/0l
0z2Ugu0MzA9t00QLbm1SgEzx0c6UQRc7ItRUganp4Q+FUIUNxWhXVkElIun1WLQFYz8Tu0kvkZIm
WV8ZuEplhPI1hh3oRbvkmnqMbh4uRcogTh5p1iXFVb/y52sJPZ72v572wNKXHR2ELiDPoiNz9xOU
+Wks+67NbzBe9V5P213blq6AN4T4iTEA5acE9rObf+9YdEQ1ycPvKVGhOCe/NFLD8wx08sCOm3A3
LBYGyHl9wnZv92YYpszqkQ0zVlAKQLFUQAOmJ4wuydnU/p2t6WHYJHaxUDzrqkxAiWGzWkQgLetk
sYd11prpQC2NRKgvPKisWzLZWe90aJa2Zp0qe26UtNCxSTfZYk3bxxAOXmWkEU25Bv8SRtT870jx
v3D9v8W/+ZDXfvNw0/jk/ZHfZQowEVVQcXRugW38tVnu56Ld3ghKT2TVzJNZSDMGLklCHIo+wa4b
rE1QUHcj28iZgutWBh6JlRalW0TC9yhBaFMkuZnPsCb0wjK6+v/tsvHKv8ZIsCcquIdzmGZpWbUl
D+gk/iEvytHEYkTsz5oWuKhT9zdh+bcr+QERWxfAimh8leoXybPPmvX1g03jPunsXeC9FmF+wxYw
+AQgHW65BNjbbzqv/+/1g11BbHVqSLsXJf43A3QH/tHU5tCur3yGO351B86vPF3xx5IDPFegxg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A4434E876FB40"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
content-md5: Y8wrWx+rmoFQdZpjdqBmVg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d8f61678-8cd5-4b6e-ab42-188909e7b270
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-182482dc-0878-98ac-ae35-5af80ddb1f18/test-blob-0ddd57f5-0e86-1fff-9a84-b15e0538ff49?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: f80849b0-8270-6401-d471-68db181e47d4
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A4434E876FB40"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-lease-id: f80849b0-8270-6401-d471-68db181e47d4
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ab187004-c382-4de4-a874-9516a91529b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-182482dc-0878-98ac-ae35-5af80ddb1f18/test-blob-0ddd57f5-0e86-1fff-9a84-b15e0538ff49?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:02 GMT
x-ms-lease-action: release
x-ms-lease-id: f80849b0-8270-6401-d471-68db181e47d4
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
x-ms-request-id: 9a58239c-c787-4884-9bb3-741575565f2d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:02 GMT
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

## Interaction 9: DELETE /devstoreaccount1/test-container-182482dc-0878-98ac-ae35-5af80ddb1f18?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
x-ms-request-id: ea00fcba-1d2a-4380-813c-55a704e4c28d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-f731bbe1-41f4-68ed-e8a1-463be103c17a?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F01B8A99273750"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f3757bd-dc97-4eaf-8b5c-fa2a8afb7871
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-f731bbe1-41f4-68ed-e8a1-463be103c17a/test-blob-65202034-84a6-b916-7d11-325c466144d2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gL0igSWp0W9bnw/OO8aC0a/tpvf+4S5cpHh54w6RIYdcc7ok4EBUi0+wCQZ0R323j2GsWbpM056P
xdytL+5gyn2IcsgLXfBvmBuoTdgn6F36wlOt5MjMD58blRpkp1thUD+I7NW1qzFxPcCepIbGZ91/
smyas+a1u2Io8MjVCvG/R/2YnvyIRRciPKYILWsZVC095fTvxp1Z0zByjbpomzPO3l2JLcjg921V
d3Y/rI33DpubmCX90IBfP8vLFrhcuaBzOU8NkCZkXO2Gmk4mGSajen4fzQMN0A7cKe39FeG0+L7W
zHM+6X10Njs3dzYxOSakKJs5PeydZWhBMWc4ZkcM0aGQUEyzZJABqpbH1VnXq/DHWexFervROGYK
/bgWO9D0KqWVoOjZ8MQLOJJW1ZAOaYV2cQ1bx1flvxfmqGfX6m7G06q0QQoH7WgoOkIpemPW+5My
n8rDmGNOsOHR80hcM04kkAHlWih7boSkMo0VvES0EKzUpEqkAzpHZpEoNvkgywbzBOph8KFqtjBF
HmXVOPSdHeObiI4DgI3GnvOXUziKhGeGIbdZUh8Lae0ZXuTVcS2dixgWhEN38IRdmlKt02P4u5r+
Thc8Q8rEkB6h6SKo8SzF+sgfdP8jDzAz/LjNXZWKIaJK1iIVYEdOUvQl1gdhtagl6Nmb2Eaa2z/n
CUcS9jKIFsd/XhsKsJmA0SIK/jgp0UcPp3W87klcr/viLlcAPFvBnL8/4laMGzg/Gwckj9wHvjcA
Ak+9zCh+I64gJ4FCf5XHSWJ56e7wg4w9fNNCNyAe23AfADkMBM+Xwb+obPS2/ZxxXUZ6jdRJEH/D
gFBVPOuOAksRI35bukWT4SgvRxaYhn420NrZo02b1vC6SYN+QYTTGmmopdkdFqIB56ysGchoKvnS
HmwRtF79dU2OoXHBFJ+jWy2s7+GkGbo32Lyh77wnUR6KrCMYwmULqi+Mj3QwQNIMCL6buzoXLQWy
2dyiXIaQZk9TNmh8i5jHoUWyGIpFB5fpleb+jJbjcn8dZuiIaU6o+ygk3Qlqj30l0xr1ZRV7bNJE
uMagktm5cMPpXiSvPzj3CRxhICmNfgZp2Ll77Q1povkWRLCHCGlOa2xGgTBYdZTh/lv4GUuotjrA
N7ogPYK2f7sqmfuHbwGzErW9R/3VEGMlme+xcImubY12xtGuLi3qkAJ0LduZWo5ZRQaW62886yZX
+6OSBA4yfCttEakwBOSH0rf7YOOHiz9hVyuCF4IdOduqVzKKV4vzQrCwK0jlKUEhDxi4QYpD0G9j
Mazjr2WpUNfNhayy/XorBx0y1mD3ey7pYQhpZfhQZ4fCJibfEJNLBtpwF6OVbxKejDltEPkPbA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2539297F0EB0840"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
content-md5: zuGfOKkzxytFGzGKkRNIfg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fe28efc1-0c94-41cf-be43-bf92d62d747e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-f731bbe1-41f4-68ed-e8a1-463be103c17a/test-blob-65202034-84a6-b916-7d11-325c466144d2?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 4df97eb5-405d-dfeb-7d1e-24efd6544cf7
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2539297F0EB0840"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-lease-id: 4df97eb5-405d-dfeb-7d1e-24efd6544cf7
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eea8744d-cba1-4428-825e-efd5e22efda2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-f731bbe1-41f4-68ed-e8a1-463be103c17a/test-blob-65202034-84a6-b916-7d11-325c466144d2?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-lease-action: release
x-ms-lease-id: 4df97eb5-405d-dfeb-7d1e-24efd6544cf7
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
x-ms-request-id: 24fe96d2-ce1b-4ac4-b113-9021b1c2d790
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:02 GMT
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

## Interaction 14: DELETE /devstoreaccount1/test-container-f731bbe1-41f4-68ed-e8a1-463be103c17a?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a3b9f623-9fcf-479c-b6a5-eab680b70aec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-85d0e78a-6486-548a-f2f5-cbd8bee3568e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x208ABC85B61A2A0"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 603004e1-2ca6-48fc-94db-4cf79ae330e0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-85d0e78a-6486-548a-f2f5-cbd8bee3568e/test-blob-6170b9b3-4516-c5ee-ef90-9a85707f3b49

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
QELiKSiJ5lHzpVtndRIhmseVOxzk6+FF+AuV9ckF43K6gZh7ACxmKtMebXDphlDdb/+92kQeZFVg
nTAd8/GH7sHprfN6pZmaLxBJxX1wW3K6uIbJRwgumx1DG2P7STfiln+vANlcY8lmI6sz1Z7Y8EG+
Yjpqvaa4uxHWNoo1nubZZy/9wVuYXlW8YyRd+sZ+aioiPeb8d9jZ9kXHhSw+MITFWW1v2y/lJQPl
rlqCW8BKWMtgE2H/3e9WI8oW0NgofTOfmKFYDo/6PBfiFsh+V5uFfC1g3hwjxXt9Gbdlz1UqvTAn
4sIe8kk8ZdZJHMcn18wvkVOryJ4WfNMl2/XYlW3CuFmXV3TYZorkJHlF2aizVkHqNT4Bf/WREWXv
+BZTY89ph2Ruj4BYVirJxqMl0KMqcoS07l8uwThjBkYP6W1zkcGp3FFERcfBkt8TN7lRbEDBxYaS
n3RvOsYsCok5SWy8VTXifPRS5iy88lyAG4l+EpkFTSTn4fJMOaGLFzo+iElzVuKEb+9Mb95a1qwY
7x88rfjvM/xI1XNDlkJSxs7xfWoTDMSm+qOpuN1FjAtFM0mBTmlCT1RNKoBuQdit+qkQaFhCBeJa
lrNURXoeAkho/WL50Hdkri4WxuJEN7jK/L4zNSSzAi1mJ7i27QrZLig3BkN2tCkxq7kpLD8AFl77
iki8680ktfs0kqm+rsEkPZi5DDF0VEiVAYlqidbuZRBaumPBHUJaE1BIQSF/c/34Be+nRwoshjb/
JulDuSslRiyZZPNdYh9VXvngLBImFo6McoPnRh4GLTQtwvZZF1kkI/v15g4JmqPPUugRTFkj2A9a
t0eoPf8Nkza/MKAp/EefuwkXMTB/g9fgF/Q29eHaCenm/mASfOX751PYSWoCplagcZBQDKff2zNv
xyYL151U5Se3Qv3njD4jG0ndpzls3XGelYNQifxBByMso7W/8BC1g2RDS2NYuOVRLPBeAjT6Aum0
bEEaBFsqdTvau+mJZCs4JyPVKZINRtyd/lwM4gTuMqDLCoPPmn8JGdUoff37yMjEJtoQJNlXpiZk
fAX+HZM264hIvlqnaI2kyxC85cjfojaUR7wp3g3Hc2Ndax15CvtC8ZF0swpuHb1Na1nIm8FdhNrO
adbWDQ17gUr2SvxvKsAUevM3au4sJir/3HK0/tiiAOZCqqElbOSE+TG/d9PA3UGYtCHOJRrrokKr
1zGax4JxVEkWLX8f7g4Ps3G8bK5XPv4xHEq309rMVgheeZWy6TKvTiOJqrDBeMUTvnKpLjaTVJgy
aao4uoBvStZ3wXR4XMk/DR6LzZROb6OEpBRoIijRyiX8gICHdpOjGWDaSrdQmmKoaiEYCIYD4w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21B9E32DC609D00"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
content-md5: qDuDATAo31Q0EWoB44bn1Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0bfb8e5-a5af-4089-bc4d-b36415797c09
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-85d0e78a-6486-548a-f2f5-cbd8bee3568e/test-blob-6170b9b3-4516-c5ee-ef90-9a85707f3b49

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
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21B9E32DC609D00"
content-md5: qDuDATAo31Q0EWoB44bn1Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ea39d2d-5865-4b21-8531-fc262b175145
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:02 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-85d0e78a-6486-548a-f2f5-cbd8bee3568e/test-blob-6170b9b3-4516-c5ee-ef90-9a85707f3b49?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 15b307f9-076b-ae27-a5f6-4f7cdb49b796
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21B9E32DC609D00"
last-modified: Thu, 12 Nov 2026 00:47:02 GMT
x-ms-lease-id: 15b307f9-076b-ae27-a5f6-4f7cdb49b796
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 29033def-2fc3-4a16-9e14-b632883c38b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-85d0e78a-6486-548a-f2f5-cbd8bee3568e/test-blob-6170b9b3-4516-c5ee-ef90-9a85707f3b49?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x21B9E32DC609D00"
x-ms-lease-action: release
x-ms-lease-id: 15b307f9-076b-ae27-a5f6-4f7cdb49b796
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
x-ms-request-id: f705d7b0-9289-4faf-b95d-e83d5840d41b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:02 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-85d0e78a-6486-548a-f2f5-cbd8bee3568e?restype=container

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
x-ms-request-id: c60427a1-190d-4f4b-aa7a-b41f3b9d3995
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:02 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

