## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-48cc8a99-36a2-b2ce-7df3-0c5b094fac4e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).Ctor_StorageAccountAudience
now: 2026-11-12T00:49:09.1225809+00:00

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
etag: "0x258DED3E2708240"
last-modified: Thu, 12 Nov 2026 00:49:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 623a6f75-caf0-49d6-89c0-671ef0fae43c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-48cc8a99-36a2-b2ce-7df3-0c5b094fac4e/test-blob-caf2bf91-f025-4719-a628-621efe0b73ff

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
8ekq0F9bSnvAEe07azIiYt69HpIwJTPx30YM2se3EILBfO5ap12ZPT9RiJBJkkdK0Kp9SzAaHcy1
OfEYT3CzCQBreu5EyLuBI+FS35yiqEz/wgkdOsRRpl8hpG5rge7PnX6Q3hhYBQjv+ydPyD4vE5Gl
GI1mlc47GtSPIyNMFaLzgkEdEskzp7wBLj6cAd4h8pHdxmhhaQiwVMREyeLlouaFXEb8EQHHcXHQ
ZWaQnhj2bjGSb046kRg5bb0F797ZG4xYF6SYJOCPFlX2kAShH7WrTlqxUjOXSsotwqNDwYGT9kna
OIdzXUlQAlj5QwEUl04IWqGDKMhZwMzaamI9S1XUYpm6x+cuN/ARYVDangfJGCtVO2bgEM6AgHe6
mfPnE7YDJeBoWc9m2SOxccd4fiLFEVE36BDu81LKOkZvdJ39Kk6Z1nkmYb5b7mJDLp4HCAJV9Iih
sCumFTGOnR+J92WFtEd43qepn7CT2/muq8SzwzFEGn8VW3oj88FHl8Of0vf8vXpXjilarFXYDtQx
+Gps2tnuRNzlcFjNVevmYQfs9AkCse1KXDQI6m4qPE2m8fpX273psI0aFkwiiTk+dEpN6xrKLkZ8
In6l5lptuzMKJ2PwjoVKAkN855ugJ9L7yXUj3VEz28Oz2rk+RMozrVoZF2LVTeXFAunWTkar2/qr
qhzkSd7i10ugPbTLC754SDpAhw9vJXyQXtpnXI18CP6+k5muTmN8NkAXNRAx+fYrXgUMa1TrO4Sf
VOsDenq+JDS1DHgkyfrXw1DOWPBsX2TjPP2Hb5yq01cUD/p3eLzGWRHbe+x+BpULNKgEHOOUM/SH
ID58NrSYCjghD7r/X0qUCP/ekON3ZTVofDr0prdzf9sG8Fh9SSJdQnC0XffaC9VdcBPktaIQD7sJ
E7l5pGSBrY/e+W/yFr/cgU5ywwg9jnBllzakj8k59eGcdDVp454MMq9n/BFlallTCDRUnUuzy4VJ
Ew0u3B7FpQSOVaKKc56vZpBY1ZFeACzcUIaV5FeV6amvH9CR3VaRolYN1xS3yZWWpTe7WvX06hPg
UoyXL8Cs+Gv42lPNHYk6xzM6USgYJYbx/z8g2o+0uzW9sYvJ+nKWYN6ovu9CyIetgJPBuZnqyCwF
pS+AjB7cRB8dEGz9cc3ApPBJb2aXrze4cln88gGc0ulexFRCFdTAzHnPJLcarw/FABWooFnGbfb4
yBnE31IdgD2Dn614fo4ciaLsyIp/ncJKNvHs8zKQmFZeSk26/OwnsqN6lxBiTIKGjBe22aVreSpW
ealgMI0L8wdWGjNBYY22xRXmBQay6OluZWca2b+w8tEiY4JDxoEWbqMJCzJPRSqJ/xOPhHMkpA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EF45C0DE0F4700"
last-modified: Thu, 12 Nov 2026 00:49:09 GMT
content-md5: HvNRjtlGPAmCp0RHy0ecLA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5af7021d-a4e5-44bf-a23d-845a854ae4bf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-48cc8a99-36a2-b2ce-7df3-0c5b094fac4e?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c571e768-6d8c-4b8e-a0b3-56a30b9ee865
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

