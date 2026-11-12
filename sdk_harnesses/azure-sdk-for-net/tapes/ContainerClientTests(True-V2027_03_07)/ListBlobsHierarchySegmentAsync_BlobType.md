## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-80d0056e-78b0-951b-9ee3-1edeff87ac35?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_BlobType
now: 2026-11-12T00:44:58.9922648+00:00

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
etag: "0x23F1536D67F5140"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bcd1ab81-8f2d-4b6a-a77e-ed3666a4f172
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-80d0056e-78b0-951b-9ee3-1edeff87ac35/test-blob-d5f45fa4-3ab6-2c2c-9c00-0a8b91528fb5

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
HJiWQJavEkuhOK4dLP1a+uHRNiwidG402aTjsG6PBEtUacFm8Gue9E2pM32MDv+fpg+qvxtjk6gq
Ymbyy2HcETRiycM78wp1M0LfeUDwqMqkRAle5UQv8dYYPI0FrCjrzCFJKUQ7Y7MFNYzZhBlnObqc
TodXfSzvM9jtIrZ8cIcZ86wepn6FaOBWWbC4VWy8sALTaF2hk071WvZsTkD8iMQFwJBsSZI8FuWm
ACR7Nt1rMXKzqQcpd19eKUyIGRqfWtHrspTcT2dwl1F4+pIqeiMYAB3OSN693EgwDh9Gs/3LB6ZT
j4RJj+EKQxK1sH3NNK4pcBj80BHyLtZLq0BHKeNUrPPs1+qfz3E7xAXMByvLY9pwHUPkzjaVYGGt
/eOhwhkuYQSK4F3EiaGnwQwLJSaqgEdm1gyfb928VnaI8dKNmgLrnaYnQYJ8rJOiPQ0qiTo6A3yc
OusNj/EmzYrmPJjOGicKIIiAgz7E6Sp5/TLQks07Te5V8V8W3g61AHT4lm/70yPlH2myun8911DA
k5G+VTq8qu6peSjH80F6yoPKzFO6fikP63JkiZNvFxkPVkp89qo5POuBUVr6HSwnOPD8cgv8BRVo
r2rHWCFbOmEOuJ32/dPYkZBoOSzPFc1GPVGjcqQOElA1FEc/cePJJhb462SPMDocI+F7k8zomJmc
gRvQuMe8AKVNwemMmB+snxMW1ypptgwWhk/Dk3+ETHuuo+/I+W1OO+u+Qm5RkIrBz/S40sFvM8oO
uTF4+WwmyHRt3vUv46alx5s/qnSexPbEAcSKy3q5Pm8luj881UF+mHn547KUketOEgolMIlWcPU6
s/eom/36s5+GCihmafFZwBH7pOFEMG/YPLhwkw3mz0pKASJJ1fx7/zASDofD56kYzG93WssU9YOI
0F9Fih+RoDveHGfPEOsVf6WxMiHoFVQPV8eebnR+NguewQWcNnQQgG5L5MtBSLyEYdsmYsNhn7oK
NTJX8zHHX+ZcMU7meUgwoLGznTCJzQ8LGg2ZV9NIPCJKkQBCuIw8hITk5RdtneiS9sIRrgKKgWcj
TNkkLggTFPQsnOdI7ugkdhirpej3nnwkBmARNo4fvxCYHmyzGFZ80dAiQQEASgjZ7Djp3tx/K61c
/yenAt1mDNzXr898cV3CL9MX1Vx7I7xYN0lVNuE0GfO+Vhkv1c/zvDUlKZs5XXvaJ68IZ1ZR4dtq
T8qUENb6o5XbvRpEk1oEJBgnVfohHtrOew8xK7KdbXU9xIUEX6tfKoYGXZ9glpRVBEI9KYzhSDDw
xZTHyXfiPlClBs7U/8VtyCt0G8A7beV63CdwYEPpXHtUFJkWl2EOJB9Ou4/FgQR80GFgbC1wtQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DA309661BF1D20"
last-modified: Thu, 12 Nov 2026 00:44:59 GMT
content-md5: prswWCs8eAU72G3z55y58Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9f676f9-96a8-4820-91ea-3907a8e3343d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-80d0056e-78b0-951b-9ee3-1edeff87ac35?restype=container&comp=list&delimiter=%2F

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
x-ms-request-id: acb7d58d-61f9-4ce6-a8b6-b5db1949f515
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-80d0056e-78b0-951b-9ee3-1edeff87ac35"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>test-blob-d5f45fa4-3ab6-2c2c-9c00-0a8b91528fb5</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:59 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:59 GMT</Last-Modified><Etag>0x1DA309661BF1D20</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>prswWCs8eAU72G3z55y58Q==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:59 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-80d0056e-78b0-951b-9ee3-1edeff87ac35?restype=container

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
x-ms-request-id: bb066b00-a12e-4ba4-8764-5df19e38d631
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

