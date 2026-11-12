## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1c000e14-623c-6fc1-4a3c-765f3a2292c7?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadToAsync_StreamOverloads
now: 2026-11-12T00:48:00.2660556+00:00

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
etag: "0x2675104F14AE360"
last-modified: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a50dbdb9-6d54-4e3a-a4a7-1310ae3efb06
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1c000e14-623c-6fc1-4a3c-765f3a2292c7/test-blob-714b377f-ba41-1266-9ddb-480ee305ad21

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
Yy7SExOBIPW2gpotisvFrFfhbRwdWbptwRFy1rVt3IVZREOQCsraku4KZrnHk+R/dskIWbV2qQpz
ZVEBD0k/SKUV1EWINaKMB9ouEvIApS4s8l/sZYPQ4po4HKV52IOkyh0Usb6e90Ene1HaSJYXc78j
1BzqU+MhRPKqTxj8Ey5WiUfV7PNwjfodxeox9ZoDIanmVQNnunc68m3M86goKmgjg75PQYbLs0Yh
zI748E9Xpy5vFr0q78/Qm/qGo5lS9ZuBDnHbtN8iG6K8Re7oQQIddEx6uROr+JTvfqaMRA+sz9fz
d+HefPJOTPsabqng51n3aS5N2DuH1Rbd6zU4ldaTD3YX9ckgP/haK2wXkYrqDpdMldrgX/aba6HL
AZC8FrYkhl4zyfKP1io28qzOb0SM8t2e6wD7sq9/e4koVT1onhW18gort0SkvL6wqm1JzPtcPg6y
HSq2KdSus01pZ4HszVSXGH06YDuY+i9CSwhCNa+NyxcvtYDq/8k2fQP3OlU8xNwZsrN+It7SGiP7
c93LbH2e25tqvBjUrBmzBOM3ob/ZBYYrKYP7Dqk4XJpd74zrahGGWF+50gfERAWayx76m3ljIW1W
n0L5o8zyMWB9d72Mx5nSsUhgIDJ/Z+R9YEOLPsEh+c0elcrOjLWSx6GnRs1IDQOEKOkwAwE61zhe
fEKJZvKeW33vbjLPAySTzliQ2CAWNVI/BxXX8fbM472ScBByCWCvCOtQWZ/RtSXEnDSoqf8XR0fv
SV/dx2qGIop0PZMUIcT44dA1xtuzblLwElTBIzm+einJgsAA0UCAyTYUXXiSsHtvr8gu4YFrPNsN
7LQVxf5QtcJpS54E+BCPtfyknhDZXmLZUXNxj5moXUbl8uSMagQ4xKe1KGXdare4nyyExp7KM45S
PHOK3yUowe1YHwUrA0r4bNppJDb9++a8ufBsJJenGr5WOS6QreWCjGZ3hEuyjJzhi1nEYQ9YVUCM
ziU1vJ1WsARG1MkcaL/15pfPhXebCSxTipg947mv/eTtBN6/TNDIIdRGa7jTxSKaz3p4iNDJ8MX4
4jEEGMxLl9blL2ThNZrGBmOiVZ10gMV2oxQ/NnUUIxMYxmqfwwkI+9Th7pa+uZngsYFsJ5snhGJr
jnW3C2Bh0AtRyG4vJkJamlrJk5Eut+p7X4Xzp/x38UIINDWTUO9zfx2KbfAqsIs+EoxAXvDQPNaL
PKzbbikP2dcsJ/INxkprVRN0pEr5UK75tJVvNpJROPdeCBNCmBDze5MZ/YmYMUtC1QncW5iLkuv9
4bqUn6JE2+77rr42KLwDgCi231MlYYJJLWGJdNxe0nYoRLZWX9zx1SKanIKNC6xM2dpw1bKY2A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C01BEEEA9C9400"
last-modified: Thu, 12 Nov 2026 00:48:00 GMT
content-md5: dPwiLaecWWhBktGwDGNQXQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db03fa6f-b527-44df-8082-98c71e41393b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-1c000e14-623c-6fc1-4a3c-765f3a2292c7/test-blob-714b377f-ba41-1266-9ddb-480ee305ad21

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
last-modified: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:00 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x1C01BEEEA9C9400"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2798b3c7-3ce2-414b-b2d0-74b389b077e1
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: dPwiLaecWWhBktGwDGNQXQ==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
Yy7SExOBIPW2gpotisvFrFfhbRwdWbptwRFy1rVt3IVZREOQCsraku4KZrnHk+R/dskIWbV2qQpz
ZVEBD0k/SKUV1EWINaKMB9ouEvIApS4s8l/sZYPQ4po4HKV52IOkyh0Usb6e90Ene1HaSJYXc78j
1BzqU+MhRPKqTxj8Ey5WiUfV7PNwjfodxeox9ZoDIanmVQNnunc68m3M86goKmgjg75PQYbLs0Yh
zI748E9Xpy5vFr0q78/Qm/qGo5lS9ZuBDnHbtN8iG6K8Re7oQQIddEx6uROr+JTvfqaMRA+sz9fz
d+HefPJOTPsabqng51n3aS5N2DuH1Rbd6zU4ldaTD3YX9ckgP/haK2wXkYrqDpdMldrgX/aba6HL
AZC8FrYkhl4zyfKP1io28qzOb0SM8t2e6wD7sq9/e4koVT1onhW18gort0SkvL6wqm1JzPtcPg6y
HSq2KdSus01pZ4HszVSXGH06YDuY+i9CSwhCNa+NyxcvtYDq/8k2fQP3OlU8xNwZsrN+It7SGiP7
c93LbH2e25tqvBjUrBmzBOM3ob/ZBYYrKYP7Dqk4XJpd74zrahGGWF+50gfERAWayx76m3ljIW1W
n0L5o8zyMWB9d72Mx5nSsUhgIDJ/Z+R9YEOLPsEh+c0elcrOjLWSx6GnRs1IDQOEKOkwAwE61zhe
fEKJZvKeW33vbjLPAySTzliQ2CAWNVI/BxXX8fbM472ScBByCWCvCOtQWZ/RtSXEnDSoqf8XR0fv
SV/dx2qGIop0PZMUIcT44dA1xtuzblLwElTBIzm+einJgsAA0UCAyTYUXXiSsHtvr8gu4YFrPNsN
7LQVxf5QtcJpS54E+BCPtfyknhDZXmLZUXNxj5moXUbl8uSMagQ4xKe1KGXdare4nyyExp7KM45S
PHOK3yUowe1YHwUrA0r4bNppJDb9++a8ufBsJJenGr5WOS6QreWCjGZ3hEuyjJzhi1nEYQ9YVUCM
ziU1vJ1WsARG1MkcaL/15pfPhXebCSxTipg947mv/eTtBN6/TNDIIdRGa7jTxSKaz3p4iNDJ8MX4
4jEEGMxLl9blL2ThNZrGBmOiVZ10gMV2oxQ/NnUUIxMYxmqfwwkI+9Th7pa+uZngsYFsJ5snhGJr
jnW3C2Bh0AtRyG4vJkJamlrJk5Eut+p7X4Xzp/x38UIINDWTUO9zfx2KbfAqsIs+EoxAXvDQPNaL
PKzbbikP2dcsJ/INxkprVRN0pEr5UK75tJVvNpJROPdeCBNCmBDze5MZ/YmYMUtC1QncW5iLkuv9
4bqUn6JE2+77rr42KLwDgCi231MlYYJJLWGJdNxe0nYoRLZWX9zx1SKanIKNC6xM2dpw1bKY2A==
```

## Interaction 3: GET /devstoreaccount1/test-container-1c000e14-623c-6fc1-4a3c-765f3a2292c7/test-blob-714b377f-ba41-1266-9ddb-480ee305ad21

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
last-modified: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:00 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x1C01BEEEA9C9400"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 14c99dd0-66c7-4d1d-ae35-86bfa4d3eb0c
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: dPwiLaecWWhBktGwDGNQXQ==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
Yy7SExOBIPW2gpotisvFrFfhbRwdWbptwRFy1rVt3IVZREOQCsraku4KZrnHk+R/dskIWbV2qQpz
ZVEBD0k/SKUV1EWINaKMB9ouEvIApS4s8l/sZYPQ4po4HKV52IOkyh0Usb6e90Ene1HaSJYXc78j
1BzqU+MhRPKqTxj8Ey5WiUfV7PNwjfodxeox9ZoDIanmVQNnunc68m3M86goKmgjg75PQYbLs0Yh
zI748E9Xpy5vFr0q78/Qm/qGo5lS9ZuBDnHbtN8iG6K8Re7oQQIddEx6uROr+JTvfqaMRA+sz9fz
d+HefPJOTPsabqng51n3aS5N2DuH1Rbd6zU4ldaTD3YX9ckgP/haK2wXkYrqDpdMldrgX/aba6HL
AZC8FrYkhl4zyfKP1io28qzOb0SM8t2e6wD7sq9/e4koVT1onhW18gort0SkvL6wqm1JzPtcPg6y
HSq2KdSus01pZ4HszVSXGH06YDuY+i9CSwhCNa+NyxcvtYDq/8k2fQP3OlU8xNwZsrN+It7SGiP7
c93LbH2e25tqvBjUrBmzBOM3ob/ZBYYrKYP7Dqk4XJpd74zrahGGWF+50gfERAWayx76m3ljIW1W
n0L5o8zyMWB9d72Mx5nSsUhgIDJ/Z+R9YEOLPsEh+c0elcrOjLWSx6GnRs1IDQOEKOkwAwE61zhe
fEKJZvKeW33vbjLPAySTzliQ2CAWNVI/BxXX8fbM472ScBByCWCvCOtQWZ/RtSXEnDSoqf8XR0fv
SV/dx2qGIop0PZMUIcT44dA1xtuzblLwElTBIzm+einJgsAA0UCAyTYUXXiSsHtvr8gu4YFrPNsN
7LQVxf5QtcJpS54E+BCPtfyknhDZXmLZUXNxj5moXUbl8uSMagQ4xKe1KGXdare4nyyExp7KM45S
PHOK3yUowe1YHwUrA0r4bNppJDb9++a8ufBsJJenGr5WOS6QreWCjGZ3hEuyjJzhi1nEYQ9YVUCM
ziU1vJ1WsARG1MkcaL/15pfPhXebCSxTipg947mv/eTtBN6/TNDIIdRGa7jTxSKaz3p4iNDJ8MX4
4jEEGMxLl9blL2ThNZrGBmOiVZ10gMV2oxQ/NnUUIxMYxmqfwwkI+9Th7pa+uZngsYFsJ5snhGJr
jnW3C2Bh0AtRyG4vJkJamlrJk5Eut+p7X4Xzp/x38UIINDWTUO9zfx2KbfAqsIs+EoxAXvDQPNaL
PKzbbikP2dcsJ/INxkprVRN0pEr5UK75tJVvNpJROPdeCBNCmBDze5MZ/YmYMUtC1QncW5iLkuv9
4bqUn6JE2+77rr42KLwDgCi231MlYYJJLWGJdNxe0nYoRLZWX9zx1SKanIKNC6xM2dpw1bKY2A==
```

## Interaction 4: GET /devstoreaccount1/test-container-1c000e14-623c-6fc1-4a3c-765f3a2292c7/test-blob-714b377f-ba41-1266-9ddb-480ee305ad21

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
last-modified: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:00 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x1C01BEEEA9C9400"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 52dab1a7-e344-42e3-8cb1-6976b3313a54
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: dPwiLaecWWhBktGwDGNQXQ==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
Yy7SExOBIPW2gpotisvFrFfhbRwdWbptwRFy1rVt3IVZREOQCsraku4KZrnHk+R/dskIWbV2qQpz
ZVEBD0k/SKUV1EWINaKMB9ouEvIApS4s8l/sZYPQ4po4HKV52IOkyh0Usb6e90Ene1HaSJYXc78j
1BzqU+MhRPKqTxj8Ey5WiUfV7PNwjfodxeox9ZoDIanmVQNnunc68m3M86goKmgjg75PQYbLs0Yh
zI748E9Xpy5vFr0q78/Qm/qGo5lS9ZuBDnHbtN8iG6K8Re7oQQIddEx6uROr+JTvfqaMRA+sz9fz
d+HefPJOTPsabqng51n3aS5N2DuH1Rbd6zU4ldaTD3YX9ckgP/haK2wXkYrqDpdMldrgX/aba6HL
AZC8FrYkhl4zyfKP1io28qzOb0SM8t2e6wD7sq9/e4koVT1onhW18gort0SkvL6wqm1JzPtcPg6y
HSq2KdSus01pZ4HszVSXGH06YDuY+i9CSwhCNa+NyxcvtYDq/8k2fQP3OlU8xNwZsrN+It7SGiP7
c93LbH2e25tqvBjUrBmzBOM3ob/ZBYYrKYP7Dqk4XJpd74zrahGGWF+50gfERAWayx76m3ljIW1W
n0L5o8zyMWB9d72Mx5nSsUhgIDJ/Z+R9YEOLPsEh+c0elcrOjLWSx6GnRs1IDQOEKOkwAwE61zhe
fEKJZvKeW33vbjLPAySTzliQ2CAWNVI/BxXX8fbM472ScBByCWCvCOtQWZ/RtSXEnDSoqf8XR0fv
SV/dx2qGIop0PZMUIcT44dA1xtuzblLwElTBIzm+einJgsAA0UCAyTYUXXiSsHtvr8gu4YFrPNsN
7LQVxf5QtcJpS54E+BCPtfyknhDZXmLZUXNxj5moXUbl8uSMagQ4xKe1KGXdare4nyyExp7KM45S
PHOK3yUowe1YHwUrA0r4bNppJDb9++a8ufBsJJenGr5WOS6QreWCjGZ3hEuyjJzhi1nEYQ9YVUCM
ziU1vJ1WsARG1MkcaL/15pfPhXebCSxTipg947mv/eTtBN6/TNDIIdRGa7jTxSKaz3p4iNDJ8MX4
4jEEGMxLl9blL2ThNZrGBmOiVZ10gMV2oxQ/NnUUIxMYxmqfwwkI+9Th7pa+uZngsYFsJ5snhGJr
jnW3C2Bh0AtRyG4vJkJamlrJk5Eut+p7X4Xzp/x38UIINDWTUO9zfx2KbfAqsIs+EoxAXvDQPNaL
PKzbbikP2dcsJ/INxkprVRN0pEr5UK75tJVvNpJROPdeCBNCmBDze5MZ/YmYMUtC1QncW5iLkuv9
4bqUn6JE2+77rr42KLwDgCi231MlYYJJLWGJdNxe0nYoRLZWX9zx1SKanIKNC6xM2dpw1bKY2A==
```

## Interaction 5: DELETE /devstoreaccount1/test-container-1c000e14-623c-6fc1-4a3c-765f3a2292c7?restype=container

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
x-ms-request-id: 7f756c0e-20bc-479d-b7ae-0ec66591e976
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

