## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bd350fcf-21ce-4fea-0c62-7be51c707eeb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteAsync
now: 2026-11-12T00:46:29.8762494+00:00

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
etag: "0x2274DB89EFB7260"
last-modified: Thu, 12 Nov 2026 00:46:29 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e9ecea0-f7e9-49bd-85f8-47e4e88a60b1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:29 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bd350fcf-21ce-4fea-0c62-7be51c707eeb/test-blob-042ba88f-0561-1d9b-8978-f1630595185f

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
/SunIBfsWmY1eA3rNshrJCSLIDJC2XPKdBgzVjCGSndJHOfwyF3Tok7Fz+n3r+bBDMw/eXTlHCS4
3az+uAQ1ri2WohngelvGt37kfQqJ0sQxckljR9EDY//DOOuw1elJjyG8YQ3N4JJxeMH1AZ8aLgrn
zUa70mZckj8ZHUJvFeKUm+7pzXG3ZJG38c8PDWJgqAngyQejjby6X87Os8NPAWLfYWWxMWCZL2m1
BOGXTYXduXQ5j0za8Q0xLm6i6bDNZ+9sMKz8r3epR5me7YnaIxJJ8PpPFnIWBG9YfwLy9ka455zx
KhzY4An8j0iyPAODVgtbWfi1flF8Vis8oy91tlBS5Qbt6Pj1cBDwUoYqY8ds1Cj2lpxOA2lKddTw
nDzah9j3X1f9lm0TZunoxSvLUvNk0M8GfiCzBOKdonMkBNPTFsutMwNwbj264zCzZT09fyLgjMtt
0wi4Q1p0YPT572EVFK9fHh7w82GRS5rwAJ+kXyNQQ3cHZULC9PCo+w5JwfTOnlCO3WAE8Jhq3Idt
x0K70ADRqKvqDa9snSkuR/dTR4qmImJOFoHCTFLenYm7VS2t7CsNdxhJ5JChIUA31amgFpT8x6Xg
bbl+D1xYC28msUj8gVvMRc9yXT7RrPRBinepPYb0vo2HzH5yjmi88Nghe3D4O1NN1NHEiWpnD8DE
PYTkrs3oMfK6dLTcWrZntmxlsDGESE4jW2m1LzQjIL2+rVHj10ELOEl9PsefcXoaXdP9AV+PQPU1
wVNkMwG9l1P3Haxlg98rWXfnBgqHhOrumtJhJh5eLmxcrRbupwVIwKZzp1PNtdr00ajnqDrqrTxo
dZgvXHA1me8/CdXIPbJxnkZjFNyWIOX4bVR2doYycf/ZhTFtGWM1PQ5kjqsEK5T1dgn0h5lg0lWy
Nu8cvyJoDZjV77eBBIXiLdfNMZI680HAgAB9PupmeLLcu+J0GX7r/IETLjvcdHKDEVnBkqHCd0Kt
XD4i6s6ubnYFpEiibhNY4TURJsUG4wyN+iyQpeURGUOgxr1AyRKyZb/E19Ap4KNFaLBrsVF9p3gy
lPChHcmR84oFAqhWGBgiXsEFQQw8ZBmJSjw1pWjyIh5FDTQhEEf2M+NFJN7671CXSVKPd2Zr9jDW
F9ONW04hEt+JEArkAU56Dw0p9j86jlrsnVwWYqq42hcDSvlzaNeVIxH+cd5Fs0gEFWhYQv/xnIh5
ob7xCrA00Dby4bZVBqY2k9ItPB17pukUEk1CYJcYEq5w+scYoxlhyaCoUtGRrw7BIa4sw19r/frU
3fhj8nCe2s8H5AzfHe+5zHJ901QYgmM+gD7p605PBfzMQ8Yg/tcvCXcCisoC4gS+c/ft7SqmvA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E8061D8509AE20"
last-modified: Thu, 12 Nov 2026 00:46:29 GMT
content-md5: A3N0x2GZC4+K6FQtLZXUrw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f24f42fb-63a4-4a6d-b426-3067618ca122
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:29 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-bd350fcf-21ce-4fea-0c62-7be51c707eeb/test-blob-042ba88f-0561-1d9b-8978-f1630595185f

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9033d709-dd36-43b0-8af9-23c8ee600767
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:29 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-bd350fcf-21ce-4fea-0c62-7be51c707eeb?restype=container

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
x-ms-request-id: 3d02afad-a834-43e1-b718-9a71898efa9f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:29 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

