## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-e57db523-dce9-9470-e40a-3ae9a7666162?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DeleteAsync_AccessConditionsFail
now: 2026-11-12T00:47:46.2605918+00:00

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
etag: "0x1C56EAF12C75090"
last-modified: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 82b82c54-194f-4d7a-bbb4-14de7674d162
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-e57db523-dce9-9470-e40a-3ae9a7666162/test-blob-6613f891-ee19-cbac-8eed-d0b09413fb11

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
kz0UNYM6XwOw9dqGjViI1VjEWZdiG8k1CLJW+wu/ANEPKVZpUSzeV5kQtSMTJT42ZPtXz7pjrnh0
3yzR42T48fQJd2MBH4Ms5gL+UmWlIeJ0IJYPZzEWq3rd9HL/DXM0GMQvCq7aNEV4K+i4ZVwSz71K
XcPN6InC8svpIyoRLNiOyTqgdhc0metQlzxIXkYeyyW0tbCwZy87bBfi8RAbZ/8QKZwiclmmFcPX
fVFMeZOFy1gEXHYo3WIKZQn/UajaNTA9ODWq+1jMDp/t2One7vKDXSW3FguI6Es5GA1PpsQa/Ecg
D0Fe288AOE3WOgV4K3YWfPSDIx8ltFDpcONLfGjb09uivd6xJYFWt929sq1GweyWOCrPl9ko+1vw
dWvstbvk+mcp1m6YZVZyLGtBZwGjo673tEM+CzwBesGCwLAWaQEh2LdFHOt9/tPTXWpt5pRZTdK8
9QF4pu4rJ1ysFaWmXMJpH45KXYbDebVwa67Rk5MtKHLeWnQAqTLIGvSP0ektLQCnBMYFD+9L+HtL
BztAWZTIfuwyyAJNaHZcgUORNKfLQz2tKo/MKBmCkmH5taH3iMBgxlL9+mX+WZtQqY6sucPUgMT9
ki4E+1bTsDWgVLPUZPiDMW5UzkjYrtH0fH6K1tidJDXd+vWRXMr8KUovXgTnfESVKIhVf7F7JONd
D3/XSNlcAjB+9moC8dSjWKT+qVDMDQA69a5PSKWDYtYSM0xLJOFw0lvUaIXakjezsiYNfHqTkAJ/
nVMrDLqK+5OU8L2IWDTDjdb1+KR6X2N2nJZ/duZbf6NKzIaORcWhSW3xRaF5K1nySu6knZhdBD3v
tHAjC4StOHEaPYytNEgQU643iRnB/XA8jCz3t+EK7MdJnpFVfT7oQw0wX+3NRBWmk0rpJnsjLrcA
535YtoGQD1DEZJa2u9ZwTkUMkZ6CbkgXUCOXIcZLJW/ZVZa/j42LoE+cCd9+79dzeNc2Fp0ZfXg2
QWVd+O6KeD8m3WZAsb+3gfFO5WVomGFMI6jvFQ7SwNcdiU4oLadgEpCgWBJxM8cYf5WrypgTzakE
EdVFm2MwUxyPIihxj1NJ7dPUx0BO2vDh1pZ5JvU+CrukJBzSG3YtcAT14hCep+9BYdzFPgVptTfk
Y8TMtywnUBhszGs3d9Jcp1c7WfjgQi+mN8UYecy2O2/k7beyYLnYzpH3MtqECuoKaZauLls/BCGV
Jn9nDtdMtZH7UokbqkadY4tm6BBUIS3aDhA1CA0TpemWHDo5cL+6qnxJiLdg7r9PEMrP2RsQQARS
jP/HF62D6KyghY0MY/LMqz2TC5h1eiBQ5fhCQ8zNhdw25+O/85PPxaAKwGkyQ6zXAy3dfTRr3A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20CB8213C8A9AA0"
last-modified: Thu, 12 Nov 2026 00:47:46 GMT
content-md5: /zE5BcJIy1MNzsRWDAVXEw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 502251f0-b30a-418c-90ae-7b54dfeb896d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-e57db523-dce9-9470-e40a-3ae9a7666162/test-blob-6613f891-ee19-cbac-8eed-d0b09413fb11

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:47:46 GMT
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
x-ms-request-id: 20a3458b-6ca1-44d7-8f48-f69ee4383558
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:46 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-e57db523-dce9-9470-e40a-3ae9a7666162?restype=container

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
x-ms-request-id: e91eda3d-c3e1-42d7-b5d8-574d1bd4485e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-3176df12-41b4-e0a4-d200-b0d67c0f0cb7?restype=container

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
etag: "0x1C3FF79B3753760"
last-modified: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3b9dd7d-cb66-44b5-9801-5b28a934d566
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-3176df12-41b4-e0a4-d200-b0d67c0f0cb7/test-blob-f846c3aa-ba6a-1eb6-a24c-6a3f9eef07a7

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
ygvQ4H1iGoT7Ku1pgW0wyPd1M7nucnFYKFePaNZkQeL4CAtwPis6R6jC/EDMTZw1HKJIKLtNuViZ
eLcl07KtlukKcHhhv4nLO+wRLHUxi9q6WUwzHBgnqk+z18ZzFXT2FGVXwt0k01wZfO3PPIziaOzd
anlleXrQ48UorujCWCV3GhgP2cn9lobvGp8qV27D0G7alqr7kJvrht8X+yR0ViTHWCJ00o4j39Py
dl7apYtXZd556MF7e4l8JFLp5ZtiesR7Y/9LT/3ftrbXCBo8EOBTwJVG+m1iTNyY9648Ofo4kPua
X0KMCxbgmjIKo3JuQBRyliUFG4BWGBYisldPo328n3gfobGdxrR/ZWA7WKhpKraayaPUMnR7Q0Ys
aVi+kPe1TgT6T55i1M9whrYfG8BtuYigtdnZ52wEpF5qcVxbwNRphgmkbtsYN/XTZKu+WyiGv7DQ
Htsd22aX9qpA+GJzFMbhtpS2yUqtiH7jBoPBRUg15LKsi6H5S6ujDHgw2D6TX0/k3KSUz/ZlIpZd
OdTj1rBhChSwx4kk52rpE7zRfLA/UKY03GmkoRS8RmkLnBHWvzXIzs0q4pjGv/U6q7s5lKXmHukt
rvpHvWn/9IEgGUtZElOHCa7iFG0ObhxzavZYgrLDJX4oqBE7gRFjK+4Xpaap4Zhosor3Awl7H0Dd
01NzpnHPXPPNMGlCS4icf+h/9sh1yold8NAnyyJ0rIjQXa2974V8SEiy3LAuJWYCWoMg+yh4aAnK
FrWgp5HRWIPgcu7a349jAq5/w+3YLspqJXCeVLFfWPWk89nP3KC34YQsTbN3J3vzvPh6+KQb8efq
NYIhMgTSgBn5Nuy2lCYOyOFprOAX8/70q5e45V9QiAHy5KYelq5/WcyaffCPPSjSbDDDskUG00KE
LIdtGpu5qa3rxK+A8DIz6VITfXUNZW1u5XkvjdW76xFkmmknEj8x4NRCpHl4Unv+kMnz81bMdscZ
/jQhihzYL9meG1bIC9YS4p2hysH09pP9Mf0Mx/i7lyOiDhQKD1W4anSg2jYlNYTy4BC4K6wFJAih
JFkfy2fg4oQyJv3CCNJH6V9NVBtd1/t4GufnAmx3nOkLaOv8mJ8Mv/iy8w+GL9c+cUFMuNDtRExd
prGA+eAXu4kUtp/nSlDAQJUjquTs8eoPqZEqK+QZHiSfn/LtjMUYmjiFcnk4Vybxi3g6yZlncLTH
cFBO7I+l+pd7R6te07TPCg+sZn5w11JqOZ9s3lSKNy49Jht1ya6o4HjhvA97k7jDar+Juwk2Vpn+
5LLvORxC8BB9IKyZWkFhBIYGjhpC76bnqHOVAXwkB8+Bd+T7uKdcn8z//XILKhB9KLaDL8d/uw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A1D0A8695A0C0"
last-modified: Thu, 12 Nov 2026 00:47:46 GMT
content-md5: 7ICg0dIBv2Hb/Pe46O6VKg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 503b4474-f202-446f-9803-454323e4aad5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: DELETE /devstoreaccount1/test-container-3176df12-41b4-e0a4-d200-b0d67c0f0cb7/test-blob-f846c3aa-ba6a-1eb6-a24c-6a3f9eef07a7

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:46 GMT
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
x-ms-request-id: 3d0bf6ab-7b68-4ed0-a2d0-95021089e6d1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:46 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-3176df12-41b4-e0a4-d200-b0d67c0f0cb7?restype=container

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
x-ms-request-id: 74215843-2a82-4d19-8c87-060f39fcddec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-90080cf5-aca8-93ef-5819-dd17e35d654b?restype=container

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
etag: "0x1C794AE3C2D2DE0"
last-modified: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 71c72953-c075-44bb-9363-299119622f96
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-90080cf5-aca8-93ef-5819-dd17e35d654b/test-blob-4eefaadf-f143-dc34-7e63-18d8c5a1d707

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
Arvv77AWs/Lda6VYLhItIMNro4XYMXgD1ysSRJQWzrdC1RUnbXWbyfb9cNdM3K5sNvgVWv1RL9FD
6xiEA29exp3tFVj8BbJN0NqP2sCgt/t9pg6cAXO58KZE5IJdFsWHn6o6XsZVbzFFx4kjwlQRozMd
Bl1gwsQpNCWyuCAw8LoUBzsVZVk0JzbdVjnqli1RM0FOQA9oJt3mECqho7cQFdfPD7oZ+z3a6N4m
g2uKP533YITf4a+qrOFeL1UukoR+zEBiGodzODcDc1cwQaNxW9GMqkIyMTMnJWLZu8zorFVaqLYr
KCQWhChN221Yemo97NODouhCS5sMOvUkmX1qG8cB1pntRjKsdSYZ5VXGz6v4m875ZAltGFwaHu4v
8uqr4r+mVqPRUKag1yzBKGZFRmpKLP2ucbe9lL480ihEfYM8bgKVIHkHJksoWI3dq+/11NeD5Mbs
/HEI6MHllH19XFmohbpksCbwQwWyhhgq4OnOR/1QwJm9T3GQjTe3IZLNqvwzNSU1kSSxk6HAOnZY
3gfYF02ALZvA6zZJ0yLuOCFz5Nwc9qvDmbXYny33/BX6N64v3wpETXxgc0nv674Bwlp/TVWaPOhc
FX2Xp45uyO4gTpt0vlkXLpdfvIJh06331tzTd6/AYPvG0smMrKXu8apbz50ijQMAaB6+O39l+0HQ
oNGxm1A/YO2greuQi4LxcMvXBgQP1UjY0g+QASV7YdeIuwzUPFVaG26vgeAYcN2czMq0jfU8wMuI
2clBrl7IJEsUB892HTN1feqWYFNowGIy9DVax9ThS/pATGOMGWwQ5l2VA2gOJq+WPw8LpmB4IBlm
DropbV13MrvUNdDQ6GR9hnn10rz5JM6FxIjE1qWayCxKJQqy5nn/HtGsOfDexVarjSDngk1cbers
o6nVslwWOm2khsNZy58A9rTrTOrdp/4xGUmEs0Xe7bgfxkLPKmt0lv+DOT+TUcKA54yYcSAADvyr
o5kTkYcnxZgLOgVcMMtJdrbrWm2+nseHA8u5RnyXH7hGI4bSYQR4XHOmiBe8JLbAT/pqFLOO7AXS
i467bn8ccxtMFgxFdhSyc/75GBawyt8V+PaBLAoEtzeBANZ2vO30iRT7bw6pe9jmt6G1ldTuIcGu
pXWIm0cRSF7VxHY+PLYQBY4CtFrRbH0emnRoTiJjkt4Uxxd4a+7N6iev1LdhqHvqpY9F7G1n3Tn4
agDSqPo8cjGYKXSfmJqgNckzIZjFvPL5famTHaZwrOndfwHt+kIsc2KFyX4GSwz1pLekNLyhMq0O
2SpRqVSLKH2LwRiZsjqGBq42QPN08jKcnnnvzHgtPExT3yEY28oN+qEBe4r0W/F8HS4Na/K6mg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F4AA7393565E80"
last-modified: Thu, 12 Nov 2026 00:47:46 GMT
content-md5: Ju2RE+gRaXN+wVv08N7ISg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 62730b68-2c6e-464c-b31a-3b2799b35670
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: DELETE /devstoreaccount1/test-container-90080cf5-aca8-93ef-5819-dd17e35d654b/test-blob-4eefaadf-f143-dc34-7e63-18d8c5a1d707

### Request headers recorded for playback:

```
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
x-ms-request-id: 5b8ef611-1f1f-440f-bc64-d8ab00e4b42f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:46 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-90080cf5-aca8-93ef-5819-dd17e35d654b?restype=container

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
x-ms-request-id: eac8c5e1-e2d2-4694-83d4-920e8861fd9d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-0bb4f8e6-9cdb-045b-5d84-cb45d3196e2b?restype=container

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
etag: "0x1C8C780F2C714F0"
last-modified: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75dc64c3-c9c8-4b3e-8d67-bdcc4114419b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-0bb4f8e6-9cdb-045b-5d84-cb45d3196e2b/test-blob-524528e3-7673-a8a8-4287-72af4a1fd15a

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
mEU6ICa/Ml1F/B4FKBYeY64CKkOsaCZwTwzJUymsuj2zca2O3k4EJPXnDHZYo4AsaA8AR/WOrS8e
ytAZ9t80mEHgUbZokIRf/QVOxVywGKyMnesaq3NHJcR9bxR+6y4Ws3M1d1HJw9iLoUnwQOjTbrEj
jVnzGu3OmSvy6iBv4RLXNxHoeqBawtkSjgopV+XcqgFiWl3VIpmGZ94m19m4G8A2GAjW6vMQycp/
4YvjpEFGFj8eDIa0AhV4YhPCNOoAWXNK8z7dBb8NUZGSVUAOo8Kc4MGZmQ45gRbyXojgTpTgf4gX
mbECaBB/ELv1IazVab9QJlQpZr9kEHEn6qY3LQP8sta49gkRmXewGYlTRF9qHfTIjydAthjIsog/
235pSOO3+G/WHHO1PozdeE02EcsRvc2ybp7bu/u98EOB0r75RtClnEvwkwGBE1CbYz7KkaG8Lh2w
t9lF2zxzGCwvNGzO4zF8kHWAICnLMVtNQFi98l6ixKOgSI/3YMAOfXrUUd/kzX8MTgErPA305YZ9
+JrktSbOjHDILZuihTC0caKu9998aXPYsKRcdoeWrGMIeWgmKshUBsRvG5/kasjRd8tqRe2nAY4m
CwSBcRboMoE4mgvHjkfaWfEaDU3U9Ebbi/+7K2Z1YXfZ/x7D05Suhugeq8+9CemEj+v8jPRAUha+
peUXLAYbwjmT7Y4oF4ZcbIZltkh2HoIVN5t6eNSDmKwIBC2vl1nhA+mWKRtaW3hloCBt25zNR4dj
AfRroEllEFXhIBJZrdQsg7Nf4PRmu9sjFNizFbwQOr2mS5VkdmKfMRnGeDtlDPNMQFjobmeS/EYZ
R4txsfqY0OZVsmE/xwxQv67boEKgvgjkZ9RkJ8tWE09PSy7WLn8eLadVEFmSDHlMl664t1sEeYmC
jEolNKga/58R73zdepEuvHOaSq2vUlpbGJAdnVz0S9KlU6E1+fn+OhG6gB39bh0cifroaS7b0znv
yRwY/WFCHaSpOCbv+MN5mw+c9dE9XqlyABRiDOGkyYBoRi/d5T2vd2N4Uzb3LJA3bs4eP95osmty
pv1M4BDDBW+mh7KUnLXS7H1txApzetODK50ShYqhAJPDaj8/Y5ZTtE7GUaXeotIYS1Jg+u1g/iwq
ybVzsH/kBIcf0DF2k4nmGg+8rCgupYjL+jk4QAWmY2wSFZnh3wTO4kwdvtKgobjIed/dpFID/CMt
p7ZGrMOCeGzFY33wBToL7crcEOa1K1iAb8YlyL8ZDxl1tDhNhzWJm0Zm2j472HSl0baHJ+s9d3xd
xTz9XLCtq1RkelECvWWUUnWgT1AaRZdSgPYJkuguODy778L5iz6VuS/p1l0iohRQ8tR1nSgsQw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2264D7F4D763A40"
last-modified: Thu, 12 Nov 2026 00:47:46 GMT
content-md5: 7R6VK1bm/SGW36K6FBTDBQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5cbcfe8a-ba81-4ff2-aabb-921b885d0cc1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-0bb4f8e6-9cdb-045b-5d84-cb45d3196e2b/test-blob-524528e3-7673-a8a8-4287-72af4a1fd15a

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
last-modified: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2264D7F4D763A40"
content-md5: 7R6VK1bm/SGW36K6FBTDBQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 17d19a39-1173-43a9-91b9-41819e26d413
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:46 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: DELETE /devstoreaccount1/test-container-0bb4f8e6-9cdb-045b-5d84-cb45d3196e2b/test-blob-524528e3-7673-a8a8-4287-72af4a1fd15a

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x2264D7F4D763A40"
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
x-ms-request-id: d367a0ac-7168-4c61-968e-f88a1a0e54f1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:46 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-0bb4f8e6-9cdb-045b-5d84-cb45d3196e2b?restype=container

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
x-ms-request-id: 1d681a23-d214-4b17-b824-c32db1f138d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-dbaaa480-a3ba-6c19-3642-1546cda39bc7?restype=container

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
etag: "0x26052AC368A2260"
last-modified: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a38ce70-8191-486f-bbf2-730bb6ad6eed
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-dbaaa480-a3ba-6c19-3642-1546cda39bc7/test-blob-21960a36-6e30-2f3a-dde2-b99f13b89b13

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
j6xBVOBj2xUVfaAaDVxGrFcNP5KSCxMRanv91+p5WH2nAbYhYUfm0y+AC7POHyKBnAxIBngJgISZ
MOplZQMqnCQicwulJEoPJmtiEf9fQ0pYfDveMVIEnoAyiDFdgG4rVm6Oq6sW3HfCON8Npm6EOe2f
DOnHTGrSHdWKc5wZsqb9NruR0JifQp/EG/ly9/cSrU9EvXOFYwoEvI3Wi2jbqIU5EG+z82hUAMpJ
AzBxXybdeMZN1fUzeNOxjBQKyLY36XJzOeeIXrnm772oO2DZklxn+BOijdOQBpicAmZUSjcTEhq9
/iY+VRoMZuU3ijxy1/q3o9CjlFue4zNP61xSkqWFlSlFG5Q2KKL5lSfuWHxbKSpsnKZmcH2+Hhrz
72q+udRAsfQSLbtmgXouqv40sIq388Ex5vX+HySshvx5Qzk3O9tTraaHSfxuBRsrN8Z/im6PPPuo
jNPeQpLQZqa+7D5B928i4QPkMKnFwuDa0udeLPyO6Qc+j64IdGsUtuNWrxnc6kBWXKlqqwtR48nz
A2+qcTmqMAM3A2jAGmyY0HnGbhPH/uenB89SIz377KvkFXH7aUWqrH8VpefYlUI90tuSi3W2KwWI
A2lpVwzFPBa82wT6nGY0HMKTsVj/znKMFFBiaGA2LulscmbbQFRzUGnQG7k+QzZ0Xm+zI3msiDT3
3EO7YtO2hq0bjikAWNttH2HvL7K4TtEa7gnxgwpvv+ox42MRuO2VGpUMIrQMdAaTRQMYvVmCP41x
oHTKxAKiq84/z3R4XGd0WRQcrCscDnoDXj0HVwKQr6TVnxd4y1aSaXfmzKSRGumbpGREZZNhVZH6
xmXFm1PMrh/QorxQ+46+ikK0NUHVckNUa7OeTEkRc0qFfgTwzc4jGh6FwXgsS6nVhttQrR9PJVQi
cC+gLmLWvi5yynyJzbx0kBsjULDLJyAKyMVuwcYrNVmwzl2eguy7rgJJuoEsTLke2xwDK9WjVkkP
lmWdZ/1oRpQj2P5f1Q0vaKGtgWye3XsLUOWpJwmDDHcTj+yGHkcF4XPsCHO6vwYP1MM09dXccLjq
kRcYvx+Kn8yHS0YhqEpZqKD4sdQHUZDemVJGTxeiNx8znIww7SJUYmmnM3PA7St52k00477j4kCG
OSXMRFC05BMm7Qy9Kbp+pE9rXx4dHqwnzHTJbVRgULlMqbT8hx4Y8k5fmQAfu7GStj9vd4IiaRp5
pXfb63e/xZ1TcX8GgRwxUmzPvYWrBxHDN7YV8dg2KkCZg+KnPQfXn9NjzEoxizUiPiQVUquVzZ1m
GLPAqtTEHEY/bf46iRVl+B2xRzvGkauB8rOzINeUBLVEQCRUFvX/nq8D8h4357QPsFmO44Vinw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x205BD0C6C923CC0"
last-modified: Thu, 12 Nov 2026 00:47:46 GMT
content-md5: hcVPnt1tjeo3tt2oJulOwQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4b80c241-73a2-4d77-9c3d-40875032897e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: DELETE /devstoreaccount1/test-container-dbaaa480-a3ba-6c19-3642-1546cda39bc7/test-blob-21960a36-6e30-2f3a-dde2-b99f13b89b13

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: be8a20df-c791-3041-3bba-27ea907681e2
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
x-ms-request-id: 172b04d7-10a7-4229-8dd0-6663b8a231cf
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:46 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-dbaaa480-a3ba-6c19-3642-1546cda39bc7?restype=container

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
x-ms-request-id: aed198d7-4998-4bae-bd4d-1f4abbd68e40
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

