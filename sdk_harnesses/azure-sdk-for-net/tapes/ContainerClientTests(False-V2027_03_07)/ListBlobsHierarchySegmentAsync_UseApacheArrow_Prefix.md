## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_Prefix
now: 2026-11-12T00:44:00.0804657+00:00

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
etag: "0x1D2269588DFF580"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f44009ae-27e1-4d99-a7a5-60b6c00dff24
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4/foo

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
o/PFkJDZiI2oiDNSxUrROBM/IT3xNCn4ZlfuVPGXtgAInElz+TJmuUYXRyjs04E1ld04XxYc427J
zSo56zSbENIzSikBXj7h2Gf32u0BC5LWuL4UX1bp67naqSsILM4RezdVuYlYMzefV4auJQiByMKX
YzN2h7F7SV5wJ7QT2auZ5V61rFIIfYSHdAfQOsawWOFpcMmam/SG2nAq6AyCjH7aFT+qyxxvj+Wu
7hKpqw6Yv87TqWji/kpqL9Hi3ZV4BeiJ9SWHBYzF+uHk7Kzi3C5hkig9r+IV+Bb0QJtKjbFPNukp
H7boEbpBDa+H/hKdh1OjgEttOlYGdPwPksXxe2wwlLbDuL14eYFt+6EzjfoEVrhIpgxl4vuSI6q5
2X71UJJCV2lb2s+VKgfJ/z600uYBCjwMqNRgyrK7MJUSvp8DeKsP8DWRqXzpsnwFnOK83lDDuM5C
6Ke94o23oKk5g2tnxoeTpeGxcGG/I/VYWy3Q/lJETgbRwI8DUQ6o2gjSry8QndVaKThuEkdtgsWx
ZIdf5qFW9TVklgX3kFPTCJZY7XTGSL1YddUZ1ju/ZD7JUeyHSPNne7r6qwfPYpnlmwqxFJVR6xzJ
B3HLPR75pTLHLT5mS8Cj8XG5zJy2iBI8NDsxDlCpeGbPvUGCmz6bAAXVBzRafk9KDiIjlx6AE35e
jwjjyJfiHrXYl41+IVYyHsyW4YDe4rbs5/8theBHT6rDIww1uDhu8ul/gufBy+3L8HlR6TL9gK1S
9+CXtJnUkEfjuv1K/GWUKO6XXl/PKhsSYZRm9mZ4xaNe48FX1z5QqvKf3hDvgfMUvcFEZiFNgszE
hFIFbZrhavRa6xmkPFCvR7RtL0wKI+CgUjikNF+BEWH0klLrSzxYvnMblZbacIBwlB5t4FKAumFy
ZBthPDaV2Nm4r6r+w/x3FXHY741JxeK3NKBBFDEOc9jxeeYh9oI9hry8IsDWctAi9svhqMrTKJ84
qgeWVMSoqjvRDUoVVR7ummjQjaMh4MLPHh1mLMsNHVBH6Ex6pzL4E3iFBGSFDKCs8g1iApr7F8lF
xjWmQn1vxO/6zm3SdPM12Horm9xdShF9uTm+qxq1S9GCNOD9UdH6FUB1iz4z2n4ZLCog0Hvs6Hwj
KIhEsRnURIKbTz8SOIeoMIac577TSt+7pH7wlHpVlkxk2ShItmQmoEa7l4s+B/Ojd6D1UAC9UN6p
iQ2a5K8HRbnzrl9eYHoidUd3F7NUfJ2LTR3aYEVMpohKnyxWjLyXs1HSS1iTRBcl09q4RjkqVQ1w
D5aSLeVzpwjXE8FNy+mL4GNigjBE9wgFtI1rk2BPH0kf5nwlBIZrX6RQvDFW2AfwLWbVyNPcKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2356E4DF799A9C0"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: vzrXUNfv5fu2ptOMZg/9Ig==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 105ac71d-7eac-4aec-abe0-7a51a9eee8f0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4/bar

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
o/PFkJDZiI2oiDNSxUrROBM/IT3xNCn4ZlfuVPGXtgAInElz+TJmuUYXRyjs04E1ld04XxYc427J
zSo56zSbENIzSikBXj7h2Gf32u0BC5LWuL4UX1bp67naqSsILM4RezdVuYlYMzefV4auJQiByMKX
YzN2h7F7SV5wJ7QT2auZ5V61rFIIfYSHdAfQOsawWOFpcMmam/SG2nAq6AyCjH7aFT+qyxxvj+Wu
7hKpqw6Yv87TqWji/kpqL9Hi3ZV4BeiJ9SWHBYzF+uHk7Kzi3C5hkig9r+IV+Bb0QJtKjbFPNukp
H7boEbpBDa+H/hKdh1OjgEttOlYGdPwPksXxe2wwlLbDuL14eYFt+6EzjfoEVrhIpgxl4vuSI6q5
2X71UJJCV2lb2s+VKgfJ/z600uYBCjwMqNRgyrK7MJUSvp8DeKsP8DWRqXzpsnwFnOK83lDDuM5C
6Ke94o23oKk5g2tnxoeTpeGxcGG/I/VYWy3Q/lJETgbRwI8DUQ6o2gjSry8QndVaKThuEkdtgsWx
ZIdf5qFW9TVklgX3kFPTCJZY7XTGSL1YddUZ1ju/ZD7JUeyHSPNne7r6qwfPYpnlmwqxFJVR6xzJ
B3HLPR75pTLHLT5mS8Cj8XG5zJy2iBI8NDsxDlCpeGbPvUGCmz6bAAXVBzRafk9KDiIjlx6AE35e
jwjjyJfiHrXYl41+IVYyHsyW4YDe4rbs5/8theBHT6rDIww1uDhu8ul/gufBy+3L8HlR6TL9gK1S
9+CXtJnUkEfjuv1K/GWUKO6XXl/PKhsSYZRm9mZ4xaNe48FX1z5QqvKf3hDvgfMUvcFEZiFNgszE
hFIFbZrhavRa6xmkPFCvR7RtL0wKI+CgUjikNF+BEWH0klLrSzxYvnMblZbacIBwlB5t4FKAumFy
ZBthPDaV2Nm4r6r+w/x3FXHY741JxeK3NKBBFDEOc9jxeeYh9oI9hry8IsDWctAi9svhqMrTKJ84
qgeWVMSoqjvRDUoVVR7ummjQjaMh4MLPHh1mLMsNHVBH6Ex6pzL4E3iFBGSFDKCs8g1iApr7F8lF
xjWmQn1vxO/6zm3SdPM12Horm9xdShF9uTm+qxq1S9GCNOD9UdH6FUB1iz4z2n4ZLCog0Hvs6Hwj
KIhEsRnURIKbTz8SOIeoMIac577TSt+7pH7wlHpVlkxk2ShItmQmoEa7l4s+B/Ojd6D1UAC9UN6p
iQ2a5K8HRbnzrl9eYHoidUd3F7NUfJ2LTR3aYEVMpohKnyxWjLyXs1HSS1iTRBcl09q4RjkqVQ1w
D5aSLeVzpwjXE8FNy+mL4GNigjBE9wgFtI1rk2BPH0kf5nwlBIZrX6RQvDFW2AfwLWbVyNPcKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x228B4C1F5A6FA40"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: vzrXUNfv5fu2ptOMZg/9Ig==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 536bb339-d1c1-44e9-8a78-c5c654f68afa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4/baz

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
o/PFkJDZiI2oiDNSxUrROBM/IT3xNCn4ZlfuVPGXtgAInElz+TJmuUYXRyjs04E1ld04XxYc427J
zSo56zSbENIzSikBXj7h2Gf32u0BC5LWuL4UX1bp67naqSsILM4RezdVuYlYMzefV4auJQiByMKX
YzN2h7F7SV5wJ7QT2auZ5V61rFIIfYSHdAfQOsawWOFpcMmam/SG2nAq6AyCjH7aFT+qyxxvj+Wu
7hKpqw6Yv87TqWji/kpqL9Hi3ZV4BeiJ9SWHBYzF+uHk7Kzi3C5hkig9r+IV+Bb0QJtKjbFPNukp
H7boEbpBDa+H/hKdh1OjgEttOlYGdPwPksXxe2wwlLbDuL14eYFt+6EzjfoEVrhIpgxl4vuSI6q5
2X71UJJCV2lb2s+VKgfJ/z600uYBCjwMqNRgyrK7MJUSvp8DeKsP8DWRqXzpsnwFnOK83lDDuM5C
6Ke94o23oKk5g2tnxoeTpeGxcGG/I/VYWy3Q/lJETgbRwI8DUQ6o2gjSry8QndVaKThuEkdtgsWx
ZIdf5qFW9TVklgX3kFPTCJZY7XTGSL1YddUZ1ju/ZD7JUeyHSPNne7r6qwfPYpnlmwqxFJVR6xzJ
B3HLPR75pTLHLT5mS8Cj8XG5zJy2iBI8NDsxDlCpeGbPvUGCmz6bAAXVBzRafk9KDiIjlx6AE35e
jwjjyJfiHrXYl41+IVYyHsyW4YDe4rbs5/8theBHT6rDIww1uDhu8ul/gufBy+3L8HlR6TL9gK1S
9+CXtJnUkEfjuv1K/GWUKO6XXl/PKhsSYZRm9mZ4xaNe48FX1z5QqvKf3hDvgfMUvcFEZiFNgszE
hFIFbZrhavRa6xmkPFCvR7RtL0wKI+CgUjikNF+BEWH0klLrSzxYvnMblZbacIBwlB5t4FKAumFy
ZBthPDaV2Nm4r6r+w/x3FXHY741JxeK3NKBBFDEOc9jxeeYh9oI9hry8IsDWctAi9svhqMrTKJ84
qgeWVMSoqjvRDUoVVR7ummjQjaMh4MLPHh1mLMsNHVBH6Ex6pzL4E3iFBGSFDKCs8g1iApr7F8lF
xjWmQn1vxO/6zm3SdPM12Horm9xdShF9uTm+qxq1S9GCNOD9UdH6FUB1iz4z2n4ZLCog0Hvs6Hwj
KIhEsRnURIKbTz8SOIeoMIac577TSt+7pH7wlHpVlkxk2ShItmQmoEa7l4s+B/Ojd6D1UAC9UN6p
iQ2a5K8HRbnzrl9eYHoidUd3F7NUfJ2LTR3aYEVMpohKnyxWjLyXs1HSS1iTRBcl09q4RjkqVQ1w
D5aSLeVzpwjXE8FNy+mL4GNigjBE9wgFtI1rk2BPH0kf5nwlBIZrX6RQvDFW2AfwLWbVyNPcKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25247463E184D00"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: vzrXUNfv5fu2ptOMZg/9Ig==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 807b90ca-91f8-436f-9d2c-f5d3b9a46f73
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4/foo/foo

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
o/PFkJDZiI2oiDNSxUrROBM/IT3xNCn4ZlfuVPGXtgAInElz+TJmuUYXRyjs04E1ld04XxYc427J
zSo56zSbENIzSikBXj7h2Gf32u0BC5LWuL4UX1bp67naqSsILM4RezdVuYlYMzefV4auJQiByMKX
YzN2h7F7SV5wJ7QT2auZ5V61rFIIfYSHdAfQOsawWOFpcMmam/SG2nAq6AyCjH7aFT+qyxxvj+Wu
7hKpqw6Yv87TqWji/kpqL9Hi3ZV4BeiJ9SWHBYzF+uHk7Kzi3C5hkig9r+IV+Bb0QJtKjbFPNukp
H7boEbpBDa+H/hKdh1OjgEttOlYGdPwPksXxe2wwlLbDuL14eYFt+6EzjfoEVrhIpgxl4vuSI6q5
2X71UJJCV2lb2s+VKgfJ/z600uYBCjwMqNRgyrK7MJUSvp8DeKsP8DWRqXzpsnwFnOK83lDDuM5C
6Ke94o23oKk5g2tnxoeTpeGxcGG/I/VYWy3Q/lJETgbRwI8DUQ6o2gjSry8QndVaKThuEkdtgsWx
ZIdf5qFW9TVklgX3kFPTCJZY7XTGSL1YddUZ1ju/ZD7JUeyHSPNne7r6qwfPYpnlmwqxFJVR6xzJ
B3HLPR75pTLHLT5mS8Cj8XG5zJy2iBI8NDsxDlCpeGbPvUGCmz6bAAXVBzRafk9KDiIjlx6AE35e
jwjjyJfiHrXYl41+IVYyHsyW4YDe4rbs5/8theBHT6rDIww1uDhu8ul/gufBy+3L8HlR6TL9gK1S
9+CXtJnUkEfjuv1K/GWUKO6XXl/PKhsSYZRm9mZ4xaNe48FX1z5QqvKf3hDvgfMUvcFEZiFNgszE
hFIFbZrhavRa6xmkPFCvR7RtL0wKI+CgUjikNF+BEWH0klLrSzxYvnMblZbacIBwlB5t4FKAumFy
ZBthPDaV2Nm4r6r+w/x3FXHY741JxeK3NKBBFDEOc9jxeeYh9oI9hry8IsDWctAi9svhqMrTKJ84
qgeWVMSoqjvRDUoVVR7ummjQjaMh4MLPHh1mLMsNHVBH6Ex6pzL4E3iFBGSFDKCs8g1iApr7F8lF
xjWmQn1vxO/6zm3SdPM12Horm9xdShF9uTm+qxq1S9GCNOD9UdH6FUB1iz4z2n4ZLCog0Hvs6Hwj
KIhEsRnURIKbTz8SOIeoMIac577TSt+7pH7wlHpVlkxk2ShItmQmoEa7l4s+B/Ojd6D1UAC9UN6p
iQ2a5K8HRbnzrl9eYHoidUd3F7NUfJ2LTR3aYEVMpohKnyxWjLyXs1HSS1iTRBcl09q4RjkqVQ1w
D5aSLeVzpwjXE8FNy+mL4GNigjBE9wgFtI1rk2BPH0kf5nwlBIZrX6RQvDFW2AfwLWbVyNPcKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22507126F0BDEA0"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: vzrXUNfv5fu2ptOMZg/9Ig==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 980c6833-3c97-49d6-9c1a-d2c363f776c9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4/foo/bar

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
o/PFkJDZiI2oiDNSxUrROBM/IT3xNCn4ZlfuVPGXtgAInElz+TJmuUYXRyjs04E1ld04XxYc427J
zSo56zSbENIzSikBXj7h2Gf32u0BC5LWuL4UX1bp67naqSsILM4RezdVuYlYMzefV4auJQiByMKX
YzN2h7F7SV5wJ7QT2auZ5V61rFIIfYSHdAfQOsawWOFpcMmam/SG2nAq6AyCjH7aFT+qyxxvj+Wu
7hKpqw6Yv87TqWji/kpqL9Hi3ZV4BeiJ9SWHBYzF+uHk7Kzi3C5hkig9r+IV+Bb0QJtKjbFPNukp
H7boEbpBDa+H/hKdh1OjgEttOlYGdPwPksXxe2wwlLbDuL14eYFt+6EzjfoEVrhIpgxl4vuSI6q5
2X71UJJCV2lb2s+VKgfJ/z600uYBCjwMqNRgyrK7MJUSvp8DeKsP8DWRqXzpsnwFnOK83lDDuM5C
6Ke94o23oKk5g2tnxoeTpeGxcGG/I/VYWy3Q/lJETgbRwI8DUQ6o2gjSry8QndVaKThuEkdtgsWx
ZIdf5qFW9TVklgX3kFPTCJZY7XTGSL1YddUZ1ju/ZD7JUeyHSPNne7r6qwfPYpnlmwqxFJVR6xzJ
B3HLPR75pTLHLT5mS8Cj8XG5zJy2iBI8NDsxDlCpeGbPvUGCmz6bAAXVBzRafk9KDiIjlx6AE35e
jwjjyJfiHrXYl41+IVYyHsyW4YDe4rbs5/8theBHT6rDIww1uDhu8ul/gufBy+3L8HlR6TL9gK1S
9+CXtJnUkEfjuv1K/GWUKO6XXl/PKhsSYZRm9mZ4xaNe48FX1z5QqvKf3hDvgfMUvcFEZiFNgszE
hFIFbZrhavRa6xmkPFCvR7RtL0wKI+CgUjikNF+BEWH0klLrSzxYvnMblZbacIBwlB5t4FKAumFy
ZBthPDaV2Nm4r6r+w/x3FXHY741JxeK3NKBBFDEOc9jxeeYh9oI9hry8IsDWctAi9svhqMrTKJ84
qgeWVMSoqjvRDUoVVR7ummjQjaMh4MLPHh1mLMsNHVBH6Ex6pzL4E3iFBGSFDKCs8g1iApr7F8lF
xjWmQn1vxO/6zm3SdPM12Horm9xdShF9uTm+qxq1S9GCNOD9UdH6FUB1iz4z2n4ZLCog0Hvs6Hwj
KIhEsRnURIKbTz8SOIeoMIac577TSt+7pH7wlHpVlkxk2ShItmQmoEa7l4s+B/Ojd6D1UAC9UN6p
iQ2a5K8HRbnzrl9eYHoidUd3F7NUfJ2LTR3aYEVMpohKnyxWjLyXs1HSS1iTRBcl09q4RjkqVQ1w
D5aSLeVzpwjXE8FNy+mL4GNigjBE9wgFtI1rk2BPH0kf5nwlBIZrX6RQvDFW2AfwLWbVyNPcKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E27A3B74544050"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: vzrXUNfv5fu2ptOMZg/9Ig==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a02facee-5798-4e26-ae3c-a2a7a1e8a511
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4/baz/foo

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
o/PFkJDZiI2oiDNSxUrROBM/IT3xNCn4ZlfuVPGXtgAInElz+TJmuUYXRyjs04E1ld04XxYc427J
zSo56zSbENIzSikBXj7h2Gf32u0BC5LWuL4UX1bp67naqSsILM4RezdVuYlYMzefV4auJQiByMKX
YzN2h7F7SV5wJ7QT2auZ5V61rFIIfYSHdAfQOsawWOFpcMmam/SG2nAq6AyCjH7aFT+qyxxvj+Wu
7hKpqw6Yv87TqWji/kpqL9Hi3ZV4BeiJ9SWHBYzF+uHk7Kzi3C5hkig9r+IV+Bb0QJtKjbFPNukp
H7boEbpBDa+H/hKdh1OjgEttOlYGdPwPksXxe2wwlLbDuL14eYFt+6EzjfoEVrhIpgxl4vuSI6q5
2X71UJJCV2lb2s+VKgfJ/z600uYBCjwMqNRgyrK7MJUSvp8DeKsP8DWRqXzpsnwFnOK83lDDuM5C
6Ke94o23oKk5g2tnxoeTpeGxcGG/I/VYWy3Q/lJETgbRwI8DUQ6o2gjSry8QndVaKThuEkdtgsWx
ZIdf5qFW9TVklgX3kFPTCJZY7XTGSL1YddUZ1ju/ZD7JUeyHSPNne7r6qwfPYpnlmwqxFJVR6xzJ
B3HLPR75pTLHLT5mS8Cj8XG5zJy2iBI8NDsxDlCpeGbPvUGCmz6bAAXVBzRafk9KDiIjlx6AE35e
jwjjyJfiHrXYl41+IVYyHsyW4YDe4rbs5/8theBHT6rDIww1uDhu8ul/gufBy+3L8HlR6TL9gK1S
9+CXtJnUkEfjuv1K/GWUKO6XXl/PKhsSYZRm9mZ4xaNe48FX1z5QqvKf3hDvgfMUvcFEZiFNgszE
hFIFbZrhavRa6xmkPFCvR7RtL0wKI+CgUjikNF+BEWH0klLrSzxYvnMblZbacIBwlB5t4FKAumFy
ZBthPDaV2Nm4r6r+w/x3FXHY741JxeK3NKBBFDEOc9jxeeYh9oI9hry8IsDWctAi9svhqMrTKJ84
qgeWVMSoqjvRDUoVVR7ummjQjaMh4MLPHh1mLMsNHVBH6Ex6pzL4E3iFBGSFDKCs8g1iApr7F8lF
xjWmQn1vxO/6zm3SdPM12Horm9xdShF9uTm+qxq1S9GCNOD9UdH6FUB1iz4z2n4ZLCog0Hvs6Hwj
KIhEsRnURIKbTz8SOIeoMIac577TSt+7pH7wlHpVlkxk2ShItmQmoEa7l4s+B/Ojd6D1UAC9UN6p
iQ2a5K8HRbnzrl9eYHoidUd3F7NUfJ2LTR3aYEVMpohKnyxWjLyXs1HSS1iTRBcl09q4RjkqVQ1w
D5aSLeVzpwjXE8FNy+mL4GNigjBE9wgFtI1rk2BPH0kf5nwlBIZrX6RQvDFW2AfwLWbVyNPcKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263B887718B9C40"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: vzrXUNfv5fu2ptOMZg/9Ig==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4c7d0b3-a462-42eb-91d9-f8a37d25eed2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4/baz/foo/bar

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
o/PFkJDZiI2oiDNSxUrROBM/IT3xNCn4ZlfuVPGXtgAInElz+TJmuUYXRyjs04E1ld04XxYc427J
zSo56zSbENIzSikBXj7h2Gf32u0BC5LWuL4UX1bp67naqSsILM4RezdVuYlYMzefV4auJQiByMKX
YzN2h7F7SV5wJ7QT2auZ5V61rFIIfYSHdAfQOsawWOFpcMmam/SG2nAq6AyCjH7aFT+qyxxvj+Wu
7hKpqw6Yv87TqWji/kpqL9Hi3ZV4BeiJ9SWHBYzF+uHk7Kzi3C5hkig9r+IV+Bb0QJtKjbFPNukp
H7boEbpBDa+H/hKdh1OjgEttOlYGdPwPksXxe2wwlLbDuL14eYFt+6EzjfoEVrhIpgxl4vuSI6q5
2X71UJJCV2lb2s+VKgfJ/z600uYBCjwMqNRgyrK7MJUSvp8DeKsP8DWRqXzpsnwFnOK83lDDuM5C
6Ke94o23oKk5g2tnxoeTpeGxcGG/I/VYWy3Q/lJETgbRwI8DUQ6o2gjSry8QndVaKThuEkdtgsWx
ZIdf5qFW9TVklgX3kFPTCJZY7XTGSL1YddUZ1ju/ZD7JUeyHSPNne7r6qwfPYpnlmwqxFJVR6xzJ
B3HLPR75pTLHLT5mS8Cj8XG5zJy2iBI8NDsxDlCpeGbPvUGCmz6bAAXVBzRafk9KDiIjlx6AE35e
jwjjyJfiHrXYl41+IVYyHsyW4YDe4rbs5/8theBHT6rDIww1uDhu8ul/gufBy+3L8HlR6TL9gK1S
9+CXtJnUkEfjuv1K/GWUKO6XXl/PKhsSYZRm9mZ4xaNe48FX1z5QqvKf3hDvgfMUvcFEZiFNgszE
hFIFbZrhavRa6xmkPFCvR7RtL0wKI+CgUjikNF+BEWH0klLrSzxYvnMblZbacIBwlB5t4FKAumFy
ZBthPDaV2Nm4r6r+w/x3FXHY741JxeK3NKBBFDEOc9jxeeYh9oI9hry8IsDWctAi9svhqMrTKJ84
qgeWVMSoqjvRDUoVVR7ummjQjaMh4MLPHh1mLMsNHVBH6Ex6pzL4E3iFBGSFDKCs8g1iApr7F8lF
xjWmQn1vxO/6zm3SdPM12Horm9xdShF9uTm+qxq1S9GCNOD9UdH6FUB1iz4z2n4ZLCog0Hvs6Hwj
KIhEsRnURIKbTz8SOIeoMIac577TSt+7pH7wlHpVlkxk2ShItmQmoEa7l4s+B/Ojd6D1UAC9UN6p
iQ2a5K8HRbnzrl9eYHoidUd3F7NUfJ2LTR3aYEVMpohKnyxWjLyXs1HSS1iTRBcl09q4RjkqVQ1w
D5aSLeVzpwjXE8FNy+mL4GNigjBE9wgFtI1rk2BPH0kf5nwlBIZrX6RQvDFW2AfwLWbVyNPcKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2384B16E4F61760"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: vzrXUNfv5fu2ptOMZg/9Ig==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c7fa94c6-d0f9-4ac6-bff4-234e2ea1d6f1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4/baz/bar/foo

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
o/PFkJDZiI2oiDNSxUrROBM/IT3xNCn4ZlfuVPGXtgAInElz+TJmuUYXRyjs04E1ld04XxYc427J
zSo56zSbENIzSikBXj7h2Gf32u0BC5LWuL4UX1bp67naqSsILM4RezdVuYlYMzefV4auJQiByMKX
YzN2h7F7SV5wJ7QT2auZ5V61rFIIfYSHdAfQOsawWOFpcMmam/SG2nAq6AyCjH7aFT+qyxxvj+Wu
7hKpqw6Yv87TqWji/kpqL9Hi3ZV4BeiJ9SWHBYzF+uHk7Kzi3C5hkig9r+IV+Bb0QJtKjbFPNukp
H7boEbpBDa+H/hKdh1OjgEttOlYGdPwPksXxe2wwlLbDuL14eYFt+6EzjfoEVrhIpgxl4vuSI6q5
2X71UJJCV2lb2s+VKgfJ/z600uYBCjwMqNRgyrK7MJUSvp8DeKsP8DWRqXzpsnwFnOK83lDDuM5C
6Ke94o23oKk5g2tnxoeTpeGxcGG/I/VYWy3Q/lJETgbRwI8DUQ6o2gjSry8QndVaKThuEkdtgsWx
ZIdf5qFW9TVklgX3kFPTCJZY7XTGSL1YddUZ1ju/ZD7JUeyHSPNne7r6qwfPYpnlmwqxFJVR6xzJ
B3HLPR75pTLHLT5mS8Cj8XG5zJy2iBI8NDsxDlCpeGbPvUGCmz6bAAXVBzRafk9KDiIjlx6AE35e
jwjjyJfiHrXYl41+IVYyHsyW4YDe4rbs5/8theBHT6rDIww1uDhu8ul/gufBy+3L8HlR6TL9gK1S
9+CXtJnUkEfjuv1K/GWUKO6XXl/PKhsSYZRm9mZ4xaNe48FX1z5QqvKf3hDvgfMUvcFEZiFNgszE
hFIFbZrhavRa6xmkPFCvR7RtL0wKI+CgUjikNF+BEWH0klLrSzxYvnMblZbacIBwlB5t4FKAumFy
ZBthPDaV2Nm4r6r+w/x3FXHY741JxeK3NKBBFDEOc9jxeeYh9oI9hry8IsDWctAi9svhqMrTKJ84
qgeWVMSoqjvRDUoVVR7ummjQjaMh4MLPHh1mLMsNHVBH6Ex6pzL4E3iFBGSFDKCs8g1iApr7F8lF
xjWmQn1vxO/6zm3SdPM12Horm9xdShF9uTm+qxq1S9GCNOD9UdH6FUB1iz4z2n4ZLCog0Hvs6Hwj
KIhEsRnURIKbTz8SOIeoMIac577TSt+7pH7wlHpVlkxk2ShItmQmoEa7l4s+B/Ojd6D1UAC9UN6p
iQ2a5K8HRbnzrl9eYHoidUd3F7NUfJ2LTR3aYEVMpohKnyxWjLyXs1HSS1iTRBcl09q4RjkqVQ1w
D5aSLeVzpwjXE8FNy+mL4GNigjBE9wgFtI1rk2BPH0kf5nwlBIZrX6RQvDFW2AfwLWbVyNPcKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x229516EEB57CBC0"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: vzrXUNfv5fu2ptOMZg/9Ig==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 514987bf-beff-499a-a1cb-beccef99806d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4/foo/foo?comp=metadata

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
etag: "0x1F1414B95787A90"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 23036365-ceba-4e59-8e67-23072a210e3d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4?restype=container&comp=list&delimiter=%2F&prefix=foo

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
x-ms-request-id: 8f4bc3a8-0894-4735-a002-0f9e9e0ee4ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4"><Prefix>foo</Prefix><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:00 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:00 GMT</Last-Modified><Etag>0x2356E4DF799A9C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>vzrXUNfv5fu2ptOMZg/9Ig==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:00 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-efa4cf93-1fb0-4626-8066-154c9e3759d4?restype=container

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
x-ms-request-id: c83f50fd-5434-4e92-9afa-c2a672f17efa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

