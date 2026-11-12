## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1df5a6e1-91dd-e273-0055-5d9240b47d66?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_File_StorageTransferOptions(4)
now: 2026-11-12T00:49:04.8098516+00:00

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
etag: "0x2243B1754D86540"
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b02cde29-9be8-4bb6-920b-5b3651fee13c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1df5a6e1-91dd-e273-0055-5d9240b47d66/test-blob-bad731b8-0733-80ce-1ab4-11c9da9d1994

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
H3+oZlf61H4maGyp/lL8Cn7G9DrkLo/a2HUDKICqB2I8yXLBDBYOvVxZlMuaJYHHtwZKE6ner/Hv
zo7i96z+e2AKbDXgO/5ouDbdi5rEP7LzPHF5YPS5XRqB0j2HK8awWxhrkLhM53wI4lpyACNWKo/c
77s6hBtsUA4aXmjA4I1vLDCCWa76plT1cX2ZRl32K6euqzwLdtb9/z+pMYkTRwLNA9Pz1NHh4Uhm
RBOd0gqxJDLAEjVRZLZZhFpuUHXL4Sl7zEOJA1fWzMnzpDHDXyw09w1WUjTMe54dmU93cpHTm2Pp
IgbHKCDb6kVsXcCEliQtOVhndI70rlCka2oHXlo3HwnO2T0mbc/semjuYB7emAIqSTg4bCbU9HO1
I7y21IvrND23trznB8yJevomBk0yxtNn3BQi/7Pi+uTJcEoSNabcAyzgJ+JFQ0Jrr/Esre4lg13p
T/d2yDSK1LzYHZaCd0VTSgIhUZ7xIZnStlDCtkz1pO3tKOavZTr4VlIlbSWs6Tes2WPsBDG++C5e
pBLkxx5v4nmplU5fpOTHKftMy7NzJcwYFtzpCZ+7LjC3UMAoE440tYusA1TpTTR+Jds1cix76n9F
y7BBhtjZ7WYep1MknxVtFxUnxyJ4L8mna+TEhrwDPGVB4kfd8i+y0hXtyqXhWYbFyFoWUyNczJzn
mRv0FGeqG2vt4rzNjyXmdPQMi2QjxhFe/r1i7OhC5Bar9lkTvr2uQ6869HbJ+Dg1MN4vUEE3w9MJ
lhWpRy+Cq/6mIpnL0rY2XUe16dKalAaELbwKEpTUczKGCiioBPuAuEh4I9WfaV0o+fL5gtoAbwEO
JRpyd5hp0a5nRciNjlhMNTCJIXEx5cNe4hmi2/FXhZonmd/hDUCwD1EnOCOUmmqZrU2pd02Q3UBW
E5V/x/a8D8AuZvV5ayfw2RIfCaygykiuCC2krg1NlrufivmrMUhbayljZjN1IEIluZ47cdSTtklN
0L7IF2Gy4NA52eAuRKfKw56DPGQUOOjrf/RvEiXmDNOwXWCJklPHsIVjO0dh9nT2cK02EHrkOJfV
3ZhsQ86rU80NfuZGQDFKu4vfsfyhiYh/eKF3r/tZyyXJs7S7W223t+h6VHiNrzB861TuBYebNFQP
7MotNKPRtLLBfYx8j2AdJ/kUJzUQ8shw+sSma8WeLX9gq26jiYNEqKDFzDKkAFz00N2Nhg0e//oB
vDnfKkjsI08NHOPxep52z36VSiaWy/pnsZroEadxQaxzoc1JZX5X2Kjil+N4A1Y/FrePibTUa/A/
d3iuBBKom9s3fdjQLGn/PnF9tDQW765EqPrv4bf3nzbcCu0FqdSWOfsIQIV9bupNj0tDVre8KQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C2AA6272198790"
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
content-md5: wxSBdVctOsTRXUElo/+99g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f830f222-52e4-4210-9bc2-2b75d86a5b8f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-1df5a6e1-91dd-e273-0055-5d9240b47d66/test-blob-bad731b8-0733-80ce-1ab4-11c9da9d1994

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
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:04 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1C2AA6272198790"
content-md5: wxSBdVctOsTRXUElo/+99g==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a350b0cb-18fe-4205-8c83-36bc6a8650cc
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: wxSBdVctOsTRXUElo/+99g==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
H3+oZlf61H4maGyp/lL8Cn7G9DrkLo/a2HUDKICqB2I8yXLBDBYOvVxZlMuaJYHHtwZKE6ner/Hv
zo7i96z+e2AKbDXgO/5ouDbdi5rEP7LzPHF5YPS5XRqB0j2HK8awWxhrkLhM53wI4lpyACNWKo/c
77s6hBtsUA4aXmjA4I1vLDCCWa76plT1cX2ZRl32K6euqzwLdtb9/z+pMYkTRwLNA9Pz1NHh4Uhm
RBOd0gqxJDLAEjVRZLZZhFpuUHXL4Sl7zEOJA1fWzMnzpDHDXyw09w1WUjTMe54dmU93cpHTm2Pp
IgbHKCDb6kVsXcCEliQtOVhndI70rlCka2oHXlo3HwnO2T0mbc/semjuYB7emAIqSTg4bCbU9HO1
I7y21IvrND23trznB8yJevomBk0yxtNn3BQi/7Pi+uTJcEoSNabcAyzgJ+JFQ0Jrr/Esre4lg13p
T/d2yDSK1LzYHZaCd0VTSgIhUZ7xIZnStlDCtkz1pO3tKOavZTr4VlIlbSWs6Tes2WPsBDG++C5e
pBLkxx5v4nmplU5fpOTHKftMy7NzJcwYFtzpCZ+7LjC3UMAoE440tYusA1TpTTR+Jds1cix76n9F
y7BBhtjZ7WYep1MknxVtFxUnxyJ4L8mna+TEhrwDPGVB4kfd8i+y0hXtyqXhWYbFyFoWUyNczJzn
mRv0FGeqG2vt4rzNjyXmdPQMi2QjxhFe/r1i7OhC5Bar9lkTvr2uQ6869HbJ+Dg1MN4vUEE3w9MJ
lhWpRy+Cq/6mIpnL0rY2XUe16dKalAaELbwKEpTUczKGCiioBPuAuEh4I9WfaV0o+fL5gtoAbwEO
JRpyd5hp0a5nRciNjlhMNTCJIXEx5cNe4hmi2/FXhZonmd/hDUCwD1EnOCOUmmqZrU2pd02Q3UBW
E5V/x/a8D8AuZvV5ayfw2RIfCaygykiuCC2krg1NlrufivmrMUhbayljZjN1IEIluZ47cdSTtklN
0L7IF2Gy4NA52eAuRKfKw56DPGQUOOjrf/RvEiXmDNOwXWCJklPHsIVjO0dh9nT2cK02EHrkOJfV
3ZhsQ86rU80NfuZGQDFKu4vfsfyhiYh/eKF3r/tZyyXJs7S7W223t+h6VHiNrzB861TuBYebNFQP
7MotNKPRtLLBfYx8j2AdJ/kUJzUQ8shw+sSma8WeLX9gq26jiYNEqKDFzDKkAFz00N2Nhg0e//oB
vDnfKkjsI08NHOPxep52z36VSiaWy/pnsZroEadxQaxzoc1JZX5X2Kjil+N4A1Y/FrePibTUa/A/
d3iuBBKom9s3fdjQLGn/PnF9tDQW765EqPrv4bf3nzbcCu0FqdSWOfsIQIV9bupNj0tDVre8KQ==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-1df5a6e1-91dd-e273-0055-5d9240b47d66/test-blob-bad731b8-0733-80ce-1ab4-11c9da9d1994

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
last-modified: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:04 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1C2AA6272198790"
content-md5: wxSBdVctOsTRXUElo/+99g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 02a0822f-7933-4265-8a6e-0c95a917860f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:04 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:04 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-1df5a6e1-91dd-e273-0055-5d9240b47d66?restype=container

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
x-ms-request-id: f5557aca-8127-4bc0-bf00-0022f195ed99
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

