## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_StartFromEndBefore
now: 2026-11-12T00:45:05.6377202+00:00

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
etag: "0x1E73A1AD0B5C9C0"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 42fd385f-59df-4b69-9d48-9d36d44f3f81
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:05 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9/foo

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
u3/IB8CZYrI1ioK05/Bt7YhUl5mECm5fkLB5TWNVH7vRTlyUButI8y07VV7rTJWvO3KBKwGVdbER
aHYPHxRO4GrG4pmU2eecC6RrSbQPdEQbyhHx0/S6PNiqgp11OdMY7XXzJGn7GmKK5R9dKSz8AfQy
81UDXQx2C6bA6VZKJ9LQU1w+HE/bIK+vZu7UXRKsrYCpQ0V+FY9pfBjCOjALQL5MjNbQvuWkV9Ol
U/Ydoq6TFDzVoOONUj3M1Z82GOV/pCUvh9E83O+bBexy2MKZS9pqLyb0NZ/avzqYBOhFbT7uJq7Q
7RrdVjhMOpv3G3l7MorFzOm+im+GVceWpNcHVpetg7ITyF2/jdjuqPoD4qTAHdFdf6BVL5s/SphS
RrJgROQESpfGaGotBT4R0OF0gnIj1ocGqtb2V1QW037EbUYljWMW/5gN+bRnL3phRF66y8clL3Ar
WpoNDfJDr5TraZj460J9XYLaFdzSnnpclBP1XAe2nj7W+jPJCPKlykofe8biaVgcPG5ESxmTWLsf
sXjfTlONNcpaIfEPtFSQNUuSsiK0eSq62SCZcVMkQqF3qlZ5xXz2kkb8iEhnDIgZtBXOAaaYazhN
JHUy88N2Nd5Plwn9Fm/Pmx/ct/HiU8yYf709VUD73z8eLKEGxJ+DhVJqGHR+G52m/2aGvLNGa9Co
mnMGOeCdU7jK3urNyNeAWTKfeDtXGWQfl1badSKM2MHQXiorfExyzMS8tDyz2DaPBWOAp/KVUIAP
5qKJwt6VPgYo/WqtVdzmLat2m2UnbL4fS2+/CzDOOg2pG5aq6AnmJnY2itrM4bCGmnpHHrUa6Hrj
andu1jLVWsJcAzlGO0WhkHXv8eHjUmm/OHC2hxxYjzMbxn2Sd09DYDAYcN52QF41pY5AK/eY/xcN
rp3CHtKmBHMGKnXHDxglq5Cxy+KKSfgRgeGNF2M8g8dmhMiygEFdcWtqbxXpbZV1G39m5zQ0g2Wl
sZ3wGOwQyqatYItPcitPU1l2H9niJxNMGPzk1ZyTMQFjDc+kbFl+WqRvPA0KJahUF5PavmOLwomJ
pADwLPUKGi+K7GVbq+cA98U0c+sGQvJTj74JuHOd10pFGsdZji6vZCHdgDlD+Gyr2sadVk6eg2IN
nZw2AWK87BQaFpAfp2mWhQ7KKMG5EJZSXd6s/4D7p5dlTPCSeGO/IZMkKeLbjDJdB9E/1FqgU40F
5KSEEOyUHm/5ult4BAyrCwculea0dtGrT/iuu9I9xPhjjJS+OhGnjwpz4tHX5ALFk8lScr6mUW3S
2MDz5WKcu/ZiFHh47dD2hgXcQJT/02r26SgJ6lE6vTsm62JQs6qo1ybbdc+KTab5XOu4yRDZ0w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25B6B9F30C2D740"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: j/hCOX7Tx1qpktSI+1QjNQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 58938a49-1cd3-4490-b4af-cacdc640555e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9/bar

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
u3/IB8CZYrI1ioK05/Bt7YhUl5mECm5fkLB5TWNVH7vRTlyUButI8y07VV7rTJWvO3KBKwGVdbER
aHYPHxRO4GrG4pmU2eecC6RrSbQPdEQbyhHx0/S6PNiqgp11OdMY7XXzJGn7GmKK5R9dKSz8AfQy
81UDXQx2C6bA6VZKJ9LQU1w+HE/bIK+vZu7UXRKsrYCpQ0V+FY9pfBjCOjALQL5MjNbQvuWkV9Ol
U/Ydoq6TFDzVoOONUj3M1Z82GOV/pCUvh9E83O+bBexy2MKZS9pqLyb0NZ/avzqYBOhFbT7uJq7Q
7RrdVjhMOpv3G3l7MorFzOm+im+GVceWpNcHVpetg7ITyF2/jdjuqPoD4qTAHdFdf6BVL5s/SphS
RrJgROQESpfGaGotBT4R0OF0gnIj1ocGqtb2V1QW037EbUYljWMW/5gN+bRnL3phRF66y8clL3Ar
WpoNDfJDr5TraZj460J9XYLaFdzSnnpclBP1XAe2nj7W+jPJCPKlykofe8biaVgcPG5ESxmTWLsf
sXjfTlONNcpaIfEPtFSQNUuSsiK0eSq62SCZcVMkQqF3qlZ5xXz2kkb8iEhnDIgZtBXOAaaYazhN
JHUy88N2Nd5Plwn9Fm/Pmx/ct/HiU8yYf709VUD73z8eLKEGxJ+DhVJqGHR+G52m/2aGvLNGa9Co
mnMGOeCdU7jK3urNyNeAWTKfeDtXGWQfl1badSKM2MHQXiorfExyzMS8tDyz2DaPBWOAp/KVUIAP
5qKJwt6VPgYo/WqtVdzmLat2m2UnbL4fS2+/CzDOOg2pG5aq6AnmJnY2itrM4bCGmnpHHrUa6Hrj
andu1jLVWsJcAzlGO0WhkHXv8eHjUmm/OHC2hxxYjzMbxn2Sd09DYDAYcN52QF41pY5AK/eY/xcN
rp3CHtKmBHMGKnXHDxglq5Cxy+KKSfgRgeGNF2M8g8dmhMiygEFdcWtqbxXpbZV1G39m5zQ0g2Wl
sZ3wGOwQyqatYItPcitPU1l2H9niJxNMGPzk1ZyTMQFjDc+kbFl+WqRvPA0KJahUF5PavmOLwomJ
pADwLPUKGi+K7GVbq+cA98U0c+sGQvJTj74JuHOd10pFGsdZji6vZCHdgDlD+Gyr2sadVk6eg2IN
nZw2AWK87BQaFpAfp2mWhQ7KKMG5EJZSXd6s/4D7p5dlTPCSeGO/IZMkKeLbjDJdB9E/1FqgU40F
5KSEEOyUHm/5ult4BAyrCwculea0dtGrT/iuu9I9xPhjjJS+OhGnjwpz4tHX5ALFk8lScr6mUW3S
2MDz5WKcu/ZiFHh47dD2hgXcQJT/02r26SgJ6lE6vTsm62JQs6qo1ybbdc+KTab5XOu4yRDZ0w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2045AE26E295420"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: j/hCOX7Tx1qpktSI+1QjNQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1e0aaad9-168d-49dd-8899-e3839f63d673
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9/baz

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
u3/IB8CZYrI1ioK05/Bt7YhUl5mECm5fkLB5TWNVH7vRTlyUButI8y07VV7rTJWvO3KBKwGVdbER
aHYPHxRO4GrG4pmU2eecC6RrSbQPdEQbyhHx0/S6PNiqgp11OdMY7XXzJGn7GmKK5R9dKSz8AfQy
81UDXQx2C6bA6VZKJ9LQU1w+HE/bIK+vZu7UXRKsrYCpQ0V+FY9pfBjCOjALQL5MjNbQvuWkV9Ol
U/Ydoq6TFDzVoOONUj3M1Z82GOV/pCUvh9E83O+bBexy2MKZS9pqLyb0NZ/avzqYBOhFbT7uJq7Q
7RrdVjhMOpv3G3l7MorFzOm+im+GVceWpNcHVpetg7ITyF2/jdjuqPoD4qTAHdFdf6BVL5s/SphS
RrJgROQESpfGaGotBT4R0OF0gnIj1ocGqtb2V1QW037EbUYljWMW/5gN+bRnL3phRF66y8clL3Ar
WpoNDfJDr5TraZj460J9XYLaFdzSnnpclBP1XAe2nj7W+jPJCPKlykofe8biaVgcPG5ESxmTWLsf
sXjfTlONNcpaIfEPtFSQNUuSsiK0eSq62SCZcVMkQqF3qlZ5xXz2kkb8iEhnDIgZtBXOAaaYazhN
JHUy88N2Nd5Plwn9Fm/Pmx/ct/HiU8yYf709VUD73z8eLKEGxJ+DhVJqGHR+G52m/2aGvLNGa9Co
mnMGOeCdU7jK3urNyNeAWTKfeDtXGWQfl1badSKM2MHQXiorfExyzMS8tDyz2DaPBWOAp/KVUIAP
5qKJwt6VPgYo/WqtVdzmLat2m2UnbL4fS2+/CzDOOg2pG5aq6AnmJnY2itrM4bCGmnpHHrUa6Hrj
andu1jLVWsJcAzlGO0WhkHXv8eHjUmm/OHC2hxxYjzMbxn2Sd09DYDAYcN52QF41pY5AK/eY/xcN
rp3CHtKmBHMGKnXHDxglq5Cxy+KKSfgRgeGNF2M8g8dmhMiygEFdcWtqbxXpbZV1G39m5zQ0g2Wl
sZ3wGOwQyqatYItPcitPU1l2H9niJxNMGPzk1ZyTMQFjDc+kbFl+WqRvPA0KJahUF5PavmOLwomJ
pADwLPUKGi+K7GVbq+cA98U0c+sGQvJTj74JuHOd10pFGsdZji6vZCHdgDlD+Gyr2sadVk6eg2IN
nZw2AWK87BQaFpAfp2mWhQ7KKMG5EJZSXd6s/4D7p5dlTPCSeGO/IZMkKeLbjDJdB9E/1FqgU40F
5KSEEOyUHm/5ult4BAyrCwculea0dtGrT/iuu9I9xPhjjJS+OhGnjwpz4tHX5ALFk8lScr6mUW3S
2MDz5WKcu/ZiFHh47dD2hgXcQJT/02r26SgJ6lE6vTsm62JQs6qo1ybbdc+KTab5XOu4yRDZ0w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2694FD4EDA8D480"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: j/hCOX7Tx1qpktSI+1QjNQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a8fac740-5a46-4b38-8c5e-5ca290b8f0a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9/foo/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
u3/IB8CZYrI1ioK05/Bt7YhUl5mECm5fkLB5TWNVH7vRTlyUButI8y07VV7rTJWvO3KBKwGVdbER
aHYPHxRO4GrG4pmU2eecC6RrSbQPdEQbyhHx0/S6PNiqgp11OdMY7XXzJGn7GmKK5R9dKSz8AfQy
81UDXQx2C6bA6VZKJ9LQU1w+HE/bIK+vZu7UXRKsrYCpQ0V+FY9pfBjCOjALQL5MjNbQvuWkV9Ol
U/Ydoq6TFDzVoOONUj3M1Z82GOV/pCUvh9E83O+bBexy2MKZS9pqLyb0NZ/avzqYBOhFbT7uJq7Q
7RrdVjhMOpv3G3l7MorFzOm+im+GVceWpNcHVpetg7ITyF2/jdjuqPoD4qTAHdFdf6BVL5s/SphS
RrJgROQESpfGaGotBT4R0OF0gnIj1ocGqtb2V1QW037EbUYljWMW/5gN+bRnL3phRF66y8clL3Ar
WpoNDfJDr5TraZj460J9XYLaFdzSnnpclBP1XAe2nj7W+jPJCPKlykofe8biaVgcPG5ESxmTWLsf
sXjfTlONNcpaIfEPtFSQNUuSsiK0eSq62SCZcVMkQqF3qlZ5xXz2kkb8iEhnDIgZtBXOAaaYazhN
JHUy88N2Nd5Plwn9Fm/Pmx/ct/HiU8yYf709VUD73z8eLKEGxJ+DhVJqGHR+G52m/2aGvLNGa9Co
mnMGOeCdU7jK3urNyNeAWTKfeDtXGWQfl1badSKM2MHQXiorfExyzMS8tDyz2DaPBWOAp/KVUIAP
5qKJwt6VPgYo/WqtVdzmLat2m2UnbL4fS2+/CzDOOg2pG5aq6AnmJnY2itrM4bCGmnpHHrUa6Hrj
andu1jLVWsJcAzlGO0WhkHXv8eHjUmm/OHC2hxxYjzMbxn2Sd09DYDAYcN52QF41pY5AK/eY/xcN
rp3CHtKmBHMGKnXHDxglq5Cxy+KKSfgRgeGNF2M8g8dmhMiygEFdcWtqbxXpbZV1G39m5zQ0g2Wl
sZ3wGOwQyqatYItPcitPU1l2H9niJxNMGPzk1ZyTMQFjDc+kbFl+WqRvPA0KJahUF5PavmOLwomJ
pADwLPUKGi+K7GVbq+cA98U0c+sGQvJTj74JuHOd10pFGsdZji6vZCHdgDlD+Gyr2sadVk6eg2IN
nZw2AWK87BQaFpAfp2mWhQ7KKMG5EJZSXd6s/4D7p5dlTPCSeGO/IZMkKeLbjDJdB9E/1FqgU40F
5KSEEOyUHm/5ult4BAyrCwculea0dtGrT/iuu9I9xPhjjJS+OhGnjwpz4tHX5ALFk8lScr6mUW3S
2MDz5WKcu/ZiFHh47dD2hgXcQJT/02r26SgJ6lE6vTsm62JQs6qo1ybbdc+KTab5XOu4yRDZ0w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25AB191CEFA0320"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: j/hCOX7Tx1qpktSI+1QjNQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 16ee097d-19b5-45fa-b213-f3aa511e0d09
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_6
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
u3/IB8CZYrI1ioK05/Bt7YhUl5mECm5fkLB5TWNVH7vRTlyUButI8y07VV7rTJWvO3KBKwGVdbER
aHYPHxRO4GrG4pmU2eecC6RrSbQPdEQbyhHx0/S6PNiqgp11OdMY7XXzJGn7GmKK5R9dKSz8AfQy
81UDXQx2C6bA6VZKJ9LQU1w+HE/bIK+vZu7UXRKsrYCpQ0V+FY9pfBjCOjALQL5MjNbQvuWkV9Ol
U/Ydoq6TFDzVoOONUj3M1Z82GOV/pCUvh9E83O+bBexy2MKZS9pqLyb0NZ/avzqYBOhFbT7uJq7Q
7RrdVjhMOpv3G3l7MorFzOm+im+GVceWpNcHVpetg7ITyF2/jdjuqPoD4qTAHdFdf6BVL5s/SphS
RrJgROQESpfGaGotBT4R0OF0gnIj1ocGqtb2V1QW037EbUYljWMW/5gN+bRnL3phRF66y8clL3Ar
WpoNDfJDr5TraZj460J9XYLaFdzSnnpclBP1XAe2nj7W+jPJCPKlykofe8biaVgcPG5ESxmTWLsf
sXjfTlONNcpaIfEPtFSQNUuSsiK0eSq62SCZcVMkQqF3qlZ5xXz2kkb8iEhnDIgZtBXOAaaYazhN
JHUy88N2Nd5Plwn9Fm/Pmx/ct/HiU8yYf709VUD73z8eLKEGxJ+DhVJqGHR+G52m/2aGvLNGa9Co
mnMGOeCdU7jK3urNyNeAWTKfeDtXGWQfl1badSKM2MHQXiorfExyzMS8tDyz2DaPBWOAp/KVUIAP
5qKJwt6VPgYo/WqtVdzmLat2m2UnbL4fS2+/CzDOOg2pG5aq6AnmJnY2itrM4bCGmnpHHrUa6Hrj
andu1jLVWsJcAzlGO0WhkHXv8eHjUmm/OHC2hxxYjzMbxn2Sd09DYDAYcN52QF41pY5AK/eY/xcN
rp3CHtKmBHMGKnXHDxglq5Cxy+KKSfgRgeGNF2M8g8dmhMiygEFdcWtqbxXpbZV1G39m5zQ0g2Wl
sZ3wGOwQyqatYItPcitPU1l2H9niJxNMGPzk1ZyTMQFjDc+kbFl+WqRvPA0KJahUF5PavmOLwomJ
pADwLPUKGi+K7GVbq+cA98U0c+sGQvJTj74JuHOd10pFGsdZji6vZCHdgDlD+Gyr2sadVk6eg2IN
nZw2AWK87BQaFpAfp2mWhQ7KKMG5EJZSXd6s/4D7p5dlTPCSeGO/IZMkKeLbjDJdB9E/1FqgU40F
5KSEEOyUHm/5ult4BAyrCwculea0dtGrT/iuu9I9xPhjjJS+OhGnjwpz4tHX5ALFk8lScr6mUW3S
2MDz5WKcu/ZiFHh47dD2hgXcQJT/02r26SgJ6lE6vTsm62JQs6qo1ybbdc+KTab5XOu4yRDZ0w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DD981891152C80"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: j/hCOX7Tx1qpktSI+1QjNQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 031a77ee-01cf-42f5-84fd-ba34891e970f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9/baz/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
u3/IB8CZYrI1ioK05/Bt7YhUl5mECm5fkLB5TWNVH7vRTlyUButI8y07VV7rTJWvO3KBKwGVdbER
aHYPHxRO4GrG4pmU2eecC6RrSbQPdEQbyhHx0/S6PNiqgp11OdMY7XXzJGn7GmKK5R9dKSz8AfQy
81UDXQx2C6bA6VZKJ9LQU1w+HE/bIK+vZu7UXRKsrYCpQ0V+FY9pfBjCOjALQL5MjNbQvuWkV9Ol
U/Ydoq6TFDzVoOONUj3M1Z82GOV/pCUvh9E83O+bBexy2MKZS9pqLyb0NZ/avzqYBOhFbT7uJq7Q
7RrdVjhMOpv3G3l7MorFzOm+im+GVceWpNcHVpetg7ITyF2/jdjuqPoD4qTAHdFdf6BVL5s/SphS
RrJgROQESpfGaGotBT4R0OF0gnIj1ocGqtb2V1QW037EbUYljWMW/5gN+bRnL3phRF66y8clL3Ar
WpoNDfJDr5TraZj460J9XYLaFdzSnnpclBP1XAe2nj7W+jPJCPKlykofe8biaVgcPG5ESxmTWLsf
sXjfTlONNcpaIfEPtFSQNUuSsiK0eSq62SCZcVMkQqF3qlZ5xXz2kkb8iEhnDIgZtBXOAaaYazhN
JHUy88N2Nd5Plwn9Fm/Pmx/ct/HiU8yYf709VUD73z8eLKEGxJ+DhVJqGHR+G52m/2aGvLNGa9Co
mnMGOeCdU7jK3urNyNeAWTKfeDtXGWQfl1badSKM2MHQXiorfExyzMS8tDyz2DaPBWOAp/KVUIAP
5qKJwt6VPgYo/WqtVdzmLat2m2UnbL4fS2+/CzDOOg2pG5aq6AnmJnY2itrM4bCGmnpHHrUa6Hrj
andu1jLVWsJcAzlGO0WhkHXv8eHjUmm/OHC2hxxYjzMbxn2Sd09DYDAYcN52QF41pY5AK/eY/xcN
rp3CHtKmBHMGKnXHDxglq5Cxy+KKSfgRgeGNF2M8g8dmhMiygEFdcWtqbxXpbZV1G39m5zQ0g2Wl
sZ3wGOwQyqatYItPcitPU1l2H9niJxNMGPzk1ZyTMQFjDc+kbFl+WqRvPA0KJahUF5PavmOLwomJ
pADwLPUKGi+K7GVbq+cA98U0c+sGQvJTj74JuHOd10pFGsdZji6vZCHdgDlD+Gyr2sadVk6eg2IN
nZw2AWK87BQaFpAfp2mWhQ7KKMG5EJZSXd6s/4D7p5dlTPCSeGO/IZMkKeLbjDJdB9E/1FqgU40F
5KSEEOyUHm/5ult4BAyrCwculea0dtGrT/iuu9I9xPhjjJS+OhGnjwpz4tHX5ALFk8lScr6mUW3S
2MDz5WKcu/ZiFHh47dD2hgXcQJT/02r26SgJ6lE6vTsm62JQs6qo1ybbdc+KTab5XOu4yRDZ0w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E8785A22CC0090"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: j/hCOX7Tx1qpktSI+1QjNQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4bbd9ae6-fb3a-4d82-9ca7-0217321b7707
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9/baz/foo/bar

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
u3/IB8CZYrI1ioK05/Bt7YhUl5mECm5fkLB5TWNVH7vRTlyUButI8y07VV7rTJWvO3KBKwGVdbER
aHYPHxRO4GrG4pmU2eecC6RrSbQPdEQbyhHx0/S6PNiqgp11OdMY7XXzJGn7GmKK5R9dKSz8AfQy
81UDXQx2C6bA6VZKJ9LQU1w+HE/bIK+vZu7UXRKsrYCpQ0V+FY9pfBjCOjALQL5MjNbQvuWkV9Ol
U/Ydoq6TFDzVoOONUj3M1Z82GOV/pCUvh9E83O+bBexy2MKZS9pqLyb0NZ/avzqYBOhFbT7uJq7Q
7RrdVjhMOpv3G3l7MorFzOm+im+GVceWpNcHVpetg7ITyF2/jdjuqPoD4qTAHdFdf6BVL5s/SphS
RrJgROQESpfGaGotBT4R0OF0gnIj1ocGqtb2V1QW037EbUYljWMW/5gN+bRnL3phRF66y8clL3Ar
WpoNDfJDr5TraZj460J9XYLaFdzSnnpclBP1XAe2nj7W+jPJCPKlykofe8biaVgcPG5ESxmTWLsf
sXjfTlONNcpaIfEPtFSQNUuSsiK0eSq62SCZcVMkQqF3qlZ5xXz2kkb8iEhnDIgZtBXOAaaYazhN
JHUy88N2Nd5Plwn9Fm/Pmx/ct/HiU8yYf709VUD73z8eLKEGxJ+DhVJqGHR+G52m/2aGvLNGa9Co
mnMGOeCdU7jK3urNyNeAWTKfeDtXGWQfl1badSKM2MHQXiorfExyzMS8tDyz2DaPBWOAp/KVUIAP
5qKJwt6VPgYo/WqtVdzmLat2m2UnbL4fS2+/CzDOOg2pG5aq6AnmJnY2itrM4bCGmnpHHrUa6Hrj
andu1jLVWsJcAzlGO0WhkHXv8eHjUmm/OHC2hxxYjzMbxn2Sd09DYDAYcN52QF41pY5AK/eY/xcN
rp3CHtKmBHMGKnXHDxglq5Cxy+KKSfgRgeGNF2M8g8dmhMiygEFdcWtqbxXpbZV1G39m5zQ0g2Wl
sZ3wGOwQyqatYItPcitPU1l2H9niJxNMGPzk1ZyTMQFjDc+kbFl+WqRvPA0KJahUF5PavmOLwomJ
pADwLPUKGi+K7GVbq+cA98U0c+sGQvJTj74JuHOd10pFGsdZji6vZCHdgDlD+Gyr2sadVk6eg2IN
nZw2AWK87BQaFpAfp2mWhQ7KKMG5EJZSXd6s/4D7p5dlTPCSeGO/IZMkKeLbjDJdB9E/1FqgU40F
5KSEEOyUHm/5ult4BAyrCwculea0dtGrT/iuu9I9xPhjjJS+OhGnjwpz4tHX5ALFk8lScr6mUW3S
2MDz5WKcu/ZiFHh47dD2hgXcQJT/02r26SgJ6lE6vTsm62JQs6qo1ybbdc+KTab5XOu4yRDZ0w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2653B53E4D6B0C0"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: j/hCOX7Tx1qpktSI+1QjNQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 143630b3-8a54-4309-a7ed-3232a7d4a762
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9/baz/bar/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
u3/IB8CZYrI1ioK05/Bt7YhUl5mECm5fkLB5TWNVH7vRTlyUButI8y07VV7rTJWvO3KBKwGVdbER
aHYPHxRO4GrG4pmU2eecC6RrSbQPdEQbyhHx0/S6PNiqgp11OdMY7XXzJGn7GmKK5R9dKSz8AfQy
81UDXQx2C6bA6VZKJ9LQU1w+HE/bIK+vZu7UXRKsrYCpQ0V+FY9pfBjCOjALQL5MjNbQvuWkV9Ol
U/Ydoq6TFDzVoOONUj3M1Z82GOV/pCUvh9E83O+bBexy2MKZS9pqLyb0NZ/avzqYBOhFbT7uJq7Q
7RrdVjhMOpv3G3l7MorFzOm+im+GVceWpNcHVpetg7ITyF2/jdjuqPoD4qTAHdFdf6BVL5s/SphS
RrJgROQESpfGaGotBT4R0OF0gnIj1ocGqtb2V1QW037EbUYljWMW/5gN+bRnL3phRF66y8clL3Ar
WpoNDfJDr5TraZj460J9XYLaFdzSnnpclBP1XAe2nj7W+jPJCPKlykofe8biaVgcPG5ESxmTWLsf
sXjfTlONNcpaIfEPtFSQNUuSsiK0eSq62SCZcVMkQqF3qlZ5xXz2kkb8iEhnDIgZtBXOAaaYazhN
JHUy88N2Nd5Plwn9Fm/Pmx/ct/HiU8yYf709VUD73z8eLKEGxJ+DhVJqGHR+G52m/2aGvLNGa9Co
mnMGOeCdU7jK3urNyNeAWTKfeDtXGWQfl1badSKM2MHQXiorfExyzMS8tDyz2DaPBWOAp/KVUIAP
5qKJwt6VPgYo/WqtVdzmLat2m2UnbL4fS2+/CzDOOg2pG5aq6AnmJnY2itrM4bCGmnpHHrUa6Hrj
andu1jLVWsJcAzlGO0WhkHXv8eHjUmm/OHC2hxxYjzMbxn2Sd09DYDAYcN52QF41pY5AK/eY/xcN
rp3CHtKmBHMGKnXHDxglq5Cxy+KKSfgRgeGNF2M8g8dmhMiygEFdcWtqbxXpbZV1G39m5zQ0g2Wl
sZ3wGOwQyqatYItPcitPU1l2H9niJxNMGPzk1ZyTMQFjDc+kbFl+WqRvPA0KJahUF5PavmOLwomJ
pADwLPUKGi+K7GVbq+cA98U0c+sGQvJTj74JuHOd10pFGsdZji6vZCHdgDlD+Gyr2sadVk6eg2IN
nZw2AWK87BQaFpAfp2mWhQ7KKMG5EJZSXd6s/4D7p5dlTPCSeGO/IZMkKeLbjDJdB9E/1FqgU40F
5KSEEOyUHm/5ult4BAyrCwculea0dtGrT/iuu9I9xPhjjJS+OhGnjwpz4tHX5ALFk8lScr6mUW3S
2MDz5WKcu/ZiFHh47dD2hgXcQJT/02r26SgJ6lE6vTsm62JQs6qo1ybbdc+KTab5XOu4yRDZ0w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26845CF44E24880"
last-modified: Thu, 12 Nov 2026 00:45:05 GMT
content-md5: j/hCOX7Tx1qpktSI+1QjNQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bf3c4b29-81b7-414a-b1aa-44d5fbfe15ff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:05 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9/foo/foo?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C1B24CAB2D1D30"
last-modified: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e797286-9904-45ea-b223-4e65d8ef5e39
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9?restype=container&comp=list&delimiter=%2F&startFrom=foo&endBefore=foo%2Ffoo

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
Authorization: SharedKey AUTHORIZATION_11
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
x-ms-request-id: 66939cde-80cf-4738-9f07-93d88d267984
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:05 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:05 GMT</Last-Modified><Etag>0x25B6B9F30C2D740</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>j/hCOX7Tx1qpktSI+1QjNQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:05 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-8bed8f8d-6de9-7d00-9fa9-600980992ef9?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
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
x-ms-request-id: 8c4d1a30-6482-4fc8-adc5-67f77c1da668
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

