## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a443ceec-7a2d-dc1d-161a-78cd405b634a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadToAsync_StreamOverloads
now: 2026-11-12T00:46:45.1563943+00:00

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
etag: "0x2370CDAFE746EA0"
last-modified: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d687644f-8ec5-4e0b-9c64-1e8e02b169d1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a443ceec-7a2d-dc1d-161a-78cd405b634a/test-blob-74da9ed4-dd95-f627-79d0-3e6854a554d4

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
Rj0B5YXwirUP0Ovd3jeMq3HRTH4gLigdll7FhqBQHfr2P4VDAuw5+0ONlVyPQP7fjsxbbg/kKhgV
408mKgMVvrLw556xSKmEmFA7kpjLjlVg5vjT9K/rERVtLh6dEtA/eNepnlhfLUUj1ta+qZh/SVX5
xUMLQskDBdWIQxmL54V//BnBIu/9ALmyrx3YLGh97uTIo0yMNDYNpZiC1ukrl+9QPq1+vSdl/MWK
WJKrKthtC1U1w0Q48sfjs3xXeirPhxcuiO27/zC9YqeHAtukYXrAFcuU9tSrF0zlmgqrDoKautB6
faLqsgwkeGCcsfDrP1IBl2ReO5BDg3Ch1WQmEVMl7EcLKuTY1WO+b350DmZb+Vu3qXcdO35AN/oy
SNyn/mYMd8So4BVuKcEBoMwSznQKRdwJbmjcB7DIyvPppYyGFnEXZ5ahsxhGSYC1G5uyLWiFKAIA
no/+MG8T3xUihIM1e4la+mfeaJLDwyXnJ+wVFZ2KZH2JhXjhGTcmjtMCJMX9f6ASWDMBpsBwPdtq
FgiD/sl4lx8Fq/UQeeAvt9m+wJ5f6qdMAr1pib29GUicdwMuo48KiYyl99SqAd5S0u7msXw8Cixh
N/sLDg5hR5KscwHdABRKtDYRufLToQDeF7fO12fLYGzWzWyT/nt+RLBB/Y3ddNHanPxFKlE6jpX7
LPdXknAr4BOVBzKotra7k3VCkaNyAaLl9DpqhTUamz/WmNGDJ7E/Fh16R22fMeZGipfc+PzyiCtV
cZ41wFrdemvy0h3kN2zDAnqG+Lk0RsJUJPuePqND4xCmLrUTCVbCnM0CrF/IYVIqGPWBbI9xICvb
4JxfPzvHr+4MPgm2sPkkxFzsMZpijMKpcyatwXeANQ6JNyi5YlyROvxxuyNJc2f8XKczhO6ReFTZ
tswVGu52jAn7LXnQamH/Wvad8dCfX/++sGTPTbEf977T4KyQfCAO+i8ZTUbuLPFGNCn39IeEOlbM
VmmJpj5Y3DW6/Iq1bt7WjvaghRK40IRyiRiHJwM3T6VVxCW3hVPwwXERMy9nkcZKIWWQ5LREE4bk
Fh0m0LQxg63kX6m4Hwmjr8Ogp5xUC/dRPAaepmrxEbCe0m42yvG936+BgjEckQJb7TTwpGvqjwol
1JOuk91C8034GkybbeXR48js0onFNaoDQrk2AG1FtEJkEPVeDkvSP47kI3e1wIBPHsCi/ryAX5/o
qlAjDPLgs2UJN1zvc9R9GZP64REzTYI55+GsoraF47BWdWT7rzKbA3ASq4kjX6vsJeQphn2OtVzN
6iURMxGvhFOsmf5vgWphX96hIKL5Foc2v3zRXF0yyL8HLcQMitBeYyc1d8asfKN6xyaf7JS61A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223BA26349B4540"
last-modified: Thu, 12 Nov 2026 00:46:45 GMT
content-md5: 2lFAY046rGVqZYDEs6L6fw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e466bdb8-152e-461d-99a9-e303ddf1dc2a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-a443ceec-7a2d-dc1d-161a-78cd405b634a/test-blob-74da9ed4-dd95-f627-79d0-3e6854a554d4

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:45 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x223BA26349B4540"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53495fce-80d5-47a8-8784-81c8212253be
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 2lFAY046rGVqZYDEs6L6fw==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
Rj0B5YXwirUP0Ovd3jeMq3HRTH4gLigdll7FhqBQHfr2P4VDAuw5+0ONlVyPQP7fjsxbbg/kKhgV
408mKgMVvrLw556xSKmEmFA7kpjLjlVg5vjT9K/rERVtLh6dEtA/eNepnlhfLUUj1ta+qZh/SVX5
xUMLQskDBdWIQxmL54V//BnBIu/9ALmyrx3YLGh97uTIo0yMNDYNpZiC1ukrl+9QPq1+vSdl/MWK
WJKrKthtC1U1w0Q48sfjs3xXeirPhxcuiO27/zC9YqeHAtukYXrAFcuU9tSrF0zlmgqrDoKautB6
faLqsgwkeGCcsfDrP1IBl2ReO5BDg3Ch1WQmEVMl7EcLKuTY1WO+b350DmZb+Vu3qXcdO35AN/oy
SNyn/mYMd8So4BVuKcEBoMwSznQKRdwJbmjcB7DIyvPppYyGFnEXZ5ahsxhGSYC1G5uyLWiFKAIA
no/+MG8T3xUihIM1e4la+mfeaJLDwyXnJ+wVFZ2KZH2JhXjhGTcmjtMCJMX9f6ASWDMBpsBwPdtq
FgiD/sl4lx8Fq/UQeeAvt9m+wJ5f6qdMAr1pib29GUicdwMuo48KiYyl99SqAd5S0u7msXw8Cixh
N/sLDg5hR5KscwHdABRKtDYRufLToQDeF7fO12fLYGzWzWyT/nt+RLBB/Y3ddNHanPxFKlE6jpX7
LPdXknAr4BOVBzKotra7k3VCkaNyAaLl9DpqhTUamz/WmNGDJ7E/Fh16R22fMeZGipfc+PzyiCtV
cZ41wFrdemvy0h3kN2zDAnqG+Lk0RsJUJPuePqND4xCmLrUTCVbCnM0CrF/IYVIqGPWBbI9xICvb
4JxfPzvHr+4MPgm2sPkkxFzsMZpijMKpcyatwXeANQ6JNyi5YlyROvxxuyNJc2f8XKczhO6ReFTZ
tswVGu52jAn7LXnQamH/Wvad8dCfX/++sGTPTbEf977T4KyQfCAO+i8ZTUbuLPFGNCn39IeEOlbM
VmmJpj5Y3DW6/Iq1bt7WjvaghRK40IRyiRiHJwM3T6VVxCW3hVPwwXERMy9nkcZKIWWQ5LREE4bk
Fh0m0LQxg63kX6m4Hwmjr8Ogp5xUC/dRPAaepmrxEbCe0m42yvG936+BgjEckQJb7TTwpGvqjwol
1JOuk91C8034GkybbeXR48js0onFNaoDQrk2AG1FtEJkEPVeDkvSP47kI3e1wIBPHsCi/ryAX5/o
qlAjDPLgs2UJN1zvc9R9GZP64REzTYI55+GsoraF47BWdWT7rzKbA3ASq4kjX6vsJeQphn2OtVzN
6iURMxGvhFOsmf5vgWphX96hIKL5Foc2v3zRXF0yyL8HLcQMitBeYyc1d8asfKN6xyaf7JS61A==
```

## Interaction 3: GET /devstoreaccount1/test-container-a443ceec-7a2d-dc1d-161a-78cd405b634a/test-blob-74da9ed4-dd95-f627-79d0-3e6854a554d4

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_4
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:45 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x223BA26349B4540"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 903da427-642e-4b05-ab91-bdf4ed73dfd9
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 2lFAY046rGVqZYDEs6L6fw==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
Rj0B5YXwirUP0Ovd3jeMq3HRTH4gLigdll7FhqBQHfr2P4VDAuw5+0ONlVyPQP7fjsxbbg/kKhgV
408mKgMVvrLw556xSKmEmFA7kpjLjlVg5vjT9K/rERVtLh6dEtA/eNepnlhfLUUj1ta+qZh/SVX5
xUMLQskDBdWIQxmL54V//BnBIu/9ALmyrx3YLGh97uTIo0yMNDYNpZiC1ukrl+9QPq1+vSdl/MWK
WJKrKthtC1U1w0Q48sfjs3xXeirPhxcuiO27/zC9YqeHAtukYXrAFcuU9tSrF0zlmgqrDoKautB6
faLqsgwkeGCcsfDrP1IBl2ReO5BDg3Ch1WQmEVMl7EcLKuTY1WO+b350DmZb+Vu3qXcdO35AN/oy
SNyn/mYMd8So4BVuKcEBoMwSznQKRdwJbmjcB7DIyvPppYyGFnEXZ5ahsxhGSYC1G5uyLWiFKAIA
no/+MG8T3xUihIM1e4la+mfeaJLDwyXnJ+wVFZ2KZH2JhXjhGTcmjtMCJMX9f6ASWDMBpsBwPdtq
FgiD/sl4lx8Fq/UQeeAvt9m+wJ5f6qdMAr1pib29GUicdwMuo48KiYyl99SqAd5S0u7msXw8Cixh
N/sLDg5hR5KscwHdABRKtDYRufLToQDeF7fO12fLYGzWzWyT/nt+RLBB/Y3ddNHanPxFKlE6jpX7
LPdXknAr4BOVBzKotra7k3VCkaNyAaLl9DpqhTUamz/WmNGDJ7E/Fh16R22fMeZGipfc+PzyiCtV
cZ41wFrdemvy0h3kN2zDAnqG+Lk0RsJUJPuePqND4xCmLrUTCVbCnM0CrF/IYVIqGPWBbI9xICvb
4JxfPzvHr+4MPgm2sPkkxFzsMZpijMKpcyatwXeANQ6JNyi5YlyROvxxuyNJc2f8XKczhO6ReFTZ
tswVGu52jAn7LXnQamH/Wvad8dCfX/++sGTPTbEf977T4KyQfCAO+i8ZTUbuLPFGNCn39IeEOlbM
VmmJpj5Y3DW6/Iq1bt7WjvaghRK40IRyiRiHJwM3T6VVxCW3hVPwwXERMy9nkcZKIWWQ5LREE4bk
Fh0m0LQxg63kX6m4Hwmjr8Ogp5xUC/dRPAaepmrxEbCe0m42yvG936+BgjEckQJb7TTwpGvqjwol
1JOuk91C8034GkybbeXR48js0onFNaoDQrk2AG1FtEJkEPVeDkvSP47kI3e1wIBPHsCi/ryAX5/o
qlAjDPLgs2UJN1zvc9R9GZP64REzTYI55+GsoraF47BWdWT7rzKbA3ASq4kjX6vsJeQphn2OtVzN
6iURMxGvhFOsmf5vgWphX96hIKL5Foc2v3zRXF0yyL8HLcQMitBeYyc1d8asfKN6xyaf7JS61A==
```

## Interaction 4: GET /devstoreaccount1/test-container-a443ceec-7a2d-dc1d-161a-78cd405b634a/test-blob-74da9ed4-dd95-f627-79d0-3e6854a554d4

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_5
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:45 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x223BA26349B4540"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57e5aa10-643d-4865-80e6-d5202dab8d9a
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:45 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 2lFAY046rGVqZYDEs6L6fw==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
Rj0B5YXwirUP0Ovd3jeMq3HRTH4gLigdll7FhqBQHfr2P4VDAuw5+0ONlVyPQP7fjsxbbg/kKhgV
408mKgMVvrLw556xSKmEmFA7kpjLjlVg5vjT9K/rERVtLh6dEtA/eNepnlhfLUUj1ta+qZh/SVX5
xUMLQskDBdWIQxmL54V//BnBIu/9ALmyrx3YLGh97uTIo0yMNDYNpZiC1ukrl+9QPq1+vSdl/MWK
WJKrKthtC1U1w0Q48sfjs3xXeirPhxcuiO27/zC9YqeHAtukYXrAFcuU9tSrF0zlmgqrDoKautB6
faLqsgwkeGCcsfDrP1IBl2ReO5BDg3Ch1WQmEVMl7EcLKuTY1WO+b350DmZb+Vu3qXcdO35AN/oy
SNyn/mYMd8So4BVuKcEBoMwSznQKRdwJbmjcB7DIyvPppYyGFnEXZ5ahsxhGSYC1G5uyLWiFKAIA
no/+MG8T3xUihIM1e4la+mfeaJLDwyXnJ+wVFZ2KZH2JhXjhGTcmjtMCJMX9f6ASWDMBpsBwPdtq
FgiD/sl4lx8Fq/UQeeAvt9m+wJ5f6qdMAr1pib29GUicdwMuo48KiYyl99SqAd5S0u7msXw8Cixh
N/sLDg5hR5KscwHdABRKtDYRufLToQDeF7fO12fLYGzWzWyT/nt+RLBB/Y3ddNHanPxFKlE6jpX7
LPdXknAr4BOVBzKotra7k3VCkaNyAaLl9DpqhTUamz/WmNGDJ7E/Fh16R22fMeZGipfc+PzyiCtV
cZ41wFrdemvy0h3kN2zDAnqG+Lk0RsJUJPuePqND4xCmLrUTCVbCnM0CrF/IYVIqGPWBbI9xICvb
4JxfPzvHr+4MPgm2sPkkxFzsMZpijMKpcyatwXeANQ6JNyi5YlyROvxxuyNJc2f8XKczhO6ReFTZ
tswVGu52jAn7LXnQamH/Wvad8dCfX/++sGTPTbEf977T4KyQfCAO+i8ZTUbuLPFGNCn39IeEOlbM
VmmJpj5Y3DW6/Iq1bt7WjvaghRK40IRyiRiHJwM3T6VVxCW3hVPwwXERMy9nkcZKIWWQ5LREE4bk
Fh0m0LQxg63kX6m4Hwmjr8Ogp5xUC/dRPAaepmrxEbCe0m42yvG936+BgjEckQJb7TTwpGvqjwol
1JOuk91C8034GkybbeXR48js0onFNaoDQrk2AG1FtEJkEPVeDkvSP47kI3e1wIBPHsCi/ryAX5/o
qlAjDPLgs2UJN1zvc9R9GZP64REzTYI55+GsoraF47BWdWT7rzKbA3ASq4kjX6vsJeQphn2OtVzN
6iURMxGvhFOsmf5vgWphX96hIKL5Foc2v3zRXF0yyL8HLcQMitBeYyc1d8asfKN6xyaf7JS61A==
```

## Interaction 5: DELETE /devstoreaccount1/test-container-a443ceec-7a2d-dc1d-161a-78cd405b634a?restype=container

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
x-ms-request-id: 032667a5-a4a3-44fd-a986-1f2482eaf57d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

