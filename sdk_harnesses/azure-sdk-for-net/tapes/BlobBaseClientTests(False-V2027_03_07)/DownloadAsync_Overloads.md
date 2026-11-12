## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d25660bf-1543-0ecd-b325-8e886c268895?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_Overloads
now: 2026-11-12T00:46:39.9545711+00:00

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
etag: "0x217795F57289440"
last-modified: Thu, 12 Nov 2026 00:46:39 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bd883371-b1c8-49d4-a3ef-35ddd83a90cd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:39 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d25660bf-1543-0ecd-b325-8e886c268895/test-blob-2cbeeefc-300d-fe7f-be5e-39acfc2e0352

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
4FoEnXF6BwHASLIOHQjntZaeHQUhlyV6Z6IkxfkM+E0CjAlgplmeRFlUEfpjvvGqPtnyzQiDdEk0
ijbPVUEHtE9kDJD/hg49ANmszIUrFqixeocgGipFfxi/Kxwjzu8YTV2q/7JgqrfKtc0v1qfDCXON
Htq555olH414P1vxGjHpk38ngBf2UM/QVWRdFahw/CGplbAUXmXDhd8l6Gtc2ZubRUMonIlcl80L
6ZE1xwnkB0M5SISA1DUZZPo30GdkdHzJwdBlSGCXTf3iCXXUjr3WQOAnIpAWG3ANDjeOJMZmpnUU
bAY5f7/jofuGncu/RdY9YJCHPVHssqZfVzooCSg2fGP/vyG3ncAhRICUj32lTslhUcM232kjKLlf
2SiFu5jTTyFov4W0hcPQZfjRVyIpuglwxrdkAJ353JZoWMOYnInnwUBcPY5ErcwAZnlwUdGXNh8f
FPXgbk+DbuPuSy0AN8lv6pXizHx6LBjrZJokiYrF0SGjeIiUBlPx2M6qVWKe/y6wAGc8tGmipOjc
9Am0X+VYKXoLXb9B2+NB8fSuz9a2TWRsc4gjiBy4ANSftxFJPHnpUiznkqJvbySE+sN19NQRJqel
SOtcNaBdU1zqoSTR+LV6xX2pzrrC/ARkno5ZQwv/jZFqpPONjRyMiT9GhM4AsgEO+i9WaFft4kvn
+JYRBBBQ6hOTZ1TB7DdgHEV7fHg2Y+yMS0jcqSU5fMGnppSGeoUu9Zm6bEutTA339ksScmbTsJSq
hbnHdEHuWeqSGkWi2qLATIbfe/ah3v465LLZJwpa1PYA3PXLZoBXzBNgGjLHVBypUSbf8zWdCKa6
jY+PFDHgN0VPov2s9OUGiK7jQcTMcpCWL9Xke+DAY9NOENnxyLjhf+Lsd7Ie/V1A2WuGusfi7hr/
+ORc/Lxljz8qXuQLFL/2AsHh3/veeDJ4o6F0OqgLbCG/8c/ThYMlh+hy8554NcSsj7gGAA8fIX+y
41gb8FSWHvHCSyPwI3w+u1gSa4ST/27cyKvwBWsSoNBPIKEqCpaU3NWttumhu2s7yEW2DLb7HuTq
PiippRmGsKtSoALbE7DCfY6v5kmEOww/tTwlW5MaVAK9QMtt6ze7JgY+TxtpX7WU9I8nTDebZQMb
ae/cYFQXOEwAHtLkVJJX88BCRuvw1VaHkWYE8gfKItrIUYFH38WxJhfPaUHir6D8z1l3WB8XKpOZ
VM/tE0VENfz3HAIREBP6kB/UIWwVpeHGCCKuUsm7sCbtrYr2xBPSizNF6pOd679Ffcf/QwknhK/u
JgsileMyO2vbJGKIBMwMApY50LpNKRxjadUCvG0dxinbB50Ir/VQEq4nwcZdvHn78kBz7bT0oA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C24A15C3CA6DE0"
last-modified: Thu, 12 Nov 2026 00:46:39 GMT
content-md5: +a+Djcu2YXCnDD5cChJEag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a719047e-ee83-458a-a159-90b9b44f5fb6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:39 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-d25660bf-1543-0ecd-b325-8e886c268895/test-blob-2cbeeefc-300d-fe7f-be5e-39acfc2e0352

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:39 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:39 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1C24A15C3CA6DE0"
content-md5: +a+Djcu2YXCnDD5cChJEag==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d366e507-674f-4f40-8e80-fdf3d4ee7165
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:40 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: +a+Djcu2YXCnDD5cChJEag==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
4FoEnXF6BwHASLIOHQjntZaeHQUhlyV6Z6IkxfkM+E0CjAlgplmeRFlUEfpjvvGqPtnyzQiDdEk0
ijbPVUEHtE9kDJD/hg49ANmszIUrFqixeocgGipFfxi/Kxwjzu8YTV2q/7JgqrfKtc0v1qfDCXON
Htq555olH414P1vxGjHpk38ngBf2UM/QVWRdFahw/CGplbAUXmXDhd8l6Gtc2ZubRUMonIlcl80L
6ZE1xwnkB0M5SISA1DUZZPo30GdkdHzJwdBlSGCXTf3iCXXUjr3WQOAnIpAWG3ANDjeOJMZmpnUU
bAY5f7/jofuGncu/RdY9YJCHPVHssqZfVzooCSg2fGP/vyG3ncAhRICUj32lTslhUcM232kjKLlf
2SiFu5jTTyFov4W0hcPQZfjRVyIpuglwxrdkAJ353JZoWMOYnInnwUBcPY5ErcwAZnlwUdGXNh8f
FPXgbk+DbuPuSy0AN8lv6pXizHx6LBjrZJokiYrF0SGjeIiUBlPx2M6qVWKe/y6wAGc8tGmipOjc
9Am0X+VYKXoLXb9B2+NB8fSuz9a2TWRsc4gjiBy4ANSftxFJPHnpUiznkqJvbySE+sN19NQRJqel
SOtcNaBdU1zqoSTR+LV6xX2pzrrC/ARkno5ZQwv/jZFqpPONjRyMiT9GhM4AsgEO+i9WaFft4kvn
+JYRBBBQ6hOTZ1TB7DdgHEV7fHg2Y+yMS0jcqSU5fMGnppSGeoUu9Zm6bEutTA339ksScmbTsJSq
hbnHdEHuWeqSGkWi2qLATIbfe/ah3v465LLZJwpa1PYA3PXLZoBXzBNgGjLHVBypUSbf8zWdCKa6
jY+PFDHgN0VPov2s9OUGiK7jQcTMcpCWL9Xke+DAY9NOENnxyLjhf+Lsd7Ie/V1A2WuGusfi7hr/
+ORc/Lxljz8qXuQLFL/2AsHh3/veeDJ4o6F0OqgLbCG/8c/ThYMlh+hy8554NcSsj7gGAA8fIX+y
41gb8FSWHvHCSyPwI3w+u1gSa4ST/27cyKvwBWsSoNBPIKEqCpaU3NWttumhu2s7yEW2DLb7HuTq
PiippRmGsKtSoALbE7DCfY6v5kmEOww/tTwlW5MaVAK9QMtt6ze7JgY+TxtpX7WU9I8nTDebZQMb
ae/cYFQXOEwAHtLkVJJX88BCRuvw1VaHkWYE8gfKItrIUYFH38WxJhfPaUHir6D8z1l3WB8XKpOZ
VM/tE0VENfz3HAIREBP6kB/UIWwVpeHGCCKuUsm7sCbtrYr2xBPSizNF6pOd679Ffcf/QwknhK/u
JgsileMyO2vbJGKIBMwMApY50LpNKRxjadUCvG0dxinbB50Ir/VQEq4nwcZdvHn78kBz7bT0oA==
```

## Interaction 3: GET /devstoreaccount1/test-container-d25660bf-1543-0ecd-b325-8e886c268895/test-blob-2cbeeefc-300d-fe7f-be5e-39acfc2e0352

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:46:39 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:39 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1C24A15C3CA6DE0"
content-md5: +a+Djcu2YXCnDD5cChJEag==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e82931de-d5bd-436a-8d86-ee31f7ca3749
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:40 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: +a+Djcu2YXCnDD5cChJEag==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
4FoEnXF6BwHASLIOHQjntZaeHQUhlyV6Z6IkxfkM+E0CjAlgplmeRFlUEfpjvvGqPtnyzQiDdEk0
ijbPVUEHtE9kDJD/hg49ANmszIUrFqixeocgGipFfxi/Kxwjzu8YTV2q/7JgqrfKtc0v1qfDCXON
Htq555olH414P1vxGjHpk38ngBf2UM/QVWRdFahw/CGplbAUXmXDhd8l6Gtc2ZubRUMonIlcl80L
6ZE1xwnkB0M5SISA1DUZZPo30GdkdHzJwdBlSGCXTf3iCXXUjr3WQOAnIpAWG3ANDjeOJMZmpnUU
bAY5f7/jofuGncu/RdY9YJCHPVHssqZfVzooCSg2fGP/vyG3ncAhRICUj32lTslhUcM232kjKLlf
2SiFu5jTTyFov4W0hcPQZfjRVyIpuglwxrdkAJ353JZoWMOYnInnwUBcPY5ErcwAZnlwUdGXNh8f
FPXgbk+DbuPuSy0AN8lv6pXizHx6LBjrZJokiYrF0SGjeIiUBlPx2M6qVWKe/y6wAGc8tGmipOjc
9Am0X+VYKXoLXb9B2+NB8fSuz9a2TWRsc4gjiBy4ANSftxFJPHnpUiznkqJvbySE+sN19NQRJqel
SOtcNaBdU1zqoSTR+LV6xX2pzrrC/ARkno5ZQwv/jZFqpPONjRyMiT9GhM4AsgEO+i9WaFft4kvn
+JYRBBBQ6hOTZ1TB7DdgHEV7fHg2Y+yMS0jcqSU5fMGnppSGeoUu9Zm6bEutTA339ksScmbTsJSq
hbnHdEHuWeqSGkWi2qLATIbfe/ah3v465LLZJwpa1PYA3PXLZoBXzBNgGjLHVBypUSbf8zWdCKa6
jY+PFDHgN0VPov2s9OUGiK7jQcTMcpCWL9Xke+DAY9NOENnxyLjhf+Lsd7Ie/V1A2WuGusfi7hr/
+ORc/Lxljz8qXuQLFL/2AsHh3/veeDJ4o6F0OqgLbCG/8c/ThYMlh+hy8554NcSsj7gGAA8fIX+y
41gb8FSWHvHCSyPwI3w+u1gSa4ST/27cyKvwBWsSoNBPIKEqCpaU3NWttumhu2s7yEW2DLb7HuTq
PiippRmGsKtSoALbE7DCfY6v5kmEOww/tTwlW5MaVAK9QMtt6ze7JgY+TxtpX7WU9I8nTDebZQMb
ae/cYFQXOEwAHtLkVJJX88BCRuvw1VaHkWYE8gfKItrIUYFH38WxJhfPaUHir6D8z1l3WB8XKpOZ
VM/tE0VENfz3HAIREBP6kB/UIWwVpeHGCCKuUsm7sCbtrYr2xBPSizNF6pOd679Ffcf/QwknhK/u
JgsileMyO2vbJGKIBMwMApY50LpNKRxjadUCvG0dxinbB50Ir/VQEq4nwcZdvHn78kBz7bT0oA==
```

## Interaction 4: GET /devstoreaccount1/test-container-d25660bf-1543-0ecd-b325-8e886c268895/test-blob-2cbeeefc-300d-fe7f-be5e-39acfc2e0352

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:46:39 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:39 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1C24A15C3CA6DE0"
content-md5: +a+Djcu2YXCnDD5cChJEag==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8e38a064-419d-4f76-b9c2-5c968071696d
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:40 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: +a+Djcu2YXCnDD5cChJEag==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
4FoEnXF6BwHASLIOHQjntZaeHQUhlyV6Z6IkxfkM+E0CjAlgplmeRFlUEfpjvvGqPtnyzQiDdEk0
ijbPVUEHtE9kDJD/hg49ANmszIUrFqixeocgGipFfxi/Kxwjzu8YTV2q/7JgqrfKtc0v1qfDCXON
Htq555olH414P1vxGjHpk38ngBf2UM/QVWRdFahw/CGplbAUXmXDhd8l6Gtc2ZubRUMonIlcl80L
6ZE1xwnkB0M5SISA1DUZZPo30GdkdHzJwdBlSGCXTf3iCXXUjr3WQOAnIpAWG3ANDjeOJMZmpnUU
bAY5f7/jofuGncu/RdY9YJCHPVHssqZfVzooCSg2fGP/vyG3ncAhRICUj32lTslhUcM232kjKLlf
2SiFu5jTTyFov4W0hcPQZfjRVyIpuglwxrdkAJ353JZoWMOYnInnwUBcPY5ErcwAZnlwUdGXNh8f
FPXgbk+DbuPuSy0AN8lv6pXizHx6LBjrZJokiYrF0SGjeIiUBlPx2M6qVWKe/y6wAGc8tGmipOjc
9Am0X+VYKXoLXb9B2+NB8fSuz9a2TWRsc4gjiBy4ANSftxFJPHnpUiznkqJvbySE+sN19NQRJqel
SOtcNaBdU1zqoSTR+LV6xX2pzrrC/ARkno5ZQwv/jZFqpPONjRyMiT9GhM4AsgEO+i9WaFft4kvn
+JYRBBBQ6hOTZ1TB7DdgHEV7fHg2Y+yMS0jcqSU5fMGnppSGeoUu9Zm6bEutTA339ksScmbTsJSq
hbnHdEHuWeqSGkWi2qLATIbfe/ah3v465LLZJwpa1PYA3PXLZoBXzBNgGjLHVBypUSbf8zWdCKa6
jY+PFDHgN0VPov2s9OUGiK7jQcTMcpCWL9Xke+DAY9NOENnxyLjhf+Lsd7Ie/V1A2WuGusfi7hr/
+ORc/Lxljz8qXuQLFL/2AsHh3/veeDJ4o6F0OqgLbCG/8c/ThYMlh+hy8554NcSsj7gGAA8fIX+y
41gb8FSWHvHCSyPwI3w+u1gSa4ST/27cyKvwBWsSoNBPIKEqCpaU3NWttumhu2s7yEW2DLb7HuTq
PiippRmGsKtSoALbE7DCfY6v5kmEOww/tTwlW5MaVAK9QMtt6ze7JgY+TxtpX7WU9I8nTDebZQMb
ae/cYFQXOEwAHtLkVJJX88BCRuvw1VaHkWYE8gfKItrIUYFH38WxJhfPaUHir6D8z1l3WB8XKpOZ
VM/tE0VENfz3HAIREBP6kB/UIWwVpeHGCCKuUsm7sCbtrYr2xBPSizNF6pOd679Ffcf/QwknhK/u
JgsileMyO2vbJGKIBMwMApY50LpNKRxjadUCvG0dxinbB50Ir/VQEq4nwcZdvHn78kBz7bT0oA==
```

## Interaction 5: DELETE /devstoreaccount1/test-container-d25660bf-1543-0ecd-b325-8e886c268895?restype=container

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
x-ms-request-id: 93c36c8b-b6c7-4f41-93f2-dcc58d3a8dc2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

