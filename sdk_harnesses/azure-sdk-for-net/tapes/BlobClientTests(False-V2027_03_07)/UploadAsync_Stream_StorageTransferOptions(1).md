## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-764bcee3-af83-a932-ef87-bdab216b8f46?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_Stream_StorageTransferOptions(1)
now: 2026-11-12T00:48:51.3171253+00:00

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
etag: "0x22C39AA5CAEE1A0"
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 01759804-cb68-4eed-9ade-0ed9d6709cfb
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-764bcee3-af83-a932-ef87-bdab216b8f46/test-blob-5431825b-d5ec-df1b-d8e6-a5792d2cb692

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
jp3otzI9zP4OcmatUXrprx/sC+8AhN8Ns2udnQm5fMLRKhyEgtgUHbUyRnlvbY5d/fZZQCHGkgq+
2wPHoC/0Vfaj3CdeZS1H2O06zT1lnkXdP58TXzuhC5gSxafUTH2GPvCDy5Fm/5jJEmczjMTMWDy+
6mCP4fa6AdCOS5+Fcotws49N4tKzdj8HSkzTbX/TRW1qFWIc9136yMrA2LT4Q5/bw9g0f3ZpCnQg
h5ap5pNRugUyG10pU7syUhkI8p2LDget+Kqmnsb2AQvt/G/GUOE2bx2uxidCsW8dAixdYBjWlXmP
/O7oqxs/PBlSPFdLawE30oOA3Uffa0Y7iZyZmKDyF2b2N1TzTcMBb4oN8HUX0ZYqJY6UVrcxr5Co
rSJ/paN5XyTwVDStRIS/fm290XrQI7cFbnMRXsGvxYfDSqChgsrnlJFRJnxifeEK1NdJc94W2Ilq
ejYwaABjQY6s6fnjHvyj1T3pf/w7ovGRBonpZVKprXIWNgiTtyuQ7eXttpToJrbbpp2gLFiML9dF
nmF3etw8AjuGzef0Dx4RWZEXTetcqN/SDr+0CYEZiQcwThjKGHMJsLRYYlnP55Z/j9PGdeHs6PWB
pGsdiPm6bEPfw8EFR0AeDpw3A0aGAycoNHmtUxQlRGYjSHMH6yi7nvUW7yPVekiSp2dFtOSu+6FE
9FN/DBkvun9a4v7MFyJ0e2VRcBQDU7oxG6us4I+BdEzSwvfUO5Hc5jWkepdJxZBE0Dl/XYuNQaGZ
TvFugtnv2G2x+lUrnz/UdIneXtgi51UaaA9WAhbBRYFWO+2fbmRbtaIpl8s7GTD5q+gCruLIdmac
UxrJmdVX8LTU1WRSNAYkg6k2+E+J30/eXVcuvpeejcSHAxpKkRzM0qcXZkPMpnbh3So4kX4WEnPL
6jt+KDEcNUefyzDr2vGNaiWocngLErbgTOFsZftGcPGnfqbgTqp1+jH8LNtG9QI5qydYbZ/6wNiF
ndxQsM9LWVo/RFtKrRx7M3hHDuXbmlbeM7rU7gJRrL7OWrDOJElhsNOAB7Gm7v0L3DonsrHyqgKF
cXwVd2tY7ZedfFJrrQ4u5l4SWpOlN0S8yBHIKfkN27CtSbLNTDloKBkZCXKqoC8r+cxT309v3zo4
WK5aj8Sdj6CivWRcYZokqjJ6jC7SEijhnTAtuvtgPml4lPOKDplUe3nRB+PLz5gyLjUd9VIMZUaG
ePGUcNWkQn/648ymmZyYJRC0AQpFFc6X+ovGQkgWbC+tBJWnwAqkLMVj0evMjJSZhdBCV2M7QWIi
/HZJ3v8243ec+JUG8GQGD9RE4UTjy233Lb131BTLcsMyhMSUWk7FLe10L5P/kpRsPEiO9l8ePw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x224C0EACC7C8C40"
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
content-md5: KOwWYw4mMRKrdmR0nkmu5Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 65a84d53-5fc4-44f8-88ec-f49af6be58f8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-764bcee3-af83-a932-ef87-bdab216b8f46/test-blob-5431825b-d5ec-df1b-d8e6-a5792d2cb692

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
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:51 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x224C0EACC7C8C40"
content-md5: KOwWYw4mMRKrdmR0nkmu5Q==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2ffda094-4c54-44cc-b191-91815bfb2e14
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: KOwWYw4mMRKrdmR0nkmu5Q==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
jp3otzI9zP4OcmatUXrprx/sC+8AhN8Ns2udnQm5fMLRKhyEgtgUHbUyRnlvbY5d/fZZQCHGkgq+
2wPHoC/0Vfaj3CdeZS1H2O06zT1lnkXdP58TXzuhC5gSxafUTH2GPvCDy5Fm/5jJEmczjMTMWDy+
6mCP4fa6AdCOS5+Fcotws49N4tKzdj8HSkzTbX/TRW1qFWIc9136yMrA2LT4Q5/bw9g0f3ZpCnQg
h5ap5pNRugUyG10pU7syUhkI8p2LDget+Kqmnsb2AQvt/G/GUOE2bx2uxidCsW8dAixdYBjWlXmP
/O7oqxs/PBlSPFdLawE30oOA3Uffa0Y7iZyZmKDyF2b2N1TzTcMBb4oN8HUX0ZYqJY6UVrcxr5Co
rSJ/paN5XyTwVDStRIS/fm290XrQI7cFbnMRXsGvxYfDSqChgsrnlJFRJnxifeEK1NdJc94W2Ilq
ejYwaABjQY6s6fnjHvyj1T3pf/w7ovGRBonpZVKprXIWNgiTtyuQ7eXttpToJrbbpp2gLFiML9dF
nmF3etw8AjuGzef0Dx4RWZEXTetcqN/SDr+0CYEZiQcwThjKGHMJsLRYYlnP55Z/j9PGdeHs6PWB
pGsdiPm6bEPfw8EFR0AeDpw3A0aGAycoNHmtUxQlRGYjSHMH6yi7nvUW7yPVekiSp2dFtOSu+6FE
9FN/DBkvun9a4v7MFyJ0e2VRcBQDU7oxG6us4I+BdEzSwvfUO5Hc5jWkepdJxZBE0Dl/XYuNQaGZ
TvFugtnv2G2x+lUrnz/UdIneXtgi51UaaA9WAhbBRYFWO+2fbmRbtaIpl8s7GTD5q+gCruLIdmac
UxrJmdVX8LTU1WRSNAYkg6k2+E+J30/eXVcuvpeejcSHAxpKkRzM0qcXZkPMpnbh3So4kX4WEnPL
6jt+KDEcNUefyzDr2vGNaiWocngLErbgTOFsZftGcPGnfqbgTqp1+jH8LNtG9QI5qydYbZ/6wNiF
ndxQsM9LWVo/RFtKrRx7M3hHDuXbmlbeM7rU7gJRrL7OWrDOJElhsNOAB7Gm7v0L3DonsrHyqgKF
cXwVd2tY7ZedfFJrrQ4u5l4SWpOlN0S8yBHIKfkN27CtSbLNTDloKBkZCXKqoC8r+cxT309v3zo4
WK5aj8Sdj6CivWRcYZokqjJ6jC7SEijhnTAtuvtgPml4lPOKDplUe3nRB+PLz5gyLjUd9VIMZUaG
ePGUcNWkQn/648ymmZyYJRC0AQpFFc6X+ovGQkgWbC+tBJWnwAqkLMVj0evMjJSZhdBCV2M7QWIi
/HZJ3v8243ec+JUG8GQGD9RE4UTjy233Lb131BTLcsMyhMSUWk7FLe10L5P/kpRsPEiO9l8ePw==
```

## Interaction 3: HEAD /devstoreaccount1/test-container-764bcee3-af83-a932-ef87-bdab216b8f46/test-blob-5431825b-d5ec-df1b-d8e6-a5792d2cb692

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
last-modified: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:51 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x224C0EACC7C8C40"
content-md5: KOwWYw4mMRKrdmR0nkmu5Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5558771-1520-4393-9911-835c12095eb5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:51 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:51 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-764bcee3-af83-a932-ef87-bdab216b8f46?restype=container

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
x-ms-request-id: b769fba7-23f8-4a1a-bdda-17066f1165ad
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:51 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

