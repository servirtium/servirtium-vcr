## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fbff2036-1dae-aaaf-c1b3-870d31d40c17?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_Stream_StorageTransferOptions(16)
now: 2026-11-12T00:49:06.3754002+00:00

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
etag: "0x235DA0B33F06580"
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fbbe14c9-6f6d-4bff-a41b-db04753cad91
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fbff2036-1dae-aaaf-c1b3-870d31d40c17/test-blob-287829a8-3ee6-2bdb-d1c6-4bd9ecbc41d3

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
2+3OaqB1UUhrzmAIrtwAQb1lH7l49vb3RdMp59LVvgRxszFEBqF2M9gvvRfe0nz0xgoch52HW+X3
1iXNS2l2lRBblvurvDob7+vhSDneGXJWNCHIuDZn6VhMTS98qehuuScHgjuBSQnPAZexphKsGb2y
dhZHrtzZ862iX28KnkYDc48R1pY31OsY+LeetkNFoDNyyjLRJgpKLY6O3uqaxGNRrjODmkImeqEr
L7UlOj1qXb47mNMTMUyEx6kHqPYAfTNTTQcQwgXxS0+QpfZUJPJRJIErXiyPPX3m/tOZHtKrKrGB
0e01WZq5SUyEgoxVMKK2toR11R4HxA+KKcQyWC195XpE0lMEG8rmchXfC7vwkM4w4mhONlWTeg3e
qzDWhvEfBp0REV1PsZq5jmMJKLlTmZn2AXXFL68lsVhFJnCaD+sjwAQd339w4THNlKfxiVJTihGW
4IR7Wdft618FCYsqH3535We1NbkahR9E95oHMygG8pteAy9np2YsMPQfa9ilo3UpeqPqnlRXfFpk
N2I95rc3/hbvyxtPED0AiAXF+hpHnlMk3rmEG1NGBobUAnAE70o852zBttha2Wpl6hZOkoFAHZgO
GAf+s+PCqMSUeg3N/Ji7iROtheh7ygRPHjE993QFlOXX9tdCPTSJ/w0TxV9cmO59kwhukpiwkk0C
r5SxhbFQj+Yo9QXBeEzeJIbbaAWl8oZDv2RslgFNJ2OJP42f13lcwzV5NKLovBq7kG4R1CpIXbwN
bsVM5Pnk282iODm+PkwMf6XPK77jWwNKsAaSO1I5QOLQkWm0D988lVnVRYTh/VEhBVWEeTH+KhPC
AjPyUaB6aPdW7azjV2/GkpZlDhV/abK1cTX9tMew0mdV8g2rSkO5Wt2Mig+kPq3mvuabmRv9QpiB
PeBqfbQwphtFjWVhG0hTrLQ38t6iEDKHF/XgFThMWK90KgxjTtwpW+T0X7BIhKOeSO1nxU+63iyt
4ma+UJDi+TW17fA7713YDpf6rrGBP5JSQs1L5JJfukvftWt1agtTEmZ7kpayYliPjre4wDB7LKPT
bA7DlhSjVjKlXDrxYqSMpptKBqz7n990vFbap/obY4nHof79j3xS2DxkDQYdnSwSKxqUMSX318wu
T9m9yK84ifixKcCljxYf+C5vl5HZVh8px3vghzJj0MoxzkCilA+NK4QNbHNrbZwDdTj3h0A6VPi6
lAAzWALFTVn2c8DVfWMe4mwNy+mrvlre3BH6bEiK93pI5wAPWdOCSB8adfncLvjU2KXTLYgOD9al
VXzwy+EQbHxFjZVjD4mYi4PKkUhgAq4ZJZOjtsnyOdgqaQRWkX0+CQl9lqBicckcO6EFRH2NRQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x268CA069DB87EC0"
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
content-md5: dA4qsgUacV6IapJ//cTP6A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dfa5bd6c-d151-4a15-8eaa-b2f1b39a4976
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-fbff2036-1dae-aaaf-c1b3-870d31d40c17/test-blob-287829a8-3ee6-2bdb-d1c6-4bd9ecbc41d3

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
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:06 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x268CA069DB87EC0"
content-md5: dA4qsgUacV6IapJ//cTP6A==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 600a403c-aaab-47ac-a93a-7f17872070f4
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: dA4qsgUacV6IapJ//cTP6A==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
2+3OaqB1UUhrzmAIrtwAQb1lH7l49vb3RdMp59LVvgRxszFEBqF2M9gvvRfe0nz0xgoch52HW+X3
1iXNS2l2lRBblvurvDob7+vhSDneGXJWNCHIuDZn6VhMTS98qehuuScHgjuBSQnPAZexphKsGb2y
dhZHrtzZ862iX28KnkYDc48R1pY31OsY+LeetkNFoDNyyjLRJgpKLY6O3uqaxGNRrjODmkImeqEr
L7UlOj1qXb47mNMTMUyEx6kHqPYAfTNTTQcQwgXxS0+QpfZUJPJRJIErXiyPPX3m/tOZHtKrKrGB
0e01WZq5SUyEgoxVMKK2toR11R4HxA+KKcQyWC195XpE0lMEG8rmchXfC7vwkM4w4mhONlWTeg3e
qzDWhvEfBp0REV1PsZq5jmMJKLlTmZn2AXXFL68lsVhFJnCaD+sjwAQd339w4THNlKfxiVJTihGW
4IR7Wdft618FCYsqH3535We1NbkahR9E95oHMygG8pteAy9np2YsMPQfa9ilo3UpeqPqnlRXfFpk
N2I95rc3/hbvyxtPED0AiAXF+hpHnlMk3rmEG1NGBobUAnAE70o852zBttha2Wpl6hZOkoFAHZgO
GAf+s+PCqMSUeg3N/Ji7iROtheh7ygRPHjE993QFlOXX9tdCPTSJ/w0TxV9cmO59kwhukpiwkk0C
r5SxhbFQj+Yo9QXBeEzeJIbbaAWl8oZDv2RslgFNJ2OJP42f13lcwzV5NKLovBq7kG4R1CpIXbwN
bsVM5Pnk282iODm+PkwMf6XPK77jWwNKsAaSO1I5QOLQkWm0D988lVnVRYTh/VEhBVWEeTH+KhPC
AjPyUaB6aPdW7azjV2/GkpZlDhV/abK1cTX9tMew0mdV8g2rSkO5Wt2Mig+kPq3mvuabmRv9QpiB
PeBqfbQwphtFjWVhG0hTrLQ38t6iEDKHF/XgFThMWK90KgxjTtwpW+T0X7BIhKOeSO1nxU+63iyt
4ma+UJDi+TW17fA7713YDpf6rrGBP5JSQs1L5JJfukvftWt1agtTEmZ7kpayYliPjre4wDB7LKPT
bA7DlhSjVjKlXDrxYqSMpptKBqz7n990vFbap/obY4nHof79j3xS2DxkDQYdnSwSKxqUMSX318wu
T9m9yK84ifixKcCljxYf+C5vl5HZVh8px3vghzJj0MoxzkCilA+NK4QNbHNrbZwDdTj3h0A6VPi6
lAAzWALFTVn2c8DVfWMe4mwNy+mrvlre3BH6bEiK93pI5wAPWdOCSB8adfncLvjU2KXTLYgOD9al
VXzwy+EQbHxFjZVjD4mYi4PKkUhgAq4ZJZOjtsnyOdgqaQRWkX0+CQl9lqBicckcO6EFRH2NRQ==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-fbff2036-1dae-aaaf-c1b3-870d31d40c17/test-blob-287829a8-3ee6-2bdb-d1c6-4bd9ecbc41d3

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
last-modified: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:06 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x268CA069DB87EC0"
content-md5: dA4qsgUacV6IapJ//cTP6A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41cc1364-ca04-4e12-a9e3-e166003acc93
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:06 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:06 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-fbff2036-1dae-aaaf-c1b3-870d31d40c17?restype=container

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
x-ms-request-id: 8221edff-56e6-4c56-be34-e35b314c9e1b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

