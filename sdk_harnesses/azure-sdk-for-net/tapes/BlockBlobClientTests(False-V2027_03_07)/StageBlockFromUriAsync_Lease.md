## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f2413ddc-9389-69de-efe5-14e996f86712?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockFromUriAsync_Lease
now: 2026-11-12T00:49:44.6987098+00:00

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
etag: "0x1D52DD33405BBF0"
last-modified: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e8eeb2eb-e9a1-4356-a701-cb957c73076a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f2413ddc-9389-69de-efe5-14e996f86712/test-blob-125e903f-7764-fc52-4cbe-0e5c0f6af333

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
qyCgDOCSWe9VyCE5adN1ImXEZBqhUaaiGi7nL3VobDe+/V+mzL8iSuRSncBxpAAcb/KE0ZNMcVl5
/vGxqyl67Vzqemx0zlWloho2T7TmMXYtyr+C5JqjcosFLM7OcJ+6169khymUqKCc3i95FSKlk817
g+Bp9wjBRgjgbqKH1zJ6fHcEgapMmSIf5gVrKlxpX5kBU+y/UOCno0Ahszn+FQf9/pmqoBIiL+q9
ShECVRysdg8JhoNFuyuWXd1pKuXoIND+bivCv7+G3iQCAQXPpE4jdT0q9Y+Dt0NuE0M0uAQE1SpA
BObx6bdQgqdeQ7klx7mPRrWovitBerfnVKt8UiUg/Szbjp9nMoyG2nPnJXSKSEyJpHJOXBb//4kv
CZQL0y+CPkaNSjgZJxMpIuO3WVVCXQxf8q2y0aAV3I8WOCj3egZDZeYu/P0Tb3xfJTozR6Uz7KyI
rOGBz22ld26pAu/qMajddPRvFGAOS4IwU6tm4pTq40t8b80lwZV5iISOamyNdPOSVdOwxNhLeWFe
UHzBPpXavx+kbsLauLJf9YvbgOEVo96404zAOR5yMPVrxnAYt0nvtKtM6AYwt50hUM5McPl/SK2e
CWsJGYUAMT3Nb/FBRj1B7Ms2yLvXhxzun+lQJsD8633Deq7e5pslTLbIY0ir4AqQCoMuSX/yxoJO
GnmcsAt90YNzfcyPYgYvEHwEDyPTQr/ewBs8zqL+0bQskMshiZurSpLFOGI+AKh9/jgC7bdeete6
vfDvQQPgdasYY9I6DobhWMSRDgpcoL9zvs9p++P9zhX0Z8yruwmP5MK2Jp3VQ++xIZXyzGzMXRww
fIIzd3rIGpW9Rae6NZy7AilIpXohnXvgt9lOCgGoJwmvez+GW21H7gsIGP1I9+z4N8lDhLihDt4G
U7+heRCTFB6dC7pdNKe7ALZvGYV+l8DtVdM4ZaNQDWxggAiupnT6dQPequwxmwIih4MBMvVZh7v/
syQ8W696Tf1N/LSeDVlCdKOCn+zTu7nRFd4fT9t2B/hMrvJQvhpUZF3v455NhHkqv71R1ujPK/hq
a0XQW/0h1/W8UV9m8baJLjuO5Ncbg5Fk9Y8dJTAPfYP65VLVgwhfzQyokTIaw80Hx6isQEYhT+iz
bGZuA7HFrNTcbAxjtKsyLxfKcvFfSjHCFl2IYz082JVqIRei8clb4+RePlbAoxP9eREuVtz2VCE0
q+1UPUiXn5N2+ZOUkD1Ob44MAQzaAXNKiuorDYG5c8z1bUXcB6abx57CSqmAaenT4OdN6VMVWap5
CbJea5ERvYbGniL3cWjocDltF7bJyiEAWCyaa4l54BObYv30PFsNsIwjucrG3G9/ZXgZp0LzsA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C8483663A148A0"
last-modified: Thu, 12 Nov 2026 00:49:44 GMT
content-md5: E7p5oniBNp4e2psjJuU/5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b8ff07cc-ffc8-4149-9f86-ab561c73cbdb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f2413ddc-9389-69de-efe5-14e996f86712/test-blob-296660de-10a5-3a56-7cbd-1a05106038d1

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
qyCgDOCSWe9VyCE5adN1ImXEZBqhUaaiGi7nL3VobDe+/V+mzL8iSuRSncBxpAAcb/KE0ZNMcVl5
/vGxqyl67Vzqemx0zlWloho2T7TmMXYtyr+C5JqjcosFLM7OcJ+6169khymUqKCc3i95FSKlk817
g+Bp9wjBRgjgbqKH1zJ6fHcEgapMmSIf5gVrKlxpX5kBU+y/UOCno0Ahszn+FQf9/pmqoBIiL+q9
ShECVRysdg8JhoNFuyuWXd1pKuXoIND+bivCv7+G3iQCAQXPpE4jdT0q9Y+Dt0NuE0M0uAQE1SpA
BObx6bdQgqdeQ7klx7mPRrWovitBerfnVKt8UiUg/Szbjp9nMoyG2nPnJXSKSEyJpHJOXBb//4kv
CZQL0y+CPkaNSjgZJxMpIuO3WVVCXQxf8q2y0aAV3I8WOCj3egZDZeYu/P0Tb3xfJTozR6Uz7KyI
rOGBz22ld26pAu/qMajddPRvFGAOS4IwU6tm4pTq40t8b80lwZV5iISOamyNdPOSVdOwxNhLeWFe
UHzBPpXavx+kbsLauLJf9YvbgOEVo96404zAOR5yMPVrxnAYt0nvtKtM6AYwt50hUM5McPl/SK2e
CWsJGYUAMT3Nb/FBRj1B7Ms2yLvXhxzun+lQJsD8633Deq7e5pslTLbIY0ir4AqQCoMuSX/yxoJO
GnmcsAt90YNzfcyPYgYvEHwEDyPTQr/ewBs8zqL+0bQskMshiZurSpLFOGI+AKh9/jgC7bdeete6
vfDvQQPgdasYY9I6DobhWMSRDgpcoL9zvs9p++P9zhX0Z8yruwmP5MK2Jp3VQ++xIZXyzGzMXRww
fIIzd3rIGpW9Rae6NZy7AilIpXohnXvgt9lOCgGoJwmvez+GW21H7gsIGP1I9+z4N8lDhLihDt4G
U7+heRCTFB6dC7pdNKe7ALZvGYV+l8DtVdM4ZaNQDWxggAiupnT6dQPequwxmwIih4MBMvVZh7v/
syQ8W696Tf1N/LSeDVlCdKOCn+zTu7nRFd4fT9t2B/hMrvJQvhpUZF3v455NhHkqv71R1ujPK/hq
a0XQW/0h1/W8UV9m8baJLjuO5Ncbg5Fk9Y8dJTAPfYP65VLVgwhfzQyokTIaw80Hx6isQEYhT+iz
bGZuA7HFrNTcbAxjtKsyLxfKcvFfSjHCFl2IYz082JVqIRei8clb4+RePlbAoxP9eREuVtz2VCE0
q+1UPUiXn5N2+ZOUkD1Ob44MAQzaAXNKiuorDYG5c8z1bUXcB6abx57CSqmAaenT4OdN6VMVWap5
CbJea5ERvYbGniL3cWjocDltF7bJyiEAWCyaa4l54BObYv30PFsNsIwjucrG3G9/ZXgZp0LzsA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CE13BC1FBA5D30"
last-modified: Thu, 12 Nov 2026 00:49:44 GMT
content-md5: E7p5oniBNp4e2psjJuU/5w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 02f25e78-e7b8-4c8a-88fd-c1291b3c9212
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-f2413ddc-9389-69de-efe5-14e996f86712/test-blob-296660de-10a5-3a56-7cbd-1a05106038d1?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 63bdb2a7-48de-39a8-3a27-6c0cb77f5f15
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CE13BC1FBA5D30"
last-modified: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-lease-id: 63bdb2a7-48de-39a8-3a27-6c0cb77f5f15
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 294ea7e4-1241-4bee-9190-9cf66160f05e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-f2413ddc-9389-69de-efe5-14e996f86712/test-blob-296660de-10a5-3a56-7cbd-1a05106038d1?comp=block&blockid=dGVzdC1ibG9jay00NzNiNDQ3MS1jOWRiLTJlMGEtM2EyMy05NmE2NWQ0Y2ViZWM%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-f2413ddc-9389-69de-efe5-14e996f86712/test-blob-125e903f-7764-fc52-4cbe-0e5c0f6af333?sv=2027-03-07&se=2026-11-12T01%3A49%3A44Z&sr=b&sp=r&sig=MmzpMCq9sBX7GQHlUkrGWxb470d0v0jUcBHiKAfZUrE%3D
x-ms-lease-id: 63bdb2a7-48de-39a8-3a27-6c0cb77f5f15
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: E7p5oniBNp4e2psjJuU/5w==
x-ms-content-crc64: 2+C4h8F7UiI=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9ef9183-6751-43f5-995e-058a34ec80e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: DELETE /devstoreaccount1/test-container-f2413ddc-9389-69de-efe5-14e996f86712?restype=container

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
x-ms-request-id: 9d8b0cd7-8dc6-4115-b557-28782f4e5bee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

