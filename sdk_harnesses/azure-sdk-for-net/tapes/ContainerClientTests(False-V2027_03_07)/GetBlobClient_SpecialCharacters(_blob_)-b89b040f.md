## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f00093c5-2b5a-f9ec-f845-b32b6b255a1b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).GetBlobClient_SpecialCharacters("blob")
now: 2026-11-12T00:43:12.5626399+00:00

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
etag: "0x1CE9B2B09BA61F0"
last-modified: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 77b6defb-5278-4ad3-87b0-42c5d48b1be9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f00093c5-2b5a-f9ec-f845-b32b6b255a1b/blob

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
LarFzRKD8GYIVJ0lu+Eu8PvpNyVK6dGhgQPFO6/ukBLPrv914aeuQaKZ6AaOxj0XFsMvgu010UTZ
I0sOvrW2GcOKVg3huQ5UOvaCsADLErrGrSTsvw0lmd26m71bn4Ls4s9CBHAwNV2020f3syBDDhGR
SBCRylq1ZL0wJh1Q+Ztzlc4xiA5KlXjGOOPFLua8do2syVdyWxh0jJ+yAA4/Y+Ksgx1SEoUCRrKY
ypF37zbXc6+QpC9DATm2vftvl5Vph9UBGarIamQHqoOk2ZGG/Zxp24xerr+yaILjnFSKk64dL0K7
ddaLDglLifmsnyeoL79eBrwICtgWTrAn5c4PfRfUh6pOyofG3c2DEyXFBslbO2yVK4zyFCRqpScm
Yyg7Owzh2Bh9WWQ3mCjuhfeyUEfmzKphelGK4XKF5CVfn3mkSNgZ4y6w3eEIXZJkBI8tt1TgP5Z+
2cC6Vval93U/2PmvST0emWwZNu/IWRy/Jt3jWCzRf2DiJm4XX4w3C+VryYWZtLpRDh7nxwmntYCj
+zAZwp9JbViYzCPPBzrg4SoJXZCXJXEikUkO6bhWO3Duc2NcHkhGIlstAOiXggbjB+XenVjwDNW+
9jBVOoSfQpCy4ZPWg8Piwzs1aiWJiw9CKuLSeJ0Y/meOnicX8OfWjb5X5KFzDYMi+9oduqGwNGsh
EhCizcnzmuIsR+WbytNTXtxmMadtzx1er3zD+0PF3mm79t3XNMD0ZEq+RsWehjEGyVzFSQPEs0Ly
Qx1NL56fZ2l74NT1fCkccc1dr4lXvyhKvDHmAJRm90Oa5PCjpzSrHt9cI6ZdEU0zqNg1ZgS5m4T0
AnJsuWfUFeiQW5c4ecmYsZCp+5yB7avks1e8MJA+4ElsrqXCPmV4iA2+zLa1+i8OnLVzD5/nchTG
iAYPF+RXUXpOzMok1nMrMXOOwyH1L7gnrpTby9GphDuQ+7ZeaHAoZ3o7Zi5k6cVBSN4sWK/z0VlN
52hQfIappUePk9u9zMkCZlymuciKw8TOmYPyfCuMnSpcEYAI2Or0ksHm1VbqhHsVKvJTTReQwySj
geIDtigbAvawYLtI+o1xsiYHo+1u5BQH3VI4OFATy01cZFcI8NyYytJgOiS/zS9l4prwiSA2NZ3N
+9jW48qmnZVu65U2aMFKb9gbDqrwSBAi01a1IkIsJi+5OvUEwecIuZyPUeGZL3nZphpIGybz3bLH
sxBz8HpTQcVmfC7LRq3wE1QNYfYviaPc3Hwn5AsIxl1CPA3XlMkiPBAcM7NLDV9sVwfS5Xu8mCps
lxT9K1y6XrXQiAmfGX6L6yXmE1Xwkc8du4wDNuDhhqPja/21JBCzYdT9eoRVzD6IRvpV1YXUew==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E49B5458DA2B20"
last-modified: Thu, 12 Nov 2026 00:43:12 GMT
content-md5: Zr55bddMm9F7KLtac2wBDQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 55eecc6f-5ddb-4d25-9576-fe9ac6a0f44b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-f00093c5-2b5a-f9ec-f845-b32b6b255a1b/blob?sv=2027-03-07&st=2026-11-11T23%3A43%3A12Z&se=2026-11-12T01%3A43%3A12Z&sr=b&sp=racwd&sig=5Dyine4GFdTq00zK72N6Ddl4L%2FJienRs4aNLBo0K6s0%3D

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
last-modified: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:43:12 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1E49B5458DA2B20"
content-md5: Zr55bddMm9F7KLtac2wBDQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e3d4d46-6d17-4aca-9cc9-f7f07fb04551
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:43:12 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: GET /devstoreaccount1/test-container-f00093c5-2b5a-f9ec-f845-b32b6b255a1b?restype=container&comp=list

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
x-ms-request-id: 64505861-45ed-458d-b8df-685f4c67f568
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-f00093c5-2b5a-f9ec-f845-b32b6b255a1b"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>blob</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:12 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:12 GMT</Last-Modified><Etag>0x1E49B5458DA2B20</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>Zr55bddMm9F7KLtac2wBDQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:12 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f00093c5-2b5a-f9ec-f845-b32b6b255a1b?restype=container

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
x-ms-request-id: 4d93b82b-1a2b-48bf-ba2c-0963abd29836
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

