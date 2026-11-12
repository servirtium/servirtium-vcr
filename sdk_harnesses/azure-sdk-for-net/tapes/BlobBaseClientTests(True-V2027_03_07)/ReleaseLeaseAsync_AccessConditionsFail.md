## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8ff2722c-0d67-404d-fcf8-848ac632a8b1?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ReleaseLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:48:17.0513455+00:00

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
etag: "0x1F3294AF1432BF0"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a2fed1a7-245e-4353-9ecf-ef860b00f4b1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8ff2722c-0d67-404d-fcf8-848ac632a8b1/test-blob-8aae4764-bf92-0f27-ff96-0710355413a6

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
5peUY+RX2dLyXvFhinzJ0kO1w8ofGpdtS+OQ0QY8C6fl3qMvnkXNDG7clzTNxYWDzTTMf5BIhsz/
JhcBxwfLtVJKe6vYmTT96LdcQoJjoIVeDATRb4wWnVfXL3cty0VnEOLhg0rZqzP/zpbZ7ENJnIaS
oroD+kXFM95TAGq80Bxx9TKggR07hGHR0aD2PLEUjpLxmyiLYxacG09rharJQv55aPYRqBtpVh5Z
Miikz/ctP3LXyzT05pEbA2XNz/+2B4+ifNO6AuV3h0QKMTHu90xYPkY38nfJhYJl9qW1m4ceoiqY
AlIjczyNX0Pw6bRfLAwZdJC5fxUX2PdRVAxAweu9648HVfT5NcsJqpIz2ZzOBsmZnCf2ZSMUgSpb
0R4wTZ5XMv0kWNYXHz/FsNSD5P5bg05CpyTEx4Zs8tTKnmOs2F3z26eeqa3ygn3nMLVOkZwrAE7Q
7qZ5kmt3uGUCTIHbGNd3jwhXvNqgTySn3ZbQHmA3np0V3Oq3ekg7J/BI8DX7Cxjd1gKT1EN0L56B
0bXVppoFyq3jxjztwBS/G5TpWF/vrNF98kdepMpZoKxLNqiSZoBWQyWIF0Xb8Bbt07iuitc+kSXk
V7RSpybiiSaQoYlsLLUUkxU5Z5SMogIwcNASqxXUDaSCrg7MA5v/pY0fS06MgKYDmvfCBCqQWLWy
IjZW0N4Qu5Tl6X6mSJB5OsIHbVazpO8pDhAeEQh68VZZGeFlqdSuDpC6p5YoXFJnScpoiepf/35H
LcHN8qmLa/gnTC6vFJHtWF7G+PxYALK+tsg+EWhr+hpjHXsS4BzmLzyeAA8juDU4ejGMmQaB7iwP
DzvhTFmPvFIUTPYV23dB38jAuf+im/6SBZc332ET4S5OAtHhBOPjD0S9D2w/I565Srk9wTUsbXQ9
TkbBWN3xAGrHxtmmYNrl3Kq75YuRU+L4fZSn1SD5IpRdo7WcIbZnyw8Bd1zFE+neWOSKcYjoq/tj
yNpISipKzaRESLwkSbrzVBl8j9uGM2qqyH07brEMdPi6OFnbHoHkt6q3gcosuQ4plxxubBsf3JVw
nYGsDl7zN9PEahBhFzaYl9cxz7GffQ5uEdeUngjcm1zDa4H/OKlLw0r3aE/+x3/m1dRD7g3j0R9y
PfyGXpjK6M+0nqy1mV8u5QtnqBW/cElYrskzmKxO4JphjPqsxGSxLH+ASinSMTx1FQgCfCkJs82y
LrDPl08iZb4SUwxkgSGmtnuVPyUghX2MvoOkS2RxV9ks+pa04ZUvXeRrwN0vEZPmXMWtc3Onkqgz
Q9jMfRpaofsyN4eL8dXmZuFBtMWfXa3vvu6ew+RlhGftgZ68Y+DKER/i/dkLW2rwxg2SZt7jkw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DB47ADE5A3C000"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
content-md5: bOLm49PZEmreFd/sFOrHSw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 89a0f384-3dc6-4745-942e-4ae559e15997
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8ff2722c-0d67-404d-fcf8-848ac632a8b1/test-blob-8aae4764-bf92-0f27-ff96-0710355413a6?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: bfdc2be5-bb2b-17dd-ccb2-209d70372a02
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DB47ADE5A3C000"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-lease-id: bfdc2be5-bb2b-17dd-ccb2-209d70372a02
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5e451470-e8ff-4a7f-b2be-eb46d1129224
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-8ff2722c-0d67-404d-fcf8-848ac632a8b1/test-blob-8aae4764-bf92-0f27-ff96-0710355413a6?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:48:17 GMT
x-ms-lease-action: release
x-ms-lease-id: bfdc2be5-bb2b-17dd-ccb2-209d70372a02
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: f571ad9d-4b3a-42f1-90fa-74f751baa64a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:17 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-8ff2722c-0d67-404d-fcf8-848ac632a8b1?restype=container

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
x-ms-request-id: c39d2f2d-c46e-4e9a-8bb7-5443b7cdf36e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-a6a27701-5fbd-e4d4-6284-aefcd6d31e88?restype=container

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
etag: "0x23C613F17A61F60"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a21f3e7d-61fa-454f-a4a3-f99eb4f040dd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-a6a27701-5fbd-e4d4-6284-aefcd6d31e88/test-blob-90b8ed0a-2086-569e-41ca-3026ebbdfab9

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
nAqR7zw81oZX+FynDeBB+ZSXk4N+mXzg2Etk8i+t+aWJ9V/LQi9MzRYyOY3D90lgiTeRUyp3OgOO
sBbw1+RWqf+3HRiBdbdlSsVsTF/vHOACBGj4HKV6ErpcPZEYXPUy24+NDNkw3xSALAhkCu2jn5Q1
7dN7Xo1ZPAtdJDglTe7POnDQYRAH0iRUePCcFgjMuJ794m8itn0CM8/O07rbWt4alc980z2ELhuv
JuadvCYCkGyaKGt/rYPzzi1AOP9peB0RgoA4T+RgeLNTc5CXZXepzEJOQTFzmuhLiQUQQ/YcRa3I
izqlyUGHOa+3KznzXGi2lmy8GzfsnueY7cbfTzW8Ny7iztk8AwIBxgiBu2+uVyycWqyKXyl22+1S
DNx6qOl6+/MLEY2PeZNpu1Uua+J46pWZQvWIMtgEa/Ps6vYmhh0eBsB7okaeDeAZIKPTR3AK2SJG
4Gbz8sgaBqaaoo+cQzU4EGQi/EdP+jUUbhI1MSOC4RDU36W3KhT4YJugBGpRfdxtmzcM6N3a9+Yw
34S15dWCGMF+x2SPgOVQKpusr/bKwvA1yJbsdvkz+ee/hkuPQnvGHuup07Z43RpRu75BLkjvZhyU
gB0/laHHS8180PqawOcf5ZEKIe85vOp7m7o78cuf0CAv+8FehohK4Yfo/A0ft/rWIUi35EQsWsQy
w/rmjFkC3ADaasUmwV4IwEBnUb/dW+PAZNCC6OvbAqD9K8OOY1Qu5iANRUw0sGDpriMExAkEVWcW
JiiJf/MU/mglKJWbeV3rOWqfzxaXi7RwmTrH1j2X+dZbeDwrpGYs+EbkD4fKTjTGGYueZIVRf5t0
Gea5TCgqjS+/PwEgv5QDc9fPsnsspUoFAb2y+ZRQCviht4uAc6weuYJYCw4zpln2mvGugswfR3Sb
tEtqeJOabjUJfggJgwAqsPn505k80lpku1+joYgsgW8X5b5htEHuvZ3ZKidR7RbxhNHTJnPaX+Lw
Brw0982t3PyY8Z5Byfy3CxX8Y6cyE85IsR22WFv7PIXccK6FucbPLE0ruPt4sLvVGxte3vw6vfLu
7EWw9oOhnLUYZVhNMlFPLDZaB1rSzwFh4T1AnV6JobO7ls2BHzbJiRxGYEpih+nKDrHF37WYGxxD
ThRGYf5XjsOkkpuDzQ0AkX49jG+2/lpUdY+sxML9I3uxPdEhgige7tGHvfRNRkGkxE43Wo6sjE+6
8utvqsoAp28g0pA73w5VH52eL0BlBy9OCP90xcjsBLCBZpA8r0QGhhaFLHSwaOU/4TvxDl0OVeu8
IaLLjOGnNM3funh+GXBZmKgq39q6nZ8aNOOM+/ZTcxGkgI2hOvk03ven0a5swMjLl3a143UQAQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24692DFF55E3580"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
content-md5: Fz1whxD0Ls4FbUBESWH+9A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3461baf0-bf2f-49db-8d01-8ba42bf20740
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-a6a27701-5fbd-e4d4-6284-aefcd6d31e88/test-blob-90b8ed0a-2086-569e-41ca-3026ebbdfab9?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 58b00384-1afe-d639-8b46-66da98e2b75d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24692DFF55E3580"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-lease-id: 58b00384-1afe-d639-8b46-66da98e2b75d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1d2a86c2-0f44-451e-aacd-e62e5d52f99d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-a6a27701-5fbd-e4d4-6284-aefcd6d31e88/test-blob-90b8ed0a-2086-569e-41ca-3026ebbdfab9?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:48:17 GMT
x-ms-lease-action: release
x-ms-lease-id: 58b00384-1afe-d639-8b46-66da98e2b75d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: e5c4a5a3-8705-4288-b8b9-95624c355e11
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:17 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 9: DELETE /devstoreaccount1/test-container-a6a27701-5fbd-e4d4-6284-aefcd6d31e88?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
x-ms-request-id: 03b306bc-e718-41c7-a35d-aa5b5368f212
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-e200f6ae-cb13-adf0-741b-c063809e8f9b?restype=container

### Request headers recorded for playback:

```
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
etag: "0x26CE36BFAF82500"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b0419c72-5848-41dd-88ab-703930bfdc11
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-e200f6ae-cb13-adf0-741b-c063809e8f9b/test-blob-9e097f93-a189-c336-bed0-456805e630e9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
3xgG7XQu7bgSA+TiWdZV7bbLRhjYGdMMvzwkQ4WIqI3q14Nnl6ImZZJRi4a9U2roelexOp8YEcVF
+i43CaoyiVpW+IJS7lYUpOCGho1MTmzSO8gt127t0sW9Ip107lvnHgIsZ1vnlowBnJa/kYo4+avB
Zc7iBLLsaCW8lMu5oLWFn2iLH+cQ66U7LDrXLkE7hSjxsomNBRlPP/41KgHAR/zgOfIirNnDsXko
pth3FDrkgA6jx+4r+JlOPODp28CjeuQ+9/VOGdlPLgAPZF5B1yrEUKryHX8NtUFY03D52tW5hCvz
OR1Flmc1U5ntG5M7DGS1JIsWsV1kMEGz9kVpVlQrVuAyTp0Nf7pCvcnmIJmuHMYLQ7VJo9POjgnc
kZ8hzP1FwcWyCL7GqKXR0/OTfhCnBdl+XRKe4bINZL+UMe0aIfDMoF7U+xQIRJsPeM/fOhD4NIzG
om7qpuASpaT/MXe4trIDx92y0wnFdhh3j2jjLSmvnPxhVH6B4fp+wlVvCRMkV8Id3HIyRmGCACtW
cxd3Lnh6T5V6VmIzgebjNBC0VW0FUzimxVG2fVab3lNTK23iBpPd9bl9qQBf6VqMThJQzqu9UB/f
0Gkmw9I/3ngO4FV4AS191l+0h6k3Rtv2Ki5DShColdtOAzYqtjLmPsuIUQkFFE3k0/dLCch2p4mN
MJmk+5NnZUt6Kv33Uh8tzkner/XS8RbgXncYXYsS11usnIaZQkM3IOu+i+lP7YDYHTt/mPiUuz6C
w5wcTgi/Z1KiSrWYlIsGpo4JFGUskHH2QD9Qkz9jGOFHFn6mG9Hj/iOXraPLP4mvePFpiqbZVjIr
JQ3Ib9MSPjHTUH0NX4q8JRVBlePNKwG1oBpN+Y06bsBMe/XEGo5PhG5x9+4MohlnrGSRl8BPXfoM
E8+5xEWkmeG9wOSU+AuG8RB0XDQTqf4B5kwoqdf//B37twe/lr8pzV4MTuE007RZCqWv2gHG+WnR
uN74e+8KvcTHmUEDx1tQSo7VBloczROYz58yUCEbNL6e7t7hMVJuApEdbTpzVUNJXpBz8PIOtOvK
X6tP2Gyiq2SCZdh9bxg7ZgTJ/l/ZJXlc6PGRqETLjzrzFtKmHykke8HV8PBqzO93N4nuRbWL8Toy
8+97EAIgt9WeiVhGlUfapIOdAzSJ8RsCGXG63EqEaCWXdCw5qWq/tTgazEKXMKFCFKEy7e4FqQHU
efaQZdqLGSEzriAboPoY3k38biXZa+nPeMipUno3kssrZTB0LlBdjrIgY4GBJnOmGQ6gCTrb+w4N
we0S4sem/BtV8DrKpK/9nuByuAdnTlFVAjhslomQT2oiZm1iS6vreWdlKzY423Veo2paaUIGpQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2707A4251B4FD20"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
content-md5: Ab31Kc6Dycy6Jn/bL1kBqQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9b3ad1d6-19b3-45d1-9fa5-daf713900afe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-e200f6ae-cb13-adf0-741b-c063809e8f9b/test-blob-9e097f93-a189-c336-bed0-456805e630e9?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: dfbd9b72-3a8e-9265-c4a0-d0a73d429a52
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2707A4251B4FD20"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-lease-id: dfbd9b72-3a8e-9265-c4a0-d0a73d429a52
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96bbf7f6-8733-46bf-bf05-11e68fcd221c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-e200f6ae-cb13-adf0-741b-c063809e8f9b/test-blob-9e097f93-a189-c336-bed0-456805e630e9?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-lease-action: release
x-ms-lease-id: dfbd9b72-3a8e-9265-c4a0-d0a73d429a52
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: a046aa62-0687-4aac-b1bb-fedd3e5c36f0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:17 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 14: DELETE /devstoreaccount1/test-container-e200f6ae-cb13-adf0-741b-c063809e8f9b?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b3223813-a923-433f-8ef4-784180f192ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-9f3e8734-2201-1c1a-27c3-0df31e36e528?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26A85EF90403780"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b6db5784-aeae-4d0f-b0d7-95b2c5f27e37
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-9f3e8734-2201-1c1a-27c3-0df31e36e528/test-blob-c7fac01b-cc8e-3f5c-02d3-66966833371c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
CBgl4gRnpE+BoLjLLXJzjbqojH1H08NnKv+dLbuEs/OM8eoGEQMjtByqRe4TkRGPYNnbwKe51DVU
vbcFyXaU/OzFPjyHbHy3hNhgnY3VVJntDc3iqPNL0hy1sVNLHuqmFkgBTlLVCPNcJDzPWTenf2ke
F7yosVT5eWwf0bspa2XtuoZE0wVGFwXZhoS3fHnlDTLpLQYt/WX0CNTmtjY4M7jW4Z6xY6tj2P+3
zyvPQf3yOcSJPz5ev70gT8oxX2HOoVPL4JvaNKqGhVQGdi46JcbX83xyr/N6dyHhkBTgMnie6C3X
A2FiGAUaArnpV0mO5ikEWmzkXPFfUWl5+KSVpVPcaI0AYiFldNp3WKw5kR/YUqnq3NcLuow8d7L3
6CBghFxmDO+7joQHnuWRbAREJr9JoaX6q8l70K0Bw+pvbou6F9NP0oQvHMQl4j7yek6I91HyrUd6
ZdiT6jxCucqamDBZ11Uw9FM7GoTh1cmKiVZfeMyZfMBEP7H7vOhI7WP5i0kOmKL4WAL9t5PCmZAP
CGHl4kD+ABxvFJekNThr8iwh6Ep/fPCzZiDJm8QtgqYg7LOGYgoi+ootnoMLVCLJkcRmoLBFj4xw
MXwgNGVXQpLxg0mF5I8i/+3AUt5tqBH+/wkAxuL1210nFjGOAsYk1lvxGtHZRK00RKDDhTytA4lq
IjRbV3yw+6frXs5elP0mm3yCe45AJLtcy4FBMlYgeROoI+CSyX7fQR8p7ebe1rCjnOnAKof6Kf14
/4z6bshRy+S7tnAdlNL9ozpvFzbVffTRnZZsYE6LrfniGcry5NJW1yIBIx8/hQcXwodNixLHo4GX
KdAx5WuVMAh2O3sHCr5nGD8U01rUkReOVJ3HPSLnGnVJW7sBJPK2a/MXyUqMD7jJ5nLSs88mwpi4
opDOzvLljyAFvq8DZfNNXWhnvcjNAkTk/lewFGemIpgiSIJi6J0AMTkqh1EJxYF+hVZnvwTQ66BL
6dCbNXq5X5wW4Bxx6nXKZoyOo3vz2zjWMY4RPmKTUl3hF/7NZfu+cSe08uVkDJvhnVl4QUgkVw2X
xQPrqCA5go2/j9N2/QCQzzFTPulTcSTzL6EIGxAUvL/wNaD30sgHe3BXpXzHap9Z6HIW0RgkRFPe
+Hh+MGd8qtIThcdgmPxpTMN4+8yoLMUBrzKe/eumy/FMGdpQiEoI2/qptOXY+E91rYRVq0mHNsyz
fYA03q3nbLnWE38iGMN5byDR/nffKbfiKVBmUSCoxOIOnQvJ1P1MwkcrAuXQU5XB3DwptThU01PJ
UbRdgBqZLk6cE3q4r5sjhTswtCfREtW6pXXkfg+pusq3/4JI70IsktSWMz8aCCygBjD9Ix8r9w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27A7FD28ABA4F00"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
content-md5: dBfZT0niV8ZjTPip4kvQQA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f3d9dbf-5087-4d35-8bfc-c265236a37d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-9f3e8734-2201-1c1a-27c3-0df31e36e528/test-blob-c7fac01b-cc8e-3f5c-02d3-66966833371c

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
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x27A7FD28ABA4F00"
content-md5: dBfZT0niV8ZjTPip4kvQQA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 25bef8fd-80ce-476e-88f8-d0ca0ac8e0b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:17 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-9f3e8734-2201-1c1a-27c3-0df31e36e528/test-blob-c7fac01b-cc8e-3f5c-02d3-66966833371c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: daa2df3f-b5a5-3faf-f259-b000af19da95
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27A7FD28ABA4F00"
last-modified: Thu, 12 Nov 2026 00:48:17 GMT
x-ms-lease-id: daa2df3f-b5a5-3faf-f259-b000af19da95
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eff37703-756b-4751-8aeb-05a636c00f34
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-9f3e8734-2201-1c1a-27c3-0df31e36e528/test-blob-c7fac01b-cc8e-3f5c-02d3-66966833371c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x27A7FD28ABA4F00"
x-ms-lease-action: release
x-ms-lease-id: daa2df3f-b5a5-3faf-f259-b000af19da95
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 9619d2f1-d276-48bb-8433-3e2959278a43
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:17 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-9f3e8734-2201-1c1a-27c3-0df31e36e528?restype=container

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
x-ms-request-id: e2d43e33-2b2b-4756-822c-8cac8ad55d65
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:17 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

