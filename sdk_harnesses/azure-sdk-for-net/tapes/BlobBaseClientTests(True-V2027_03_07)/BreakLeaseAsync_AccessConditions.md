## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-cc1bed7b-868b-4f81-b1df-4b750444fac9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).BreakLeaseAsync_AccessConditions
now: 2026-11-12T00:47:33.3474947+00:00

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
etag: "0x1F6DBDF1B5B15C0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24174f31-2be1-4094-83be-3ec0ff448460
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-cc1bed7b-868b-4f81-b1df-4b750444fac9/test-blob-fb99e77f-a545-a638-3053-5d572fe9666f

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
MEd6we4WjDIlJeIesJhH1XgblryyGqbWtHSbOCgqIMd420S8yTnbaVpm1R/CGvaYC4feE1KpvRWh
pAx5e1QK+gUapdRTiws/Py1hTESHE5p+AiygSwx1zx4uGiUsYu0GXNoZp3QhRYB8n9MkR3DRGpBy
+ngnaa/5pda1JHDmEt1AW/BpbWslXbysJKs4UYeuXQCUumh03/IrIAKeayEPlo325OyAZ60lTJy7
ekQDwFNOB8ZwUVh1y3z9Pk1oh/KbnY4eQmybLfVTb23LuGSuJ1+vT2NankQ0gBlwgilfvMSqIN21
5X7ms9nQHeHqqhIXTxbtuTiOQP5J6cFTK6vM87OoIJiH+ELgyJuKioFjStYHWDMScgOMHODea/u9
k4guBCouQYl5kFbUDfGcBLZ95p/qTNJ3uoGwGwS4qIxHIzUTW4ZXNQhNjcjdPmUR8BgqYYVb0ka2
tkmpfSWEwefKjem7iKgvJrCXnb8JmnwcnivsjUcG61DuXaQ8rbfiyMvhE7B7VWdv+jvUxDWHrBzN
jd/6mDOfw6GYzSsD83j5tdT0KIfLoEjDfJMMMicbZ7CIbiDX5zCXQU8O4og8awbC2w9gkoOVAeyX
Nxugk5F6fGV6e4RXIc2kXOc3vL2/hhGNSVYXu9Qt8m00QLAV962+k2Uiwe+Ca7lBvDWcXUUu17AK
Eko6Y8GRTYgXI+Edj2U6eClYncUhC92d1v+ekJUnBWn/CuRihDCkkXNmakjYJCzQYuQc1jrq6Adt
nIzB8r3z7x14HYSB1/T4swtSuqCVxbHSzi6wCy8uFCLc9eej4p62c3orYAaoTorwIyIumC1m19fb
7ySPQ+PtSQlhpeEMVNBsm0clamSrKoCjv+gM/3v0dR0QyPN6JzCXPRf9Rqmp5M5SwvzmQG1zL8Sk
64P74EmNbS/E/Izd8nQXjixNrePW+tsZuj1/DjSwnJgu1jusm1zNcNl65OhCddCIz7JBJYLhzfGo
4iYLDV76E1/zrhs5avPPfz0KXBXy1kVt9z+CbncWTQlKBLk2wmJ6f9CIT8a0TmS/caVF13DctQvh
nhYfeKXn3WES72U5mL3aj91Eaod/uKjaw/zR0HaZbk+tVSNLWgcroXFkol//hdjnakeTl0qEYuVu
RbSoFgzreIEVjEOZjjTVGMgVGhZI2z4j6WYuBtYEKPM+3RVSg4pleSne6fiVTtwSvX6CbkfPJmp2
hCymvHKqEGRQW7Efg5Q9sKDsavFFjpuKHEhXgrmrb7ar2/9evry2M9mURPIq8zrqRL2m4rx4MfWQ
HKAqU42qpev6c6eV3/LkNTYYsEmpXygObT77BIz6MqoJzqIcjOBL6p8HL3+SVGTLwq2FYICr5w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A2A18AF1454C0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
content-md5: uwI/LPPFeADSnfuoMGdlaQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5bf802eb-ab21-4a14-96ec-86f8beb82397
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-cc1bed7b-868b-4f81-b1df-4b750444fac9/test-blob-fb99e77f-a545-a638-3053-5d572fe9666f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: e51b77bc-ae4e-5fa1-0040-fc8b104fc7a9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A2A18AF1454C0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-id: e51b77bc-ae4e-5fa1-0040-fc8b104fc7a9
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 68244d1b-d308-4fa9-a700-8fee99548403
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-cc1bed7b-868b-4f81-b1df-4b750444fac9/test-blob-fb99e77f-a545-a638-3053-5d572fe9666f?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A2A18AF1454C0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dae24502-864f-42e8-b9e5-b96a165d49df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-cc1bed7b-868b-4f81-b1df-4b750444fac9?restype=container

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
x-ms-request-id: 9e4d1ff6-7ea5-4885-ac03-6374d6c7fc27
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-aac6cc55-30a2-7ba8-18d9-3041df75d22a?restype=container

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
etag: "0x2141A074F2FE800"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ab4acde-03c1-435b-939b-2093b045ffad
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-aac6cc55-30a2-7ba8-18d9-3041df75d22a/test-blob-a4e6e75e-fa71-3cfc-fea7-2f3f96c9547c

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
+gQvk7oARYvOn811fl9/im7SLShpIjdb0Iqs+gFp5U+Fs0bbRT5wXaJa1tEth76eJ6TRw5srE9jM
1MMvVEqKZbl978oYpEUwYs+GDkxlLUjLDdJcmCGzWqBuDnF6QAhXz3EYsJfzhYNeoGHLpASLZqZ6
Y0d4LsyYyZUqqpXUtSLHLj7bTX2x2IdP/ffA57Wb46jLANzB36GkgOYCydvtius/BHbFsBgoyYu/
KDDV1+Hgj8ftCbVFBU+dNs2Xrg+rYnIMgOM+1TKPojZQArZxz6gFITkU/4E2+f8nKHlKkRp8E8a9
yFf+obmUXWZ+9QKYLGclkYzVl2Lx1ofjF625RREc1O7wswZRBoCAgKEbtwT8jvsRJP+NpnxjzPLP
G4oM2hhVYiAUp3hh1IsMVRfA1R6D5oixpyARji1yjecTgev2dKWJxlTj6OeDsFB0gVFlovbUTDQB
WjL3Q9TyoRqRTVOfFuBxNw/Kn/2hLvfQnQ3cDerwPzS39BlzkYKA8EbM8WP91Wtw82vnCa02YCw7
J6bHFpQvoQ4e6CHH/qWMSq621DyU0sihaxl/CTWHgJTsN2rcuNqynVBV3u1KqPXFWr/+f4vwp1Td
Jap7sJfYlmeM28Y7sJHUBDfrP/PbV8Ijuq52iAEJ+5AV/pMvN+24fEeFvc0viqotKXtUBGhhAs3o
V/XoYQ1mg+A1JrH+pc1KMsKsVZr19DAESV+GtPYotPzFR9/3zxo5Hzrs+WP4L4StCtGltK0z8mPF
4xiu4M7pDXK1OF7tUmOncjVfCfrMDBnb2Kokgv9OklR8MesCiz9rA+vxQ/YlwLdu/kJ30+lo+df+
0wgkxItzZqUJcCF3peb29AUP28kjtRfytYO8179rFDgUA7c3Rj5gfdxQG1CW91lbgN7jWR4O2x3w
Mg8Ht47mnlzpY6Evv63Hrl3s0pnHW74qYFfgiLoZBSeZRhQvWMZOan3zrZS3LMExG6rAIQmEKdZQ
3FY3BRWhz116lXiZmFaWnmgc064qczOVrmwQWOMeFR093nxwFmRnUd42PJZImINUKoOhZ1UnJmgi
oVapkHZ5W4BbW7nZJocDtIHQ8zadTBbovC5gfa7HFrgTTXQNvcFnveEW7T3JegT7nbLUVzIyhVRA
wNRHGN7Sk0QBxtgT9ffAaDZVh1/YHkIqZN/7876F4cggzfzsH6QDQ1r4yLQr6Ke7E+783P31Z6KS
HbP+1p+FfOQQ8ij61EiRUkME4FaO/nw4QODQiAXKKmVaWgLwBGy6ckzPGvV/wT+la4m68IdLBB83
xpa/tfPfRsjDn3lGoU3WSm0KvuOGuH6hKx17DzneD1bjuT7W+r1Y79QsuyHFXso746YZQEU7sA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D3EAAC39CE8DD0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
content-md5: HJHZaZuH8wR+TQaOpHNZqg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 02cb29ce-1fc6-49de-9667-790bc1fd7479
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-aac6cc55-30a2-7ba8-18d9-3041df75d22a/test-blob-a4e6e75e-fa71-3cfc-fea7-2f3f96c9547c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 8a1e170d-64d5-8f36-e490-2363e70f0050
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D3EAAC39CE8DD0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-id: 8a1e170d-64d5-8f36-e490-2363e70f0050
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0fa4d566-f977-449e-be1b-6fb4eda16242
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-aac6cc55-30a2-7ba8-18d9-3041df75d22a/test-blob-a4e6e75e-fa71-3cfc-fea7-2f3f96c9547c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:47:33 GMT
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D3EAAC39CE8DD0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 89bfa2c9-30ea-4f77-870c-80ade4e54bfa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-aac6cc55-30a2-7ba8-18d9-3041df75d22a?restype=container

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
x-ms-request-id: d667fe21-fd8f-4c3e-8843-4f94b886d58e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-0fcfb1b0-fd5a-db5d-cc53-3f2b92c5ce10?restype=container

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
etag: "0x1E20801188616E0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c3cbf605-26f1-49be-907c-f43a93c9b702
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-0fcfb1b0-fd5a-db5d-cc53-3f2b92c5ce10/test-blob-be3008a7-32db-8a83-9d9d-d791a1fae22c

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
41Zoj3UrVhC6Q72BJQr8H8ESu9/eQnR9LkRxvCbMOdFxE0g8XT+bfLEgA5h1AWWToLfPjj8CTaHi
6mExupnq7gnrEBLCv8KCdz8tvj7bCCze3Rtu/KqSb8WnWnLeacIYNhWPivFT0eH1TRf/1Y9iBuI0
Utx+e/FeWKFMGmVPpA19FYcpS346iww6eK+Tk5k2RFOQqRflmbojMTFQB7Z7pakJgr8HOLpj+cfP
QwJCysUHFtYRv/r2l3vMBhpM6oRWvtMGihDaLguYLK9PFla34GZsSfDgauauEutEOjKgFw9DeYQv
PEC0LOfKeJJKp4AkFCW04KGTdVTsV3cllfPY+BWgDJzRiKQltxwIFvFTY2tqHyYN7DZtsAMwQuTJ
jpf08YB9qZvjU4yBjiiEil9jmPMLu3bNywzeMluZoUW/XCmFFCRx1rnQhsyZjF0N6SWkzKnxvdMg
JyZznnc/SrFGwTH//3Y68cI6OzWqMz6u0Ek19NSczp9VZOz+/ThCkTsaUsorDumvadvntoGddvPn
xM0tCVbdqvOSqZqJPPSK96r5kOF0gsJfhov5tBcdt+75FzhqFYjlPafWmWRPJi3mXb/XpOYSc0IK
zYLL4/bcdPKsjyW7H+IiFFI5neleEF9dEldXRhMI56P2X0cFGlmx+SRyopYIKj3ctY+T2NVYq70j
bdCehC7epKiBxb+bHfr5h6PF7G3IVegZe5GDdA7OnbSK4ayIEnX1k/7uh2V+QZeVmVAxk79PWhjo
hQmdWi+ZsicLEDtNcHQuz1hv2c6Cmzn57dq+nQr0O4eUoI1rWDjOVdQ9cjBcSCjbAsRm34BKZenQ
pG1U2xUdFtWzudDnw3cgoIT5RSgInKWy4ppGjlsGSTqjmrTLenq/IFtaqI9Y9D9MRj/8USDBxwfH
ovh714h6rW+WQyjDVCYKOiXMrfQWWu1b+UccCvga4tKsBNeBREjT4PsgwbEWifIY8hb79BoSsUgK
H95AXaJ2fGBVFk9OiPbc+cz59Zg8RXBVAxjiHu64mlKPdiRqkoJZqUVQwHKiymkgHvpNGbuwztpu
6lqJlF1ynXz9vhHRcmdKoEtS7IT9szivwQD0a4CW36hJ/KcozxXo3SL2pAtXT6uTA3lvXeFVcTch
2tJcfjH7Zt9ph3a/IdA2ag5iBg4sV3JUYGgHJ4HG9ItwBvVDi1/x+z4s7sc11OGoOfLS82oo9IJg
CB3J8z9dopPrThrb896vcAvPAGmqH4yGXu2P9AAgRxJy4oNBJwf/zkwzSoXHzUYTI4JfWfQZtumR
Q5VRzq6TygcIaBBbbUkD0DEdd9QHv5Cne9B9we4dWSyasORyrQCdn399vmU1uLY5W4jC/D4Uig==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20863F9AAAFCE00"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
content-md5: oInFA5sW7I5WYmLr+mWYLw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6920f51a-e7da-4fa2-9ffb-95066c68e5e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-0fcfb1b0-fd5a-db5d-cc53-3f2b92c5ce10/test-blob-be3008a7-32db-8a83-9d9d-d791a1fae22c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 53aa0483-15dd-1809-ea0f-e4c1bc659122
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20863F9AAAFCE00"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-id: 53aa0483-15dd-1809-ea0f-e4c1bc659122
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0af973c-e18d-4142-a08f-7851ac2a793e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-0fcfb1b0-fd5a-db5d-cc53-3f2b92c5ce10/test-blob-be3008a7-32db-8a83-9d9d-d791a1fae22c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:33 GMT
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20863F9AAAFCE00"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a132d4e9-9757-4592-9ab7-6589e30a0cc7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-0fcfb1b0-fd5a-db5d-cc53-3f2b92c5ce10?restype=container

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
x-ms-request-id: d4762875-0458-4dd7-871e-0efab686844e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-55d77f31-0089-712b-c21a-4465655a5ced?restype=container

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
etag: "0x27159D826A46180"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9356b321-da8f-4c3b-a63e-a6f3e80ea57d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-55d77f31-0089-712b-c21a-4465655a5ced/test-blob-6d602686-ac03-89c0-7565-d35550f7f9d3

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
ymWRfWe+AILZOJHC0aSzj7L3OpYEIx+Evk3fJCzVIMohcJoAyd+FxyXdlMob/bjRskOjWbxizqdG
DL4Z3txWAxjGoWAJssbTcXNwJ45UacCUDXLoMscOvqLzubwgbOhIh5GyVVxYyP99z+dJ8acY8aP9
hNFqbdFQt+K9FfkJsgWKJ6D9ohNjPEVza2LfxMz72scYIucX3hq/YZ16mrMFcx3ivsoHG0+QmUiL
9wFucfIVwjox8Y8ec0mFPUF16aGSbfdF/QYC9L94iImei+cYUPCqZdd41IKNw0uAgd0NGrCm+YoJ
KXPsEs57uGgGf+dibO1RyoPKGZh1tzm6gXLia27Y+JFcDyd8vlMJ/RwahkRkHhTvvE8t3ODxlHE5
MZBbmE35LoZVBV3G1AwwwBx8WzH1VmNe8q4fqxyxa3q1Q4zCrWTPIFi9Dhm2KehC/BvEdThARNot
/aae2oNqpJriEJB/bRO3rDvYN0hJp8jG3K4B7fVCdP+yla++MEXVU2p/0xhXw48HDcj9ZwyS41bd
2P7UabakoJuRzdhj+Hv2A+TdytOvbhgf+eAsRA3yH7FZ4VhGAOmz2jN8xva2oxRMB2QotRmCLWnl
tXDWd1uOnq0mChcjrwP6Ke+gM6ciaFXL3z2oymqY17PvYEt53GLX7ShIkJn9KVdgLYsp4frCw0wa
C5ge5tNDjTNjM064gUyMyUV+2te7zbbmR5zfbvW5LZ3+XtHKuAdVBAJmmvYIqKw+nRi1Q+h0Xz3h
N542ZB8+qQaxuSJ7wRA9KdXVVDPA3Z/woNHcBOq0if6U6IFpHqDjKPDvV++JwtsHdxkSnwoJIVr+
RsNOYaUc/C8j59mP0wo18SxD0IWvZt311IzQour0isYmatjclMdL01u/ZtsCeKQO3K3exlHUT9/l
WIwYS1pFL1wSaWgyWVxk+P0p8P8C81znwsU8FcR1URv49jw6MocBeTd/7w883INQec5Uq1/f42Qv
MImUCRmYnBdMOWIgKcV1KHbIgwNNq+ZB65v2Iaa8GBPXCgH9bHAd5lL376IgMFAI3oLoFmBg4oWj
Ux1+ontxkCFPSB7Dd7sFq5yxVbtDIbtL7UIj0wGydyh8WhlTnkTXhl+A0OcxRWfG4mvEr4zJXzFh
MrU5TbwfndH2Rx2isgxX2c9cw1DUGqjbXPGW7sebsvrn8WyPnjijYTMVOv1JJDBebNW9bZzhjRgM
XfDLia4KWpUiusGgyDuWuGEdvt+qkTjAOILx3kVeBmNTgkBI2NiEC+BoJ2luvaOaJ7Q6w885Ycy4
ClAsGHxPxLReTUX7TuCJmbL+QmrOUnreV7aQI0KTGSBzj86HV/JjGGK1EHBen9jTsSodOh9i6g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26410AD7F646F80"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
content-md5: V8EqoYmLx9Z9chayTmsU8g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dbbb9c65-66d3-403e-85c3-af2e827b318d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-55d77f31-0089-712b-c21a-4465655a5ced/test-blob-6d602686-ac03-89c0-7565-d35550f7f9d3

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
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x26410AD7F646F80"
content-md5: V8EqoYmLx9Z9chayTmsU8g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2966e90-7b0d-48f5-bc37-7a2731b0ce1c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:33 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-55d77f31-0089-712b-c21a-4465655a5ced/test-blob-6d602686-ac03-89c0-7565-d35550f7f9d3?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c14ed6b7-bfc5-71a1-ca33-2587be120242
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26410AD7F646F80"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-id: c14ed6b7-bfc5-71a1-ca33-2587be120242
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 93277d28-6469-4556-9f75-8078e22d5ee0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-55d77f31-0089-712b-c21a-4465655a5ced/test-blob-6d602686-ac03-89c0-7565-d35550f7f9d3?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x26410AD7F646F80"
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26410AD7F646F80"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 18375c14-0566-4d8e-95bd-a49a1d452251
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-55d77f31-0089-712b-c21a-4465655a5ced?restype=container

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
x-ms-request-id: 41315ef7-470d-481e-8a76-0329709c5180
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-072a9bbf-4119-7f09-b8de-bd711876df01?restype=container

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
etag: "0x1D5498F95F4EA80"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a7cfd483-f3a9-4367-8493-926c2a08a07f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-072a9bbf-4119-7f09-b8de-bd711876df01/test-blob-b016a511-3108-599d-c143-463d39171ac1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
r+hdn/Va0XbNzgnnAS9ZVFQjdRn7UTmO/dBG1fvMRqDD+8IwGEAMt9Sg4zkntleR6vHpFaIBxV6u
z6EkFPt7AIhpJAVtKDwUF75EW23/Zkd5tOsJ4zH+wjZkgUie56LYJOKxvpJRI8G11f3jvGnwrmlZ
ql8QcR1WamHPCafzdS8cbDaKTqe1J5EpUw0zGgXMc9LeRTxCx7PFWlMwghoawV/Nx1AyZWDBo4PO
5h0PIlBcApbUFDDz2aSDxfNThaV2D5GtZlO1mg1yHaG5dOCVtTcD03+DRawv2u6rr6BsbR7dV9eL
Yrz8p2iIYvePOWXD7RC7ULEl8snlfYtlCettBa+C2xwJCVN6BywX++O1oKGI6MGPsB1tuGQNpuQx
l519Gl1IDF1IuuS9QEmEDffmL93q3CAp3VSRFSK3+2JuSXCPmuGGbJRDQC7c0nDU6KttJ3YGR7p9
UzwItvY7kb6BTvfY9XIWX8NIp5zyTAvkvS13SdPraAK1EUekfbWdCK5wW4R4+/I4V8izvp8eiwYx
JPnJw0fqleb0I+MrcuINq57tgvGGa8E6P/ILOKpil4ZBclm800VmhcWeg9cPDeXlpRIAMAkVqrg3
j4NV3108koxd6v+JUddZh/wr6OfqKzINJZKXYWd9LMeghETBEaVoYvFLsSPlXFQ7p6gM6cLRTWNR
SLnKpDAk37036MyTmHVXwob2nnkPJ8g+XLq+cUIFzzfgcMnsnb3BJtJlrnOHpw4ztCY82q/qQSHw
jEh1Zm57MhmUsiisayXINHenqnhUtrSsi7wbyfSI9i6o+xF1S8Bj6Xxa8vXmhkkBc6Y3Q5eom9aT
yduyX2glDLz6BG8UU+m3Q8D8+sO+xQRyGlZOUbKW/1864YHksYoTNeY47ILa7R+8f//Xq6ES1QPW
P0QS1rsJYwQP2XJn0pE26cXchtmCly02kdGzv1S+Jwx+DXFFAF4qL4h9yhStVaxtocHbNk4qVKcX
3EXqVqSvULFm6cUg8ehnsVZQBc0YiDwkRR6S4/G9U7nKLSQZQNnkzXpjR2znTa/ZdIT42U/a/lMJ
xRCGHW2/qJULVsPETnF9bDdStUHPPPhuuW5txXlq7y7QD3rIXbAMo57W2/fsFCYSem0Xh0gSOYkY
GGT+UeMboWaU8z72tQ6HRhGj+WEAgaRIWkoMUmflvtbxsEVMDVK6ujqQVyDoHMVekEE2bkAoF5a/
tvaZD07/rzVnBATIOzi/6T4mcCqDYD6FrcImrk+VyZmvjFdcIKvrkajrgBjAllQId4UBAaZrO1W3
FGGM2QDl0TprGK7gYsiSO96CmOAmxBdtHTbKk8jyRFECpAxJX7ioBa7dVX2mKBW8b8XH6aJ1kQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D62B785A816C0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
content-md5: R/0vcBQi26TVCltXIgveKg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91015e9d-0ec1-47f8-9eff-4212dc4de28d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-072a9bbf-4119-7f09-b8de-bd711876df01/test-blob-b016a511-3108-599d-c143-463d39171ac1?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: bb1e494f-1ac9-723d-79d4-5ddebebc48dc
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D62B785A816C0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-id: bb1e494f-1ac9-723d-79d4-5ddebebc48dc
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57cc062d-b194-4cbe-b610-2f6043dfc9b3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-072a9bbf-4119-7f09-b8de-bd711876df01/test-blob-b016a511-3108-599d-c143-463d39171ac1?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D62B785A816C0"
last-modified: Thu, 12 Nov 2026 00:47:33 GMT
x-ms-lease-time: 15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a9aced9-fec4-4d09-be24-f9842ca3c599
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-072a9bbf-4119-7f09-b8de-bd711876df01?restype=container

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
x-ms-request-id: 3dd35a33-b48f-4a50-892c-42c343fcbc83
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

