## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-845a6e7d-5799-6bf7-44b7-4c93e1a9affd?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_RehydratePriority(null)
now: 2026-11-12T00:44:20.6676982+00:00

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
etag: "0x1F275C074B310F0"
last-modified: Thu, 12 Nov 2026 00:44:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f550f7f6-811e-468b-adb5-b9e6a180f526
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-845a6e7d-5799-6bf7-44b7-4c93e1a9affd/test-blob-251c539d-0ce7-758b-3eed-3d1a1588b7e5

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
kDTnIMxjy5mR3p8GNRR4nofc1v6QvjBx4uRGqxrdVrz/ZwOtwo4wOoeCkwlthT8pdJ6SObK5VdEE
dj7nHSB+tIfiBs4Qy9z4q5t2DSomA12lHDZ8ShwJRhIyqUtQSBxmA9+Bin5xGKnCmY4WQkem3XLg
QgDpAmpq2cC83iKQqGJ/EApLpXnfNAOMubCO8wPKi8vZbwYcfAB0FrG9tDqHMvErlzI8Wzj4AQ78
XEm53OW98VJWtjhcYpMJ1o7IIX/JBYe+Y1zRjTCT4W73Hx+3uzrLAMLnMXu5zjSeM4SpMOCPM1fB
+3iI7GMiwtXJZEN0URtU/CC84dQLBZQoMlqr6bGNaOvI9sDBQxRexW6m72rwKuFpVTPA0lGDtfbk
YLkJdtgkO/xXrFtbkrkLXRxmZRUqOAd5QpR9zZaaREDK3eNaVU6VgbRumH6FDcN6tHQ0HVDguiix
kDNEpm5lvWcbkbXWsAjO0ONhvJ+J8zTQAxkhZSfw6SK6qcUbUNpGCNoXanwNowNsZkxsf/6IKJz+
c6NUQ1c/KqeSGwdCs4AIG7PEcoi4w18Vtf/bhGkkMoEoHNw38cSC10DUe4j7KbPLY2RKw7UURrBE
Po5YY6Y+bemGGZaj0SnvQZpI40fWGYtLDyAF2m7LFNUr87I1KnSZlg2fdQ8cKJE6WoEbzGNobSUD
DVOFOZN7uwXAd953uRcmrkw6N6R7LuePyn/sr0dyw4aNMh0gFF16I7kKXLCzw6Bq9R4WLjWAh95s
9m4Tjgu+TrRX6Yf6BZnvvxTqcdI22wffgropXJRQDKo+sx7vZpSuTA77W9kZb++EJ24hlRYLNRpn
NAxQlPEgB93cu1F7AFl/PCXEO4AtxhLLpTUlL3eUM34EhzKIXbcc21T8PLOdCCcVolnxRvqZOm75
he68+9dlSIfTd3gm9t9tqF8rMYlfLZ0ND40eou2Dak3EjtfJX+B9lvMryZCu76t6g52bbgnkmlhR
rutJR6WaUA0rYmgHpEh/rpqWM2MMXyDiox5P6PtE3/N/d7D0M05NkXmDg4xCct9UG79uTWb0RU/L
Z6OHSmcR5oJ1iCyXinpLSaLqiNuToDE/+8w81ZKMijFhKcyrxkYRcpwJzeqyvJFEIwTDCbx0N8dy
SE+b1RHw6P37NmGuoIJc2BY+itJGjD4797KNyIB07PEFOH73dpyLGeXtt4YvloOBZzGmNa30LLsR
X91fYx98hklvqWcEZGJ5s3DtWNS3C2EuC2FPzrdEEAzC5Ra/LLbFcTE8wO0bfALOLYI8BtPmWVN8
MFe+LLeSKphbQn9Luoa6J+eje0t0E45egaE1CAo524zDQvxeB0V5qZVUwDqDgnL7gd7rQ90ICA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24665287B81C140"
last-modified: Thu, 12 Nov 2026 00:44:20 GMT
content-md5: NEUQMlPQrPtoL9QJoMAKyQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2b0c22c9-104c-4276-8668-0ff84e7c4fe0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-845a6e7d-5799-6bf7-44b7-4c93e1a9affd?restype=container&comp=list&delimiter=%2F

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: 0867db1a-fb9e-4374-909c-974b79a129cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:20 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-845a6e7d-5799-6bf7-44b7-4c93e1a9affd"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-251c539d-0ce7-758b-3eed-3d1a1588b7e5</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:20 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:20 GMT</Last-Modified><Etag>0x24665287B81C140</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>NEUQMlPQrPtoL9QJoMAKyQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:20 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-845a6e7d-5799-6bf7-44b7-4c93e1a9affd?restype=container

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
x-ms-request-id: 06bc1138-56a0-4762-a41d-fec31cd2ace5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

