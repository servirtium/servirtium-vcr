## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-a3c403da-5874-9ecd-5674-b0b7d2b8a5eb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_BinaryData
now: 2026-11-12T00:48:55.8738903+00:00

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
etag: "0x1D33F5075694710"
last-modified: Thu, 12 Nov 2026 00:48:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bf7596ba-07a9-4bbf-b4c2-c53c46768321
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-a3c403da-5874-9ecd-5674-b0b7d2b8a5eb/test-blob-619ff7e8-f040-6211-bb68-8a4a9a40c750

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
lg6L65jbG4dyEtHrrbfW45tQdwrpK6np8WLoC82CAxWsYCHELLpTDNwY7y0fJrUEkqevSsi9Zmpk
ovo28w+57w67Pk2VEbbg/Wou0Tx7ysqs5Hkm07lN7/m3YIrAHRnMXwAeY+doboHwzk1djpUu6Ngv
iQ+VkhtVbk9T3rAsIN9RYXE7XGbjRHX4NgRs72BjiXeykZMJNszkyfWXFJDQxK5tCywj8otxTEWZ
nVwX6H7v71Q5eY9LRyqkVpJxSy/lKHFW/+MzQJfrQEVOcJlwzeF2qCU7l0ofIcQCfpv4/wAVs3Xq
wOiavK+9TThJ/NeRNImx+6MKqZEnN90fMcH780FEOLwkhgz42+x1fkkR1STtcEoRRwRdCwnkw4kL
e4vtwVr3BcQaba19uB+3lCtHFWK4MsB36as95y2yP8KC7V9giL3vGs9g0gOclI7kpnfena4nUknK
dteuuR2WZy3q+su/VgxtV/uSV1+82lUcWUG21KIUW5oWlhHlQGCxymvWsZnDJE9qcEWzlPrpDpyC
kWDc35OK1p8xqcD6hxea4I305Si7WTXxS2NdYcafLYd1Y64A1erXTNv6kXuPb+gtGLNt9Slzxjgr
65QvLHTYkXs4hSRomgujHJhNwMe5Ydx6L0kSMThdAZ121OlWqCBnIv//V+rExX6oytiQJgZwcYm4
tPwrxWBD2oSG8cUhTXR45Z3IugrytmrKamdfzduXBmNgnvMjPF2fu3xlPdO5hn1jGEBoqLZ+xv6R
YFv44w2p7+thwa6AVKlAKP+OjHiXEePq+7SaL16s4df1kdsCp9duvE7nV8XO48SWJ4C38DmF+k53
DedZDsCNtN/Xi8LOPoAnH88qr7oeHBjvBAfd9fCdb5eNipnvFa6OWqLl91cCyOn/kNBqW0uUWfHP
aQm4r7/uORwrQbPmNwognFQXOCXB7Twe3mUfMxNL+DGoIKuk1arj970714Y1GVjGSb/2fCDLDXzN
mtFazgUJ30iBPRdffMeqNEFnhhW16MUMWelTVHsQ3BIu1jrZiSi4Mfc+s9tBZ834TEjfZIdnGLIM
TXUbtYvMcWEEMKWM0asYr1QedjTqy/EcWggzMHiLx76HzTuznHxscUJ5PDYna3udx7UzSKF+IYKD
/1qDmUDoeWnnBQRvZRLXsgTycI679e+MlmnCWH4cCau5L50i6dgBkcPNP2Z3LWGjW5adjLHzyApr
9gLWJiHqy/xYtjZ0tcks8N/K7bWIFWgIH/zof3z5xWeTtvLVKmqi4nRpHncrLqXNcJvSKdpV4uCa
zgYkAkx/X/DO4f7WVsV0KAtAH/fx3fFWGw7gJ5yMPtQSO1xkfeAn6r+GXEyn9hrWXgDPFMPpqQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x202B777BD89F120"
last-modified: Thu, 12 Nov 2026 00:48:55 GMT
content-md5: vRALbgvy8AOMrY2nPknGhg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 53348c5a-ca69-487d-b639-60d6b6b0fbcd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-a3c403da-5874-9ecd-5674-b0b7d2b8a5eb?restype=container&comp=list

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
x-ms-request-id: 3d957fa6-469a-494e-8274-dae61b074bf1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:55 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-a3c403da-5874-9ecd-5674-b0b7d2b8a5eb"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-619ff7e8-f040-6211-bb68-8a4a9a40c750</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:48:55 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:48:55 GMT</Last-Modified><Etag>0x202B777BD89F120</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>vRALbgvy8AOMrY2nPknGhg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:48:55 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: GET /devstoreaccount1/test-container-a3c403da-5874-9ecd-5674-b0b7d2b8a5eb/test-blob-619ff7e8-f040-6211-bb68-8a4a9a40c750

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
last-modified: Thu, 12 Nov 2026 00:48:55 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:55 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x202B777BD89F120"
content-md5: vRALbgvy8AOMrY2nPknGhg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3be1bfc-3bcc-4e11-96c8-9c73832f35a1
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:55 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: vRALbgvy8AOMrY2nPknGhg==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
lg6L65jbG4dyEtHrrbfW45tQdwrpK6np8WLoC82CAxWsYCHELLpTDNwY7y0fJrUEkqevSsi9Zmpk
ovo28w+57w67Pk2VEbbg/Wou0Tx7ysqs5Hkm07lN7/m3YIrAHRnMXwAeY+doboHwzk1djpUu6Ngv
iQ+VkhtVbk9T3rAsIN9RYXE7XGbjRHX4NgRs72BjiXeykZMJNszkyfWXFJDQxK5tCywj8otxTEWZ
nVwX6H7v71Q5eY9LRyqkVpJxSy/lKHFW/+MzQJfrQEVOcJlwzeF2qCU7l0ofIcQCfpv4/wAVs3Xq
wOiavK+9TThJ/NeRNImx+6MKqZEnN90fMcH780FEOLwkhgz42+x1fkkR1STtcEoRRwRdCwnkw4kL
e4vtwVr3BcQaba19uB+3lCtHFWK4MsB36as95y2yP8KC7V9giL3vGs9g0gOclI7kpnfena4nUknK
dteuuR2WZy3q+su/VgxtV/uSV1+82lUcWUG21KIUW5oWlhHlQGCxymvWsZnDJE9qcEWzlPrpDpyC
kWDc35OK1p8xqcD6hxea4I305Si7WTXxS2NdYcafLYd1Y64A1erXTNv6kXuPb+gtGLNt9Slzxjgr
65QvLHTYkXs4hSRomgujHJhNwMe5Ydx6L0kSMThdAZ121OlWqCBnIv//V+rExX6oytiQJgZwcYm4
tPwrxWBD2oSG8cUhTXR45Z3IugrytmrKamdfzduXBmNgnvMjPF2fu3xlPdO5hn1jGEBoqLZ+xv6R
YFv44w2p7+thwa6AVKlAKP+OjHiXEePq+7SaL16s4df1kdsCp9duvE7nV8XO48SWJ4C38DmF+k53
DedZDsCNtN/Xi8LOPoAnH88qr7oeHBjvBAfd9fCdb5eNipnvFa6OWqLl91cCyOn/kNBqW0uUWfHP
aQm4r7/uORwrQbPmNwognFQXOCXB7Twe3mUfMxNL+DGoIKuk1arj970714Y1GVjGSb/2fCDLDXzN
mtFazgUJ30iBPRdffMeqNEFnhhW16MUMWelTVHsQ3BIu1jrZiSi4Mfc+s9tBZ834TEjfZIdnGLIM
TXUbtYvMcWEEMKWM0asYr1QedjTqy/EcWggzMHiLx76HzTuznHxscUJ5PDYna3udx7UzSKF+IYKD
/1qDmUDoeWnnBQRvZRLXsgTycI679e+MlmnCWH4cCau5L50i6dgBkcPNP2Z3LWGjW5adjLHzyApr
9gLWJiHqy/xYtjZ0tcks8N/K7bWIFWgIH/zof3z5xWeTtvLVKmqi4nRpHncrLqXNcJvSKdpV4uCa
zgYkAkx/X/DO4f7WVsV0KAtAH/fx3fFWGw7gJ5yMPtQSO1xkfeAn6r+GXEyn9hrWXgDPFMPpqQ==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-a3c403da-5874-9ecd-5674-b0b7d2b8a5eb?restype=container

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
x-ms-request-id: d6183c5e-248d-4da3-bcb5-5fd6c39a8e94
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:55 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

