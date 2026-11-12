## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-063db5ec-0a14-02f1-8724-c8fe311f758f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_File
now: 2026-11-12T00:48:59.8522581+00:00

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
etag: "0x240480E9CB65F20"
last-modified: Thu, 12 Nov 2026 00:48:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eb00315b-4194-4fcc-8d08-f72289bde821
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-063db5ec-0a14-02f1-8724-c8fe311f758f/test-blob-7285ae66-5a7f-077d-3883-99f35f8d44b4

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
KP1DxkiWJ5FVUKL/JYgxTuRCXH0/dfiSODbNkHH9o/ngFNYz269Hz4f0HC63fuGvUUoOHDHGdbIF
sY4SyJYfV6yoHhGy/nI1+431SlnJ2rlUHj8m7ofIGZ4kLiogNQbx1MWCD1/Q/VPX2CCj0CpZO9bU
vapW+Wgl4AVyjdBIFMaGBHaTR8tahCDsThVmJEh0y/NTTHdbmttcXC5ZXW+Cj8RaHcyzxfMKeTiJ
aqpSvry8/sLc9MhOK2mbN+qdACewab9RCwd8wAb/SdI/0TAwCZ5ynV+tppr8DPJiGI0IbXkR2QDq
AbO0QD283av1Dlk5ai1MKmPHA8MlVf4VGqh49txZLvgwRQjrvVwh8cjuBv2YKK1fvEIVSdU8xau0
nyaVQ+bPm+BgCSQlYW0GphH6Nk4BfPH6GDqZQ+Qi84BdNx02jK7iHmsdOB+IOlrVD6PEQo5csiM0
miqrNVf8PRakxypPzxljGBjj40PRcd7fxDRBXrDxAYT6AvGDNugTIfoJ5HIwhT+JYCl2eM/fYilM
y3Ejut5lssamVc0n3+Evz8JIyI1rrz70t/6He4i1Gp/IN2p38GYbpDGsijByYoBHR6kMlpqc4Rwz
LgLg3Tc+8TouX6h3t95cLSRbviQNglV9PzPeqIMELFZOQ8FjO8b5bZn2QwPY0I/KsGl2QCL3Jqyt
Y54EX0i2KTNSKHQc+PFeYlGLFj5SpW+jFPgajus0Vh0Vtdgn9Q5QPxnPhqcbrbd3F93Raw9uW70v
YEtPnJtHHdJWB0IZNm1DOtckgh/HiGZBonYNY+sOploa+JTCAaJ+iGjVxKZ0XeFwjjE4StmeZ9fk
DvolObrmSGDo/z3YgDk0pfq38sPAzESVndW61lyBe5G83fKoWU6t7nxFjF6jlw33A6Te53UUI0K2
j5zlLHEEZ4OsG6JGjEyrCQNGez/l8gXHwtK3opQcqLqw8smyx8ELQCXa9ntrsHdYM91xzagC0J2W
HmqeTMTvkHPolpqC+UJBOzsaC/uKXBFbX263q9oRrSEsG6hXbPNg62YIghrd1TmaL5Jt58ShDMJY
Q+xVOOWY1uh4Vt2Z6s9HuiCVgdn3fYo0HHtIpMVcig/m/igGCrKBb6sxZX5cAEXCJi2kDIroYMZi
IBtpTzIjG8vOs+unQK9tExIuxhcL2Bs2hX6YuH2F/p5hpOmWFx95Dkmzjk1aG+Z+Nvl3upquVkgA
M8m0imJNSbRNRZvF1/vytLjOWErN3GqYGYKEDUQDsk2hluRVxIPnZUSZDNZKuF/9hQXi4P79M1df
HHHgyTxwSZJNJEAXnO805vIFM8+TTWEih4c+IdJOo2KM9agSBpwIKcND/JMe5ugVrfkM+P+IzA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CB306B34F12740"
last-modified: Thu, 12 Nov 2026 00:48:59 GMT
content-md5: rI1P+3g9AccFS4IoMyexMg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1fa4921f-54f3-4d79-ab6f-977d89499fb6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-063db5ec-0a14-02f1-8724-c8fe311f758f?restype=container&comp=list

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
x-ms-request-id: 1517f187-abfa-42d2-b9ea-f66316abfd58
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:59 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-063db5ec-0a14-02f1-8724-c8fe311f758f"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>test-blob-7285ae66-5a7f-077d-3883-99f35f8d44b4</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:48:59 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:48:59 GMT</Last-Modified><Etag>0x1CB306B34F12740</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>rI1P+3g9AccFS4IoMyexMg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:48:59 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 3: GET /devstoreaccount1/test-container-063db5ec-0a14-02f1-8724-c8fe311f758f/test-blob-7285ae66-5a7f-077d-3883-99f35f8d44b4

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
last-modified: Thu, 12 Nov 2026 00:48:59 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:59 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1CB306B34F12740"
content-md5: rI1P+3g9AccFS4IoMyexMg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96150631-0bb6-4138-923a-f65e4e55e563
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:59 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: rI1P+3g9AccFS4IoMyexMg==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
KP1DxkiWJ5FVUKL/JYgxTuRCXH0/dfiSODbNkHH9o/ngFNYz269Hz4f0HC63fuGvUUoOHDHGdbIF
sY4SyJYfV6yoHhGy/nI1+431SlnJ2rlUHj8m7ofIGZ4kLiogNQbx1MWCD1/Q/VPX2CCj0CpZO9bU
vapW+Wgl4AVyjdBIFMaGBHaTR8tahCDsThVmJEh0y/NTTHdbmttcXC5ZXW+Cj8RaHcyzxfMKeTiJ
aqpSvry8/sLc9MhOK2mbN+qdACewab9RCwd8wAb/SdI/0TAwCZ5ynV+tppr8DPJiGI0IbXkR2QDq
AbO0QD283av1Dlk5ai1MKmPHA8MlVf4VGqh49txZLvgwRQjrvVwh8cjuBv2YKK1fvEIVSdU8xau0
nyaVQ+bPm+BgCSQlYW0GphH6Nk4BfPH6GDqZQ+Qi84BdNx02jK7iHmsdOB+IOlrVD6PEQo5csiM0
miqrNVf8PRakxypPzxljGBjj40PRcd7fxDRBXrDxAYT6AvGDNugTIfoJ5HIwhT+JYCl2eM/fYilM
y3Ejut5lssamVc0n3+Evz8JIyI1rrz70t/6He4i1Gp/IN2p38GYbpDGsijByYoBHR6kMlpqc4Rwz
LgLg3Tc+8TouX6h3t95cLSRbviQNglV9PzPeqIMELFZOQ8FjO8b5bZn2QwPY0I/KsGl2QCL3Jqyt
Y54EX0i2KTNSKHQc+PFeYlGLFj5SpW+jFPgajus0Vh0Vtdgn9Q5QPxnPhqcbrbd3F93Raw9uW70v
YEtPnJtHHdJWB0IZNm1DOtckgh/HiGZBonYNY+sOploa+JTCAaJ+iGjVxKZ0XeFwjjE4StmeZ9fk
DvolObrmSGDo/z3YgDk0pfq38sPAzESVndW61lyBe5G83fKoWU6t7nxFjF6jlw33A6Te53UUI0K2
j5zlLHEEZ4OsG6JGjEyrCQNGez/l8gXHwtK3opQcqLqw8smyx8ELQCXa9ntrsHdYM91xzagC0J2W
HmqeTMTvkHPolpqC+UJBOzsaC/uKXBFbX263q9oRrSEsG6hXbPNg62YIghrd1TmaL5Jt58ShDMJY
Q+xVOOWY1uh4Vt2Z6s9HuiCVgdn3fYo0HHtIpMVcig/m/igGCrKBb6sxZX5cAEXCJi2kDIroYMZi
IBtpTzIjG8vOs+unQK9tExIuxhcL2Bs2hX6YuH2F/p5hpOmWFx95Dkmzjk1aG+Z+Nvl3upquVkgA
M8m0imJNSbRNRZvF1/vytLjOWErN3GqYGYKEDUQDsk2hluRVxIPnZUSZDNZKuF/9hQXi4P79M1df
HHHgyTxwSZJNJEAXnO805vIFM8+TTWEih4c+IdJOo2KM9agSBpwIKcND/JMe5ugVrfkM+P+IzA==
```

## Interaction 4: DELETE /devstoreaccount1/test-container-063db5ec-0a14-02f1-8724-c8fe311f758f?restype=container

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
x-ms-request-id: 4bc9d79e-144b-441a-8e76-4073eb4c2f3e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:59 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

