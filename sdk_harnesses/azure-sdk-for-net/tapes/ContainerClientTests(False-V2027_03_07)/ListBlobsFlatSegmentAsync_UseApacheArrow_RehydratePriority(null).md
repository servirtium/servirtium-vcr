## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-60249ebd-2c92-002e-c1ca-e26e921f2e3c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_RehydratePriority(null)
now: 2026-11-12T00:43:15.5104421+00:00

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
etag: "0x1C4D884D7BE8AE0"
last-modified: Thu, 12 Nov 2026 00:43:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e6b65d98-3acb-427b-9147-e9a46d0f6058
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-60249ebd-2c92-002e-c1ca-e26e921f2e3c/test-blob-ed446995-1184-89b0-75e1-2516a6d39adb

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
X8bNSiyd72/IXKKBU0AcKZwgnuVO4bas7prrsAYYWe0vBg/MUeQP+HnUJShuLjU0xfx6hjW0jX0P
IVuSsj9osAO0UU0xT9e3EKVsebyOPcBktusKndK4e3mRvDCIfUY5bHUkutzoA3UkwnWPRxPBgOSb
LftTXRIw/NbUn5KnL5NfMw1GaoPjfLJ15tpdKTNl0DxM7U9K5Q5j874GE2TifJPhLxQFehZguLBI
3nc309Kjbs5WW0FDFU3/43bF3GhOkmlHe/keX1Um6zSeAQeWKx/rYqSVjCFRnRnHBpefm9tI+ksN
8FjZhA54MG8NpRRFaLhX2nnDuAZI9d3fVlm+hlBZVge8iTvHEd6WHFyxRPgFgp7fR8FhhEFFxfp7
+S21uqkfs04Mid99kMibLZuplrDk2tS73z+P99LFdsNASxiw4GKzkZCq+Pm+Yrf4xValmy5Jlx5Z
+ttqkLx7RxIbPESv60059gQgOeHb/H2HljF8H9uV9rT5V+aHSQHULrHnoyVzSdoIbKUpKV09ff1e
4vqK/yc2hkaPtZNnsqwDTAsw9FlXFExWc7I1a8xXvNnoKGYHSS6JsBzf45NHobr4Jd1RDImkBs6t
NIx0ARp5OPi5folF/ALcpkQ8eDC5D9H4PEXvBa9QRCKYWRWiFK4CZaqajSIxsynadWZFZ42d9CS7
fMTUiTNIaTpmraLtOpGVOhKGHoGuxokcFZBJC9yU+mXw55jqLdx3UiTnygWH7DvUryx7F9aiDLU6
uHOj/11e0rM8/VP5qgw2DsxdxvyElChUdVuvGeKPTdrir3Vo1FLGifhRSu/n2gQgRAgKRUW5tiNL
TooCrrnQra94F/uXzjp5lzwDMko5bZpXj9TahQiVKPlSHYbIxNs/gZ0/b8MJiXbOkK0ItoPZEeDw
qh7k9ien4+8CRbCzsdNhxLGs+f7WTQZeC/RbjXJ1eAul2Bm8Wop2mIzUB0TFGt/Zp/HSLBfiGV0Y
huoyS1V8jMykDti6pGkmNmFyAkbCmPAVgeWAo0v0w7+8pNSgQ0w2V3p3IAwHHwKIq/a2cBYWVu35
Hcpw/OmAsEoZ/gCUhvMUPKvMSnjkDmHi+PhVPlKopU3npiWBxVqQ93DB7SEC8yQDoTRrSQx1FQ9p
jQTxK3H3cViyreDNknZQO1IHIiBA3wTTUZ0ePFxBcpAVGDhWn8z+yXzIUEZENg6+Gw65bfPvKK3/
HtnU2TT8cDtPt3o9+ZuGCVikd4++jhuPYCFNiASdJu+LVoHyKfBIzOAK9H6TgCFyMmOaS7EeQY++
RXgSruc2spGKsqIalOBoW6qus5md+9//21agAts+bBXxM+R3NR751ELsCc5/WJ2DMu8Gb432IQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2615CABDA124800"
last-modified: Thu, 12 Nov 2026 00:43:15 GMT
content-md5: ZSjwTdGuEdd0QlJWLgCBaw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e54ab818-8325-4585-ab0d-6c9e110d9c2e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-60249ebd-2c92-002e-c1ca-e26e921f2e3c?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 88eb3564-0654-4c9e-8f0d-abf86e193c89
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:15 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-60249ebd-2c92-002e-c1ca-e26e921f2e3c"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-ed446995-1184-89b0-75e1-2516a6d39adb</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:15 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:15 GMT</Last-Modified><Etag>0x2615CABDA124800</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ZSjwTdGuEdd0QlJWLgCBaw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:15 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-60249ebd-2c92-002e-c1ca-e26e921f2e3c?restype=container

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
x-ms-request-id: d1b51560-04ae-4e67-844d-8cfdc7b61997
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

