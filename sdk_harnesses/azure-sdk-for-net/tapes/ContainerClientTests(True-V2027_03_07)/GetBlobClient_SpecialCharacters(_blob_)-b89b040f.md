## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f4ca1c30-7b4d-8847-f488-65f26d424db1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).GetBlobClient_SpecialCharacters("blob")
now: 2026-11-12T00:44:17.5016037+00:00

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
etag: "0x225570B0F329180"
last-modified: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 12eba206-c0b9-49b3-adb3-5a57fd24832d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f4ca1c30-7b4d-8847-f488-65f26d424db1/blob

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
Pee8LN6/PbbSPS/ynedrTqVKpICdSRIkha6UCLDhWXeER59NgtmVcN4TIg9MVOoNHRZMI53NE/TV
mKcwKzQG8OO3bVZIHcvMtTOhiiYC2DDDhuuZlDbatzOreOoxZUWpDTErlOeUxf9KgG5pK4nN0793
bKRJbFut3LYinaXhmlDu93z11kNIL8HrThTIcIuq3aUquvigYKDVfrcwcShaaeUdezMM1/x8Ljzj
XR1H5GwreL8At+BXTZfbIFiLGL2ZkeUvqvVXnQWorYu8vQKDjZlLBfloWbEExi2cMLej8BZ/Ssw3
GDp309u5VwlVm4+VWJK/QBLDMDc0KuPHu2xOBb10PHM1S3Ve1DIerwKnryueBtgk468EuxmVA+1W
rxdualJM4F4cYAwcYGzgpYA0jHu4KbWTKSENcIFZn0iHCCQar0SwW87MgabLB4NDIxaYYHdynYZi
2kAwPnDdwsDElVhHxfU8hDCt66cOxyKeyUxqwD/RFWqet9QDfx1d77/mB3Ir+10gXNxGxLLeVBIe
kXQjcgGB83/tqA4gOAQTT/vnKMCvc83uSmRiilG4wGPC5O2oOny+ZRTzPVNPACPXM3S29itSbx6n
NCidHmgtNeiqXlQWaxV+KcKsuzV6n0pAi1fcAck3b3XPAQVUIUerxQhqpKHPwMdfN81ppbPoLJXe
XJIRUTQfc+7eR2oPKgd7AfUtEPqocMqPfMn8zsrB5tRwdsS0mnTTSzGz8HldTw3F7aS9uxuaNevH
gdRqI6QkHWCVn7NCxmaBWcXJ9YBRMSy7NuAlAyu51UDZ7RifaSeMjtMYyLBZgic+O2FW0UBrdU+n
ruzE/xk13MlyadlO4vCdPGasOWl8YbS558fKYgQAbXfI97o7yI+54uzm5xhN71lwuJTZvjzmK0w4
ChdSa3nEcfxhhes2YXTX81Z9lXqba/duWapwJ6474sttA713Z3dyInUc62ptOlYfAcvlaZXSnJ8g
4xHPVEpNJqMfyF63X4zeCnMFfn+NAB9TUCXjVXg2m2cdV4Nmo80rz8XGTXH4Z6I/Bl8hzR0fk+Lx
ewMkatEq6S33mQgIeGel2a+6xrOuW+mDpE4ZFM1J/sOgdCfKBmXzm2RDAM2ZNo74e/NuZc0vQyAa
ocWCEdRfrptEZwM/29JKxipOalob6W7AIZja25j2cTEGsGWfcYqP41IxVM6LuKAhI56i4djG/rdX
wvA8hdICTvbROStsqlWgvoYH6ZWfNGj4ubf6U49YQLGuR66ZU12ALgbXuX90tHhIAiJSvhUht42I
Q8waCPpmefh6vWOmBmooh7qOyHvpgwQ/sVFtBoGbjI8hERCRZSYMcECG+vYVofu4KTdak+8Snw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA618BB63005A0"
last-modified: Thu, 12 Nov 2026 00:44:17 GMT
content-md5: 5AkhWNYHB9Zitf2vw14GjQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d82ac20f-0052-4815-968e-fd0f5cc71664
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-f4ca1c30-7b4d-8847-f488-65f26d424db1/blob?sv=2027-03-07&st=2026-11-11T23%3A44%3A17Z&se=2026-11-12T01%3A44%3A17Z&sr=b&sp=racwd&sig=Bb7F%2FfypXbha5%2B%2BeYIg%2FHsg70lhBY8dvN%2FE6VxwThjU%3D

### Request headers recorded for playback:

```
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:44:17 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1DA618BB63005A0"
content-md5: 5AkhWNYHB9Zitf2vw14GjQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 40fe18fc-ccd5-4f31-910e-0b52c7b5c9c7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:44:17 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-f4ca1c30-7b4d-8847-f488-65f26d424db1?restype=container&comp=list

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
x-ms-request-id: dfd49a33-9a88-4973-aaa4-9f05ff417c00
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-f4ca1c30-7b4d-8847-f488-65f26d424db1"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>blob</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:17 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:17 GMT</Last-Modified><Etag>0x1DA618BB63005A0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>5AkhWNYHB9Zitf2vw14GjQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:17 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f4ca1c30-7b4d-8847-f488-65f26d424db1?restype=container

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
x-ms-request-id: 98e88efe-da4a-401b-91dd-65ae496ed282
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

