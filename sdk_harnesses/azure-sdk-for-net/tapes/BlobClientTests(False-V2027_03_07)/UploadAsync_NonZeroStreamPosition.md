## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-72318379-f89a-f5a3-980e-5c0585ebe768?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_NonZeroStreamPosition
now: 2026-11-12T00:49:00.9412972+00:00

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
etag: "0x277E2B0DDAFE1C0"
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5ebf5e22-23be-43b9-9ef4-c2bc428364b0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-72318379-f89a-f5a3-980e-5c0585ebe768/test-blob-ed4037a0-af2c-0eb4-9f92-c8a703db584f

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
6+3sr/zOCDbStvp0PIdGBu47CYen+XhW4soQRvRWeGzR3/VZeSpOhyMXeFbnndZo402Q9xY/APJ1
lswxvcJCfD6Nol2S7Y3E7IJkj4AhbkTzqGKmxoBWkt4D4+NdHMlh1fwXWfp51va/ywuT23FxVCeI
PRVfm7W+NxB+jgmqZtC4ArqECRRKetFs5/p0wrdtkY+71d6zATpGWSLq+kjsFWU729i27UoTPcNE
87S7SXVZEfx675HxBACAPbDyYICJf9GVOebetqRFqJcbbw6Giw+skOhLciXTStfXNq+ZIN1Du3Ti
JRCOeltYNUf51ZTy+bKhRc+XPQyswu8PB3/0q4e52LOapGX+HRaM8jze2XRC5Tz999oNq31nNmMg
f3PcY4m/QP3hWFVMoii5CkrQzeh7zCJC9rOtrC02Mm0C3p6isI+yH5l3YYzmsVSyVKAyl2h6pbJR
mWzWEZPPqiXnSsSKFlm7Ha1PA2uVXEVe+1eMBJsEhznrURci3A0Fp7Zm/maQKD1Gdnm7K6FHuz0m
dxY8Q6aK4sKLn8VCmUCfSVy0Ll3eztIZRY0hSVuXo5Xa+2X3yWMQ3BujBYl4BN05G+JFk43fSKhD
Iv0YaJln8/svZ53aqID4pFFBO8hJoUGw5y15UhAI+rO8s6Zm93OCPBGNSZ0/XnNhTe47ngzg+YE=
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25C8C8345F84440"
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
content-md5: mMKtLDQ5QiS6astyZ3dU5A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9cef5657-31fb-4508-8815-9b83a244a910
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-72318379-f89a-f5a3-980e-5c0585ebe768/test-blob-ed4037a0-af2c-0eb4-9f92-c8a703db584f

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:49:00 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:00 GMT
content-length: 512
content-type: application/octet-stream
etag: "0x25C8C8345F84440"
content-md5: mMKtLDQ5QiS6astyZ3dU5A==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e8e46b40-556e-4087-8b08-2a0f26d8743c
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: mMKtLDQ5QiS6astyZ3dU5A==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
6+3sr/zOCDbStvp0PIdGBu47CYen+XhW4soQRvRWeGzR3/VZeSpOhyMXeFbnndZo402Q9xY/APJ1
lswxvcJCfD6Nol2S7Y3E7IJkj4AhbkTzqGKmxoBWkt4D4+NdHMlh1fwXWfp51va/ywuT23FxVCeI
PRVfm7W+NxB+jgmqZtC4ArqECRRKetFs5/p0wrdtkY+71d6zATpGWSLq+kjsFWU729i27UoTPcNE
87S7SXVZEfx675HxBACAPbDyYICJf9GVOebetqRFqJcbbw6Giw+skOhLciXTStfXNq+ZIN1Du3Ti
JRCOeltYNUf51ZTy+bKhRc+XPQyswu8PB3/0q4e52LOapGX+HRaM8jze2XRC5Tz999oNq31nNmMg
f3PcY4m/QP3hWFVMoii5CkrQzeh7zCJC9rOtrC02Mm0C3p6isI+yH5l3YYzmsVSyVKAyl2h6pbJR
mWzWEZPPqiXnSsSKFlm7Ha1PA2uVXEVe+1eMBJsEhznrURci3A0Fp7Zm/maQKD1Gdnm7K6FHuz0m
dxY8Q6aK4sKLn8VCmUCfSVy0Ll3eztIZRY0hSVuXo5Xa+2X3yWMQ3BujBYl4BN05G+JFk43fSKhD
Iv0YaJln8/svZ53aqID4pFFBO8hJoUGw5y15UhAI+rO8s6Zm93OCPBGNSZ0/XnNhTe47ngzg+YE=
```

## Interaction 3: DELETE /devstoreaccount1/test-container-72318379-f89a-f5a3-980e-5c0585ebe768?restype=container

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
x-ms-request-id: c674fc4e-0b8c-49c5-85d7-da417074d8db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

