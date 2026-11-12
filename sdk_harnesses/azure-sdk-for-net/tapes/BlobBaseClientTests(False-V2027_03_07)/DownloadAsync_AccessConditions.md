## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-02f4c069-f698-d43e-409d-382de58b8525?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_AccessConditions
now: 2026-11-12T00:46:33.9397261+00:00

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
etag: "0x232E32249E8C900"
last-modified: Thu, 12 Nov 2026 00:46:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ea6b0dd-ab8f-4f28-8d95-b5a89879c540
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-02f4c069-f698-d43e-409d-382de58b8525/test-blob-14fc7f88-0ce4-1ccf-307e-375788eb61f4

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
9ek5xKNH1jh6oyhZIbcWQyWHcvHu4uZtJ4jVB0eMnKxZWZH2U2gkIeq8iPTO5LKIhvUIXRiUNxIC
zJwbcs/w7Qd7AMglIPC8YlEHMVryn0PWTYBShD6TxSF/84fLCa8azJrtUuTqYmYES/vHjAW4ECxZ
RSVPnWnI5zqmpi1p8Vih7GW/BExe6+oZTjhCzDgcx+JaccSKyy8xJGqqQ7w5mlqiJqCg+Azg+lk6
NU8whRsBit9KD3+UFyE2jt/htKgu4LPeoKaYfM7WeXdrT5XfAJ5PqLnc7ovaDg9/aWos/kWwDFWb
UeV1aA4RdJUIKceLVo1AkgzvUfEnBJGXGRJjqXoxukNARK+52j+qy3r10uVH9BPd62w5wbpjdExT
3k/8rcoa1m6DShLdh7jMRIZ3MTKsTyT+hb4O9/iJ3c9iZfvwrh2v2/t2xKoA/2O0bXw060Iap48q
/SgMDN52+WxCeyG83JZox1Y2Nop6/YVaWYp8VfGNR75sxbD1o84cAMo9voRC+JHmyyPr43AEr/+i
sbJU+aR6tDNjTxblciSHGjbAPT8AGGH4lYnNomNOaBWxU/EcyAYlwglR3qh6AVn/Y8k5RHLAoZlQ
W2QbrRLPFecBNB8za1Iwmns1rzm5fpQvzj6aFCOj8LJXy2yhCRX3gsnAec05zPh3Can3ivJflt3P
697UNQHDXkNt25/ljpBlPixw+AXH9gJFIgp6q2W/9zSP0h02Ik3I/RqJzPBZkXoZkUzF757YCPXc
jhL2SbLdreNqVrxzLhzfp/vqPSkR7JCPYRkZ+giWtsonWpM60rNorB4N7ju+pWMw5Uii7crMyqKC
ZuiZw7Pb05/yS9OIpdVIgpEKA/1V0bu26RS/9MkAW5Dwt2vKz+hrMhubzFqPpz9yWms4wcakLZUt
4tqeG9/W8u9Dl+5qfbOontHiuQRgJkHVTZpdx5rJTIrVnewNzRY8xNprTBBRCNy4jyL0wnORzbuZ
yc5EeCpUektjlN/Gm9C7pvQq9Noxg0S9pTd31IkWRNAwcwRI90yvFtLE7XP88fRRORt+Z9jgaEWK
htPz3aXCTVAPlSfMc66oet4IbJXQwLRDJpptmN34UAu+vnB4vDksAqAj7VvMhcZs1ez61/uwucYe
r7cKVLRyF0UbDbU+ML2k3Gr0rdNYdqDUAMLw/XgPDgSqWQyCIa7rsNYVsHcRLqUvVfuRuwzzxTkW
NlPyghnNDP+wlNawIrq8CPz8Q8UpwtIcwKh8flL4t5PTbOta+S68SKR4YZrPfjNB1LIP9oJ07XSB
1cFxUI2st9xC3bbOYQ/NP/sgsGA3TUF0O6mg6MARXn522SRsS/cWzKm9jaF8cnKjQbaHVDwTSQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F7A7DF38B1C4B0"
last-modified: Thu, 12 Nov 2026 00:46:33 GMT
content-md5: eRpvggVYZAMJGozLJj+/DA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ade1b110-43be-4e8a-b931-923779dd3b96
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-02f4c069-f698-d43e-409d-382de58b8525/test-blob-14fc7f88-0ce4-1ccf-307e-375788eb61f4

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
last-modified: Thu, 12 Nov 2026 00:46:33 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:33 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1F7A7DF38B1C4B0"
content-md5: eRpvggVYZAMJGozLJj+/DA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9a3ef2c-880c-4923-b7c3-76896304b936
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: eRpvggVYZAMJGozLJj+/DA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
9ek5xKNH1jh6oyhZIbcWQyWHcvHu4uZtJ4jVB0eMnKxZWZH2U2gkIeq8iPTO5LKIhvUIXRiUNxIC
zJwbcs/w7Qd7AMglIPC8YlEHMVryn0PWTYBShD6TxSF/84fLCa8azJrtUuTqYmYES/vHjAW4ECxZ
RSVPnWnI5zqmpi1p8Vih7GW/BExe6+oZTjhCzDgcx+JaccSKyy8xJGqqQ7w5mlqiJqCg+Azg+lk6
NU8whRsBit9KD3+UFyE2jt/htKgu4LPeoKaYfM7WeXdrT5XfAJ5PqLnc7ovaDg9/aWos/kWwDFWb
UeV1aA4RdJUIKceLVo1AkgzvUfEnBJGXGRJjqXoxukNARK+52j+qy3r10uVH9BPd62w5wbpjdExT
3k/8rcoa1m6DShLdh7jMRIZ3MTKsTyT+hb4O9/iJ3c9iZfvwrh2v2/t2xKoA/2O0bXw060Iap48q
/SgMDN52+WxCeyG83JZox1Y2Nop6/YVaWYp8VfGNR75sxbD1o84cAMo9voRC+JHmyyPr43AEr/+i
sbJU+aR6tDNjTxblciSHGjbAPT8AGGH4lYnNomNOaBWxU/EcyAYlwglR3qh6AVn/Y8k5RHLAoZlQ
W2QbrRLPFecBNB8za1Iwmns1rzm5fpQvzj6aFCOj8LJXy2yhCRX3gsnAec05zPh3Can3ivJflt3P
697UNQHDXkNt25/ljpBlPixw+AXH9gJFIgp6q2W/9zSP0h02Ik3I/RqJzPBZkXoZkUzF757YCPXc
jhL2SbLdreNqVrxzLhzfp/vqPSkR7JCPYRkZ+giWtsonWpM60rNorB4N7ju+pWMw5Uii7crMyqKC
ZuiZw7Pb05/yS9OIpdVIgpEKA/1V0bu26RS/9MkAW5Dwt2vKz+hrMhubzFqPpz9yWms4wcakLZUt
4tqeG9/W8u9Dl+5qfbOontHiuQRgJkHVTZpdx5rJTIrVnewNzRY8xNprTBBRCNy4jyL0wnORzbuZ
yc5EeCpUektjlN/Gm9C7pvQq9Noxg0S9pTd31IkWRNAwcwRI90yvFtLE7XP88fRRORt+Z9jgaEWK
htPz3aXCTVAPlSfMc66oet4IbJXQwLRDJpptmN34UAu+vnB4vDksAqAj7VvMhcZs1ez61/uwucYe
r7cKVLRyF0UbDbU+ML2k3Gr0rdNYdqDUAMLw/XgPDgSqWQyCIa7rsNYVsHcRLqUvVfuRuwzzxTkW
NlPyghnNDP+wlNawIrq8CPz8Q8UpwtIcwKh8flL4t5PTbOta+S68SKR4YZrPfjNB1LIP9oJ07XSB
1cFxUI2st9xC3bbOYQ/NP/sgsGA3TUF0O6mg6MARXn522SRsS/cWzKm9jaF8cnKjQbaHVDwTSQ==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-02f4c069-f698-d43e-409d-382de58b8525?restype=container

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
x-ms-request-id: 4bb2fc9a-d97c-42e2-88a4-a706d88868ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-b7e30903-bf7a-f8a0-c936-fca60a8a0a41?restype=container

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
etag: "0x1C0C5A8E0320310"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b47851a3-8b6f-4ae8-8c91-bda7821c9b9c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-b7e30903-bf7a-f8a0-c936-fca60a8a0a41/test-blob-41bad8b9-269e-24dd-83e1-ca57c51be358

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
Y4+b7U/iMsDZoVwiRRrquODCg0pZXM7I3wRLrQ8pEaZ09fT4T3OkIdYj3dljfbKvTEPFRwe/6AfB
0w5Kl4WwsI+2rk8l8WlsHWJ0Nn71ZWFRnGDMY8qftAztN3xlWYlRcixJrc9iiVraWCmkS7KIy22s
+fok5E3FFvpDOLnsBsPYI8NSq7iR7hMG8Qqg+mhaZGwOuGCPLI3ehJbVH1Ch7VFlzCjuNiC1Gwrn
HvNDJByR6NRN3k1jSfY2cyYhvM/CZAS4Oy4/ay5MWJ1Wpw2am2B6Qzd8Uw8EAoMyuML5k147JLnu
iunuUn2mAYWwDKHom9jGp3mYRhH1tDirDbNrUsQ/G4NUqxB3jPG51lGJU/XhSRzqM+zlo92o+daw
Q0TKOq7AcPEelPDHThuH3nC/a2BCycOWgB/YWXilq7I5xkms75ujyeMEwrUsIuTRXcRt6I52bXmB
M7mP5xd5eeg+jYfS2+/VHKJ9PgYOal07B/yzOMMkw1nPKrvhE+HLi0nM7ZVc/oLVl8zr+C5ycslb
VOAaxUAlGsouArAz8wjAsbO8QnzI3gh53qD2OMsqXLjxhb8AsMYJp9PLLvzRoaPEKkZ7tjBMknXX
oeafLuH+A6X4QW1IwADts5uo/a8MqD38Mg2ErqaIpfJKKA/faXjxzCtW2V82e2pGjgKVo5TGy/ip
o/zUelT/b5x6/pfwDUoitzGEts7dxraiPSCk8gFdhF0WNcZ7HVHWV2nCu33TVYC4cuxjQRUqy9xF
MTw0WnybHHo62diEp5rfrl5kGws5z+if7IAU+kJH7GnpNesVovzsJ54DmHuoM8tSg5O2xbDRDGFU
lG78hiI38u1umnGuygtiePRtNTZs97i1wnavkSa5GCmJwQ6N8KB7y6aOOphZo7mHU028Y9cq5521
RsOrh2HGtYJIJAj91IdT8WmQ3bwfWx69KD3Z/LRRX9lw2Knc0ERFyIQWEX+wiX/FaXJtmgngleqk
7V8j7bjN9sUvjPzddiAlShU3CUqfDJ6+E5NC5MTPkEK/OOLkIdvMSBu5gfyC5/JRR0/0qIygBODB
ZdklixEAYPy6Hj4+QSk6a8Ev5ouhOyug8Jx12+i1HjMBIrwBp7wJuCAAx8m0EgYmuTzLcB5VHymt
hJp1i4QUBP8LPB5tOcQEJi1qoXRi7N6WTyKr6q4UrAKSVCIiky2c7MLJqdbnuYB4x0rw6n61Spi8
3jxiaBpR9pAc2uWh4ZIAzrWxmUMHr5aiMyJjI8KD3QmKZbXwOYOod7JFy96b1uW38BvJBLFUtC+m
wDX37dLNmP3bF3zdD5QxCCGQwuO3B109qzOnuthXNbGFSnlOsIngeDPhv79p2uCGmPuPxPJL7w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x272B71857B47C60"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
content-md5: c+7isB/LPFJQr29n35QLGQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ba231826-de2d-4379-b3ee-a9e0e9cd88a6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-b7e30903-bf7a-f8a0-c936-fca60a8a0a41/test-blob-41bad8b9-269e-24dd-83e1-ca57c51be358

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:46:33 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:34 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x272B71857B47C60"
content-md5: c+7isB/LPFJQr29n35QLGQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b6f2d814-7c50-4e76-91be-574882de1683
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: c+7isB/LPFJQr29n35QLGQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
Y4+b7U/iMsDZoVwiRRrquODCg0pZXM7I3wRLrQ8pEaZ09fT4T3OkIdYj3dljfbKvTEPFRwe/6AfB
0w5Kl4WwsI+2rk8l8WlsHWJ0Nn71ZWFRnGDMY8qftAztN3xlWYlRcixJrc9iiVraWCmkS7KIy22s
+fok5E3FFvpDOLnsBsPYI8NSq7iR7hMG8Qqg+mhaZGwOuGCPLI3ehJbVH1Ch7VFlzCjuNiC1Gwrn
HvNDJByR6NRN3k1jSfY2cyYhvM/CZAS4Oy4/ay5MWJ1Wpw2am2B6Qzd8Uw8EAoMyuML5k147JLnu
iunuUn2mAYWwDKHom9jGp3mYRhH1tDirDbNrUsQ/G4NUqxB3jPG51lGJU/XhSRzqM+zlo92o+daw
Q0TKOq7AcPEelPDHThuH3nC/a2BCycOWgB/YWXilq7I5xkms75ujyeMEwrUsIuTRXcRt6I52bXmB
M7mP5xd5eeg+jYfS2+/VHKJ9PgYOal07B/yzOMMkw1nPKrvhE+HLi0nM7ZVc/oLVl8zr+C5ycslb
VOAaxUAlGsouArAz8wjAsbO8QnzI3gh53qD2OMsqXLjxhb8AsMYJp9PLLvzRoaPEKkZ7tjBMknXX
oeafLuH+A6X4QW1IwADts5uo/a8MqD38Mg2ErqaIpfJKKA/faXjxzCtW2V82e2pGjgKVo5TGy/ip
o/zUelT/b5x6/pfwDUoitzGEts7dxraiPSCk8gFdhF0WNcZ7HVHWV2nCu33TVYC4cuxjQRUqy9xF
MTw0WnybHHo62diEp5rfrl5kGws5z+if7IAU+kJH7GnpNesVovzsJ54DmHuoM8tSg5O2xbDRDGFU
lG78hiI38u1umnGuygtiePRtNTZs97i1wnavkSa5GCmJwQ6N8KB7y6aOOphZo7mHU028Y9cq5521
RsOrh2HGtYJIJAj91IdT8WmQ3bwfWx69KD3Z/LRRX9lw2Knc0ERFyIQWEX+wiX/FaXJtmgngleqk
7V8j7bjN9sUvjPzddiAlShU3CUqfDJ6+E5NC5MTPkEK/OOLkIdvMSBu5gfyC5/JRR0/0qIygBODB
ZdklixEAYPy6Hj4+QSk6a8Ev5ouhOyug8Jx12+i1HjMBIrwBp7wJuCAAx8m0EgYmuTzLcB5VHymt
hJp1i4QUBP8LPB5tOcQEJi1qoXRi7N6WTyKr6q4UrAKSVCIiky2c7MLJqdbnuYB4x0rw6n61Spi8
3jxiaBpR9pAc2uWh4ZIAzrWxmUMHr5aiMyJjI8KD3QmKZbXwOYOod7JFy96b1uW38BvJBLFUtC+m
wDX37dLNmP3bF3zdD5QxCCGQwuO3B109qzOnuthXNbGFSnlOsIngeDPhv79p2uCGmPuPxPJL7w==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-b7e30903-bf7a-f8a0-c936-fca60a8a0a41?restype=container

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
x-ms-request-id: 0ed013d3-139c-4475-97a4-bbbc128ccef9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-b049b097-47d5-d39d-d152-2022ddc871be?restype=container

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
etag: "0x24F4EC204762200"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 78eadac4-46ae-4f0b-86f2-50a22886efc5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-b049b097-47d5-d39d-d152-2022ddc871be/test-blob-cd18ba59-4e85-8073-4b66-53a4e423d59e

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
OVvAdvVHQVFVvTvdnoIba7Wi9xSomxlxOudwTAa7RrtvDB5pW2xjUG74WhgMwDRONrVsOtBdFZ5B
TjwO1/VLmXaAbZJksRBIP6elsEABZXqyIRVQTgzrEvaAJwwwVXh5rcGhjFKi6YWlJPoot2VdQOnB
W7Xg+kpqlFub5IkDF+ouLAN/X9koDziQqyoRwlqRIucibvnDmbJ2N/f2BwX7oQ0Q+Yti3uEQmUx9
T08gWNIACsGi4KjxapNQCCfhMQcylAkdAcjPLkQFEtSsRkljVd8l9v1DWMBkHo/4EdW5LmhESrtF
A1cJMdt9nM7URSRJ7bJIvDsK7ztIuOI51xxvS+RsZ/yNHVKHHMQixbvykNlqriQicXEtOlp//Ep1
z1q+DlHqZ90nu9BgwKB25ymAVigIzij4TNpyPyyhDiAHEkxqZLdqCCj8QvJUwrDRtlIx/6YhbAAx
xcJ2dyiwhq2vWK5TC4NyFU4ADIs1pIkpoIjacA965qVLOZ719JD/S7xFpGoBfarOv+lYIGB0+yE4
TNef1hadNXEJCNLlfCG9AcDP8AAfJyLdC7ElIcVE1j19vae5X3Slp274+HXY6ULImh+fpQsgGCS0
wcpleBOsxDGUZ796BKFLKUiRJy+sBSJuXIempTExXKSCBZ2qQC9aTDREQ4GCTpZ9VHvDj/H1B7yo
9huMBR//Ywsb9/8EoekYNtr6aMKg7A3xKFG1bs2zjP3hAUkTzkYVROB2Z1aXebKSqlgW+5/5CAoN
m93OSvQ9Z2sBIqCfBWeU5CPiKoW3Wa6eIsR0nJBe5/k/BTNoR/rrOP/rlVcR86TwghZ7F92EVkEv
LygvyMvaojqnX/80K50p9vKFy8NXjS4fhBp649Abu67yORfSvG80EPIcapSlvFd4UiDr/4p916L5
EESwYL9qi6RQQfGFVzqCUbvROiKaesjDAZCvMLwjdWJ12Ksrg68zsd7wVHpl8vrmaa3PrJ1/X5V8
7V8uu1voLMyPEH6OVs0LnYlEqiZNXQ6WyMcOVMjF9nkVr5ZQBPaCCCet1uJ7VxLgww4TOrVvLo9Q
mPKU2dgEyhkFeac2upmSwqL+n4crGnG0LpC6sbvEpYAHAGsE7S5OqQzIdt5qqQl0gXgScI4HJH2B
4KtHSRleQNMnL7otjtRzsPZ7Y6SSSYSHRS9DsTTx/9vugg2CBl/yajULQ3lOR/Okn8CYjMHZ75Ym
wATpGo+eNTDePwvG8KmWiPhuhgYLOP48nxJ0WXIaFJN3XEZbCU+mbQ1Jbwfo3a4XAgPIamiPG4cF
rXt8Kty9xCp3TpRjOn+pyBn4wcj2VMFkXFduUakr6EC+VlvTKUMxi6rccI4ZtMeEH6JOllm+Dg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D319C499FE7B40"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
content-md5: UUOweDzTYebqBeqBLRt/iA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2c99a799-e388-48cc-9fca-3e9c7860942f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-b049b097-47d5-d39d-d152-2022ddc871be/test-blob-cd18ba59-4e85-8073-4b66-53a4e423d59e

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:46:33 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:34 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1D319C499FE7B40"
content-md5: UUOweDzTYebqBeqBLRt/iA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 65569144-8dfc-4f87-8d41-2a501c56fa1e
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: UUOweDzTYebqBeqBLRt/iA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
OVvAdvVHQVFVvTvdnoIba7Wi9xSomxlxOudwTAa7RrtvDB5pW2xjUG74WhgMwDRONrVsOtBdFZ5B
TjwO1/VLmXaAbZJksRBIP6elsEABZXqyIRVQTgzrEvaAJwwwVXh5rcGhjFKi6YWlJPoot2VdQOnB
W7Xg+kpqlFub5IkDF+ouLAN/X9koDziQqyoRwlqRIucibvnDmbJ2N/f2BwX7oQ0Q+Yti3uEQmUx9
T08gWNIACsGi4KjxapNQCCfhMQcylAkdAcjPLkQFEtSsRkljVd8l9v1DWMBkHo/4EdW5LmhESrtF
A1cJMdt9nM7URSRJ7bJIvDsK7ztIuOI51xxvS+RsZ/yNHVKHHMQixbvykNlqriQicXEtOlp//Ep1
z1q+DlHqZ90nu9BgwKB25ymAVigIzij4TNpyPyyhDiAHEkxqZLdqCCj8QvJUwrDRtlIx/6YhbAAx
xcJ2dyiwhq2vWK5TC4NyFU4ADIs1pIkpoIjacA965qVLOZ719JD/S7xFpGoBfarOv+lYIGB0+yE4
TNef1hadNXEJCNLlfCG9AcDP8AAfJyLdC7ElIcVE1j19vae5X3Slp274+HXY6ULImh+fpQsgGCS0
wcpleBOsxDGUZ796BKFLKUiRJy+sBSJuXIempTExXKSCBZ2qQC9aTDREQ4GCTpZ9VHvDj/H1B7yo
9huMBR//Ywsb9/8EoekYNtr6aMKg7A3xKFG1bs2zjP3hAUkTzkYVROB2Z1aXebKSqlgW+5/5CAoN
m93OSvQ9Z2sBIqCfBWeU5CPiKoW3Wa6eIsR0nJBe5/k/BTNoR/rrOP/rlVcR86TwghZ7F92EVkEv
LygvyMvaojqnX/80K50p9vKFy8NXjS4fhBp649Abu67yORfSvG80EPIcapSlvFd4UiDr/4p916L5
EESwYL9qi6RQQfGFVzqCUbvROiKaesjDAZCvMLwjdWJ12Ksrg68zsd7wVHpl8vrmaa3PrJ1/X5V8
7V8uu1voLMyPEH6OVs0LnYlEqiZNXQ6WyMcOVMjF9nkVr5ZQBPaCCCet1uJ7VxLgww4TOrVvLo9Q
mPKU2dgEyhkFeac2upmSwqL+n4crGnG0LpC6sbvEpYAHAGsE7S5OqQzIdt5qqQl0gXgScI4HJH2B
4KtHSRleQNMnL7otjtRzsPZ7Y6SSSYSHRS9DsTTx/9vugg2CBl/yajULQ3lOR/Okn8CYjMHZ75Ym
wATpGo+eNTDePwvG8KmWiPhuhgYLOP48nxJ0WXIaFJN3XEZbCU+mbQ1Jbwfo3a4XAgPIamiPG4cF
rXt8Kty9xCp3TpRjOn+pyBn4wcj2VMFkXFduUakr6EC+VlvTKUMxi6rccI4ZtMeEH6JOllm+Dg==
```

## Interaction 11: DELETE /devstoreaccount1/test-container-b049b097-47d5-d39d-d152-2022ddc871be?restype=container

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
x-ms-request-id: 49aa2a12-4bf8-4291-a775-3f07af4a6ef6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-1e35c7d6-e319-4a32-a88f-ea3207dd51e7?restype=container

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
etag: "0x232B711A6110A60"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ffc04f13-523d-4701-9743-276caa89eda1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-1e35c7d6-e319-4a32-a88f-ea3207dd51e7/test-blob-c8e509bf-6a34-6820-96d0-a9e9ee7e7556

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
/0cCGRB1qzw3XCUoxQ/jYEkEd84joPV2h84k9WRBeW4UbKWcIbyOYBz5572+CoSZq4noA2WDw15S
jJJCUbXY9eK2FFhpRz+NdRayKrk3t31Ji0nbWXYIkahHSpUqTA9mIPHbB/UsL2RJW41O0ZmlGtQU
+MVr/JxsroOwIv2pYykHSwnHXLCHHVvlkf3oub8PoS/BFVNJ+iRVbllyew1noPhjR4WP3b4jjdtq
hmueg/TDoIDN6E3WvVHlce1XFKFOffEFhXI6f8RwnYh433O4t+tkr9qMmbeqjYo0qmzQzHg5HAl5
mP2BiCG8XUvFXt7dLLoC8mTGweM6WvjoBtVXoNEPPsJqPx7t4ie50Dxs5S+sVn2xztkTclsmPz0F
mYJMZL15tR8bcu2bFA89DfGmznXJPK9XptH3+8tnRP/g6EmlbWt/8i8PkOOQFbrJ1mVpf3HIPF3S
9b7rgbpTsy7tuyzGmKCFJttGuavLxpAWLSVm/sSOGKvr0nitlHB0u921o1qOAz3F41iVgoKyBy4t
1FSV7bVqX6KA28Yo2JJr0f3NFiM2iCrnoBpr+JYoOMtJf78c384oS0O4DSd3nQvGKbCF5fAL90wp
rkyb/mYLV6P63ljTT/EvpcvffXoCbwMOpc7lo1PaPYhz8jGBjUzdrLaEfL6y89q+VT8lK3nRJz5J
jFiXJrRPIKDQX1zArRd+AtHEffNEXLL0Jk0TtRIOocvzOAHzRYYBNFwd4ZN+/qgnpimnDalLBC+m
o/9mPGqOwr6QzXQWirxLwkiWJ3oedSil6w7oZpQiqDTRTKGGm/jxjh/V7TEzERxsXEpgtNy0iC3X
wFFcpVspbiVART0axCZQpZhbSIj3ctryfApJwfNXHMRzr9qnlenErH8L88veUZcjDw9EWT+l3052
ailQ36wx6Ch5phRMqRCvl5wJ634OEytyJrLkE8OEztCLMCq/c8zS2QqjZaqD12b+lcKinPTPaFb+
3rn6TNVl9NhEwHnl7yPQNhF0a66A705L5X0B4jHcvMjTwZQT2Iw1PXDRPhbtGaWe0mbiW/yofe9q
rmdXYxKnaASxES6OvV6EPi09rrA4XszYYg/L+WDLK0OlqCkl3dpeKtUSPAd3DxUHXRzOa84+MlCa
fwEC226k5ebq6RQ1X2FT3oTbJSLFYFL6w5xD/MB1ZnbYi17YXE5mblYgjSYB0v67e4xKYwwt1B6u
CBfSYOgmdYKeXNMCe4I1dLfLpNMs+fGeh4EzKgNpq7Y/KVQ2lA1u+hejYnUquAAJFO5VYjBLgQ4l
M9hm8kp/NLEcw1Eu/9+qXam7iZZ8c8+BKhYUFEiF86hFEGA0BwjNJC7EDfSu2xUOqgSHj/h4qQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x276C855CB56D600"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
content-md5: qrzJ6VhAw+w1s4fDL1w/GA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8687c051-53c9-49b2-aad5-b70487ea32cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-1e35c7d6-e319-4a32-a88f-ea3207dd51e7/test-blob-c8e509bf-6a34-6820-96d0-a9e9ee7e7556

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
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x276C855CB56D600"
content-md5: qrzJ6VhAw+w1s4fDL1w/GA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0440cac3-e875-430c-afb2-f6df6529f3da
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:34 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-1e35c7d6-e319-4a32-a88f-ea3207dd51e7/test-blob-c8e509bf-6a34-6820-96d0-a9e9ee7e7556

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x276C855CB56D600"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:34 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x276C855CB56D600"
content-md5: qrzJ6VhAw+w1s4fDL1w/GA==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b7201f4-3c27-49bf-95d3-430c2227ecd1
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: qrzJ6VhAw+w1s4fDL1w/GA==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
/0cCGRB1qzw3XCUoxQ/jYEkEd84joPV2h84k9WRBeW4UbKWcIbyOYBz5572+CoSZq4noA2WDw15S
jJJCUbXY9eK2FFhpRz+NdRayKrk3t31Ji0nbWXYIkahHSpUqTA9mIPHbB/UsL2RJW41O0ZmlGtQU
+MVr/JxsroOwIv2pYykHSwnHXLCHHVvlkf3oub8PoS/BFVNJ+iRVbllyew1noPhjR4WP3b4jjdtq
hmueg/TDoIDN6E3WvVHlce1XFKFOffEFhXI6f8RwnYh433O4t+tkr9qMmbeqjYo0qmzQzHg5HAl5
mP2BiCG8XUvFXt7dLLoC8mTGweM6WvjoBtVXoNEPPsJqPx7t4ie50Dxs5S+sVn2xztkTclsmPz0F
mYJMZL15tR8bcu2bFA89DfGmznXJPK9XptH3+8tnRP/g6EmlbWt/8i8PkOOQFbrJ1mVpf3HIPF3S
9b7rgbpTsy7tuyzGmKCFJttGuavLxpAWLSVm/sSOGKvr0nitlHB0u921o1qOAz3F41iVgoKyBy4t
1FSV7bVqX6KA28Yo2JJr0f3NFiM2iCrnoBpr+JYoOMtJf78c384oS0O4DSd3nQvGKbCF5fAL90wp
rkyb/mYLV6P63ljTT/EvpcvffXoCbwMOpc7lo1PaPYhz8jGBjUzdrLaEfL6y89q+VT8lK3nRJz5J
jFiXJrRPIKDQX1zArRd+AtHEffNEXLL0Jk0TtRIOocvzOAHzRYYBNFwd4ZN+/qgnpimnDalLBC+m
o/9mPGqOwr6QzXQWirxLwkiWJ3oedSil6w7oZpQiqDTRTKGGm/jxjh/V7TEzERxsXEpgtNy0iC3X
wFFcpVspbiVART0axCZQpZhbSIj3ctryfApJwfNXHMRzr9qnlenErH8L88veUZcjDw9EWT+l3052
ailQ36wx6Ch5phRMqRCvl5wJ634OEytyJrLkE8OEztCLMCq/c8zS2QqjZaqD12b+lcKinPTPaFb+
3rn6TNVl9NhEwHnl7yPQNhF0a66A705L5X0B4jHcvMjTwZQT2Iw1PXDRPhbtGaWe0mbiW/yofe9q
rmdXYxKnaASxES6OvV6EPi09rrA4XszYYg/L+WDLK0OlqCkl3dpeKtUSPAd3DxUHXRzOa84+MlCa
fwEC226k5ebq6RQ1X2FT3oTbJSLFYFL6w5xD/MB1ZnbYi17YXE5mblYgjSYB0v67e4xKYwwt1B6u
CBfSYOgmdYKeXNMCe4I1dLfLpNMs+fGeh4EzKgNpq7Y/KVQ2lA1u+hejYnUquAAJFO5VYjBLgQ4l
M9hm8kp/NLEcw1Eu/9+qXam7iZZ8c8+BKhYUFEiF86hFEGA0BwjNJC7EDfSu2xUOqgSHj/h4qQ==
```

## Interaction 16: DELETE /devstoreaccount1/test-container-1e35c7d6-e319-4a32-a88f-ea3207dd51e7?restype=container

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
x-ms-request-id: 8710c021-193a-4cb5-9c6b-ae0f4ad0561c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-6765eea0-66b7-d2da-4e00-056944fe63af?restype=container

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
etag: "0x235FC4DE4A723A0"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f2a8d780-79d4-440b-ad8b-b6a15c874610
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-6765eea0-66b7-d2da-4e00-056944fe63af/test-blob-fa69c07e-60e4-7883-709c-c3c2a73ec5ee

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
zGegKyFAmLoOW3YkBfInjzWu5qGTEPFZLhJ5M2S2JJhs+RyG3kk0X1WrWVvvtc1b2XUzlhjCHLt1
RvwPx2RVVzfeuAzWoLHreYZL6LeVanlFHVrugo1/qd1gEZdNJZjwVQIkEPzBhTjESBySdjQE39yD
yqkJZ9SpXw4udY4anlTtWpK1cVl8hJciKjpx7TOpWzK6ylvu5+0terHukg+qqanIpBuhT22CBkYR
5z2aOHHbhRpcX9T5/nOkh/eojvGHd4CRqEkYBwvEOMMV3P+wk0FAEgz1TUnVz6Wn/Md12ndUim+8
CI8nwn4OlycQ5CF09PS2Z3vlkSo3u9mjcApDTl5LwFKP9IqxGFCO57UixOuDMgjTv3L8bvhFhU22
hFJzykjJxCPP5QBqBE8rV6p0FPbuID0CcI/sT1JaSm49+5T+Gh1sWQDHtE0IaLsi0BdN0HBWx2MU
cFm53XTRdJuRLQi7LTyNB7v2Jmzw+gjTyX46DHn95jMw6anDsnyL9j+ydjuyZ6PbwMi0X6H3I3ZR
5hP2lmchk0bVikOSyVQ/ai8sPYPNIWLbX0ywSYaROcYzcsxolWDXkOP03NxfSPd0dfVxyuXzhMSx
GzYbcUrAQ1F9X1eI19XOVK2f2ESFexdUPNORIG7gP+0It3oqux6ZNJmL4umf7J4gonY4VKuAK58f
xzV2LiPinR9pgCBapJiOBqSr+ZgttFA1cX34p+tCh4vaCvTpIgV1qUXJNmx+xf7dqU0G1DEH8RLl
Qb2m6vU0J/iUgJmjpOSfNVBTZH7kt6x/Gv6dO7JZ0xniBOFIzr5QlA9z6URkOQRpZ57gs4yUAIkR
J8/2l+tFOqyAwaACVmaSAs9ucM1nGuD5NNMTeB+MTgNXN6fvWf0jLq6Y43hkZhA3TrG8JZC7qQzu
/WMXMcGN83Ocqx+/o6nSSkIfzzdolM3D2ypuzyhzm42aAFuaDPzsCvAEx7vweKsH6tpNnNrVhmiV
VFWXHiRKKA+SJKJNNz5FMsRHY80R0mN+ZuVOJf+yxXrzBLimVevMup6sXlMIubOcB2oWjiKbhIHy
Gbc//AIQ4F8oWjKGn93Ye6kuZXQPda0xsR6UmzZXV4A2tDwzjb6cnH3031+AFmiNPhN5bR4N46MK
DUrke0Qo0AKyT+uhpO3qksn2GpVNsZu1B10j3uphKNGYKX90tyA5zA9czcZ97JkljttVF8gNvVuu
L3PnBPIYUCcZCHtudtqovE2G8OPVNxvD/VAPDBAIi2skxoesUcccRH2fY+MetxcArVp6hsx32PdY
JAehCEQWEX0PSbBT+2uGaatmNtQ3pUY4Dl+2jgSfrO2QVC3Aezs5iFJmDm1nrbHv9BwgEaIjIQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DB69F1F25B3300"
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
content-md5: tHLFKbti2/mTRaEnhV8v9Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a0763be-9f9c-4975-9b26-ec0cbd8d7064
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-6765eea0-66b7-d2da-4e00-056944fe63af/test-blob-fa69c07e-60e4-7883-709c-c3c2a73ec5ee

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:34 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1DB69F1F25B3300"
content-md5: tHLFKbti2/mTRaEnhV8v9Q==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: baec8c00-d05f-4af1-8609-e4121c7bb5f2
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:34 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: tHLFKbti2/mTRaEnhV8v9Q==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
zGegKyFAmLoOW3YkBfInjzWu5qGTEPFZLhJ5M2S2JJhs+RyG3kk0X1WrWVvvtc1b2XUzlhjCHLt1
RvwPx2RVVzfeuAzWoLHreYZL6LeVanlFHVrugo1/qd1gEZdNJZjwVQIkEPzBhTjESBySdjQE39yD
yqkJZ9SpXw4udY4anlTtWpK1cVl8hJciKjpx7TOpWzK6ylvu5+0terHukg+qqanIpBuhT22CBkYR
5z2aOHHbhRpcX9T5/nOkh/eojvGHd4CRqEkYBwvEOMMV3P+wk0FAEgz1TUnVz6Wn/Md12ndUim+8
CI8nwn4OlycQ5CF09PS2Z3vlkSo3u9mjcApDTl5LwFKP9IqxGFCO57UixOuDMgjTv3L8bvhFhU22
hFJzykjJxCPP5QBqBE8rV6p0FPbuID0CcI/sT1JaSm49+5T+Gh1sWQDHtE0IaLsi0BdN0HBWx2MU
cFm53XTRdJuRLQi7LTyNB7v2Jmzw+gjTyX46DHn95jMw6anDsnyL9j+ydjuyZ6PbwMi0X6H3I3ZR
5hP2lmchk0bVikOSyVQ/ai8sPYPNIWLbX0ywSYaROcYzcsxolWDXkOP03NxfSPd0dfVxyuXzhMSx
GzYbcUrAQ1F9X1eI19XOVK2f2ESFexdUPNORIG7gP+0It3oqux6ZNJmL4umf7J4gonY4VKuAK58f
xzV2LiPinR9pgCBapJiOBqSr+ZgttFA1cX34p+tCh4vaCvTpIgV1qUXJNmx+xf7dqU0G1DEH8RLl
Qb2m6vU0J/iUgJmjpOSfNVBTZH7kt6x/Gv6dO7JZ0xniBOFIzr5QlA9z6URkOQRpZ57gs4yUAIkR
J8/2l+tFOqyAwaACVmaSAs9ucM1nGuD5NNMTeB+MTgNXN6fvWf0jLq6Y43hkZhA3TrG8JZC7qQzu
/WMXMcGN83Ocqx+/o6nSSkIfzzdolM3D2ypuzyhzm42aAFuaDPzsCvAEx7vweKsH6tpNnNrVhmiV
VFWXHiRKKA+SJKJNNz5FMsRHY80R0mN+ZuVOJf+yxXrzBLimVevMup6sXlMIubOcB2oWjiKbhIHy
Gbc//AIQ4F8oWjKGn93Ye6kuZXQPda0xsR6UmzZXV4A2tDwzjb6cnH3031+AFmiNPhN5bR4N46MK
DUrke0Qo0AKyT+uhpO3qksn2GpVNsZu1B10j3uphKNGYKX90tyA5zA9czcZ97JkljttVF8gNvVuu
L3PnBPIYUCcZCHtudtqovE2G8OPVNxvD/VAPDBAIi2skxoesUcccRH2fY+MetxcArVp6hsx32PdY
JAehCEQWEX0PSbBT+2uGaatmNtQ3pUY4Dl+2jgSfrO2QVC3Aezs5iFJmDm1nrbHv9BwgEaIjIQ==
```

## Interaction 20: DELETE /devstoreaccount1/test-container-6765eea0-66b7-d2da-4e00-056944fe63af?restype=container

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
x-ms-request-id: bdaa161d-53e0-4489-b447-583afdfadec6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

