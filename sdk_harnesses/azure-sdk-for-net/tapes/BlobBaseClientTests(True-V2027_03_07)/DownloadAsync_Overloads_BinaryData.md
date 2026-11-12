## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-26d3c2df-9c18-36e7-c2b0-1744b3d85fa7?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_Overloads_BinaryData
now: 2026-11-12T00:47:55.3995069+00:00

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
etag: "0x24941F5FEF4A440"
last-modified: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 76f0e9c5-0f0b-48b7-b4b0-b96202f4dd18
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-26d3c2df-9c18-36e7-c2b0-1744b3d85fa7/test-blob-b3432773-2c6e-d8b6-ca54-8cf186fc6da7

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
u5OCUHPsX8TpbyIRw9jfWZVYdKw7KMKN2liivv9U4HtalR4rVjzY8mMPPKl51XLp0b6vWmOzbJLQ
9HYbSqHElI6nti66swJZf4JJK+wZFATluOxBpYUXpyiLWmHGvKjBS6ca0h9DLx27VtrhaUGmt+Bx
NZG0gu8Jjw4FLlmhk8LZh+BE/0HloonPhk+qNT7n5aOAVIcXDci4EUIQPQHEGsIXCOFgYrefi5MI
5PufXlrQHkm1ID47wnoXjO7+1WSHC2yMki1choLs4MjzDyjMGLLoPx+3DvmE20VnSNbJobYvgNmP
EsstdJfGyT91SLNRS3M7FpVEz/xyCLbn9T6sIj8Sw49OPQbnu8uI8UW5DpORFf1jjYsg67DdHQoU
RX5ZGaYAY4QkAw5sVFvKvN62uPkjVd9ASZWz8djfcR/70nVMLtefuasObRLv9jkwVi/RJmQR8e+f
GNARTHKsRZHucYHlfY0GF/9OFOjNUVNbg5qpDUu76uGGrRYHjW05YSiAAIW3Stmhyg5lwtwG0cZ9
tcjXAzdGMoagX892/4mRFbPATFDNozjBB0I8VicFf9tPidekYV7wOc3+F+sJK8qE060pRoR1rxKQ
Ffv1CtxemuD0Jnay7bNU0BODz4tNuNx3t4J53DhW2trFFEtj+i/xoHwLFQRU0ub61HZx8uCGQl0f
fVJa5L6nnUyb7Nhn8dXjkS4OQaPXI+WbfwfC5ef5PtHuQ33dlru9ZHe4uOUNk+OgjmCxeAG6R1pt
vmW35bhkoq4Hea1YBvtzUN0rH2r/jusjIVaHSMbQM/wjb9hVBn6/UxY3Bho2SIhlPScjjyfwbTB5
lMNh3VnnNkWxNZYjHkpea8tTyIfR7djOIQqfrKTUMgKo23G6Xna9T8/UhRPxQh/cxSRbnKWop6fr
krtOSIqh3AKTekLYpA1Vlnm3/WjE3N/rwud/eJVd/zPKz8u6bgZFMqgRXcfcAyAWBgYs8Ko/Jrbc
Y4ajIWRsNnsPDdRCmyhycsq/s34YD77GaXKPMQ6Ji6gU3gqAoRFEpSdLzfZM1GreuX3ff3M3w1PH
3bjx3AVshYEsLb0d8tG5ew1XzELIeZQHsHeQqgw13Rq2ucNYUsgh30d0H6etwMesJQNl3/cR/mMj
6iuN3Nt19k+iZjkNYClENu36VFrtWe+w5IQIz/0ipbpgNWeckwJs/yhXC1qOnsXaIKkKFqoJNZA7
3fdXbCdSf8F+rSvBqKLqjlUxlk6VIkW+Lq5TGI4PVgDXYbYLFZIBBIuZD/GaGHgHH4hV2J5Bpruy
mD14/2cyb1Yr6kfs33nCL5HD/BJTJBU1S/gFuX5hlbr6WH1UiAUjZp+bby4xG0APk6gNfaqoXg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23400BF4116D200"
last-modified: Thu, 12 Nov 2026 00:47:55 GMT
content-md5: 7dp2FwI8+aIPLed5xaUFwQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e62bea4f-48ea-4d1b-9ad1-bdbceb573dcd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-26d3c2df-9c18-36e7-c2b0-1744b3d85fa7/test-blob-b3432773-2c6e-d8b6-ca54-8cf186fc6da7

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
last-modified: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:55 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x23400BF4116D200"
content-md5: 7dp2FwI8+aIPLed5xaUFwQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20c68131-652c-4592-b7d9-e2614e37d598
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 7dp2FwI8+aIPLed5xaUFwQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
u5OCUHPsX8TpbyIRw9jfWZVYdKw7KMKN2liivv9U4HtalR4rVjzY8mMPPKl51XLp0b6vWmOzbJLQ
9HYbSqHElI6nti66swJZf4JJK+wZFATluOxBpYUXpyiLWmHGvKjBS6ca0h9DLx27VtrhaUGmt+Bx
NZG0gu8Jjw4FLlmhk8LZh+BE/0HloonPhk+qNT7n5aOAVIcXDci4EUIQPQHEGsIXCOFgYrefi5MI
5PufXlrQHkm1ID47wnoXjO7+1WSHC2yMki1choLs4MjzDyjMGLLoPx+3DvmE20VnSNbJobYvgNmP
EsstdJfGyT91SLNRS3M7FpVEz/xyCLbn9T6sIj8Sw49OPQbnu8uI8UW5DpORFf1jjYsg67DdHQoU
RX5ZGaYAY4QkAw5sVFvKvN62uPkjVd9ASZWz8djfcR/70nVMLtefuasObRLv9jkwVi/RJmQR8e+f
GNARTHKsRZHucYHlfY0GF/9OFOjNUVNbg5qpDUu76uGGrRYHjW05YSiAAIW3Stmhyg5lwtwG0cZ9
tcjXAzdGMoagX892/4mRFbPATFDNozjBB0I8VicFf9tPidekYV7wOc3+F+sJK8qE060pRoR1rxKQ
Ffv1CtxemuD0Jnay7bNU0BODz4tNuNx3t4J53DhW2trFFEtj+i/xoHwLFQRU0ub61HZx8uCGQl0f
fVJa5L6nnUyb7Nhn8dXjkS4OQaPXI+WbfwfC5ef5PtHuQ33dlru9ZHe4uOUNk+OgjmCxeAG6R1pt
vmW35bhkoq4Hea1YBvtzUN0rH2r/jusjIVaHSMbQM/wjb9hVBn6/UxY3Bho2SIhlPScjjyfwbTB5
lMNh3VnnNkWxNZYjHkpea8tTyIfR7djOIQqfrKTUMgKo23G6Xna9T8/UhRPxQh/cxSRbnKWop6fr
krtOSIqh3AKTekLYpA1Vlnm3/WjE3N/rwud/eJVd/zPKz8u6bgZFMqgRXcfcAyAWBgYs8Ko/Jrbc
Y4ajIWRsNnsPDdRCmyhycsq/s34YD77GaXKPMQ6Ji6gU3gqAoRFEpSdLzfZM1GreuX3ff3M3w1PH
3bjx3AVshYEsLb0d8tG5ew1XzELIeZQHsHeQqgw13Rq2ucNYUsgh30d0H6etwMesJQNl3/cR/mMj
6iuN3Nt19k+iZjkNYClENu36VFrtWe+w5IQIz/0ipbpgNWeckwJs/yhXC1qOnsXaIKkKFqoJNZA7
3fdXbCdSf8F+rSvBqKLqjlUxlk6VIkW+Lq5TGI4PVgDXYbYLFZIBBIuZD/GaGHgHH4hV2J5Bpruy
mD14/2cyb1Yr6kfs33nCL5HD/BJTJBU1S/gFuX5hlbr6WH1UiAUjZp+bby4xG0APk6gNfaqoXg==
```

## Interaction 3: GET /devstoreaccount1/test-container-26d3c2df-9c18-36e7-c2b0-1744b3d85fa7/test-blob-b3432773-2c6e-d8b6-ca54-8cf186fc6da7

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
last-modified: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:55 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x23400BF4116D200"
content-md5: 7dp2FwI8+aIPLed5xaUFwQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: de4e4a2e-c714-49c0-9fcb-9714f63da15f
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 7dp2FwI8+aIPLed5xaUFwQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
u5OCUHPsX8TpbyIRw9jfWZVYdKw7KMKN2liivv9U4HtalR4rVjzY8mMPPKl51XLp0b6vWmOzbJLQ
9HYbSqHElI6nti66swJZf4JJK+wZFATluOxBpYUXpyiLWmHGvKjBS6ca0h9DLx27VtrhaUGmt+Bx
NZG0gu8Jjw4FLlmhk8LZh+BE/0HloonPhk+qNT7n5aOAVIcXDci4EUIQPQHEGsIXCOFgYrefi5MI
5PufXlrQHkm1ID47wnoXjO7+1WSHC2yMki1choLs4MjzDyjMGLLoPx+3DvmE20VnSNbJobYvgNmP
EsstdJfGyT91SLNRS3M7FpVEz/xyCLbn9T6sIj8Sw49OPQbnu8uI8UW5DpORFf1jjYsg67DdHQoU
RX5ZGaYAY4QkAw5sVFvKvN62uPkjVd9ASZWz8djfcR/70nVMLtefuasObRLv9jkwVi/RJmQR8e+f
GNARTHKsRZHucYHlfY0GF/9OFOjNUVNbg5qpDUu76uGGrRYHjW05YSiAAIW3Stmhyg5lwtwG0cZ9
tcjXAzdGMoagX892/4mRFbPATFDNozjBB0I8VicFf9tPidekYV7wOc3+F+sJK8qE060pRoR1rxKQ
Ffv1CtxemuD0Jnay7bNU0BODz4tNuNx3t4J53DhW2trFFEtj+i/xoHwLFQRU0ub61HZx8uCGQl0f
fVJa5L6nnUyb7Nhn8dXjkS4OQaPXI+WbfwfC5ef5PtHuQ33dlru9ZHe4uOUNk+OgjmCxeAG6R1pt
vmW35bhkoq4Hea1YBvtzUN0rH2r/jusjIVaHSMbQM/wjb9hVBn6/UxY3Bho2SIhlPScjjyfwbTB5
lMNh3VnnNkWxNZYjHkpea8tTyIfR7djOIQqfrKTUMgKo23G6Xna9T8/UhRPxQh/cxSRbnKWop6fr
krtOSIqh3AKTekLYpA1Vlnm3/WjE3N/rwud/eJVd/zPKz8u6bgZFMqgRXcfcAyAWBgYs8Ko/Jrbc
Y4ajIWRsNnsPDdRCmyhycsq/s34YD77GaXKPMQ6Ji6gU3gqAoRFEpSdLzfZM1GreuX3ff3M3w1PH
3bjx3AVshYEsLb0d8tG5ew1XzELIeZQHsHeQqgw13Rq2ucNYUsgh30d0H6etwMesJQNl3/cR/mMj
6iuN3Nt19k+iZjkNYClENu36VFrtWe+w5IQIz/0ipbpgNWeckwJs/yhXC1qOnsXaIKkKFqoJNZA7
3fdXbCdSf8F+rSvBqKLqjlUxlk6VIkW+Lq5TGI4PVgDXYbYLFZIBBIuZD/GaGHgHH4hV2J5Bpruy
mD14/2cyb1Yr6kfs33nCL5HD/BJTJBU1S/gFuX5hlbr6WH1UiAUjZp+bby4xG0APk6gNfaqoXg==
```

## Interaction 4: GET /devstoreaccount1/test-container-26d3c2df-9c18-36e7-c2b0-1744b3d85fa7/test-blob-b3432773-2c6e-d8b6-ca54-8cf186fc6da7

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
last-modified: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:55 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x23400BF4116D200"
content-md5: 7dp2FwI8+aIPLed5xaUFwQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 532dcde5-bb6f-4e86-a703-ca15966641fc
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:55 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: 7dp2FwI8+aIPLed5xaUFwQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
u5OCUHPsX8TpbyIRw9jfWZVYdKw7KMKN2liivv9U4HtalR4rVjzY8mMPPKl51XLp0b6vWmOzbJLQ
9HYbSqHElI6nti66swJZf4JJK+wZFATluOxBpYUXpyiLWmHGvKjBS6ca0h9DLx27VtrhaUGmt+Bx
NZG0gu8Jjw4FLlmhk8LZh+BE/0HloonPhk+qNT7n5aOAVIcXDci4EUIQPQHEGsIXCOFgYrefi5MI
5PufXlrQHkm1ID47wnoXjO7+1WSHC2yMki1choLs4MjzDyjMGLLoPx+3DvmE20VnSNbJobYvgNmP
EsstdJfGyT91SLNRS3M7FpVEz/xyCLbn9T6sIj8Sw49OPQbnu8uI8UW5DpORFf1jjYsg67DdHQoU
RX5ZGaYAY4QkAw5sVFvKvN62uPkjVd9ASZWz8djfcR/70nVMLtefuasObRLv9jkwVi/RJmQR8e+f
GNARTHKsRZHucYHlfY0GF/9OFOjNUVNbg5qpDUu76uGGrRYHjW05YSiAAIW3Stmhyg5lwtwG0cZ9
tcjXAzdGMoagX892/4mRFbPATFDNozjBB0I8VicFf9tPidekYV7wOc3+F+sJK8qE060pRoR1rxKQ
Ffv1CtxemuD0Jnay7bNU0BODz4tNuNx3t4J53DhW2trFFEtj+i/xoHwLFQRU0ub61HZx8uCGQl0f
fVJa5L6nnUyb7Nhn8dXjkS4OQaPXI+WbfwfC5ef5PtHuQ33dlru9ZHe4uOUNk+OgjmCxeAG6R1pt
vmW35bhkoq4Hea1YBvtzUN0rH2r/jusjIVaHSMbQM/wjb9hVBn6/UxY3Bho2SIhlPScjjyfwbTB5
lMNh3VnnNkWxNZYjHkpea8tTyIfR7djOIQqfrKTUMgKo23G6Xna9T8/UhRPxQh/cxSRbnKWop6fr
krtOSIqh3AKTekLYpA1Vlnm3/WjE3N/rwud/eJVd/zPKz8u6bgZFMqgRXcfcAyAWBgYs8Ko/Jrbc
Y4ajIWRsNnsPDdRCmyhycsq/s34YD77GaXKPMQ6Ji6gU3gqAoRFEpSdLzfZM1GreuX3ff3M3w1PH
3bjx3AVshYEsLb0d8tG5ew1XzELIeZQHsHeQqgw13Rq2ucNYUsgh30d0H6etwMesJQNl3/cR/mMj
6iuN3Nt19k+iZjkNYClENu36VFrtWe+w5IQIz/0ipbpgNWeckwJs/yhXC1qOnsXaIKkKFqoJNZA7
3fdXbCdSf8F+rSvBqKLqjlUxlk6VIkW+Lq5TGI4PVgDXYbYLFZIBBIuZD/GaGHgHH4hV2J5Bpruy
mD14/2cyb1Yr6kfs33nCL5HD/BJTJBU1S/gFuX5hlbr6WH1UiAUjZp+bby4xG0APk6gNfaqoXg==
```

## Interaction 5: DELETE /devstoreaccount1/test-container-26d3c2df-9c18-36e7-c2b0-1744b3d85fa7?restype=container

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
x-ms-request-id: be83d4a1-a6fb-45ed-995a-1481bb208f31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

