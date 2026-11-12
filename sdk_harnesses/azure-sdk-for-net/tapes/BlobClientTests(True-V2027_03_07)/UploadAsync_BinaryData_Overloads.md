## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8eba6155-b191-cab7-bd55-42411945d43a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_BinaryData_Overloads
now: 2026-11-12T00:49:10.4104729+00:00

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
etag: "0x200F506BFFBBE40"
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8d3e34e6-8c5d-40c4-a582-d51a787a747f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:10 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8eba6155-b191-cab7-bd55-42411945d43a/test-blob-99a3ddad-031c-6a53-6791-2457eb079c76

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
n2aySlOd3wjbp2IN6qHjENbklw4v7o1SDVAm/4xg3ra5zKKykormEP2avnWgRn/GrhSAB3CNR7DZ
YDwDd998esisVB7+MH1L/ocQlC8YscfQX1F439dGK4Ty2TJO45geHkOs9PFgyH2WNQnofLOAwK50
MheNBJrxZSiaDFdL/Rru8nbsa7zWcJfU4arOXa/RcRmD2bCAkBqou47IxbslSzfu+ok9lFXynsKA
uCLwIgh5yZs+yCRqbWFbQ7AtDarbr5Vy4GIllNzEkDruANj3uJmGT/wg54MTg4wo4VGkxJEXpAmM
fUKlUzW+ejfpfGyJZIsXp72tu8cSX1zV/bKLH8yp1lvOajpW4PvHYW1MKQcgnn3GjR3TaelCeh7l
0FaCM1prQKURu/lQwMbC5llZxjVVtV41xZGu1W1xi/AbcRCkRC4S4OliDuOEdc1WEYOQ6bPpkBr3
TW7JvGo4ny8INE62HaEqRuVL8qd7sU/DWMTp4aI9MuH2rffASSR+Km+ze0F+n/ThZaLOnp1zfJse
BWOmTr6MywJtwHCpavzAzMg4xzUORbnQCHsAbpRDgzFbokTB2NywJ7A+Ed+DN/ulDdHVO7RmD8Cq
1kVCjFxuKT0/Tci4//Tsh6CEzzPZTNCAWmHDbkh89ZKDFgGWbppU0OeiROky7Q7c6LMT4T+M0Il0
wTL6q7v1wlg2NOjzVRgFMP9LNwfnTWxT5oWUaRNS90Z3IaxoWSUsrIKR/Lgl6ZObDbBAQJmCjXPF
p8Q1YVlE4z2iezRsndfaH4qFVlGzLf3y+VtjEbat9ZQ4orFh90soTBh7g21eLnDZZiEO/DciEnnG
Qmj+4dKG9YWfM/sleCc+XAk4OKqPk8rriauVnvldFo84mrTjKmtG9Y7ovvt0tO35z58t6drPNq6d
Elcn8VaLQh1r7d1zWzKe8kIbp9TOdtW9m89aLyy1aGQFRRcTHwQ4XHzdCcYPhnRtj/eXtI7az5yC
aVWHMRLxtYR5bRUaitM+40tY8W0OrhRb7KA0HrTVK3Z7kLWusSpp7FNClhleUgQkWNFDgd4uc7tB
K0VyvJfPo0GfnvkdkDEg7gQayxf6/JqbEMXjkamYTBz6bIXl9y+8cvLXv7MKBsifI5LZFKijRi+r
1qzR7BKXBlLcIyOsO/fVXVglIz3mkQn8RG4Xvzd0ViZWOiCC6obgP7hhLeOl8uibA7ZPfSPyxEWi
1KejgEcaZ8z8VgDWUnPRReOEhGMmV1GGe7uBJdgDY3Xb4BXfPL5xR8UWqJznxLBDfTg/bUDifH1W
HQSLmULz+fKL+3Jd8ggkEz2dD661nrcKPaigw/Y1+WSYiR+55a6DIq+pXMk+5oovG1oDRGzPoA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x234DEB5D3E08740"
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
content-md5: kZhoDadD7uEfIWeqhm/qTA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0e04b80-2302-4936-912c-7b75d67e4e4d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-8eba6155-b191-cab7-bd55-42411945d43a/test-blob-99a3ddad-031c-6a53-6791-2457eb079c76

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
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:10 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x234DEB5D3E08740"
content-md5: kZhoDadD7uEfIWeqhm/qTA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d26fe7e5-9e91-4da6-8c38-81e616507b86
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: kZhoDadD7uEfIWeqhm/qTA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
n2aySlOd3wjbp2IN6qHjENbklw4v7o1SDVAm/4xg3ra5zKKykormEP2avnWgRn/GrhSAB3CNR7DZ
YDwDd998esisVB7+MH1L/ocQlC8YscfQX1F439dGK4Ty2TJO45geHkOs9PFgyH2WNQnofLOAwK50
MheNBJrxZSiaDFdL/Rru8nbsa7zWcJfU4arOXa/RcRmD2bCAkBqou47IxbslSzfu+ok9lFXynsKA
uCLwIgh5yZs+yCRqbWFbQ7AtDarbr5Vy4GIllNzEkDruANj3uJmGT/wg54MTg4wo4VGkxJEXpAmM
fUKlUzW+ejfpfGyJZIsXp72tu8cSX1zV/bKLH8yp1lvOajpW4PvHYW1MKQcgnn3GjR3TaelCeh7l
0FaCM1prQKURu/lQwMbC5llZxjVVtV41xZGu1W1xi/AbcRCkRC4S4OliDuOEdc1WEYOQ6bPpkBr3
TW7JvGo4ny8INE62HaEqRuVL8qd7sU/DWMTp4aI9MuH2rffASSR+Km+ze0F+n/ThZaLOnp1zfJse
BWOmTr6MywJtwHCpavzAzMg4xzUORbnQCHsAbpRDgzFbokTB2NywJ7A+Ed+DN/ulDdHVO7RmD8Cq
1kVCjFxuKT0/Tci4//Tsh6CEzzPZTNCAWmHDbkh89ZKDFgGWbppU0OeiROky7Q7c6LMT4T+M0Il0
wTL6q7v1wlg2NOjzVRgFMP9LNwfnTWxT5oWUaRNS90Z3IaxoWSUsrIKR/Lgl6ZObDbBAQJmCjXPF
p8Q1YVlE4z2iezRsndfaH4qFVlGzLf3y+VtjEbat9ZQ4orFh90soTBh7g21eLnDZZiEO/DciEnnG
Qmj+4dKG9YWfM/sleCc+XAk4OKqPk8rriauVnvldFo84mrTjKmtG9Y7ovvt0tO35z58t6drPNq6d
Elcn8VaLQh1r7d1zWzKe8kIbp9TOdtW9m89aLyy1aGQFRRcTHwQ4XHzdCcYPhnRtj/eXtI7az5yC
aVWHMRLxtYR5bRUaitM+40tY8W0OrhRb7KA0HrTVK3Z7kLWusSpp7FNClhleUgQkWNFDgd4uc7tB
K0VyvJfPo0GfnvkdkDEg7gQayxf6/JqbEMXjkamYTBz6bIXl9y+8cvLXv7MKBsifI5LZFKijRi+r
1qzR7BKXBlLcIyOsO/fVXVglIz3mkQn8RG4Xvzd0ViZWOiCC6obgP7hhLeOl8uibA7ZPfSPyxEWi
1KejgEcaZ8z8VgDWUnPRReOEhGMmV1GGe7uBJdgDY3Xb4BXfPL5xR8UWqJznxLBDfTg/bUDifH1W
HQSLmULz+fKL+3Jd8ggkEz2dD661nrcKPaigw/Y1+WSYiR+55a6DIq+pXMk+5oovG1oDRGzPoA==
```

## Interaction 3: PUT /devstoreaccount1/test-container-8eba6155-b191-cab7-bd55-42411945d43a/test-blob-99a3ddad-031c-6a53-6791-2457eb079c76

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
n2aySlOd3wjbp2IN6qHjENbklw4v7o1SDVAm/4xg3ra5zKKykormEP2avnWgRn/GrhSAB3CNR7DZ
YDwDd998esisVB7+MH1L/ocQlC8YscfQX1F439dGK4Ty2TJO45geHkOs9PFgyH2WNQnofLOAwK50
MheNBJrxZSiaDFdL/Rru8nbsa7zWcJfU4arOXa/RcRmD2bCAkBqou47IxbslSzfu+ok9lFXynsKA
uCLwIgh5yZs+yCRqbWFbQ7AtDarbr5Vy4GIllNzEkDruANj3uJmGT/wg54MTg4wo4VGkxJEXpAmM
fUKlUzW+ejfpfGyJZIsXp72tu8cSX1zV/bKLH8yp1lvOajpW4PvHYW1MKQcgnn3GjR3TaelCeh7l
0FaCM1prQKURu/lQwMbC5llZxjVVtV41xZGu1W1xi/AbcRCkRC4S4OliDuOEdc1WEYOQ6bPpkBr3
TW7JvGo4ny8INE62HaEqRuVL8qd7sU/DWMTp4aI9MuH2rffASSR+Km+ze0F+n/ThZaLOnp1zfJse
BWOmTr6MywJtwHCpavzAzMg4xzUORbnQCHsAbpRDgzFbokTB2NywJ7A+Ed+DN/ulDdHVO7RmD8Cq
1kVCjFxuKT0/Tci4//Tsh6CEzzPZTNCAWmHDbkh89ZKDFgGWbppU0OeiROky7Q7c6LMT4T+M0Il0
wTL6q7v1wlg2NOjzVRgFMP9LNwfnTWxT5oWUaRNS90Z3IaxoWSUsrIKR/Lgl6ZObDbBAQJmCjXPF
p8Q1YVlE4z2iezRsndfaH4qFVlGzLf3y+VtjEbat9ZQ4orFh90soTBh7g21eLnDZZiEO/DciEnnG
Qmj+4dKG9YWfM/sleCc+XAk4OKqPk8rriauVnvldFo84mrTjKmtG9Y7ovvt0tO35z58t6drPNq6d
Elcn8VaLQh1r7d1zWzKe8kIbp9TOdtW9m89aLyy1aGQFRRcTHwQ4XHzdCcYPhnRtj/eXtI7az5yC
aVWHMRLxtYR5bRUaitM+40tY8W0OrhRb7KA0HrTVK3Z7kLWusSpp7FNClhleUgQkWNFDgd4uc7tB
K0VyvJfPo0GfnvkdkDEg7gQayxf6/JqbEMXjkamYTBz6bIXl9y+8cvLXv7MKBsifI5LZFKijRi+r
1qzR7BKXBlLcIyOsO/fVXVglIz3mkQn8RG4Xvzd0ViZWOiCC6obgP7hhLeOl8uibA7ZPfSPyxEWi
1KejgEcaZ8z8VgDWUnPRReOEhGMmV1GGe7uBJdgDY3Xb4BXfPL5xR8UWqJznxLBDfTg/bUDifH1W
HQSLmULz+fKL+3Jd8ggkEz2dD661nrcKPaigw/Y1+WSYiR+55a6DIq+pXMk+5oovG1oDRGzPoA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2048555E3DC4B20"
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
content-md5: kZhoDadD7uEfIWeqhm/qTA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b44cf96c-75a6-408f-823e-6a81e033d958
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-8eba6155-b191-cab7-bd55-42411945d43a/test-blob-99a3ddad-031c-6a53-6791-2457eb079c76

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
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:10 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x2048555E3DC4B20"
content-md5: kZhoDadD7uEfIWeqhm/qTA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea9e91c1-bf83-451c-85a0-69446430bd2c
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: kZhoDadD7uEfIWeqhm/qTA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
n2aySlOd3wjbp2IN6qHjENbklw4v7o1SDVAm/4xg3ra5zKKykormEP2avnWgRn/GrhSAB3CNR7DZ
YDwDd998esisVB7+MH1L/ocQlC8YscfQX1F439dGK4Ty2TJO45geHkOs9PFgyH2WNQnofLOAwK50
MheNBJrxZSiaDFdL/Rru8nbsa7zWcJfU4arOXa/RcRmD2bCAkBqou47IxbslSzfu+ok9lFXynsKA
uCLwIgh5yZs+yCRqbWFbQ7AtDarbr5Vy4GIllNzEkDruANj3uJmGT/wg54MTg4wo4VGkxJEXpAmM
fUKlUzW+ejfpfGyJZIsXp72tu8cSX1zV/bKLH8yp1lvOajpW4PvHYW1MKQcgnn3GjR3TaelCeh7l
0FaCM1prQKURu/lQwMbC5llZxjVVtV41xZGu1W1xi/AbcRCkRC4S4OliDuOEdc1WEYOQ6bPpkBr3
TW7JvGo4ny8INE62HaEqRuVL8qd7sU/DWMTp4aI9MuH2rffASSR+Km+ze0F+n/ThZaLOnp1zfJse
BWOmTr6MywJtwHCpavzAzMg4xzUORbnQCHsAbpRDgzFbokTB2NywJ7A+Ed+DN/ulDdHVO7RmD8Cq
1kVCjFxuKT0/Tci4//Tsh6CEzzPZTNCAWmHDbkh89ZKDFgGWbppU0OeiROky7Q7c6LMT4T+M0Il0
wTL6q7v1wlg2NOjzVRgFMP9LNwfnTWxT5oWUaRNS90Z3IaxoWSUsrIKR/Lgl6ZObDbBAQJmCjXPF
p8Q1YVlE4z2iezRsndfaH4qFVlGzLf3y+VtjEbat9ZQ4orFh90soTBh7g21eLnDZZiEO/DciEnnG
Qmj+4dKG9YWfM/sleCc+XAk4OKqPk8rriauVnvldFo84mrTjKmtG9Y7ovvt0tO35z58t6drPNq6d
Elcn8VaLQh1r7d1zWzKe8kIbp9TOdtW9m89aLyy1aGQFRRcTHwQ4XHzdCcYPhnRtj/eXtI7az5yC
aVWHMRLxtYR5bRUaitM+40tY8W0OrhRb7KA0HrTVK3Z7kLWusSpp7FNClhleUgQkWNFDgd4uc7tB
K0VyvJfPo0GfnvkdkDEg7gQayxf6/JqbEMXjkamYTBz6bIXl9y+8cvLXv7MKBsifI5LZFKijRi+r
1qzR7BKXBlLcIyOsO/fVXVglIz3mkQn8RG4Xvzd0ViZWOiCC6obgP7hhLeOl8uibA7ZPfSPyxEWi
1KejgEcaZ8z8VgDWUnPRReOEhGMmV1GGe7uBJdgDY3Xb4BXfPL5xR8UWqJznxLBDfTg/bUDifH1W
HQSLmULz+fKL+3Jd8ggkEz2dD661nrcKPaigw/Y1+WSYiR+55a6DIq+pXMk+5oovG1oDRGzPoA==
```

## Interaction 5: PUT /devstoreaccount1/test-container-8eba6155-b191-cab7-bd55-42411945d43a/test-blob-99a3ddad-031c-6a53-6791-2457eb079c76

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
n2aySlOd3wjbp2IN6qHjENbklw4v7o1SDVAm/4xg3ra5zKKykormEP2avnWgRn/GrhSAB3CNR7DZ
YDwDd998esisVB7+MH1L/ocQlC8YscfQX1F439dGK4Ty2TJO45geHkOs9PFgyH2WNQnofLOAwK50
MheNBJrxZSiaDFdL/Rru8nbsa7zWcJfU4arOXa/RcRmD2bCAkBqou47IxbslSzfu+ok9lFXynsKA
uCLwIgh5yZs+yCRqbWFbQ7AtDarbr5Vy4GIllNzEkDruANj3uJmGT/wg54MTg4wo4VGkxJEXpAmM
fUKlUzW+ejfpfGyJZIsXp72tu8cSX1zV/bKLH8yp1lvOajpW4PvHYW1MKQcgnn3GjR3TaelCeh7l
0FaCM1prQKURu/lQwMbC5llZxjVVtV41xZGu1W1xi/AbcRCkRC4S4OliDuOEdc1WEYOQ6bPpkBr3
TW7JvGo4ny8INE62HaEqRuVL8qd7sU/DWMTp4aI9MuH2rffASSR+Km+ze0F+n/ThZaLOnp1zfJse
BWOmTr6MywJtwHCpavzAzMg4xzUORbnQCHsAbpRDgzFbokTB2NywJ7A+Ed+DN/ulDdHVO7RmD8Cq
1kVCjFxuKT0/Tci4//Tsh6CEzzPZTNCAWmHDbkh89ZKDFgGWbppU0OeiROky7Q7c6LMT4T+M0Il0
wTL6q7v1wlg2NOjzVRgFMP9LNwfnTWxT5oWUaRNS90Z3IaxoWSUsrIKR/Lgl6ZObDbBAQJmCjXPF
p8Q1YVlE4z2iezRsndfaH4qFVlGzLf3y+VtjEbat9ZQ4orFh90soTBh7g21eLnDZZiEO/DciEnnG
Qmj+4dKG9YWfM/sleCc+XAk4OKqPk8rriauVnvldFo84mrTjKmtG9Y7ovvt0tO35z58t6drPNq6d
Elcn8VaLQh1r7d1zWzKe8kIbp9TOdtW9m89aLyy1aGQFRRcTHwQ4XHzdCcYPhnRtj/eXtI7az5yC
aVWHMRLxtYR5bRUaitM+40tY8W0OrhRb7KA0HrTVK3Z7kLWusSpp7FNClhleUgQkWNFDgd4uc7tB
K0VyvJfPo0GfnvkdkDEg7gQayxf6/JqbEMXjkamYTBz6bIXl9y+8cvLXv7MKBsifI5LZFKijRi+r
1qzR7BKXBlLcIyOsO/fVXVglIz3mkQn8RG4Xvzd0ViZWOiCC6obgP7hhLeOl8uibA7ZPfSPyxEWi
1KejgEcaZ8z8VgDWUnPRReOEhGMmV1GGe7uBJdgDY3Xb4BXfPL5xR8UWqJznxLBDfTg/bUDifH1W
HQSLmULz+fKL+3Jd8ggkEz2dD661nrcKPaigw/Y1+WSYiR+55a6DIq+pXMk+5oovG1oDRGzPoA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x214637A4599A9E0"
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
content-md5: kZhoDadD7uEfIWeqhm/qTA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2608eede-e7b8-4d86-b5d8-0942c800b6de
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-8eba6155-b191-cab7-bd55-42411945d43a/test-blob-99a3ddad-031c-6a53-6791-2457eb079c76

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:10 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x214637A4599A9E0"
content-md5: kZhoDadD7uEfIWeqhm/qTA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8b421e94-4b8c-4757-b4df-881f7a6bb4b3
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:10 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: kZhoDadD7uEfIWeqhm/qTA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
n2aySlOd3wjbp2IN6qHjENbklw4v7o1SDVAm/4xg3ra5zKKykormEP2avnWgRn/GrhSAB3CNR7DZ
YDwDd998esisVB7+MH1L/ocQlC8YscfQX1F439dGK4Ty2TJO45geHkOs9PFgyH2WNQnofLOAwK50
MheNBJrxZSiaDFdL/Rru8nbsa7zWcJfU4arOXa/RcRmD2bCAkBqou47IxbslSzfu+ok9lFXynsKA
uCLwIgh5yZs+yCRqbWFbQ7AtDarbr5Vy4GIllNzEkDruANj3uJmGT/wg54MTg4wo4VGkxJEXpAmM
fUKlUzW+ejfpfGyJZIsXp72tu8cSX1zV/bKLH8yp1lvOajpW4PvHYW1MKQcgnn3GjR3TaelCeh7l
0FaCM1prQKURu/lQwMbC5llZxjVVtV41xZGu1W1xi/AbcRCkRC4S4OliDuOEdc1WEYOQ6bPpkBr3
TW7JvGo4ny8INE62HaEqRuVL8qd7sU/DWMTp4aI9MuH2rffASSR+Km+ze0F+n/ThZaLOnp1zfJse
BWOmTr6MywJtwHCpavzAzMg4xzUORbnQCHsAbpRDgzFbokTB2NywJ7A+Ed+DN/ulDdHVO7RmD8Cq
1kVCjFxuKT0/Tci4//Tsh6CEzzPZTNCAWmHDbkh89ZKDFgGWbppU0OeiROky7Q7c6LMT4T+M0Il0
wTL6q7v1wlg2NOjzVRgFMP9LNwfnTWxT5oWUaRNS90Z3IaxoWSUsrIKR/Lgl6ZObDbBAQJmCjXPF
p8Q1YVlE4z2iezRsndfaH4qFVlGzLf3y+VtjEbat9ZQ4orFh90soTBh7g21eLnDZZiEO/DciEnnG
Qmj+4dKG9YWfM/sleCc+XAk4OKqPk8rriauVnvldFo84mrTjKmtG9Y7ovvt0tO35z58t6drPNq6d
Elcn8VaLQh1r7d1zWzKe8kIbp9TOdtW9m89aLyy1aGQFRRcTHwQ4XHzdCcYPhnRtj/eXtI7az5yC
aVWHMRLxtYR5bRUaitM+40tY8W0OrhRb7KA0HrTVK3Z7kLWusSpp7FNClhleUgQkWNFDgd4uc7tB
K0VyvJfPo0GfnvkdkDEg7gQayxf6/JqbEMXjkamYTBz6bIXl9y+8cvLXv7MKBsifI5LZFKijRi+r
1qzR7BKXBlLcIyOsO/fVXVglIz3mkQn8RG4Xvzd0ViZWOiCC6obgP7hhLeOl8uibA7ZPfSPyxEWi
1KejgEcaZ8z8VgDWUnPRReOEhGMmV1GGe7uBJdgDY3Xb4BXfPL5xR8UWqJznxLBDfTg/bUDifH1W
HQSLmULz+fKL+3Jd8ggkEz2dD661nrcKPaigw/Y1+WSYiR+55a6DIq+pXMk+5oovG1oDRGzPoA==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-8eba6155-b191-cab7-bd55-42411945d43a?restype=container

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
x-ms-request-id: 81ad9ad2-f6d2-48e7-9469-876b759a92b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:10 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

