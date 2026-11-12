## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7ed47d6a-4a6c-6923-ca78-1a6576ccd244?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesPageableAsync
now: 2026-11-12T00:51:24.9656528+00:00

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
etag: "0x20C2886E0858660"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36a1c6ad-006f-488f-82d9-b18e0f67fa7e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7ed47d6a-4a6c-6923-ca78-1a6576ccd244/test-blob-db7749d3-278d-709e-a4cb-21a1a79fcc38

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25E0F51755AC740"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6e8de302-3586-438d-87e4-32645186aa90
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7ed47d6a-4a6c-6923-ca78-1a6576ccd244/test-blob-db7749d3-278d-709e-a4cb-21a1a79fcc38?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
sCZ8Ee6euLMMZ5AKGd4OkY5WPXFZTCdD3mTaoCmBwSur4rRPT8FWNZHEzyWXlFfFvZATUWFb3mT+
ODOJxBeKiqVkXjYqvkHN/wjflXwCrEkNFeOYbnDJUANPUReNzHB6OUR/MjYgm/5ORlFZe0no/Izp
fK4z8Rw1mg4z2m0qPzOXZVs4gnkT7HnlSSgecNS5Z1SKo1DCRkcoSpcn7cCQJAYewhbtsHkS1pA1
TqfzFyo5eXIYn5vj1R4UDzji6/+5VCUh/669zLfbd82/jfefNDJs7nNNeIRqO+z42aBBMOqQe/qC
0Rd8fK27PSjNI0gmdNoFdf2La9ugtsTBxfIXmkfjLxH9HWIb8HHFkjtcnRik0WXFO7vsBBAe4htT
u7a7pKLh6vQ2KVZ36oWLxtigRBmrHPSNUV6M9ioA3ztHxzS7Cu6Ye7IkbacOTlE1YT43fZ4BqJ/C
LVNDVfPJNkobLyJQ0LzqCMhmh65MfgINVpTryWGdRh+V+NybVCa+Wjdd8h4u5ZGCTXXVmiDwdq9Q
Nv9e3mzpfugCutffT7OiqCx37ozk33ADaXzrx6z+pYEtSx4nX3zKdHQ1Kyu5ov7CM/L0eYgjbFaO
W3Tw/bY8BBRVsgOVe0iwrHkXrrNFSsZ9KZS6Ciz5Ct/HmAQH2ne++CcWY/D6LLipQ80OC72iSRCt
ctMhgvnoXKgkzeJDqNICWLWMLubWg/zcEMZe6v4hJE7zWmejnXYuLQdH1V7VZpv7DLIHFhoq1u/X
RHIyiXGpA6mTT05qXrs/XgHfj66dB6krY95LGQ4zyYN3zFgE+6OVndG1QRZNkK32yLgZSkdAOT3I
ByaSXembYIXK8pJjOmJdSfHc6MWS3dMxVFFVGn88N5IbO/R9AkDoGuGQg50ak41VvABWZFF3NSlS
YQiYRUUGjrv/R/9u4Eax883kAVo1FsHDAF5+5dJBpAXKKqE3UNSbivThG0yO59u5pHCDkzPPHUtH
1EXniKjpvqP5o7WleqP4SHdlU/t0NRmCxUFivhHR+w1V73uPswJM+F2plEMlEyrMikq8aclQ0p8r
ZcNnhv+RJ6eoUIonaJR1GVqey6DVXLEWlTPGFZJDBRzcY04/5HJdF22bfMOgpSG2Rk9usgb+VggR
UPHMyxEVZUptSwVGNjToQLQzOd/tdvAREM9D1VMV3g1FLZOAkEtbhhd5Mlkcbw8ahXFSyhwpJNoB
urpC0pD2V233AAmgaK9o2LPHc0OW9KC/KE/iwxPwHAi4f9aRGLSHgtvsJG4GeR3B6fJpYbCXa8UZ
g6lAFJRZB+QA5+nZ17/+P/Foqc8yuK4xIdkghrpXIRMQd5UKR25Gkh2KBZE05xIyaiG/L8H15w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2192EC7C60BE780"
last-modified: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-content-crc64: bIqMLF2UfTo=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aecef6e0-aa94-45e9-9d7d-2e206df677b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-7ed47d6a-4a6c-6923-ca78-1a6576ccd244/test-blob-db7749d3-278d-709e-a4cb-21a1a79fcc38?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
sCZ8Ee6euLMMZ5AKGd4OkY5WPXFZTCdD3mTaoCmBwSur4rRPT8FWNZHEzyWXlFfFvZATUWFb3mT+
ODOJxBeKiqVkXjYqvkHN/wjflXwCrEkNFeOYbnDJUANPUReNzHB6OUR/MjYgm/5ORlFZe0no/Izp
fK4z8Rw1mg4z2m0qPzOXZVs4gnkT7HnlSSgecNS5Z1SKo1DCRkcoSpcn7cCQJAYewhbtsHkS1pA1
TqfzFyo5eXIYn5vj1R4UDzji6/+5VCUh/669zLfbd82/jfefNDJs7nNNeIRqO+z42aBBMOqQe/qC
0Rd8fK27PSjNI0gmdNoFdf2La9ugtsTBxfIXmkfjLxH9HWIb8HHFkjtcnRik0WXFO7vsBBAe4htT
u7a7pKLh6vQ2KVZ36oWLxtigRBmrHPSNUV6M9ioA3ztHxzS7Cu6Ye7IkbacOTlE1YT43fZ4BqJ/C
LVNDVfPJNkobLyJQ0LzqCMhmh65MfgINVpTryWGdRh+V+NybVCa+Wjdd8h4u5ZGCTXXVmiDwdq9Q
Nv9e3mzpfugCutffT7OiqCx37ozk33ADaXzrx6z+pYEtSx4nX3zKdHQ1Kyu5ov7CM/L0eYgjbFaO
W3Tw/bY8BBRVsgOVe0iwrHkXrrNFSsZ9KZS6Ciz5Ct/HmAQH2ne++CcWY/D6LLipQ80OC72iSRCt
ctMhgvnoXKgkzeJDqNICWLWMLubWg/zcEMZe6v4hJE7zWmejnXYuLQdH1V7VZpv7DLIHFhoq1u/X
RHIyiXGpA6mTT05qXrs/XgHfj66dB6krY95LGQ4zyYN3zFgE+6OVndG1QRZNkK32yLgZSkdAOT3I
ByaSXembYIXK8pJjOmJdSfHc6MWS3dMxVFFVGn88N5IbO/R9AkDoGuGQg50ak41VvABWZFF3NSlS
YQiYRUUGjrv/R/9u4Eax883kAVo1FsHDAF5+5dJBpAXKKqE3UNSbivThG0yO59u5pHCDkzPPHUtH
1EXniKjpvqP5o7WleqP4SHdlU/t0NRmCxUFivhHR+w1V73uPswJM+F2plEMlEyrMikq8aclQ0p8r
ZcNnhv+RJ6eoUIonaJR1GVqey6DVXLEWlTPGFZJDBRzcY04/5HJdF22bfMOgpSG2Rk9usgb+VggR
UPHMyxEVZUptSwVGNjToQLQzOd/tdvAREM9D1VMV3g1FLZOAkEtbhhd5Mlkcbw8ahXFSyhwpJNoB
urpC0pD2V233AAmgaK9o2LPHc0OW9KC/KE/iwxPwHAi4f9aRGLSHgtvsJG4GeR3B6fJpYbCXa8UZ
g6lAFJRZB+QA5+nZ17/+P/Foqc8yuK4xIdkghrpXIRMQd5UKR25Gkh2KBZE05xIyaiG/L8H15w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2766B55CC60F440"
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-content-crc64: bIqMLF2UfTo=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15142981-e22b-4ffb-9381-f038ed446bf8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-7ed47d6a-4a6c-6923-ca78-1a6576ccd244/test-blob-db7749d3-278d-709e-a4cb-21a1a79fcc38?comp=pagelist

### Request headers recorded for playback:

```
Accept: application/xml
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
last-modified: Thu, 12 Nov 2026 00:51:25 GMT
etag: "0x2766B55CC60F440"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9faf6b73-c5b4-4f7b-a722-d822ee729503
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-7ed47d6a-4a6c-6923-ca78-1a6576ccd244?restype=container

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
x-ms-request-id: 9af7aee7-12e1-4abd-8bb5-597aae26acb0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:25 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

