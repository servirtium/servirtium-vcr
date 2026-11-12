## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_MaxResults
now: 2026-11-12T00:43:59.0896272+00:00

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
etag: "0x2533F58103D2080"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb987762-09a0-4f0e-b9c9-6d8b54ba24fa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db/foo

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
KPcBAYhuiWDpEAnLp6Gp+Ce3PoJjd1axvrN3Vw5zv/aTkWDXj5B7i8ntVbZvO6O50sPtI+Xfd7Gg
UELV9jFRdlASOBVB0mmXPLO5diGfQYMPvoVLhZwRsxmvNj5NpZSXm99mXAKNeP9ZVuYyJQGPAA6/
xTesBvGzAYT8kZwqSZYeItpCOeWAgUaF8S+2344YHzUwjeBc6pXuslt9keZjLwxPEwImTcYpPkTx
JhXB/CL243Jm+ru2wTdFVIeJAu9gIsIiZ8uL8dFuBk6ba8SALLU5h61z/DRQmFLL4fk/nzxUkQRS
npVWavKg9/NtG1ZzxSfRUHtC7CWN0s95wBDYL2YSRtrALY0g4hy70wVB43z7VxvRbU/AEqTfxczG
3anix8iMWtR7s5iZsW1ehhkgS+5SfWj0B8EXUjQ14GfBWgVz2Qs8tImogKSDN7ziYouLvnndc19A
7cAGdQigRdIw2Fdn660N45Zlqf3Ecc8FNO+oqiLt5OamMutKNj+ABzrSUl9ke3befdvid8lifHzx
AEEY+JuwQvRwwLnBwq1X5KHC8h5woLh5ySxGCmwcRLVvWTX+aA+eIQ9q9Lq9HLoui5Inn4legGCI
ni5uaTiHU3wDUmh3WXySI9AOBaz9vK1yGH/a9aQrENnVdcnhMLjX46A9uclStjEWlXu5T3uziuKA
/FG4rF7X10GPouSysPMYNiIMvwLjIGFNxF8pcsFeIurnYDRmHzZBZeKIwhNNZOSHoRhYpsrgndzw
auj/rmWAMYD5ylC/sRfry1kfW11NAF96odGoBXsfBsNXdrRNQrd9B5GSU5mUyO8BbdtxwEF+omqJ
hAyT2CsF2sSMZztjnoiiolPMu6zG5tjippigrkaB2dRKxL6q6S9ljXnUB2Gznc9Szh3usue9wp00
sTGTZCt+C45nGdnK97gkZi0z8d53LgnITt8okybsjAIgdjj+0SlNVvzTTIT1h9ZlyUy5itC+vIMo
yhZLVXhneozXqYGAJpQE5ZripOKE08YJw8naMgIxYbm11QYSAgGDa9H3Ht1V5KO3taQ13Bigo/dP
QpKujUeKpUjHy1CO8eOZXjkQjLTos98mI31d/IWhFDIPw79u1d2KbHmVjRhTKcTBm33fkBZDZo6z
iGrKLajCJbcefy0kK4lbhiA7UyXG0/q4m2EHwoQby1wwu01zvz/Q0mhhNKqXnXD0gwn2BxNo7LRw
EZFHumMyArPQ82876Mfha4C9ZZ5PIf7wEz57JMRJx86YAq2tiBcFLjH2xqkAuJtCFZySq4cWIPCT
V6ckt97uhyuho+UZM+JouDZsWVtU71qjOA8othxGgeK9GjFw4XZTCD99XxW2KeG5KvNQqceVPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24900A8E17DD340"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
content-md5: Y30CtUtoyD9NbVjLdtxcSw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e71e084-42d5-49ba-bc9c-5354aa69956e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KPcBAYhuiWDpEAnLp6Gp+Ce3PoJjd1axvrN3Vw5zv/aTkWDXj5B7i8ntVbZvO6O50sPtI+Xfd7Gg
UELV9jFRdlASOBVB0mmXPLO5diGfQYMPvoVLhZwRsxmvNj5NpZSXm99mXAKNeP9ZVuYyJQGPAA6/
xTesBvGzAYT8kZwqSZYeItpCOeWAgUaF8S+2344YHzUwjeBc6pXuslt9keZjLwxPEwImTcYpPkTx
JhXB/CL243Jm+ru2wTdFVIeJAu9gIsIiZ8uL8dFuBk6ba8SALLU5h61z/DRQmFLL4fk/nzxUkQRS
npVWavKg9/NtG1ZzxSfRUHtC7CWN0s95wBDYL2YSRtrALY0g4hy70wVB43z7VxvRbU/AEqTfxczG
3anix8iMWtR7s5iZsW1ehhkgS+5SfWj0B8EXUjQ14GfBWgVz2Qs8tImogKSDN7ziYouLvnndc19A
7cAGdQigRdIw2Fdn660N45Zlqf3Ecc8FNO+oqiLt5OamMutKNj+ABzrSUl9ke3befdvid8lifHzx
AEEY+JuwQvRwwLnBwq1X5KHC8h5woLh5ySxGCmwcRLVvWTX+aA+eIQ9q9Lq9HLoui5Inn4legGCI
ni5uaTiHU3wDUmh3WXySI9AOBaz9vK1yGH/a9aQrENnVdcnhMLjX46A9uclStjEWlXu5T3uziuKA
/FG4rF7X10GPouSysPMYNiIMvwLjIGFNxF8pcsFeIurnYDRmHzZBZeKIwhNNZOSHoRhYpsrgndzw
auj/rmWAMYD5ylC/sRfry1kfW11NAF96odGoBXsfBsNXdrRNQrd9B5GSU5mUyO8BbdtxwEF+omqJ
hAyT2CsF2sSMZztjnoiiolPMu6zG5tjippigrkaB2dRKxL6q6S9ljXnUB2Gznc9Szh3usue9wp00
sTGTZCt+C45nGdnK97gkZi0z8d53LgnITt8okybsjAIgdjj+0SlNVvzTTIT1h9ZlyUy5itC+vIMo
yhZLVXhneozXqYGAJpQE5ZripOKE08YJw8naMgIxYbm11QYSAgGDa9H3Ht1V5KO3taQ13Bigo/dP
QpKujUeKpUjHy1CO8eOZXjkQjLTos98mI31d/IWhFDIPw79u1d2KbHmVjRhTKcTBm33fkBZDZo6z
iGrKLajCJbcefy0kK4lbhiA7UyXG0/q4m2EHwoQby1wwu01zvz/Q0mhhNKqXnXD0gwn2BxNo7LRw
EZFHumMyArPQ82876Mfha4C9ZZ5PIf7wEz57JMRJx86YAq2tiBcFLjH2xqkAuJtCFZySq4cWIPCT
V6ckt97uhyuho+UZM+JouDZsWVtU71qjOA8othxGgeK9GjFw4XZTCD99XxW2KeG5KvNQqceVPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2725386E652D940"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
content-md5: Y30CtUtoyD9NbVjLdtxcSw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f18c1724-34a3-4187-98fb-7a1f5bf8510e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db/baz

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
KPcBAYhuiWDpEAnLp6Gp+Ce3PoJjd1axvrN3Vw5zv/aTkWDXj5B7i8ntVbZvO6O50sPtI+Xfd7Gg
UELV9jFRdlASOBVB0mmXPLO5diGfQYMPvoVLhZwRsxmvNj5NpZSXm99mXAKNeP9ZVuYyJQGPAA6/
xTesBvGzAYT8kZwqSZYeItpCOeWAgUaF8S+2344YHzUwjeBc6pXuslt9keZjLwxPEwImTcYpPkTx
JhXB/CL243Jm+ru2wTdFVIeJAu9gIsIiZ8uL8dFuBk6ba8SALLU5h61z/DRQmFLL4fk/nzxUkQRS
npVWavKg9/NtG1ZzxSfRUHtC7CWN0s95wBDYL2YSRtrALY0g4hy70wVB43z7VxvRbU/AEqTfxczG
3anix8iMWtR7s5iZsW1ehhkgS+5SfWj0B8EXUjQ14GfBWgVz2Qs8tImogKSDN7ziYouLvnndc19A
7cAGdQigRdIw2Fdn660N45Zlqf3Ecc8FNO+oqiLt5OamMutKNj+ABzrSUl9ke3befdvid8lifHzx
AEEY+JuwQvRwwLnBwq1X5KHC8h5woLh5ySxGCmwcRLVvWTX+aA+eIQ9q9Lq9HLoui5Inn4legGCI
ni5uaTiHU3wDUmh3WXySI9AOBaz9vK1yGH/a9aQrENnVdcnhMLjX46A9uclStjEWlXu5T3uziuKA
/FG4rF7X10GPouSysPMYNiIMvwLjIGFNxF8pcsFeIurnYDRmHzZBZeKIwhNNZOSHoRhYpsrgndzw
auj/rmWAMYD5ylC/sRfry1kfW11NAF96odGoBXsfBsNXdrRNQrd9B5GSU5mUyO8BbdtxwEF+omqJ
hAyT2CsF2sSMZztjnoiiolPMu6zG5tjippigrkaB2dRKxL6q6S9ljXnUB2Gznc9Szh3usue9wp00
sTGTZCt+C45nGdnK97gkZi0z8d53LgnITt8okybsjAIgdjj+0SlNVvzTTIT1h9ZlyUy5itC+vIMo
yhZLVXhneozXqYGAJpQE5ZripOKE08YJw8naMgIxYbm11QYSAgGDa9H3Ht1V5KO3taQ13Bigo/dP
QpKujUeKpUjHy1CO8eOZXjkQjLTos98mI31d/IWhFDIPw79u1d2KbHmVjRhTKcTBm33fkBZDZo6z
iGrKLajCJbcefy0kK4lbhiA7UyXG0/q4m2EHwoQby1wwu01zvz/Q0mhhNKqXnXD0gwn2BxNo7LRw
EZFHumMyArPQ82876Mfha4C9ZZ5PIf7wEz57JMRJx86YAq2tiBcFLjH2xqkAuJtCFZySq4cWIPCT
V6ckt97uhyuho+UZM+JouDZsWVtU71qjOA8othxGgeK9GjFw4XZTCD99XxW2KeG5KvNQqceVPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2333B4064E75FA0"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
content-md5: Y30CtUtoyD9NbVjLdtxcSw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f76026e-5c7d-43e9-b3db-e37d19d63d83
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db/foo/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KPcBAYhuiWDpEAnLp6Gp+Ce3PoJjd1axvrN3Vw5zv/aTkWDXj5B7i8ntVbZvO6O50sPtI+Xfd7Gg
UELV9jFRdlASOBVB0mmXPLO5diGfQYMPvoVLhZwRsxmvNj5NpZSXm99mXAKNeP9ZVuYyJQGPAA6/
xTesBvGzAYT8kZwqSZYeItpCOeWAgUaF8S+2344YHzUwjeBc6pXuslt9keZjLwxPEwImTcYpPkTx
JhXB/CL243Jm+ru2wTdFVIeJAu9gIsIiZ8uL8dFuBk6ba8SALLU5h61z/DRQmFLL4fk/nzxUkQRS
npVWavKg9/NtG1ZzxSfRUHtC7CWN0s95wBDYL2YSRtrALY0g4hy70wVB43z7VxvRbU/AEqTfxczG
3anix8iMWtR7s5iZsW1ehhkgS+5SfWj0B8EXUjQ14GfBWgVz2Qs8tImogKSDN7ziYouLvnndc19A
7cAGdQigRdIw2Fdn660N45Zlqf3Ecc8FNO+oqiLt5OamMutKNj+ABzrSUl9ke3befdvid8lifHzx
AEEY+JuwQvRwwLnBwq1X5KHC8h5woLh5ySxGCmwcRLVvWTX+aA+eIQ9q9Lq9HLoui5Inn4legGCI
ni5uaTiHU3wDUmh3WXySI9AOBaz9vK1yGH/a9aQrENnVdcnhMLjX46A9uclStjEWlXu5T3uziuKA
/FG4rF7X10GPouSysPMYNiIMvwLjIGFNxF8pcsFeIurnYDRmHzZBZeKIwhNNZOSHoRhYpsrgndzw
auj/rmWAMYD5ylC/sRfry1kfW11NAF96odGoBXsfBsNXdrRNQrd9B5GSU5mUyO8BbdtxwEF+omqJ
hAyT2CsF2sSMZztjnoiiolPMu6zG5tjippigrkaB2dRKxL6q6S9ljXnUB2Gznc9Szh3usue9wp00
sTGTZCt+C45nGdnK97gkZi0z8d53LgnITt8okybsjAIgdjj+0SlNVvzTTIT1h9ZlyUy5itC+vIMo
yhZLVXhneozXqYGAJpQE5ZripOKE08YJw8naMgIxYbm11QYSAgGDa9H3Ht1V5KO3taQ13Bigo/dP
QpKujUeKpUjHy1CO8eOZXjkQjLTos98mI31d/IWhFDIPw79u1d2KbHmVjRhTKcTBm33fkBZDZo6z
iGrKLajCJbcefy0kK4lbhiA7UyXG0/q4m2EHwoQby1wwu01zvz/Q0mhhNKqXnXD0gwn2BxNo7LRw
EZFHumMyArPQ82876Mfha4C9ZZ5PIf7wEz57JMRJx86YAq2tiBcFLjH2xqkAuJtCFZySq4cWIPCT
V6ckt97uhyuho+UZM+JouDZsWVtU71qjOA8othxGgeK9GjFw4XZTCD99XxW2KeG5KvNQqceVPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x244DBD5D6CDD820"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
content-md5: Y30CtUtoyD9NbVjLdtxcSw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f027ebc4-0686-4e6c-ac4d-da546556eba9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db/foo/bar

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
KPcBAYhuiWDpEAnLp6Gp+Ce3PoJjd1axvrN3Vw5zv/aTkWDXj5B7i8ntVbZvO6O50sPtI+Xfd7Gg
UELV9jFRdlASOBVB0mmXPLO5diGfQYMPvoVLhZwRsxmvNj5NpZSXm99mXAKNeP9ZVuYyJQGPAA6/
xTesBvGzAYT8kZwqSZYeItpCOeWAgUaF8S+2344YHzUwjeBc6pXuslt9keZjLwxPEwImTcYpPkTx
JhXB/CL243Jm+ru2wTdFVIeJAu9gIsIiZ8uL8dFuBk6ba8SALLU5h61z/DRQmFLL4fk/nzxUkQRS
npVWavKg9/NtG1ZzxSfRUHtC7CWN0s95wBDYL2YSRtrALY0g4hy70wVB43z7VxvRbU/AEqTfxczG
3anix8iMWtR7s5iZsW1ehhkgS+5SfWj0B8EXUjQ14GfBWgVz2Qs8tImogKSDN7ziYouLvnndc19A
7cAGdQigRdIw2Fdn660N45Zlqf3Ecc8FNO+oqiLt5OamMutKNj+ABzrSUl9ke3befdvid8lifHzx
AEEY+JuwQvRwwLnBwq1X5KHC8h5woLh5ySxGCmwcRLVvWTX+aA+eIQ9q9Lq9HLoui5Inn4legGCI
ni5uaTiHU3wDUmh3WXySI9AOBaz9vK1yGH/a9aQrENnVdcnhMLjX46A9uclStjEWlXu5T3uziuKA
/FG4rF7X10GPouSysPMYNiIMvwLjIGFNxF8pcsFeIurnYDRmHzZBZeKIwhNNZOSHoRhYpsrgndzw
auj/rmWAMYD5ylC/sRfry1kfW11NAF96odGoBXsfBsNXdrRNQrd9B5GSU5mUyO8BbdtxwEF+omqJ
hAyT2CsF2sSMZztjnoiiolPMu6zG5tjippigrkaB2dRKxL6q6S9ljXnUB2Gznc9Szh3usue9wp00
sTGTZCt+C45nGdnK97gkZi0z8d53LgnITt8okybsjAIgdjj+0SlNVvzTTIT1h9ZlyUy5itC+vIMo
yhZLVXhneozXqYGAJpQE5ZripOKE08YJw8naMgIxYbm11QYSAgGDa9H3Ht1V5KO3taQ13Bigo/dP
QpKujUeKpUjHy1CO8eOZXjkQjLTos98mI31d/IWhFDIPw79u1d2KbHmVjRhTKcTBm33fkBZDZo6z
iGrKLajCJbcefy0kK4lbhiA7UyXG0/q4m2EHwoQby1wwu01zvz/Q0mhhNKqXnXD0gwn2BxNo7LRw
EZFHumMyArPQ82876Mfha4C9ZZ5PIf7wEz57JMRJx86YAq2tiBcFLjH2xqkAuJtCFZySq4cWIPCT
V6ckt97uhyuho+UZM+JouDZsWVtU71qjOA8othxGgeK9GjFw4XZTCD99XxW2KeG5KvNQqceVPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x254A6646BD518E0"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
content-md5: Y30CtUtoyD9NbVjLdtxcSw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4f0c649e-fa80-48e8-bb32-0d88e993ebd2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db/baz/foo

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
KPcBAYhuiWDpEAnLp6Gp+Ce3PoJjd1axvrN3Vw5zv/aTkWDXj5B7i8ntVbZvO6O50sPtI+Xfd7Gg
UELV9jFRdlASOBVB0mmXPLO5diGfQYMPvoVLhZwRsxmvNj5NpZSXm99mXAKNeP9ZVuYyJQGPAA6/
xTesBvGzAYT8kZwqSZYeItpCOeWAgUaF8S+2344YHzUwjeBc6pXuslt9keZjLwxPEwImTcYpPkTx
JhXB/CL243Jm+ru2wTdFVIeJAu9gIsIiZ8uL8dFuBk6ba8SALLU5h61z/DRQmFLL4fk/nzxUkQRS
npVWavKg9/NtG1ZzxSfRUHtC7CWN0s95wBDYL2YSRtrALY0g4hy70wVB43z7VxvRbU/AEqTfxczG
3anix8iMWtR7s5iZsW1ehhkgS+5SfWj0B8EXUjQ14GfBWgVz2Qs8tImogKSDN7ziYouLvnndc19A
7cAGdQigRdIw2Fdn660N45Zlqf3Ecc8FNO+oqiLt5OamMutKNj+ABzrSUl9ke3befdvid8lifHzx
AEEY+JuwQvRwwLnBwq1X5KHC8h5woLh5ySxGCmwcRLVvWTX+aA+eIQ9q9Lq9HLoui5Inn4legGCI
ni5uaTiHU3wDUmh3WXySI9AOBaz9vK1yGH/a9aQrENnVdcnhMLjX46A9uclStjEWlXu5T3uziuKA
/FG4rF7X10GPouSysPMYNiIMvwLjIGFNxF8pcsFeIurnYDRmHzZBZeKIwhNNZOSHoRhYpsrgndzw
auj/rmWAMYD5ylC/sRfry1kfW11NAF96odGoBXsfBsNXdrRNQrd9B5GSU5mUyO8BbdtxwEF+omqJ
hAyT2CsF2sSMZztjnoiiolPMu6zG5tjippigrkaB2dRKxL6q6S9ljXnUB2Gznc9Szh3usue9wp00
sTGTZCt+C45nGdnK97gkZi0z8d53LgnITt8okybsjAIgdjj+0SlNVvzTTIT1h9ZlyUy5itC+vIMo
yhZLVXhneozXqYGAJpQE5ZripOKE08YJw8naMgIxYbm11QYSAgGDa9H3Ht1V5KO3taQ13Bigo/dP
QpKujUeKpUjHy1CO8eOZXjkQjLTos98mI31d/IWhFDIPw79u1d2KbHmVjRhTKcTBm33fkBZDZo6z
iGrKLajCJbcefy0kK4lbhiA7UyXG0/q4m2EHwoQby1wwu01zvz/Q0mhhNKqXnXD0gwn2BxNo7LRw
EZFHumMyArPQ82876Mfha4C9ZZ5PIf7wEz57JMRJx86YAq2tiBcFLjH2xqkAuJtCFZySq4cWIPCT
V6ckt97uhyuho+UZM+JouDZsWVtU71qjOA8othxGgeK9GjFw4XZTCD99XxW2KeG5KvNQqceVPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D7522AA01786F0"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
content-md5: Y30CtUtoyD9NbVjLdtxcSw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e0e83ca-4fae-4a7d-bb80-b2e09a01723d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db/baz/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KPcBAYhuiWDpEAnLp6Gp+Ce3PoJjd1axvrN3Vw5zv/aTkWDXj5B7i8ntVbZvO6O50sPtI+Xfd7Gg
UELV9jFRdlASOBVB0mmXPLO5diGfQYMPvoVLhZwRsxmvNj5NpZSXm99mXAKNeP9ZVuYyJQGPAA6/
xTesBvGzAYT8kZwqSZYeItpCOeWAgUaF8S+2344YHzUwjeBc6pXuslt9keZjLwxPEwImTcYpPkTx
JhXB/CL243Jm+ru2wTdFVIeJAu9gIsIiZ8uL8dFuBk6ba8SALLU5h61z/DRQmFLL4fk/nzxUkQRS
npVWavKg9/NtG1ZzxSfRUHtC7CWN0s95wBDYL2YSRtrALY0g4hy70wVB43z7VxvRbU/AEqTfxczG
3anix8iMWtR7s5iZsW1ehhkgS+5SfWj0B8EXUjQ14GfBWgVz2Qs8tImogKSDN7ziYouLvnndc19A
7cAGdQigRdIw2Fdn660N45Zlqf3Ecc8FNO+oqiLt5OamMutKNj+ABzrSUl9ke3befdvid8lifHzx
AEEY+JuwQvRwwLnBwq1X5KHC8h5woLh5ySxGCmwcRLVvWTX+aA+eIQ9q9Lq9HLoui5Inn4legGCI
ni5uaTiHU3wDUmh3WXySI9AOBaz9vK1yGH/a9aQrENnVdcnhMLjX46A9uclStjEWlXu5T3uziuKA
/FG4rF7X10GPouSysPMYNiIMvwLjIGFNxF8pcsFeIurnYDRmHzZBZeKIwhNNZOSHoRhYpsrgndzw
auj/rmWAMYD5ylC/sRfry1kfW11NAF96odGoBXsfBsNXdrRNQrd9B5GSU5mUyO8BbdtxwEF+omqJ
hAyT2CsF2sSMZztjnoiiolPMu6zG5tjippigrkaB2dRKxL6q6S9ljXnUB2Gznc9Szh3usue9wp00
sTGTZCt+C45nGdnK97gkZi0z8d53LgnITt8okybsjAIgdjj+0SlNVvzTTIT1h9ZlyUy5itC+vIMo
yhZLVXhneozXqYGAJpQE5ZripOKE08YJw8naMgIxYbm11QYSAgGDa9H3Ht1V5KO3taQ13Bigo/dP
QpKujUeKpUjHy1CO8eOZXjkQjLTos98mI31d/IWhFDIPw79u1d2KbHmVjRhTKcTBm33fkBZDZo6z
iGrKLajCJbcefy0kK4lbhiA7UyXG0/q4m2EHwoQby1wwu01zvz/Q0mhhNKqXnXD0gwn2BxNo7LRw
EZFHumMyArPQ82876Mfha4C9ZZ5PIf7wEz57JMRJx86YAq2tiBcFLjH2xqkAuJtCFZySq4cWIPCT
V6ckt97uhyuho+UZM+JouDZsWVtU71qjOA8othxGgeK9GjFw4XZTCD99XxW2KeG5KvNQqceVPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FF16D10D5E7950"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
content-md5: Y30CtUtoyD9NbVjLdtxcSw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a161e250-de1c-4b6c-a185-1787fd2cc020
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db/baz/bar/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
KPcBAYhuiWDpEAnLp6Gp+Ce3PoJjd1axvrN3Vw5zv/aTkWDXj5B7i8ntVbZvO6O50sPtI+Xfd7Gg
UELV9jFRdlASOBVB0mmXPLO5diGfQYMPvoVLhZwRsxmvNj5NpZSXm99mXAKNeP9ZVuYyJQGPAA6/
xTesBvGzAYT8kZwqSZYeItpCOeWAgUaF8S+2344YHzUwjeBc6pXuslt9keZjLwxPEwImTcYpPkTx
JhXB/CL243Jm+ru2wTdFVIeJAu9gIsIiZ8uL8dFuBk6ba8SALLU5h61z/DRQmFLL4fk/nzxUkQRS
npVWavKg9/NtG1ZzxSfRUHtC7CWN0s95wBDYL2YSRtrALY0g4hy70wVB43z7VxvRbU/AEqTfxczG
3anix8iMWtR7s5iZsW1ehhkgS+5SfWj0B8EXUjQ14GfBWgVz2Qs8tImogKSDN7ziYouLvnndc19A
7cAGdQigRdIw2Fdn660N45Zlqf3Ecc8FNO+oqiLt5OamMutKNj+ABzrSUl9ke3befdvid8lifHzx
AEEY+JuwQvRwwLnBwq1X5KHC8h5woLh5ySxGCmwcRLVvWTX+aA+eIQ9q9Lq9HLoui5Inn4legGCI
ni5uaTiHU3wDUmh3WXySI9AOBaz9vK1yGH/a9aQrENnVdcnhMLjX46A9uclStjEWlXu5T3uziuKA
/FG4rF7X10GPouSysPMYNiIMvwLjIGFNxF8pcsFeIurnYDRmHzZBZeKIwhNNZOSHoRhYpsrgndzw
auj/rmWAMYD5ylC/sRfry1kfW11NAF96odGoBXsfBsNXdrRNQrd9B5GSU5mUyO8BbdtxwEF+omqJ
hAyT2CsF2sSMZztjnoiiolPMu6zG5tjippigrkaB2dRKxL6q6S9ljXnUB2Gznc9Szh3usue9wp00
sTGTZCt+C45nGdnK97gkZi0z8d53LgnITt8okybsjAIgdjj+0SlNVvzTTIT1h9ZlyUy5itC+vIMo
yhZLVXhneozXqYGAJpQE5ZripOKE08YJw8naMgIxYbm11QYSAgGDa9H3Ht1V5KO3taQ13Bigo/dP
QpKujUeKpUjHy1CO8eOZXjkQjLTos98mI31d/IWhFDIPw79u1d2KbHmVjRhTKcTBm33fkBZDZo6z
iGrKLajCJbcefy0kK4lbhiA7UyXG0/q4m2EHwoQby1wwu01zvz/Q0mhhNKqXnXD0gwn2BxNo7LRw
EZFHumMyArPQ82876Mfha4C9ZZ5PIf7wEz57JMRJx86YAq2tiBcFLjH2xqkAuJtCFZySq4cWIPCT
V6ckt97uhyuho+UZM+JouDZsWVtU71qjOA8othxGgeK9GjFw4XZTCD99XxW2KeG5KvNQqceVPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20D1381C7889460"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
content-md5: Y30CtUtoyD9NbVjLdtxcSw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bbacc42a-6d33-4d5a-a062-b96895028d4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db/foo/foo?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25A4FA440A36980"
last-modified: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c68b848c-8625-4d26-9fc6-45b3cc0173e0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db?restype=container&comp=list&delimiter=%2F&maxresults=2

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 994d84fb-7c2c-467a-951c-e64279b5f83e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db"><Prefix/><Marker/><MaxResults>2</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:59 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:59 GMT</Last-Modified><Etag>0x2725386E652D940</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>Y30CtUtoyD9NbVjLdtxcSw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:59 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:59 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:59 GMT</Last-Modified><Etag>0x2333B4064E75FA0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>Y30CtUtoyD9NbVjLdtxcSw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:59 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker>baz</NextMarker></EnumerationResults>
```

## Interaction 11: GET /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db?restype=container&comp=list&delimiter=%2F&marker=baz&maxresults=2

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e28a471b-023a-4ca2-b7d8-6eb2c3eede74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db"><Prefix/><Marker>baz</Marker><MaxResults>2</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>baz/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:59 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:59 GMT</Last-Modified><Etag>0x24900A8E17DD340</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>Y30CtUtoyD9NbVjLdtxcSw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:59 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker>foo</NextMarker></EnumerationResults>
```

## Interaction 12: GET /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db?restype=container&comp=list&delimiter=%2F&marker=foo&maxresults=2

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 34526df7-03af-4857-ba06-9da666606ed5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db"><Prefix/><Marker>foo</Marker><MaxResults>2</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 13: DELETE /devstoreaccount1/test-container-3f4d52f9-78c6-4a06-5a7b-bb14db2362db?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
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
x-ms-request-id: 02f5c1ce-6059-45b5-86b6-fade99a1853a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

