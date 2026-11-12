## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-1c9dade1-f5fc-66d2-39ee-dbe51ce8751b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).GetPropertiesAsync_AccessConditions
now: 2026-11-12T00:46:52.3957387+00:00

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
etag: "0x1F7F979A4A61C60"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79220b30-2b09-4e9e-9719-ba0a52859680
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-1c9dade1-f5fc-66d2-39ee-dbe51ce8751b/test-blob-4f394095-1410-8e06-93a0-5e74125363e1

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
oSahD3KxF25PCtwDaYEUY+yDwYytx1vMpw6JW5ddU+aK+UT2Rmap4yjL/wU4AyURi/uIj5HXNNnK
1WdjKLvX8bf1eG89HhyG2t5j4cdWlKTpd8+c1cRVssVqLHH/Rrpt9A5NQoq1023eAbSzdFISc0DC
ebHrOhzyoMWq0/Kqh5Qj9e25CFEaM6NivdMPoj5yWLgwPMwJgbnyW6LECwB7M3ogj35kWGvvqEYN
iX1I4v6GN3s5ekrIGnQ0x62uVSii5olY7xLADf9NQZOF/Pc8qXikPdSFQrkvWHUJMJG9QFMeaqPz
7/Prxil76zi3Qh189x01ChdTHaTPKZadtt1tkAFAZ5FUSLmEuHerCVaBeBZXjThziDU7yk3/I8Zd
Tg9LDls3d9qMKK9ksVGgqBNNTrCARSmk+gfLBJ1EVSXzJ2pnX/v6SgA8y2WJD9fkmyI5sdUV3Qjm
phRTa3M9R9KKcInnOEkYUwOwQ3rDG+ow52h7CqNP3kligLjnpt6N/4OS/55N/GLYIV7RZZmNIosp
I4QKwT0vOpJAhLeQMawlIkT3MRxL4+oGoulFfniw1F4tvYNagz1FYsQMDHerR/CxrEJUlfFu3T+Z
BB9T6rwZj7BZY3Mpyp8Hsc5XP9ZyW1r4k9E1Wz9svt9EwX8d8XgI8n3HUeN9h+KjTeMjF55oJqnE
Wlbq4zRx7KWT5Qgf6b9VTkxZqgl2ewvvkg5bSaZB25rWWZYiHg9JVmQ+6aLZg2MjzchSD3yfTt9K
+1ElFaL/UgpuSZApMzA8EFSkOJJpFQ6qN3zd7sweNgu31yO9I0DBP5eYajrT+pmYFf4o+hVM4eVD
e94mIWM9UBOEcVwNfuwT4vn70avU1jzjRdjN9jv1a/Y+eqdimx0zWhonTok8ipYRFBccUQ85bqSi
QtuLcFrXjwVmzwNFsUfbyHaQrYeyprpBu+Ek2RrmBAwCv1hCp+rAUL+E1ruSzGLQQYmZqcEd75wh
SbR4srbrf8v3QvHumSCM0F3HLs//ru5+U5iRTVpK5dC8IV41R50JmFbwm4px4adoDNhkVcDMIprG
+V8dWjJwrVwgMnjCV4m/vpV4DhNkDXLwKECC5ZAQ7/7Db00+6z4kgO0tUK4vprVPpJcqUxOHYevs
LTLy7cfMEEN5/ug7gdJXVI4mNr3DwIGKM0D55ZvrPA1hUb0MMZIlYT9rtqjNEyLE0/+FYCsuKW2w
Z7qH0yuojcLa2jAUSyP7ANV+WAnZvR8eNBKcZtviMyhQW8rYno0Uwynm8jnyr4fciWBVsNBk16qa
aJ4ZCyfm96YIxO9YI2JIaZXf88rmLIWKwNx7jIJX7IQfPTXu+rcC//qS6eqXg2X9DUY7hOTftA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22A82A34DAAEBC0"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
content-md5: PF6dmrcepTFpGJRdM6AhhA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 913311cf-8e07-474a-9b14-8a9d5dc6c094
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: HEAD /devstoreaccount1/test-container-1c9dade1-f5fc-66d2-39ee-dbe51ce8751b/test-blob-4f394095-1410-8e06-93a0-5e74125363e1

### Request headers recorded for playback:

```
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
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x22A82A34DAAEBC0"
content-md5: PF6dmrcepTFpGJRdM6AhhA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c8f8cac7-1691-49ac-92bb-c2b2094fa649
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-1c9dade1-f5fc-66d2-39ee-dbe51ce8751b?restype=container

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
x-ms-request-id: dcce5815-ca23-411c-84cc-3c6f49fe59e1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-4b8e193c-6b4a-246b-b1d8-6b39e62c596e?restype=container

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
etag: "0x25C75A736916380"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d7cec7e8-7c9d-4742-9e11-4cefc0bc514b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-4b8e193c-6b4a-246b-b1d8-6b39e62c596e/test-blob-cff3dddd-4253-f29a-3c77-7d7f3c1b67a0

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
QIn41Wxrt5SPbjgSLEp/0bPXXabwEGD6fpwO0+3r6JVwy/hdNIQCcSZfP+UKiMXy+KzMZL7Bry8o
/lbQXeSmpIaioWFRIp0u1eyAkdB67/bWG9pBH4PXrxvJNDUuMhRBuJtfZ+ZkodYPnY/RQB1erg5f
+kEJZYUCy/FFiO1nAKLXPtk1G4cQcXoEMYL0BW/9aoYmzzfSOFIVXZz0Hxnop5zs+QJEKJKHT4jH
BDQCDsWCRx1nQTFqBQaHH77rG1JgHIrlBwtsuUHzn3+vCjMeE0/Wcdf7gGZrgfT7vQnUmzQ2Z+ip
HQa6FY7cdKGxu/rTaAxuFKl6ZJsjeoUXcfs4HgNLeKNKdPVIHFxJHwvEucb6KFT8ZYaKuwJMhqOA
o6SSo1aeZUJWiPQWJvhNMUSQX8C/HUinO7h8wb2h/u5SyHi3t3u1JlODo59g5T+NPYq9vCbiwIZb
62ieIaSFtYoFw11/lnrJ2zlsPHmpRlZ47oMz40HHcAjyW8wTFgSu/e0UWiHiDqcP9OHtdoMMsqQR
JTIhUtFJPlNVjDqutcQ0vT+LlOw0luDcI+9g2vqE5qknAfHSjaocyxzOjIFsYT8duLhEgB243Y9R
RC/i6GRZ0aaRhrPTYi+Ub8jPZglfb8GvQyFBP2WLbyRhgEl7OeK4dLva29uLSVaIsBFU6HeG8tVt
MqVCF5FBBRaPceHmGDXmF/FNhJPmI/nKuY5UNoes2o50DgY9dVwpmdbE/Nh1oZfbbtCGOG1Bhg+s
eF4D7M6P4pZScgovqaKUI+u9IicgVRf2eci2JqIhMof3kP3+JqwINBpBIi6Nq8Uu8RWBg2PoiyJG
DHMG2bv0MUCDNxillv0/te4M3zLpac0CiDWNoK4jDwTatxo4AVtfTPHuCnOsiVsXQs5126zvXaKm
A1GGZ5CRXygTyt7iBrOTrZJB+l9ZVf/ZdV7frTNY6ll4kf4J2ORgXapLmL58NTsb4i4ZrmNCTa1S
rPIysbH0u9+FanS0idSu4Jy0Db1AXEAixMsFPzz2NURRtyvyLaz4Vt3e98rGZ1laa83GjT/wEVCy
EOzm73ujjzUwY9Gou7LwvLffYWR1W11xqtRuL6cFYabbQB2/EmZhO2iVlgOIsa8b1dGIEK/rPbSP
dUSnNV+NKgIqzXuVMalQfSb838VZ6fkkU1nVfFD28ANoL5wiugUJB2sBXeQzhqMnOJOI713vNYxL
guIFuK6xNNx4LAENLcMh89dZV4sU8M22rUS8bQGlefoQ1jcjA0+9UCkHu1miGgrQZ/uFld4ANpEV
Twpp9Mbb0rIH/FeL/e+HmwdhDDVzFJI67AYFIOMcD5+mDrNFVFtjK+inmh2yRWoL/frWnipcoQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x255CF70184A5B00"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
content-md5: tdSI7yStUHCr+6waxX4YvQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ba74429-ecb6-48d5-8132-2eb479977e87
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: HEAD /devstoreaccount1/test-container-4b8e193c-6b4a-246b-b1d8-6b39e62c596e/test-blob-cff3dddd-4253-f29a-3c77-7d7f3c1b67a0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:46:52 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x255CF70184A5B00"
content-md5: tdSI7yStUHCr+6waxX4YvQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 38b5259f-f27a-4714-b386-b80507001fb3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-4b8e193c-6b4a-246b-b1d8-6b39e62c596e?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
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
x-ms-request-id: c6db51a3-708e-4f94-bf21-64a06ede4c79
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-082e773b-d6bf-cfb2-ebed-b7e4ef3b4247?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2259D3BA3F96620"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3c21e8e2-b61c-41ae-b35e-62f0ec506e95
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-082e773b-d6bf-cfb2-ebed-b7e4ef3b4247/test-blob-4ce1feac-79cb-8774-a79c-f922e9457075

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Smx4zSVSo1U22K4w+2B7z7qyKaBJD9bBAqZgI9yP5aZ8QpqCw3UiWVuLFvPLRIxHISlnNhvQLDqW
t8p+8n94pvIIs7jF+AxFkNBFvfni9r4aGQKzJ66KrBVg7Ayqo2fbE28AwpDUgigdIqZLim9Bs8AL
ZNl9xX5EfQejZQwAmuxpaqqJ4TMtRpfZlgUHPyGmHjhLnj+OXU3xvEWJMBwcHIe64iDEuNKN3h5B
oy94PD7l/EbTtfut2gxclyTtpBV6vXl9TV0A4WZmvcAgTLkeeIAGozTWSGeMDAcUaCCtnzkJx+a1
+u7h5Brfbfc6jI5SPR+j5wDgo3QR8UFW7HlGuB2HF4TTaH2SJb4Z9tpwUYB4wSoACbg5KCRxpAms
ivihmbTZs3QJf9WhEcFBx6yZoaDB3SpORa9kTu9gYcR05ZrGd10llp0Lb0JVX/j392F32ANo663O
U1MFdGWFqR0RLSsme09OcwoDtm3n+ea3bVaN6InADPrs9yQKICE3hcUlQzHM0XsSKGT4ZTVA5lls
TgcO+MCTUCExOYMqRFPpyzCnwrW06pzbe8AlyKbErBHKndEaKI0FkfMQm5f35+MQD5kEmCSkuGRr
M3wAbod6bYxyYKeBzqOjojDCpE8E5JTcFLkNvxTsJuVtr/UQBSJrli0LhIY8j0D2Yfbz4hMUZk/o
JFrNbK14hTrCFB+tk50OVg4h+V8Nn4R5F14e+UPRWEimKOHHnSmAkv9MeXsgSM1Z5YwF823v2oTV
VFVPWoz28bvXB2q8RrjloWZgwSUJWc6QxRS3zGXbtk5c8UnTMThyVYi/SEFinZ7TIFEGjxhezPuG
vpR4PiVV/FAcX1RuEXAu7WudSRCNLSh15KwU1Cc1/SVOTXKj+hdjakvxRj1JZA7h2KGswYLq+ZBs
Alp5QCgo5mEvIMT9ivNUOd7FnOfqK3+dM/uGiTyiZFTiNve86ikjyF/bGkRK406tWIijJFyogtfb
2w0soV0ljLtvG1P7l061odOHDhA6Uk+t2DC0/j/3ObQg4Q4b9yYCto2I2sj6ssE57oOIIXPGoYi+
fskscY18eOKf27U/maqthVeCsXiHsyZvehC8bhhAWUCGXXld1UUADGLmWtYL+VXZ25scQ+8QN8qi
vfZ9vwnJX4J1uTswT7ASgqUWoVhQZIG745N9JBVRdiauuxhOg0xYHPtUlj8ZqIvqCcFK+ZZxUVl0
wdx2TDtsI0MVgpSYw/9YvYRd/M1BojoHkhpUB3yPPGm+2sFv4s/A6HL8Ayb3UUXB8TwRFFWLMx+i
brogFxzHhkUr2ek+6Nu1nRNbRZ4UEEHVkhU/figTM6ehzXQVn9BVNX3gy3dbgwhhW3dCL+2AjQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F111FA761CC6B0"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
content-md5: nadxEDQvcwXSpY5MGRhfKA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fa55e13c-f637-413a-b36e-0f6e6eb77778
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: HEAD /devstoreaccount1/test-container-082e773b-d6bf-cfb2-ebed-b7e4ef3b4247/test-blob-4ce1feac-79cb-8774-a79c-f922e9457075

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:46:52 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1F111FA761CC6B0"
content-md5: nadxEDQvcwXSpY5MGRhfKA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8ce922a6-dc9a-490c-8f7f-57c9a0a5b892
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-082e773b-d6bf-cfb2-ebed-b7e4ef3b4247?restype=container

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
x-ms-request-id: 86b91130-b3f6-48a2-8c72-4d015a7a9f25
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-854b785d-8707-1d07-17a6-429c1b67a0fd?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F8604B268DDBF0"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d653798-41b1-422f-8c08-eade15a98e04
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-854b785d-8707-1d07-17a6-429c1b67a0fd/test-blob-21100543-4433-79c9-0e0c-de22b0d103b9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
IEAWnFRLTa11w7TRGeft+bt5/indX1kZr9F2+6jlbEaiiHzaUASp97dirHCQ918nHuRnN9La3MHm
/O2C1VIEkFZtL5BqEqi30AZxerLoiLdxTtzEfTVzyKy69FQWJiJkXRwaIsjPvQs7sGbLaGEO/XM1
EYd2QBIh+WfjsB5UoKrkDByWzmbvopHQiM3Op19KrPbg4RSb7h0J+Shg6wzt5g+851tFdy8NRm/1
pbhEUlIHmAMndL6VSB7/jdU9jraE46G9EsAEBTTH0pulpUhkxKbWWVIJxXJRJp88RepZz7e4ccIX
h0CRApLOX6Ij8KLVmsguZzVjeh4vbOsgyMBKbQLj7TSGTT1lRFa/OmXPLTb8ZqohKmiCVPaj5xpV
cTrShPGfQANuT02LySLeo0C4Xz61JGEVKEKZYJg94mUiENMb7bZzL+0zjRddlmFGo7C264fcn0zZ
vFuuBt9qMWznaLhOwraKRC9RgpZKuJHhUr3nh/fdRnCHQjBaxCkNyFyrdS2p+OD6K6ZYih21jwTJ
zbMigqp0CSJHx4CGMH8GRLk6nkNkOFrc7VtRhbxT0bMskPd260WyNmsLYTBgc/smUkVje/DBZZVY
RZVOI4Rm9PbMWp+Ij1h0iGjXWNYpfHlgKjN271XDaiphHqawYxLnpWw6lBlbnsLt7/OH6Q2+Lsgb
7flQ7wWgCO90JnGywyRW8LNp7+hgBYtxif9iPIEdo+/dlXUZlrVnmosq5ndROizOMflZVD/guuht
32YFPcxtV4OB1C6uPVn+AlRcNh4UH07TlAqIxE6w/NqNq7dOYly/vI/0z2b9H/SfW1LqhITKWb8Y
MqnB5ZI10NhUIZGhr5/4nHmPH0/o1nQW6Gn7xndVw1H4NjCz/tf8vv+NqP5i/quz8ecKOjlvMFs0
qvwpOQlg/l5AqXlvRZ6ikmBQWi12tOq9SNWQS4gXiAXUflPa04T1LaqfIlQyQ6xIZ6jYHtUuvvYS
bPE00LPVKCBzm8dLyL/bWiyC1pGViwQoR+PfP2kvpb9cyGaTwF33yvo0vqjk/Z/o/MSoq+hlfODs
C4nP9ei2Q/UH7v9YSJrPiwyXYMxcRElE90KlhvnX90uFprTUJ9QRfnqy3A6fkLQp2R/bzRsUkMc/
i/6mELz7MPez0qHl+2M4heJRqmc7pGaOe63a+ykwcRbslJzVam2+tqwX7L0SRN28o0c5wuZgBOaY
GJQOITXNg2CL+GfGYhp0k/O6I7ipezfQHVfh968wi5C1PVLZr5V3Smhch0x29UAsxC7ypuAu7pxd
PgPd64yxWmzWESXIm+RdQ9lPTPTrWSgWtDOBPeWvh061e3CRmV7cqyzfn+QbZChJlWIG36Gocg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D69D05A0062F20"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
content-md5: 2QTKg2hKLAdaNE3P/NT9tA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7077d927-94dc-4ffb-8e8b-a3cbf827da00
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-854b785d-8707-1d07-17a6-429c1b67a0fd/test-blob-21100543-4433-79c9-0e0c-de22b0d103b9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_15
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1D69D05A0062F20"
content-md5: 2QTKg2hKLAdaNE3P/NT9tA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6903707a-7452-4dc1-9b69-a8da3a503b6d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: HEAD /devstoreaccount1/test-container-854b785d-8707-1d07-17a6-429c1b67a0fd/test-blob-21100543-4433-79c9-0e0c-de22b0d103b9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x1D69D05A0062F20"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1D69D05A0062F20"
content-md5: 2QTKg2hKLAdaNE3P/NT9tA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5aa5a9ac-4f5d-41a3-adcc-457c762ce19c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-854b785d-8707-1d07-17a6-429c1b67a0fd?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: 7967deb4-30e8-4bb4-bf53-0839a0a0e5e0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-36c6dae4-2f59-871d-268a-d7131f73cba9?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CFA5346CE13540"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eb659609-e3b8-45f4-8dd0-af3c9f00cbaa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-36c6dae4-2f59-871d-268a-d7131f73cba9/test-blob-c8a1737a-ba0b-fb44-500a-37a882a8a7ac

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
DQmMttMognsPWHlaQ1AI1sm5jGsA32YqlsrlTvd0BH3iKgYW5xXWUvAluLNA6rf/AmHfyRw7rC2j
YSAIQjODmlP7dxhK8u604zl72iaz6asT5UyWlTthpn7Ycob0zQ+9oh5fRXOftQ9zKuXjwNIG8Hd0
9Vzm7QUYmtCacX9nvxUpvjcIU6Q4czA9ImpVfeas0oIOf9iz1rQZRquiBUOPC2vQuQKa/ZzTPIEs
qcuawhzq7Z/9WD88dueD7wz5lm7trRb/hcTjEtTlO0NXhyzpfoOOtxejkrIrk0IaFg2P2qUSPvy0
mz1XB9vKFx385e+7mXCIat9XSRtk0/KCyPvGVmGdREgwNeNGNq882XqVLq1SX3ydBm/Gu/ThT8dK
1T7fA8G7X6Gni2SNQjMvG3CgzqREL2l+KU/x1olTTuUc/GBxXNW52s8Mq9MYEMQ8l5+EQIEiBabV
YNlxyYgXUzx/cEXSvr6a5/TVOIOWZhmLtT/pzw5k+fa6m/v8RxBG9VeWmZ9+atjh6lmNTc0iP/nA
5hRJLYQuGnZPGCLCnp/jjkMr/816DEtmCOW01qwpl1wCPGD8/cfTaH4pL1G2Hky5qb+K9z8rRtrI
4iWfeUTKJoDFwGI+55B8WJZPUN35sOqY+y3tn6Ad1vaGMxuhNO86XwnR8F3qesIvDZ+p3PX9zzE6
Bn0W3IbgqOpsuLN02iOnFfHTJ8CMroBqvpEBdPkAiWPqZi5xI4KC8UdzfsIPujN7AcYDKadwrlf9
rB713jTway9PinP1NvJvUTZ4GTC+WwNehXIy/V+8ebjWc3ZjjBITghKSvy+/hsvUk9dw+JQmPlEa
l1jCvW3PkxC7HsJ7DMQkZZcdK5vUnv+nXmqIS4EkrzUlSPW5UcSlwyseBGcIWIcTTJL8CRK1RvhY
Gl8DR0iPlm+NVsPPaxPSeGdwtZmYngbidP/uJ6YibwL8YDZlonzjj233ewHEROF/KZGqRZFfwHxY
INJJoW/IaufB0grcbdbrjSUsoCIEHjAdb/0VdypwnaC6DIGqme7+LxEZA3HWory6v7hrMh9ZVAKh
KzFxs/K9UDRpImBUQPM3LXER6hu+RsxBWrhyBWqBYbh+CG68jXseXLI8bYBbZn7EMwWtR2nn4uRl
MFg6S0rK6MCo1TiFe6D1845ogtlM5fQ5rdFk0xpOlyWJV1wj4xFocoS/s5BGP7hlt1Tbf2AKGEtk
AZ15ZRSmWT0S/CND0g99AA9VjTJj8m4Y/xzFcxjEfj4RvuJz7gxwGFlSNEOUIeVEXX5QtYsYAQ4v
YGb44OUlTX3kMhMsCREC5XTYEL4rhN03gBWZc8iz+L3TRI6meDdzLebFr+/RGFRtTtAWQPBQBA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23AD6495405B360"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
content-md5: VOIXmp9osMnyWOn1WeTOww==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f75de95d-3967-4db4-abe0-808817d4cb16
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: HEAD /devstoreaccount1/test-container-36c6dae4-2f59-871d-268a-d7131f73cba9/test-blob-c8a1737a-ba0b-fb44-500a-37a882a8a7ac

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x23AD6495405B360"
content-md5: VOIXmp9osMnyWOn1WeTOww==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a94ef73-63d5-414a-af0c-d1414f15e1ff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-36c6dae4-2f59-871d-268a-d7131f73cba9?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_21
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
x-ms-request-id: e10d16b8-18ee-45f6-a09e-4eab76e65fd5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-5fc088dc-8bcf-b4d9-3139-5659c5825c6d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E4C42548F2F520"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19bf232c-9a57-4191-810f-90c4607b2a5f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-5fc088dc-8bcf-b4d9-3139-5659c5825c6d/test-blob-d7e2653c-d465-66ed-68c1-2b25f89cb8cc

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gkCyHrfXo6ENEH62er6P6vFj2doNeZ4Hm1r3Dl+zvJSAitaF0D61ZcFAylVVNuupMkA0lcLdvgmi
qoJc4JVCWVTpNfDoChqzrXQZzK9IsWRuTdsefyfRo8vM4iW7WYQr/nABbAH7wSgmgOdOxPFaWfge
7ZO5I9osGJIkGyf0+FTw7c4+R0Vic4yz+P4/g9/ZcoktnGvxcduW1FNu1qUBMYiSXdYjHBKzu3oH
Birb7JSzS6mex1zp/3zyp3Lx9J3mssZ2rCUJtVZ2euDw6muwu+e/u4v8Y2krqV5ZMHSfwcfdIFRj
ZD9uqpVTJ017+BQQQuyKMjgR6U9dSgPHr4Xh1rgYE8kWTFanUBH1qTscsLFJSe6HFY6PyzYFBhk8
p/oQcVCUY+RL+fWW4+ImHEATQZpRfWaWWsEqiUeSEUU8a6kW5Tjrh03M/k/48TKsaK/28cV/6iqU
eRaOatmduOiwWXc4EDcHKLpNhX4WnmmPfSGYnCCAvYB+gmshXBxzL0ZnSJe6c1h47skLMWWrfdut
/+y4BBzIMJz3uY7L5syd2lY3r1bR1QrIIK1WdIsb0wSQdFwvuisqnxj6wrnKrAj9bVcOc82E2yni
7+NucbsR3OaJOnFvbh8rDRA+1hNQ/nOkWQYzDF82DJgzTMpHuy1c6eXSQHKWjv8442a9RgQWkvFv
yRi03dCHUy7ZOyFU41Hj4e0tfb4BDsoH+yj4ecWTHLnZ2PEVqAsVS+1EvVLd4wAU2WUX6RUybrtN
reKnjtloRR9newpgzTjhFzLRvFF4KRco5J9ffDKkpmo2x/spbrwT23czdWj1tAstNtLjYbJq1YPK
f6o5Ccnsw9SgKQY9uKl1veDZRbOvMi+TMkZgwUW4zPJ3Xu4S2tKuRrKTVYoF730pbaTRkJDPG016
pdaDjAKP6F0UxVm6YuINK/4BG9yljkLIN1Og5jxhqEKhlzT7K7qwBGwt8SokbgrBw2WRzv9w1ReU
ulSu7gEgsh0WGcuuEf9EUBZvd50XpMhI3iLX0NlCMMIcZ3BlARZqDD4NDVU/E7FlTX7pAF56fBaM
ZhDfSeJD0+gIkaqP3k4ABGpeCpZzCMtwcYJbWS9kouta2ZsGi8NbyTlsNoIH1W4v6Pv0G3F/GF1E
btdf6Hq5pO++NQSz+nmmAkBdB9FJaZwTLHE0b4Z52sE+wR3r/OG/s5KSSKBpfO2CTRkxIhCL+wU7
S7wIhDVoRVpDdDlcuwZenVQ/tiD7qrCDsSJsR7iws8UYr7Alti5dKQNFJge0JpES0oS8S0XkQKEM
hdMS/P2ik8F0QwxWOecm4owdtYOoz4uRWnUz82d/M24OGTFaSi0Fo5NGP+KEvJidlmm5x4oeYw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21383E0C45F9F00"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
content-md5: bIUHJJxzTAm4OvT1Ggnc7A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 99055559-36a8-4c1a-ab25-9109161e5cb0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-5fc088dc-8bcf-b4d9-3139-5659c5825c6d/test-blob-d7e2653c-d465-66ed-68c1-2b25f89cb8cc?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: a18147b6-6e88-599f-f510-9d4720b6cb97
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21383E0C45F9F00"
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-lease-id: a18147b6-6e88-599f-f510-9d4720b6cb97
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a15a4ab2-6c25-4ed8-a2ec-854f949dcf30
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: HEAD /devstoreaccount1/test-container-5fc088dc-8bcf-b4d9-3139-5659c5825c6d/test-blob-d7e2653c-d465-66ed-68c1-2b25f89cb8cc

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: a18147b6-6e88-599f-f510-9d4720b6cb97
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-duration: infinite
x-ms-lease-state: leased
x-ms-lease-status: locked
content-length: 1024
content-type: application/octet-stream
etag: "0x21383E0C45F9F00"
content-md5: bIUHJJxzTAm4OvT1Ggnc7A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3e840aa7-fa4f-4f0b-9d28-2fceedb14995
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-5fc088dc-8bcf-b4d9-3139-5659c5825c6d?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: 3833b570-32a8-455d-9bcf-40d57946d5cc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

