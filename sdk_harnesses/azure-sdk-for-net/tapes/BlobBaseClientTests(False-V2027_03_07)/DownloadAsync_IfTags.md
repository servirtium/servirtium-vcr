## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-075fcc31-67b0-eadf-5c6e-fa0ed86e8093?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_IfTags
now: 2026-11-12T00:46:38.8662312+00:00

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
etag: "0x236DBE4D07E8FA0"
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e70f96a1-6a3b-4a6d-8d00-adc7aa68f5f2
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:38 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-075fcc31-67b0-eadf-5c6e-fa0ed86e8093/test-blob-519846b9-41b7-10bf-b0e9-b152b37a676c

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
G+STK8NTZ3o0b/+avVAfNArWc3Unj85ftVh4+1ZKfiauTLW55bio3mTk00BoRCwLTsUEAfsKbIsW
M3Zq2mwk6fHZ7HCbZk5RLpQQQryN93ArbKyRRnwqo+AporFBPQP4wOlPjli7cOd2stNm+irPiTwG
Pm2/k6J1rkiQccOdD/CQF4LSPWgXcPzFG5Opw6i1Whl1O/6VOSxG2uAQKv8k2aLi1uOo/UvU7s5x
+ngPzOqf2xeqKNTy+t5Vi2OHB0X8oEHxxu3FDVzNoEwwJD60Nw71cE/oerHO8NsEUnLoTOeJdFk2
HQX82s263IeHwdafoVNUkZf1FCaQItYSwbrq5VNlp6/lfhoJ+ZWCLZ0pRy4EZLEek7tQk18ypfsv
6hkS0Pc0IhonuiM5S5gBc+eIZ9unDVwJy1GYFRNPstge2Q58b1ym9CQU3aqO5UciTiB4qT4fh9y8
CQWlnA0G1wdKGnKKhAOK4nK2ki+xe+UKdcbz1wia/1Iyv2ZXAVgXDgaiQ8vVmMkd7cfLaPSsC40f
miZGEgD/sBsfV8ScM+AZnoQpDjcaNd381ulAzpZdhbTYN2Yy0fsGo5OvtUAEgLrmsslwgvxWBWVI
STwWvuKFwtIQw/t5582II2ukan+d91UvWRzM7QK3gjIB6Ye+7+SwKvNt9L2+bMr851+Rsprmq1Hn
52XGudTQWUHJeP1FyTSH80CLLwOYcOxRzwWiJs+XGz011wd+6nEenZt79fTMth0rCb5aWnxOTnd4
denPLTJxMVzAEPIsCAjPbZJoHHr4hBnndx0QPcHB54iQBnWHT29oCsOXDKYr/wC2iu3q5TL9gPHQ
57UVYPSb/yhpmwKTRx0i/xG2YHdyu3gcWrLU1wFWk4aEt2e6U6nP/A19wmP+IkPPx+UgRh95XSw8
+AVCxygmEgh7D4+2aKxo52Rq9fkVHjhvBA8bNUxmClo7fVqkjTTlV7BaghOzGF85uF+7D2cyJ9rN
0sIYCty7FAU1e+pSxFkvhJ1Jupslu+yv4n3tq/ryCFV/1rpyzEzTn24Nfp115/QGjIvK6Ww/qBfW
aSdfzmkKQnOU0u2fvLhRdRstFz1OOvuJ5x5vKB7oQC6jm2Mkc9AEAzsq4BQGZs/SeHNREZHZhy8s
1udLmhpUrJG/+yFULAFKKBMCJFrmgoBOnK+qly6cyRM0+J3ouWkh1TODR2uufktyBul912LURVRn
/P1qqRRjIjENIDRkYW+q4U8mYzsUoB5kOJBFH/KwX7JJgbxrtiwfHyQ5oV0WDaR50/UTruEZUlzf
BnCEHQM/XMGBGuCyPyoiB0MW2/7BTSrszEz9nbDRMC9gjLC7mgIh+kWblfPExpPL8KedAnZdHQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x206BA02663F32C0"
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
content-md5: erpjmI4VWyqA9VKek27J4A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9e58f9e-f181-431c-ba27-019db4151e2a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-075fcc31-67b0-eadf-5c6e-fa0ed86e8093/test-blob-519846b9-41b7-10bf-b0e9-b152b37a676c?comp=tags

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/xml
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
﻿<Tags><TagSet><Tag><Key>coolTag</Key><Value>true</Value></Tag></TagSet></Tags>
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4cdeb7db-0417-4910-bc51-74eb1e183c3d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:38 GMT
```
### Response body recorded for playback (204: text/plain):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-075fcc31-67b0-eadf-5c6e-fa0ed86e8093/test-blob-519846b9-41b7-10bf-b0e9-b152b37a676c

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_4
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:38 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x206BA02663F32C0"
content-md5: erpjmI4VWyqA9VKek27J4A==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6fd9935d-4f3d-43d6-a55e-70d7e532c313
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: erpjmI4VWyqA9VKek27J4A==
x-ms-tag-count: 1
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
G+STK8NTZ3o0b/+avVAfNArWc3Unj85ftVh4+1ZKfiauTLW55bio3mTk00BoRCwLTsUEAfsKbIsW
M3Zq2mwk6fHZ7HCbZk5RLpQQQryN93ArbKyRRnwqo+AporFBPQP4wOlPjli7cOd2stNm+irPiTwG
Pm2/k6J1rkiQccOdD/CQF4LSPWgXcPzFG5Opw6i1Whl1O/6VOSxG2uAQKv8k2aLi1uOo/UvU7s5x
+ngPzOqf2xeqKNTy+t5Vi2OHB0X8oEHxxu3FDVzNoEwwJD60Nw71cE/oerHO8NsEUnLoTOeJdFk2
HQX82s263IeHwdafoVNUkZf1FCaQItYSwbrq5VNlp6/lfhoJ+ZWCLZ0pRy4EZLEek7tQk18ypfsv
6hkS0Pc0IhonuiM5S5gBc+eIZ9unDVwJy1GYFRNPstge2Q58b1ym9CQU3aqO5UciTiB4qT4fh9y8
CQWlnA0G1wdKGnKKhAOK4nK2ki+xe+UKdcbz1wia/1Iyv2ZXAVgXDgaiQ8vVmMkd7cfLaPSsC40f
miZGEgD/sBsfV8ScM+AZnoQpDjcaNd381ulAzpZdhbTYN2Yy0fsGo5OvtUAEgLrmsslwgvxWBWVI
STwWvuKFwtIQw/t5582II2ukan+d91UvWRzM7QK3gjIB6Ye+7+SwKvNt9L2+bMr851+Rsprmq1Hn
52XGudTQWUHJeP1FyTSH80CLLwOYcOxRzwWiJs+XGz011wd+6nEenZt79fTMth0rCb5aWnxOTnd4
denPLTJxMVzAEPIsCAjPbZJoHHr4hBnndx0QPcHB54iQBnWHT29oCsOXDKYr/wC2iu3q5TL9gPHQ
57UVYPSb/yhpmwKTRx0i/xG2YHdyu3gcWrLU1wFWk4aEt2e6U6nP/A19wmP+IkPPx+UgRh95XSw8
+AVCxygmEgh7D4+2aKxo52Rq9fkVHjhvBA8bNUxmClo7fVqkjTTlV7BaghOzGF85uF+7D2cyJ9rN
0sIYCty7FAU1e+pSxFkvhJ1Jupslu+yv4n3tq/ryCFV/1rpyzEzTn24Nfp115/QGjIvK6Ww/qBfW
aSdfzmkKQnOU0u2fvLhRdRstFz1OOvuJ5x5vKB7oQC6jm2Mkc9AEAzsq4BQGZs/SeHNREZHZhy8s
1udLmhpUrJG/+yFULAFKKBMCJFrmgoBOnK+qly6cyRM0+J3ouWkh1TODR2uufktyBul912LURVRn
/P1qqRRjIjENIDRkYW+q4U8mYzsUoB5kOJBFH/KwX7JJgbxrtiwfHyQ5oV0WDaR50/UTruEZUlzf
BnCEHQM/XMGBGuCyPyoiB0MW2/7BTSrszEz9nbDRMC9gjLC7mgIh+kWblfPExpPL8KedAnZdHQ==
```

## Interaction 4: GET /devstoreaccount1/test-container-075fcc31-67b0-eadf-5c6e-fa0ed86e8093/test-blob-519846b9-41b7-10bf-b0e9-b152b37a676c

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_5
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:38 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x206BA02663F32C0"
content-md5: erpjmI4VWyqA9VKek27J4A==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f9cf2b0-51fc-46f2-affb-7636315da9cd
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: erpjmI4VWyqA9VKek27J4A==
x-ms-tag-count: 1
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
G+STK8NTZ3o0b/+avVAfNArWc3Unj85ftVh4+1ZKfiauTLW55bio3mTk00BoRCwLTsUEAfsKbIsW
M3Zq2mwk6fHZ7HCbZk5RLpQQQryN93ArbKyRRnwqo+AporFBPQP4wOlPjli7cOd2stNm+irPiTwG
Pm2/k6J1rkiQccOdD/CQF4LSPWgXcPzFG5Opw6i1Whl1O/6VOSxG2uAQKv8k2aLi1uOo/UvU7s5x
+ngPzOqf2xeqKNTy+t5Vi2OHB0X8oEHxxu3FDVzNoEwwJD60Nw71cE/oerHO8NsEUnLoTOeJdFk2
HQX82s263IeHwdafoVNUkZf1FCaQItYSwbrq5VNlp6/lfhoJ+ZWCLZ0pRy4EZLEek7tQk18ypfsv
6hkS0Pc0IhonuiM5S5gBc+eIZ9unDVwJy1GYFRNPstge2Q58b1ym9CQU3aqO5UciTiB4qT4fh9y8
CQWlnA0G1wdKGnKKhAOK4nK2ki+xe+UKdcbz1wia/1Iyv2ZXAVgXDgaiQ8vVmMkd7cfLaPSsC40f
miZGEgD/sBsfV8ScM+AZnoQpDjcaNd381ulAzpZdhbTYN2Yy0fsGo5OvtUAEgLrmsslwgvxWBWVI
STwWvuKFwtIQw/t5582II2ukan+d91UvWRzM7QK3gjIB6Ye+7+SwKvNt9L2+bMr851+Rsprmq1Hn
52XGudTQWUHJeP1FyTSH80CLLwOYcOxRzwWiJs+XGz011wd+6nEenZt79fTMth0rCb5aWnxOTnd4
denPLTJxMVzAEPIsCAjPbZJoHHr4hBnndx0QPcHB54iQBnWHT29oCsOXDKYr/wC2iu3q5TL9gPHQ
57UVYPSb/yhpmwKTRx0i/xG2YHdyu3gcWrLU1wFWk4aEt2e6U6nP/A19wmP+IkPPx+UgRh95XSw8
+AVCxygmEgh7D4+2aKxo52Rq9fkVHjhvBA8bNUxmClo7fVqkjTTlV7BaghOzGF85uF+7D2cyJ9rN
0sIYCty7FAU1e+pSxFkvhJ1Jupslu+yv4n3tq/ryCFV/1rpyzEzTn24Nfp115/QGjIvK6Ww/qBfW
aSdfzmkKQnOU0u2fvLhRdRstFz1OOvuJ5x5vKB7oQC6jm2Mkc9AEAzsq4BQGZs/SeHNREZHZhy8s
1udLmhpUrJG/+yFULAFKKBMCJFrmgoBOnK+qly6cyRM0+J3ouWkh1TODR2uufktyBul912LURVRn
/P1qqRRjIjENIDRkYW+q4U8mYzsUoB5kOJBFH/KwX7JJgbxrtiwfHyQ5oV0WDaR50/UTruEZUlzf
BnCEHQM/XMGBGuCyPyoiB0MW2/7BTSrszEz9nbDRMC9gjLC7mgIh+kWblfPExpPL8KedAnZdHQ==
```

## Interaction 5: GET /devstoreaccount1/test-container-075fcc31-67b0-eadf-5c6e-fa0ed86e8093/test-blob-519846b9-41b7-10bf-b0e9-b152b37a676c

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_6
x-ms-if-tags: "coolTag" = 'true'
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:38 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:38 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x206BA02663F32C0"
content-md5: erpjmI4VWyqA9VKek27J4A==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 32fc74db-8bbe-4dc6-93c0-863fb7ad409e
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:39 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: erpjmI4VWyqA9VKek27J4A==
x-ms-tag-count: 1
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
G+STK8NTZ3o0b/+avVAfNArWc3Unj85ftVh4+1ZKfiauTLW55bio3mTk00BoRCwLTsUEAfsKbIsW
M3Zq2mwk6fHZ7HCbZk5RLpQQQryN93ArbKyRRnwqo+AporFBPQP4wOlPjli7cOd2stNm+irPiTwG
Pm2/k6J1rkiQccOdD/CQF4LSPWgXcPzFG5Opw6i1Whl1O/6VOSxG2uAQKv8k2aLi1uOo/UvU7s5x
+ngPzOqf2xeqKNTy+t5Vi2OHB0X8oEHxxu3FDVzNoEwwJD60Nw71cE/oerHO8NsEUnLoTOeJdFk2
HQX82s263IeHwdafoVNUkZf1FCaQItYSwbrq5VNlp6/lfhoJ+ZWCLZ0pRy4EZLEek7tQk18ypfsv
6hkS0Pc0IhonuiM5S5gBc+eIZ9unDVwJy1GYFRNPstge2Q58b1ym9CQU3aqO5UciTiB4qT4fh9y8
CQWlnA0G1wdKGnKKhAOK4nK2ki+xe+UKdcbz1wia/1Iyv2ZXAVgXDgaiQ8vVmMkd7cfLaPSsC40f
miZGEgD/sBsfV8ScM+AZnoQpDjcaNd381ulAzpZdhbTYN2Yy0fsGo5OvtUAEgLrmsslwgvxWBWVI
STwWvuKFwtIQw/t5582II2ukan+d91UvWRzM7QK3gjIB6Ye+7+SwKvNt9L2+bMr851+Rsprmq1Hn
52XGudTQWUHJeP1FyTSH80CLLwOYcOxRzwWiJs+XGz011wd+6nEenZt79fTMth0rCb5aWnxOTnd4
denPLTJxMVzAEPIsCAjPbZJoHHr4hBnndx0QPcHB54iQBnWHT29oCsOXDKYr/wC2iu3q5TL9gPHQ
57UVYPSb/yhpmwKTRx0i/xG2YHdyu3gcWrLU1wFWk4aEt2e6U6nP/A19wmP+IkPPx+UgRh95XSw8
+AVCxygmEgh7D4+2aKxo52Rq9fkVHjhvBA8bNUxmClo7fVqkjTTlV7BaghOzGF85uF+7D2cyJ9rN
0sIYCty7FAU1e+pSxFkvhJ1Jupslu+yv4n3tq/ryCFV/1rpyzEzTn24Nfp115/QGjIvK6Ww/qBfW
aSdfzmkKQnOU0u2fvLhRdRstFz1OOvuJ5x5vKB7oQC6jm2Mkc9AEAzsq4BQGZs/SeHNREZHZhy8s
1udLmhpUrJG/+yFULAFKKBMCJFrmgoBOnK+qly6cyRM0+J3ouWkh1TODR2uufktyBul912LURVRn
/P1qqRRjIjENIDRkYW+q4U8mYzsUoB5kOJBFH/KwX7JJgbxrtiwfHyQ5oV0WDaR50/UTruEZUlzf
BnCEHQM/XMGBGuCyPyoiB0MW2/7BTSrszEz9nbDRMC9gjLC7mgIh+kWblfPExpPL8KedAnZdHQ==
```

## Interaction 6: DELETE /devstoreaccount1/test-container-075fcc31-67b0-eadf-5c6e-fa0ed86e8093?restype=container

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3acc06df-474a-418f-98b3-9730321a41bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:39 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

