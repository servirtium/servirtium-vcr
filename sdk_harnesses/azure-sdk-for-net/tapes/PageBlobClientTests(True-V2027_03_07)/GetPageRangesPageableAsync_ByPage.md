## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-5297425a-0f2e-0ff7-7fe6-d3e466e39756?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).GetPageRangesPageableAsync_ByPage
now: 2026-11-12T00:51:56.2945089+00:00

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
etag: "0x1D26987832AF430"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ebf97632-5eeb-401a-9c4f-15c9e5ae068d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-5297425a-0f2e-0ff7-7fe6-d3e466e39756/test-blob-92729cfd-f146-8464-9b30-d4fd21ec94d8

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
etag: "0x24A93D019C5BF80"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9dd936e-9b89-4a4f-a166-3172c321516e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-5297425a-0f2e-0ff7-7fe6-d3e466e39756/test-blob-92729cfd-f146-8464-9b30-d4fd21ec94d8?comp=page

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
2TCQIXQ3XTfA54f2VNouOdO2eAomzvBo3hK2/Tv67pNS+go2UnXhxT460l5qbTDAAZopanSJsQs/
KENigF/8xvj0pFnQ+Ode1LLL7PuR/XDi9fyg0IQfyEj/9ikxf0TfPQtldsnX8Amzy5bBvsUPrirS
gIpjXPV01dsR0AG9LFRu7K7vLIenCwXz7AXtXQqC8Ej/X/+5e+EW8KHtxR8H9p5BU9EXH4GiKnSF
b2/whnfRjuC4vcxUtHDM2TvmukXl6/ZmrAo4a9DGXDSKMwxxJWopGzc+TzjR7Z5hSkVGvHAvoIR5
idptmSIQ8WGYyYBkW7PQvJ8Nppy9lL9r1yGKgJ/EWpOI95yPvIEVLl3XOSMd/e6RdQDQIvnnu/Qb
AcIBhXHB027t3GMXQf8d93g+5lucTdoy+Qqf9DiZoDyndLu/FKnrFWa0MCCLeTQAsyuBqdWZf7Po
zoxnIt82UzsncMxEXePPUtH15xy5p3/VnkANGPZnDfUH10UchPOGfd3kZAlovFVHslYEpJeWLicN
koOeKTtEwGLXPYaess7dbmo/1EJ1beLrxWWgY2ldcKgdD/Jw6FOin6OmkH7Pqf+HJjUtV1rklySg
s2PVpF35eczdgKPcbYYWnTSfz9xjHBxmGTwzMBlOOHfNzzTwzftGrBay8SlcqrivF7omRchHPJdH
b4ogxUmzj0crD55RJtA4WCLGsSrzCW6DhBlfKPOvhZKdqF5wJebN/mLhMJsaXfDp7eylgYtsVGUc
nEEvVGdTfIkLs31xxzI7+LPIEdjTaCYodToGCQMHMVT4VIilnar6jbQRD6lzdyW6aYnYpEKMSDQb
B98sTXKGBIIpeXKplloIzYMkwVl8tf0VTKB6LowRbAxUiZbKzkBCiwonSv6yENMuz9a+aIbanlLi
FwHSDNX1Fw1mVQzEPv9D4TZOVWv+YjzMS1+2UgOFeutD6LY/cH41MTLxTLvGaZHXe4ZPi0nn47XE
BcB2P8QJ4dohgVVIBHG4GSQ4DRaBBeLO3td9Ne6hXAQBemq+v/Ft52rgpeg7jnYUl3IlrtaeQ//e
p2HtjKzsfyRRRooG+VkyyyWroGD6k09haJ17fK0tYjZr4BeQgFu+8yXD6UjrDp4Z8uKx86Of5BQR
jCMOcAJ2I+RUmxlBokvK7aw6NqkHdVr/YorLfG+TzPwDf/M3r4MjTMZjl3OE10+X5gX2Za1qCRbJ
Dw54q6Z0wc8dPiNXkj0pF+rjo97meos6M5ZpnGdOmHXdbZ90qqAf7tWkZ5gsP1TIzE3Dh2U44pWD
PXcQCyRnz6WueiWdtWxJw7UIQhPyDvNBodAZixEPpYoK8GwoD+OxPJjzfsUvKhfhesOwL6CCkQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F5ED9CE2CD4F00"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-content-crc64: IBq+GUZqqiA=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1ce24d48-20a4-4e7b-ac59-d570d51c9d69
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-5297425a-0f2e-0ff7-7fe6-d3e466e39756/test-blob-92729cfd-f146-8464-9b30-d4fd21ec94d8?comp=page

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
2TCQIXQ3XTfA54f2VNouOdO2eAomzvBo3hK2/Tv67pNS+go2UnXhxT460l5qbTDAAZopanSJsQs/
KENigF/8xvj0pFnQ+Ode1LLL7PuR/XDi9fyg0IQfyEj/9ikxf0TfPQtldsnX8Amzy5bBvsUPrirS
gIpjXPV01dsR0AG9LFRu7K7vLIenCwXz7AXtXQqC8Ej/X/+5e+EW8KHtxR8H9p5BU9EXH4GiKnSF
b2/whnfRjuC4vcxUtHDM2TvmukXl6/ZmrAo4a9DGXDSKMwxxJWopGzc+TzjR7Z5hSkVGvHAvoIR5
idptmSIQ8WGYyYBkW7PQvJ8Nppy9lL9r1yGKgJ/EWpOI95yPvIEVLl3XOSMd/e6RdQDQIvnnu/Qb
AcIBhXHB027t3GMXQf8d93g+5lucTdoy+Qqf9DiZoDyndLu/FKnrFWa0MCCLeTQAsyuBqdWZf7Po
zoxnIt82UzsncMxEXePPUtH15xy5p3/VnkANGPZnDfUH10UchPOGfd3kZAlovFVHslYEpJeWLicN
koOeKTtEwGLXPYaess7dbmo/1EJ1beLrxWWgY2ldcKgdD/Jw6FOin6OmkH7Pqf+HJjUtV1rklySg
s2PVpF35eczdgKPcbYYWnTSfz9xjHBxmGTwzMBlOOHfNzzTwzftGrBay8SlcqrivF7omRchHPJdH
b4ogxUmzj0crD55RJtA4WCLGsSrzCW6DhBlfKPOvhZKdqF5wJebN/mLhMJsaXfDp7eylgYtsVGUc
nEEvVGdTfIkLs31xxzI7+LPIEdjTaCYodToGCQMHMVT4VIilnar6jbQRD6lzdyW6aYnYpEKMSDQb
B98sTXKGBIIpeXKplloIzYMkwVl8tf0VTKB6LowRbAxUiZbKzkBCiwonSv6yENMuz9a+aIbanlLi
FwHSDNX1Fw1mVQzEPv9D4TZOVWv+YjzMS1+2UgOFeutD6LY/cH41MTLxTLvGaZHXe4ZPi0nn47XE
BcB2P8QJ4dohgVVIBHG4GSQ4DRaBBeLO3td9Ne6hXAQBemq+v/Ft52rgpeg7jnYUl3IlrtaeQ//e
p2HtjKzsfyRRRooG+VkyyyWroGD6k09haJ17fK0tYjZr4BeQgFu+8yXD6UjrDp4Z8uKx86Of5BQR
jCMOcAJ2I+RUmxlBokvK7aw6NqkHdVr/YorLfG+TzPwDf/M3r4MjTMZjl3OE10+X5gX2Za1qCRbJ
Dw54q6Z0wc8dPiNXkj0pF+rjo97meos6M5ZpnGdOmHXdbZ90qqAf7tWkZ5gsP1TIzE3Dh2U44pWD
PXcQCyRnz6WueiWdtWxJw7UIQhPyDvNBodAZixEPpYoK8GwoD+OxPJjzfsUvKhfhesOwL6CCkQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CB6CD0D4ABDE70"
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-content-crc64: IBq+GUZqqiA=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e82457d9-196e-44b0-8915-95b6289d4a9f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: GET /devstoreaccount1/test-container-5297425a-0f2e-0ff7-7fe6-d3e466e39756/test-blob-92729cfd-f146-8464-9b30-d4fd21ec94d8?comp=pagelist&maxresults=1

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
last-modified: Thu, 12 Nov 2026 00:51:56 GMT
etag: "0x1CB6CD0D4ABDE70"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 612a2a1b-1932-4e70-a2ab-d56d0a5250e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 5: DELETE /devstoreaccount1/test-container-5297425a-0f2e-0ff7-7fe6-d3e466e39756?restype=container

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
x-ms-request-id: 535242ba-8f0a-47ff-a6d8-4cb3782d2258
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

