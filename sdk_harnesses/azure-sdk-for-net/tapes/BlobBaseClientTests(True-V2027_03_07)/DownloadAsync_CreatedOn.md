## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a11f6fec-7fd9-07e5-621b-30282c2032c8?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_CreatedOn
now: 2026-11-12T00:47:52.8901942+00:00

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
etag: "0x1CD85BD7DDEF0F0"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c1a1fe07-f569-4a50-b937-3624a1274d90
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a11f6fec-7fd9-07e5-621b-30282c2032c8/test-blob-0872fd74-9a65-99d7-356a-ecb663a144b5

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
u8AEIKMgxOvcp0xL+4W/1ydpMPF4wYgjZb/MvTWtRIcHiRk942A4zKo0xTEzmQvcXFkBwu9BT/k4
4brjVAe1LmLERHJsgfPGMWRGRPxW8My072DcrIGYxTkgBQKmVHijfpbOblSZcNplOpGL+wv84fHu
L2Sn2YLhLH84S3zxINzsosZmh4F3Gn6FdnHwDMouIyMQtyUT/KUU7ULVYCRedBq1n1hElllvdhTm
IWIQ8R+1CihY4Gi32KYgUpo/orlZJwJXOm1x6Y3JoUEQLdtCA/wiH1b8BZOy/caxI0O/MNRbjPlf
uLayQyGbjz8npqvL3k6dHYJjXSFvpT2mv8VJCXBttaDh4ktGb9w0YXVUi1ca5kX1IRNR9y/X8BN5
C4NcUYXOufEL6vsDV62mLvyrGhrli9l/U+hdG71xCfI3zWRY2A/whdFmD/xK8spmqsgyK9X4k3+q
3P2dcZ4zmeAJy4pJTlbsu5VJf3zcNWEd9nD1Pt0cPjnkrfwRUhMyM3YbQSc/HVxyRnBArxQDzaec
f3otPVsD7IxQZKBZ2miBFksFwfM63tkTgvht3I8l4N9VddOYBfUbGFSb77i8GGsHvpnI/QyzYqGh
GbtilRD9K4PABGWV6BBW6qmfn+4hV2mMZR31XePTohIy9+s6uIJEncQ0+xQFctWIchJjE8Oyf8FR
1TDyB86g7WJTY/AlHDImWgEq7FxUh/NIbOvQcI5Pf3cp6OJSUpb1lA2ysg/kY1XgPLnCh5Nl/E48
qpvjz33TA+N5+zNP1AhqNFdOotXkYwiV8DPVjfjkxOyUFaf6EsSQ3q4ra2cikGiwV1I7Flp5WEaS
Td9J/nbrlDdHu79gcCKSvsMmuPehcl/LJDalqK2RG7xgaMTlRt84QNYw2tWoUOYwqFiWU6BP8dt/
fto/ReyJtaAD/wddrXfk7XggcJeKItNPdf9V+8ccEXbpZscF+PrqpiU0pVDf0/vgsmUnLoBD9FsG
8NDsNLnY5+2Rc0ew3/R9NspyVn2DcKEDdUli9OP2pnFs/ggp/XJrXL1iTV+0MNJwqfe10J7dg4Au
6L5wdvMKmszVQ+DsUzhYB/rAICJBT0V28UrrQNbTjnqI+xSz++XKWLOT3uzyhFa/XcmkHWNd7Jl5
+YSoH1r2ArVmY1gkpAsU9chvrnBYhGz0LOIMLnAWKg57OgFhITlZnNw3iyD9m7m9kCib7j4oIHQY
tPJ36dNETzlKqGoJs9OOFRGTIflM9pEpT55IezvPUhmNSW1G4bMJ8jzns/JPs9xUDNgslf57zL5h
Tpk0/NT9elZQfGpmSDRdii+9ZEOe2pzC825jo70bEX2v5JMZ1fZn6Tib/jZy7sSkzgrPvmd6wg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26E48D5FE337360"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
content-md5: XH3WAGMfNOlhRt5Qmawxww==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84f8fc9b-8a61-496d-9a01-2eaebbdfa153
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-a11f6fec-7fd9-07e5-621b-30282c2032c8/test-blob-0872fd74-9a65-99d7-356a-ecb663a144b5

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
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:52 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x26E48D5FE337360"
content-md5: XH3WAGMfNOlhRt5Qmawxww==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0cfe0550-c55d-4b33-b189-d61c08a34e68
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: XH3WAGMfNOlhRt5Qmawxww==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
u8AEIKMgxOvcp0xL+4W/1ydpMPF4wYgjZb/MvTWtRIcHiRk942A4zKo0xTEzmQvcXFkBwu9BT/k4
4brjVAe1LmLERHJsgfPGMWRGRPxW8My072DcrIGYxTkgBQKmVHijfpbOblSZcNplOpGL+wv84fHu
L2Sn2YLhLH84S3zxINzsosZmh4F3Gn6FdnHwDMouIyMQtyUT/KUU7ULVYCRedBq1n1hElllvdhTm
IWIQ8R+1CihY4Gi32KYgUpo/orlZJwJXOm1x6Y3JoUEQLdtCA/wiH1b8BZOy/caxI0O/MNRbjPlf
uLayQyGbjz8npqvL3k6dHYJjXSFvpT2mv8VJCXBttaDh4ktGb9w0YXVUi1ca5kX1IRNR9y/X8BN5
C4NcUYXOufEL6vsDV62mLvyrGhrli9l/U+hdG71xCfI3zWRY2A/whdFmD/xK8spmqsgyK9X4k3+q
3P2dcZ4zmeAJy4pJTlbsu5VJf3zcNWEd9nD1Pt0cPjnkrfwRUhMyM3YbQSc/HVxyRnBArxQDzaec
f3otPVsD7IxQZKBZ2miBFksFwfM63tkTgvht3I8l4N9VddOYBfUbGFSb77i8GGsHvpnI/QyzYqGh
GbtilRD9K4PABGWV6BBW6qmfn+4hV2mMZR31XePTohIy9+s6uIJEncQ0+xQFctWIchJjE8Oyf8FR
1TDyB86g7WJTY/AlHDImWgEq7FxUh/NIbOvQcI5Pf3cp6OJSUpb1lA2ysg/kY1XgPLnCh5Nl/E48
qpvjz33TA+N5+zNP1AhqNFdOotXkYwiV8DPVjfjkxOyUFaf6EsSQ3q4ra2cikGiwV1I7Flp5WEaS
Td9J/nbrlDdHu79gcCKSvsMmuPehcl/LJDalqK2RG7xgaMTlRt84QNYw2tWoUOYwqFiWU6BP8dt/
fto/ReyJtaAD/wddrXfk7XggcJeKItNPdf9V+8ccEXbpZscF+PrqpiU0pVDf0/vgsmUnLoBD9FsG
8NDsNLnY5+2Rc0ew3/R9NspyVn2DcKEDdUli9OP2pnFs/ggp/XJrXL1iTV+0MNJwqfe10J7dg4Au
6L5wdvMKmszVQ+DsUzhYB/rAICJBT0V28UrrQNbTjnqI+xSz++XKWLOT3uzyhFa/XcmkHWNd7Jl5
+YSoH1r2ArVmY1gkpAsU9chvrnBYhGz0LOIMLnAWKg57OgFhITlZnNw3iyD9m7m9kCib7j4oIHQY
tPJ36dNETzlKqGoJs9OOFRGTIflM9pEpT55IezvPUhmNSW1G4bMJ8jzns/JPs9xUDNgslf57zL5h
Tpk0/NT9elZQfGpmSDRdii+9ZEOe2pzC825jo70bEX2v5JMZ1fZn6Tib/jZy7sSkzgrPvmd6wg==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-a11f6fec-7fd9-07e5-621b-30282c2032c8?restype=container

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
x-ms-request-id: 5165253f-b01d-46dd-b3ad-ac6c3f0483ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

