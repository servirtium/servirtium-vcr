## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_StartFrom
now: 2026-11-12T00:45:05.2150183+00:00

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
etag: "0x1D2C68733D79890"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bb8a1700-844c-49c3-8e52-cac27ea5869d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6/foo

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
gMhVg5klu90bQ+2ylBrTvPY+c1OBMG8YN1Z4wjMbHx4mDEEBojMPijXTFlnNmpSPFhbpHdzmZU9Y
PExDrfmq/yPOi4fZ0hnDL+gdrRoWSp3C6KsdMgJBQKfxqGXnzN07KRY1/w4MtkP8Ju70yLg0QfKv
gMRNjc0hjEvg6Cm022IL4YME4UuOtjJnIAwTTXfvvGZzOEwY7ZxIE3LCK84aSEqL6eY0MGCmIMmS
5WzBDT/T8SvCQKMW8vPnvM3Zy4pkTdfBiGSRu4wGzReChQgvhwYz7jqiVwimdfbyTHSTzVQ+LpiU
/4XaQjaevHOMk2zrtzTHpdxQwfXPGhNtnm4Yc//CQ1dvmoeAWKwEBJuUGuGKBpQ/yyd37m2ixeRy
baTHhkhzyVAUex2tRk0wS71ZOgAx45fZ2afYSlXqzdWiDuoHPH1SIVGRdYt3kYXZR6KvSIrkQIoN
7q2hm376Kq5HCzhiKA4/BhmvoG0MYUci/gOyOoRLvc1g+k7QsYbSlkrcMIVNdh6TcEFwNKAcAIxl
f5x7SO8q/E1qAi7AblWT3AkjLzHB1IflHspC2ogtRPnCazLpV01bsjM443Tv0wHs3ViW+dFao6oU
lSkl5yHEPL40/gMiqYW8yH3+ifET9UvJVv0wlkooZ8eI1MEjNcoSc6a1u9X9yTPS2jFTXBm4AaDe
XJEjk6VzDJY7mtXDmJKy6xZLXTl2y4zKXrwZ1Qqtz9MgRdk57t8AQq8+wi9dDkKeoHEDbKNnaJAF
WDXpWTeMjcoColO4efw2SxuKNwhdbU96ejSZqmIvudxINJaqF+h4sTRkW2vv5id0zSGI3DCIqOvm
bt8C8uNn0ul2b0VmjDMzEobU+BHji5QMJdxAp92rwIuqxKgIdb9R/IiCeHbiDUHuVMmqs6/aAuNK
9s0GJisLyq65vMiLKp3Hg/yIYBIdKhebUlITAQ3c0MHEvn/xStVddq3IKFF5Yiks4zCzUaHRLcu1
a9TY+Mmh3esGxmwd1TgmK+pkVQHGIe8o5h3cKH8f85CzPN4BhH7kJktmcpy9Dg74jSW3bNjJ70nk
sBGsxbRs5tLbaplaJKdrgC61YK9Ta9cP5JtZaIe46UyUHdRsN2GX+ozK4aR0nWh9TOupE4+akUQ6
neEYEn5KI4BMxQfT/knNHmYjiIozmkYz3BubD9W9+ouPMpqAfucNf74jKNhgqk2i3PUodwi6BgOa
5TZirxSrjst7Q8yvTJ9+FQnMD3Ft0jHO+TLglIKD1SuW5Zmxq9CqeJkN5GaA849VqmL+7vaRLBIE
k7XhyvlI+G6gGGcGzGo5IZfXYO7LTQWiiuoghec1BLiGrRcayK2fxOz44NsoTt73xcxfucwkOQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E3D77E2574C1C0"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: M9jj4banYvnZnn7KrMyjVA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 120631ac-e811-4100-8e02-04fd7eb3b19d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gMhVg5klu90bQ+2ylBrTvPY+c1OBMG8YN1Z4wjMbHx4mDEEBojMPijXTFlnNmpSPFhbpHdzmZU9Y
PExDrfmq/yPOi4fZ0hnDL+gdrRoWSp3C6KsdMgJBQKfxqGXnzN07KRY1/w4MtkP8Ju70yLg0QfKv
gMRNjc0hjEvg6Cm022IL4YME4UuOtjJnIAwTTXfvvGZzOEwY7ZxIE3LCK84aSEqL6eY0MGCmIMmS
5WzBDT/T8SvCQKMW8vPnvM3Zy4pkTdfBiGSRu4wGzReChQgvhwYz7jqiVwimdfbyTHSTzVQ+LpiU
/4XaQjaevHOMk2zrtzTHpdxQwfXPGhNtnm4Yc//CQ1dvmoeAWKwEBJuUGuGKBpQ/yyd37m2ixeRy
baTHhkhzyVAUex2tRk0wS71ZOgAx45fZ2afYSlXqzdWiDuoHPH1SIVGRdYt3kYXZR6KvSIrkQIoN
7q2hm376Kq5HCzhiKA4/BhmvoG0MYUci/gOyOoRLvc1g+k7QsYbSlkrcMIVNdh6TcEFwNKAcAIxl
f5x7SO8q/E1qAi7AblWT3AkjLzHB1IflHspC2ogtRPnCazLpV01bsjM443Tv0wHs3ViW+dFao6oU
lSkl5yHEPL40/gMiqYW8yH3+ifET9UvJVv0wlkooZ8eI1MEjNcoSc6a1u9X9yTPS2jFTXBm4AaDe
XJEjk6VzDJY7mtXDmJKy6xZLXTl2y4zKXrwZ1Qqtz9MgRdk57t8AQq8+wi9dDkKeoHEDbKNnaJAF
WDXpWTeMjcoColO4efw2SxuKNwhdbU96ejSZqmIvudxINJaqF+h4sTRkW2vv5id0zSGI3DCIqOvm
bt8C8uNn0ul2b0VmjDMzEobU+BHji5QMJdxAp92rwIuqxKgIdb9R/IiCeHbiDUHuVMmqs6/aAuNK
9s0GJisLyq65vMiLKp3Hg/yIYBIdKhebUlITAQ3c0MHEvn/xStVddq3IKFF5Yiks4zCzUaHRLcu1
a9TY+Mmh3esGxmwd1TgmK+pkVQHGIe8o5h3cKH8f85CzPN4BhH7kJktmcpy9Dg74jSW3bNjJ70nk
sBGsxbRs5tLbaplaJKdrgC61YK9Ta9cP5JtZaIe46UyUHdRsN2GX+ozK4aR0nWh9TOupE4+akUQ6
neEYEn5KI4BMxQfT/knNHmYjiIozmkYz3BubD9W9+ouPMpqAfucNf74jKNhgqk2i3PUodwi6BgOa
5TZirxSrjst7Q8yvTJ9+FQnMD3Ft0jHO+TLglIKD1SuW5Zmxq9CqeJkN5GaA849VqmL+7vaRLBIE
k7XhyvlI+G6gGGcGzGo5IZfXYO7LTQWiiuoghec1BLiGrRcayK2fxOz44NsoTt73xcxfucwkOQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CAD6A42EEC5610"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: M9jj4banYvnZnn7KrMyjVA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 47420cc5-4112-41d6-8148-1f640ebfe5d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6/baz

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gMhVg5klu90bQ+2ylBrTvPY+c1OBMG8YN1Z4wjMbHx4mDEEBojMPijXTFlnNmpSPFhbpHdzmZU9Y
PExDrfmq/yPOi4fZ0hnDL+gdrRoWSp3C6KsdMgJBQKfxqGXnzN07KRY1/w4MtkP8Ju70yLg0QfKv
gMRNjc0hjEvg6Cm022IL4YME4UuOtjJnIAwTTXfvvGZzOEwY7ZxIE3LCK84aSEqL6eY0MGCmIMmS
5WzBDT/T8SvCQKMW8vPnvM3Zy4pkTdfBiGSRu4wGzReChQgvhwYz7jqiVwimdfbyTHSTzVQ+LpiU
/4XaQjaevHOMk2zrtzTHpdxQwfXPGhNtnm4Yc//CQ1dvmoeAWKwEBJuUGuGKBpQ/yyd37m2ixeRy
baTHhkhzyVAUex2tRk0wS71ZOgAx45fZ2afYSlXqzdWiDuoHPH1SIVGRdYt3kYXZR6KvSIrkQIoN
7q2hm376Kq5HCzhiKA4/BhmvoG0MYUci/gOyOoRLvc1g+k7QsYbSlkrcMIVNdh6TcEFwNKAcAIxl
f5x7SO8q/E1qAi7AblWT3AkjLzHB1IflHspC2ogtRPnCazLpV01bsjM443Tv0wHs3ViW+dFao6oU
lSkl5yHEPL40/gMiqYW8yH3+ifET9UvJVv0wlkooZ8eI1MEjNcoSc6a1u9X9yTPS2jFTXBm4AaDe
XJEjk6VzDJY7mtXDmJKy6xZLXTl2y4zKXrwZ1Qqtz9MgRdk57t8AQq8+wi9dDkKeoHEDbKNnaJAF
WDXpWTeMjcoColO4efw2SxuKNwhdbU96ejSZqmIvudxINJaqF+h4sTRkW2vv5id0zSGI3DCIqOvm
bt8C8uNn0ul2b0VmjDMzEobU+BHji5QMJdxAp92rwIuqxKgIdb9R/IiCeHbiDUHuVMmqs6/aAuNK
9s0GJisLyq65vMiLKp3Hg/yIYBIdKhebUlITAQ3c0MHEvn/xStVddq3IKFF5Yiks4zCzUaHRLcu1
a9TY+Mmh3esGxmwd1TgmK+pkVQHGIe8o5h3cKH8f85CzPN4BhH7kJktmcpy9Dg74jSW3bNjJ70nk
sBGsxbRs5tLbaplaJKdrgC61YK9Ta9cP5JtZaIe46UyUHdRsN2GX+ozK4aR0nWh9TOupE4+akUQ6
neEYEn5KI4BMxQfT/knNHmYjiIozmkYz3BubD9W9+ouPMpqAfucNf74jKNhgqk2i3PUodwi6BgOa
5TZirxSrjst7Q8yvTJ9+FQnMD3Ft0jHO+TLglIKD1SuW5Zmxq9CqeJkN5GaA849VqmL+7vaRLBIE
k7XhyvlI+G6gGGcGzGo5IZfXYO7LTQWiiuoghec1BLiGrRcayK2fxOz44NsoTt73xcxfucwkOQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E12BAB449EC4C0"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: M9jj4banYvnZnn7KrMyjVA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d4f5c5b-117f-4345-86c3-bee375b1220c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6/foo/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gMhVg5klu90bQ+2ylBrTvPY+c1OBMG8YN1Z4wjMbHx4mDEEBojMPijXTFlnNmpSPFhbpHdzmZU9Y
PExDrfmq/yPOi4fZ0hnDL+gdrRoWSp3C6KsdMgJBQKfxqGXnzN07KRY1/w4MtkP8Ju70yLg0QfKv
gMRNjc0hjEvg6Cm022IL4YME4UuOtjJnIAwTTXfvvGZzOEwY7ZxIE3LCK84aSEqL6eY0MGCmIMmS
5WzBDT/T8SvCQKMW8vPnvM3Zy4pkTdfBiGSRu4wGzReChQgvhwYz7jqiVwimdfbyTHSTzVQ+LpiU
/4XaQjaevHOMk2zrtzTHpdxQwfXPGhNtnm4Yc//CQ1dvmoeAWKwEBJuUGuGKBpQ/yyd37m2ixeRy
baTHhkhzyVAUex2tRk0wS71ZOgAx45fZ2afYSlXqzdWiDuoHPH1SIVGRdYt3kYXZR6KvSIrkQIoN
7q2hm376Kq5HCzhiKA4/BhmvoG0MYUci/gOyOoRLvc1g+k7QsYbSlkrcMIVNdh6TcEFwNKAcAIxl
f5x7SO8q/E1qAi7AblWT3AkjLzHB1IflHspC2ogtRPnCazLpV01bsjM443Tv0wHs3ViW+dFao6oU
lSkl5yHEPL40/gMiqYW8yH3+ifET9UvJVv0wlkooZ8eI1MEjNcoSc6a1u9X9yTPS2jFTXBm4AaDe
XJEjk6VzDJY7mtXDmJKy6xZLXTl2y4zKXrwZ1Qqtz9MgRdk57t8AQq8+wi9dDkKeoHEDbKNnaJAF
WDXpWTeMjcoColO4efw2SxuKNwhdbU96ejSZqmIvudxINJaqF+h4sTRkW2vv5id0zSGI3DCIqOvm
bt8C8uNn0ul2b0VmjDMzEobU+BHji5QMJdxAp92rwIuqxKgIdb9R/IiCeHbiDUHuVMmqs6/aAuNK
9s0GJisLyq65vMiLKp3Hg/yIYBIdKhebUlITAQ3c0MHEvn/xStVddq3IKFF5Yiks4zCzUaHRLcu1
a9TY+Mmh3esGxmwd1TgmK+pkVQHGIe8o5h3cKH8f85CzPN4BhH7kJktmcpy9Dg74jSW3bNjJ70nk
sBGsxbRs5tLbaplaJKdrgC61YK9Ta9cP5JtZaIe46UyUHdRsN2GX+ozK4aR0nWh9TOupE4+akUQ6
neEYEn5KI4BMxQfT/knNHmYjiIozmkYz3BubD9W9+ouPMpqAfucNf74jKNhgqk2i3PUodwi6BgOa
5TZirxSrjst7Q8yvTJ9+FQnMD3Ft0jHO+TLglIKD1SuW5Zmxq9CqeJkN5GaA849VqmL+7vaRLBIE
k7XhyvlI+G6gGGcGzGo5IZfXYO7LTQWiiuoghec1BLiGrRcayK2fxOz44NsoTt73xcxfucwkOQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23439DACEEFDB40"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: M9jj4banYvnZnn7KrMyjVA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae64e8f6-6499-46b0-a318-9975bbae17d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6/foo/bar

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
gMhVg5klu90bQ+2ylBrTvPY+c1OBMG8YN1Z4wjMbHx4mDEEBojMPijXTFlnNmpSPFhbpHdzmZU9Y
PExDrfmq/yPOi4fZ0hnDL+gdrRoWSp3C6KsdMgJBQKfxqGXnzN07KRY1/w4MtkP8Ju70yLg0QfKv
gMRNjc0hjEvg6Cm022IL4YME4UuOtjJnIAwTTXfvvGZzOEwY7ZxIE3LCK84aSEqL6eY0MGCmIMmS
5WzBDT/T8SvCQKMW8vPnvM3Zy4pkTdfBiGSRu4wGzReChQgvhwYz7jqiVwimdfbyTHSTzVQ+LpiU
/4XaQjaevHOMk2zrtzTHpdxQwfXPGhNtnm4Yc//CQ1dvmoeAWKwEBJuUGuGKBpQ/yyd37m2ixeRy
baTHhkhzyVAUex2tRk0wS71ZOgAx45fZ2afYSlXqzdWiDuoHPH1SIVGRdYt3kYXZR6KvSIrkQIoN
7q2hm376Kq5HCzhiKA4/BhmvoG0MYUci/gOyOoRLvc1g+k7QsYbSlkrcMIVNdh6TcEFwNKAcAIxl
f5x7SO8q/E1qAi7AblWT3AkjLzHB1IflHspC2ogtRPnCazLpV01bsjM443Tv0wHs3ViW+dFao6oU
lSkl5yHEPL40/gMiqYW8yH3+ifET9UvJVv0wlkooZ8eI1MEjNcoSc6a1u9X9yTPS2jFTXBm4AaDe
XJEjk6VzDJY7mtXDmJKy6xZLXTl2y4zKXrwZ1Qqtz9MgRdk57t8AQq8+wi9dDkKeoHEDbKNnaJAF
WDXpWTeMjcoColO4efw2SxuKNwhdbU96ejSZqmIvudxINJaqF+h4sTRkW2vv5id0zSGI3DCIqOvm
bt8C8uNn0ul2b0VmjDMzEobU+BHji5QMJdxAp92rwIuqxKgIdb9R/IiCeHbiDUHuVMmqs6/aAuNK
9s0GJisLyq65vMiLKp3Hg/yIYBIdKhebUlITAQ3c0MHEvn/xStVddq3IKFF5Yiks4zCzUaHRLcu1
a9TY+Mmh3esGxmwd1TgmK+pkVQHGIe8o5h3cKH8f85CzPN4BhH7kJktmcpy9Dg74jSW3bNjJ70nk
sBGsxbRs5tLbaplaJKdrgC61YK9Ta9cP5JtZaIe46UyUHdRsN2GX+ozK4aR0nWh9TOupE4+akUQ6
neEYEn5KI4BMxQfT/knNHmYjiIozmkYz3BubD9W9+ouPMpqAfucNf74jKNhgqk2i3PUodwi6BgOa
5TZirxSrjst7Q8yvTJ9+FQnMD3Ft0jHO+TLglIKD1SuW5Zmxq9CqeJkN5GaA849VqmL+7vaRLBIE
k7XhyvlI+G6gGGcGzGo5IZfXYO7LTQWiiuoghec1BLiGrRcayK2fxOz44NsoTt73xcxfucwkOQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20B306DC3B27000"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: M9jj4banYvnZnn7KrMyjVA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 352afb64-1f6d-46e8-85bb-a5223a7f4d29
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6/baz/foo

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
gMhVg5klu90bQ+2ylBrTvPY+c1OBMG8YN1Z4wjMbHx4mDEEBojMPijXTFlnNmpSPFhbpHdzmZU9Y
PExDrfmq/yPOi4fZ0hnDL+gdrRoWSp3C6KsdMgJBQKfxqGXnzN07KRY1/w4MtkP8Ju70yLg0QfKv
gMRNjc0hjEvg6Cm022IL4YME4UuOtjJnIAwTTXfvvGZzOEwY7ZxIE3LCK84aSEqL6eY0MGCmIMmS
5WzBDT/T8SvCQKMW8vPnvM3Zy4pkTdfBiGSRu4wGzReChQgvhwYz7jqiVwimdfbyTHSTzVQ+LpiU
/4XaQjaevHOMk2zrtzTHpdxQwfXPGhNtnm4Yc//CQ1dvmoeAWKwEBJuUGuGKBpQ/yyd37m2ixeRy
baTHhkhzyVAUex2tRk0wS71ZOgAx45fZ2afYSlXqzdWiDuoHPH1SIVGRdYt3kYXZR6KvSIrkQIoN
7q2hm376Kq5HCzhiKA4/BhmvoG0MYUci/gOyOoRLvc1g+k7QsYbSlkrcMIVNdh6TcEFwNKAcAIxl
f5x7SO8q/E1qAi7AblWT3AkjLzHB1IflHspC2ogtRPnCazLpV01bsjM443Tv0wHs3ViW+dFao6oU
lSkl5yHEPL40/gMiqYW8yH3+ifET9UvJVv0wlkooZ8eI1MEjNcoSc6a1u9X9yTPS2jFTXBm4AaDe
XJEjk6VzDJY7mtXDmJKy6xZLXTl2y4zKXrwZ1Qqtz9MgRdk57t8AQq8+wi9dDkKeoHEDbKNnaJAF
WDXpWTeMjcoColO4efw2SxuKNwhdbU96ejSZqmIvudxINJaqF+h4sTRkW2vv5id0zSGI3DCIqOvm
bt8C8uNn0ul2b0VmjDMzEobU+BHji5QMJdxAp92rwIuqxKgIdb9R/IiCeHbiDUHuVMmqs6/aAuNK
9s0GJisLyq65vMiLKp3Hg/yIYBIdKhebUlITAQ3c0MHEvn/xStVddq3IKFF5Yiks4zCzUaHRLcu1
a9TY+Mmh3esGxmwd1TgmK+pkVQHGIe8o5h3cKH8f85CzPN4BhH7kJktmcpy9Dg74jSW3bNjJ70nk
sBGsxbRs5tLbaplaJKdrgC61YK9Ta9cP5JtZaIe46UyUHdRsN2GX+ozK4aR0nWh9TOupE4+akUQ6
neEYEn5KI4BMxQfT/knNHmYjiIozmkYz3BubD9W9+ouPMpqAfucNf74jKNhgqk2i3PUodwi6BgOa
5TZirxSrjst7Q8yvTJ9+FQnMD3Ft0jHO+TLglIKD1SuW5Zmxq9CqeJkN5GaA849VqmL+7vaRLBIE
k7XhyvlI+G6gGGcGzGo5IZfXYO7LTQWiiuoghec1BLiGrRcayK2fxOz44NsoTt73xcxfucwkOQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2654EE980C35900"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: M9jj4banYvnZnn7KrMyjVA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aab20e1b-2474-4561-acd6-48d4d65ca588
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6/baz/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gMhVg5klu90bQ+2ylBrTvPY+c1OBMG8YN1Z4wjMbHx4mDEEBojMPijXTFlnNmpSPFhbpHdzmZU9Y
PExDrfmq/yPOi4fZ0hnDL+gdrRoWSp3C6KsdMgJBQKfxqGXnzN07KRY1/w4MtkP8Ju70yLg0QfKv
gMRNjc0hjEvg6Cm022IL4YME4UuOtjJnIAwTTXfvvGZzOEwY7ZxIE3LCK84aSEqL6eY0MGCmIMmS
5WzBDT/T8SvCQKMW8vPnvM3Zy4pkTdfBiGSRu4wGzReChQgvhwYz7jqiVwimdfbyTHSTzVQ+LpiU
/4XaQjaevHOMk2zrtzTHpdxQwfXPGhNtnm4Yc//CQ1dvmoeAWKwEBJuUGuGKBpQ/yyd37m2ixeRy
baTHhkhzyVAUex2tRk0wS71ZOgAx45fZ2afYSlXqzdWiDuoHPH1SIVGRdYt3kYXZR6KvSIrkQIoN
7q2hm376Kq5HCzhiKA4/BhmvoG0MYUci/gOyOoRLvc1g+k7QsYbSlkrcMIVNdh6TcEFwNKAcAIxl
f5x7SO8q/E1qAi7AblWT3AkjLzHB1IflHspC2ogtRPnCazLpV01bsjM443Tv0wHs3ViW+dFao6oU
lSkl5yHEPL40/gMiqYW8yH3+ifET9UvJVv0wlkooZ8eI1MEjNcoSc6a1u9X9yTPS2jFTXBm4AaDe
XJEjk6VzDJY7mtXDmJKy6xZLXTl2y4zKXrwZ1Qqtz9MgRdk57t8AQq8+wi9dDkKeoHEDbKNnaJAF
WDXpWTeMjcoColO4efw2SxuKNwhdbU96ejSZqmIvudxINJaqF+h4sTRkW2vv5id0zSGI3DCIqOvm
bt8C8uNn0ul2b0VmjDMzEobU+BHji5QMJdxAp92rwIuqxKgIdb9R/IiCeHbiDUHuVMmqs6/aAuNK
9s0GJisLyq65vMiLKp3Hg/yIYBIdKhebUlITAQ3c0MHEvn/xStVddq3IKFF5Yiks4zCzUaHRLcu1
a9TY+Mmh3esGxmwd1TgmK+pkVQHGIe8o5h3cKH8f85CzPN4BhH7kJktmcpy9Dg74jSW3bNjJ70nk
sBGsxbRs5tLbaplaJKdrgC61YK9Ta9cP5JtZaIe46UyUHdRsN2GX+ozK4aR0nWh9TOupE4+akUQ6
neEYEn5KI4BMxQfT/knNHmYjiIozmkYz3BubD9W9+ouPMpqAfucNf74jKNhgqk2i3PUodwi6BgOa
5TZirxSrjst7Q8yvTJ9+FQnMD3Ft0jHO+TLglIKD1SuW5Zmxq9CqeJkN5GaA849VqmL+7vaRLBIE
k7XhyvlI+G6gGGcGzGo5IZfXYO7LTQWiiuoghec1BLiGrRcayK2fxOz44NsoTt73xcxfucwkOQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22949473A0BAA80"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: M9jj4banYvnZnn7KrMyjVA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c2bfc5e5-2852-4c7c-8730-553c2a89db8c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6/baz/bar/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gMhVg5klu90bQ+2ylBrTvPY+c1OBMG8YN1Z4wjMbHx4mDEEBojMPijXTFlnNmpSPFhbpHdzmZU9Y
PExDrfmq/yPOi4fZ0hnDL+gdrRoWSp3C6KsdMgJBQKfxqGXnzN07KRY1/w4MtkP8Ju70yLg0QfKv
gMRNjc0hjEvg6Cm022IL4YME4UuOtjJnIAwTTXfvvGZzOEwY7ZxIE3LCK84aSEqL6eY0MGCmIMmS
5WzBDT/T8SvCQKMW8vPnvM3Zy4pkTdfBiGSRu4wGzReChQgvhwYz7jqiVwimdfbyTHSTzVQ+LpiU
/4XaQjaevHOMk2zrtzTHpdxQwfXPGhNtnm4Yc//CQ1dvmoeAWKwEBJuUGuGKBpQ/yyd37m2ixeRy
baTHhkhzyVAUex2tRk0wS71ZOgAx45fZ2afYSlXqzdWiDuoHPH1SIVGRdYt3kYXZR6KvSIrkQIoN
7q2hm376Kq5HCzhiKA4/BhmvoG0MYUci/gOyOoRLvc1g+k7QsYbSlkrcMIVNdh6TcEFwNKAcAIxl
f5x7SO8q/E1qAi7AblWT3AkjLzHB1IflHspC2ogtRPnCazLpV01bsjM443Tv0wHs3ViW+dFao6oU
lSkl5yHEPL40/gMiqYW8yH3+ifET9UvJVv0wlkooZ8eI1MEjNcoSc6a1u9X9yTPS2jFTXBm4AaDe
XJEjk6VzDJY7mtXDmJKy6xZLXTl2y4zKXrwZ1Qqtz9MgRdk57t8AQq8+wi9dDkKeoHEDbKNnaJAF
WDXpWTeMjcoColO4efw2SxuKNwhdbU96ejSZqmIvudxINJaqF+h4sTRkW2vv5id0zSGI3DCIqOvm
bt8C8uNn0ul2b0VmjDMzEobU+BHji5QMJdxAp92rwIuqxKgIdb9R/IiCeHbiDUHuVMmqs6/aAuNK
9s0GJisLyq65vMiLKp3Hg/yIYBIdKhebUlITAQ3c0MHEvn/xStVddq3IKFF5Yiks4zCzUaHRLcu1
a9TY+Mmh3esGxmwd1TgmK+pkVQHGIe8o5h3cKH8f85CzPN4BhH7kJktmcpy9Dg74jSW3bNjJ70nk
sBGsxbRs5tLbaplaJKdrgC61YK9Ta9cP5JtZaIe46UyUHdRsN2GX+ozK4aR0nWh9TOupE4+akUQ6
neEYEn5KI4BMxQfT/knNHmYjiIozmkYz3BubD9W9+ouPMpqAfucNf74jKNhgqk2i3PUodwi6BgOa
5TZirxSrjst7Q8yvTJ9+FQnMD3Ft0jHO+TLglIKD1SuW5Zmxq9CqeJkN5GaA849VqmL+7vaRLBIE
k7XhyvlI+G6gGGcGzGo5IZfXYO7LTQWiiuoghec1BLiGrRcayK2fxOz44NsoTt73xcxfucwkOQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2610CB60566FBA0"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: M9jj4banYvnZnn7KrMyjVA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dae69c2e-e2db-4032-9aa7-6be1ec4e1ba6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6/foo/foo?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CA17B1661A2B50"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35400ad8-d254-4428-b829-7b168f1729cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6?restype=container&comp=list&delimiter=%2F&startFrom=foo

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bad5c902-a4f1-44e1-9ffb-6c74b8b09fd6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:05 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:05 GMT</Last-Modified><Etag>0x1E3D77E2574C1C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>M9jj4banYvnZnn7KrMyjVA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:05 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-31b1f1b0-bb9c-284c-aae9-d3e05c4f39e6?restype=container

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
x-ms-request-id: 8c42f580-02cf-43d8-b1e6-56c5004fc01d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

