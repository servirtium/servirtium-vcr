## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bbe4bbb2-3de7-8224-a6f9-54982bf14fd4?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DeleteAsync_AccessConditions
now: 2026-11-12T00:46:30.0814352+00:00

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
etag: "0x1BED3E34F757860"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1c937ded-21d9-4f83-b987-0f01f7b17c92
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bbe4bbb2-3de7-8224-a6f9-54982bf14fd4/test-blob-e558ea8c-7c64-f504-939e-f63c3169140c

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
hhJLvH+ttScvWv2UCqk1QKEPyQK+5gk2t+8nSEfoUDzlSBEZppJV3jUwtQp+b+rqababIqARTp8I
FQWPhmzgRwnAr8KXG5kOuerNjTD/t0cEPd+RTS2c0/lyEZGNxVjIUG4AvcAoU00cjGm2RMBuCF2+
i0mNTvncJNvIJAoIgPORBD3C/vqG3OqRdMDE5Y84Awg0zzoPOgF0JJnkXy5DEwt1JD+DrAliN65e
/Nk5GD5MkCEB1LG5gsk7Tdpgon27TmG0TsFPtFf+0ZiLsD4nOwxal88NQT5avKJ2SF4uApQxoq14
hMl9/dvJAgMZLdGLExHOBgqtrg0iWpIf2Gz4z84DWg2Qr7dC3Jr0Qz47QI7Q6jVMYPuKg/OgVik2
XiRu0DM0FtPE+mRajClwuWvO5xoDT+43q2/TeNYZ71iOC351hXILBiq7DO/Q8tPRGsmI0W8PMw42
NyTDYZ38qgoLy4Cq+zT5w+DvSEP+ZrmbAV4MkR7pf9hvPk1NR6WNv2HlxCZTJx+Vjw6OH+rLONBr
J18+7xjsIkynO7zmq3w7YonhGKGSSNo/dwIQWl/upAV84R9FTs9J+KLaq+tiruORU71h6h8u2d+F
/3gW3MftuZa2aspc9RS6mCD/uJzu3MgffgahjLnlTQhAwE5WMxzb7PFVq0QZNV6pp1H/LyFDliKv
9l7ASy3c0RzBHDXFY2UDJMuqmTGEBUio+OVo5h7m/Ckspzy+GqHEeNonVxko40Ts+wtWmP3xKvEV
GFJHdOr+2x8MmLspRQop5SFWXK4vfxShe+oSkGQrO3xLqAFOfQPvKXz5HEuIw7YBLLLcms1C5pg9
pvkA60u74F0/3pwI2mgeZjMyNWPJGLg0EWOxT6GuCMJpEdYJ7z4xPjzuSeUZ+VFKvjOaELE1dI1B
y9rnCZG8kNXansmRFHf1AfYm287SGxgSZpFtE/gRM51IyCNjSTSqMbkPPlqHuKm8pQ+6Dpi+brDC
1aMATnzdyWssSExTkbfBfKkVw9y9iq7nsG7oViUEillzoXSRquM8MnXvW29daRRX+ZLuqavUBEv0
GJ0O9HNFJ77y3+9CL9HG2JFmzi4+ikdZkV2SFuCun50pnJFFLj0CqTOxaokkFcnAKNAZbTYcto5W
tGMWsxHdREBSGZNAgKpTZCT7jSC9NXyT0u4QlTJmDeYD73ra7PYh0yZJ0vs2gKcmxQgRICltmH7n
guAjza8O6wusPJEveXgu2bn6dGKAXVFG6s8pVOy9lVf78mkV/gV3O+bviUQW90uP40ZvcyMcZiSO
3OPf5Jce76Y5M4cOGduzgzl8kNMNMPODmXGmTSIz34tEhiEil1ZP0Jqd3MPEgcpru/Dqn9ZQgQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2200790F38FDCE0"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
content-md5: dnuzEkwS8ztSwslEB6+apQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1b99c14b-2d20-4157-b606-6fe62f15e5dc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-bbe4bbb2-3de7-8224-a6f9-54982bf14fd4/test-blob-e558ea8c-7c64-f504-939e-f63c3169140c

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
x-ms-request-id: f9dbac98-b959-4a72-8394-3178882feab7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-bbe4bbb2-3de7-8224-a6f9-54982bf14fd4?restype=container

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
x-ms-request-id: 62f81240-34cb-4bb4-aaeb-e3c935db0d24
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-4a5cefac-7825-84a1-0653-fbc992b991eb?restype=container

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
etag: "0x22C8CE360CF6240"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3427164d-7c9b-4847-b6ad-af343af14967
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-4a5cefac-7825-84a1-0653-fbc992b991eb/test-blob-39bf2de2-5370-be2f-18a7-3a91314840b5

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
8wV0MjoLKVj4GdZvybc3sSoECHIWFxBZwJ0xfj0QU70TRdaNRV6x1gRnQVd8v/RhcIlnLEDOntz0
G3Kc2qsa6MUYXIPhqWzMUzFur9W53ACo0A60qCd9Raf5mSnrFPxYTFmRZGNxgMYdmtgOX+8HOj9y
8wmdZj+emxbc5xBC4T81FWJ7KHicN09Hlg1Ob+W48V7qeCDyu+Ya8shNlJi127mY2EqMjBLG1ry6
Vc8xTyswJPayV2gfQll7YDavT6O3kbtUtpabK2VMI6JkOGYW6aKdHHCiA4NReJXxECvcF4cYA8QU
3JmUlfiRZTTFuwrzZXeTEjIzFI03Az0AqRo5cAwbSzWiAgwJCIZ3EZ5Pi72L/auzSAVU5e423Nlb
lOveV/Unqm/UUWNrigmsuwPv6HiAdKxvhScGx2VHayUyrXSambmoJ+FNt6tISL77qCnqRvRh2x8/
btHNIOIKjeU9ON2VESJJRsCWMr0AJz1pCx87XCUx0dFUWyro2gb+QyrGCg/gZZYHoP8zyqhhPkeT
ZBXDzjDADGcLQbb3YWy5mO+TOhwuiKWINLsl/QYo8xzjVHbxOnX5Bf2n1CTfDz+TeTK5zgQqZdtv
Opl0mw5h402aFA31yF16mTQfh7SAqCV8kYTUbiUXuO6bgQDbhWruRfHWRfoxnrHUPzTPC94n7pJ0
+AmKjXQoglseWUZdnhTKMEHCqmMqSvPS/y/wR60QdJNtZ4xhY7h8rsOfE0Rqd6AfBdqdZEQuSq0V
t41EODquDuWz7zeHacyIRvugizeuaIiP0ELSchBOPxzfS6wqN3WI8ARft4domJwOFB1Ijr91Z08F
tWf43JvVZbAapx0gXg+GF5ozT7AAJzimw17yBbBdauRcJIEOkBNpilLXTfB+7bYOwnYkQReeBY4u
URg84l8AvD05wzmNd4eGysReKNlIKNWo5EI5OSjMvR7z3z77LKjy15CyRCp8gUvvnXdTQNy15ilC
lP4dxoMVbQYamZdIi54cbFFIleOrK2L3SZyweH1CPvkVuJep1RANndckYeezphHZNtSLbFBGlmmb
JXznZPSI2FqeM9IGcpZBO/cMh8l7Q6OK10KpttKoziEuDq+TJjnjm4mMFHI+0sQ9STFZOg+fIOHZ
XI2y3yGI9mSx2GTnrRS+KOxA7i8wSwR9a2ygT5QSj+3NusmsMLtnBB0NjflfVpwcmhEiXjKyqBGI
NHO06KfPnkl2GfNKEvgw2OoRIr0KHhXQg7SD7zC7GhG4JPxIsxx2Pu+w6Dyo0YgY8oVIoYVTfRVe
42TzTK4Yu/7iku775yXOm+TOWjXYJ7Erav2qc3mLZKbm6s+3gvFAly09xj+aHApgeQahhSPfhQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23E9AD1A1242D80"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
content-md5: T5GHs0i7clqUhy9dYE2dHg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6dd9a0c8-d957-4cda-bdcd-484515ef35aa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: DELETE /devstoreaccount1/test-container-4a5cefac-7825-84a1-0653-fbc992b991eb/test-blob-39bf2de2-5370-be2f-18a7-3a91314840b5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:46:30 GMT
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
x-ms-request-id: ffe6b1d4-f50c-4395-8a0b-3eb7e723cf75
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-4a5cefac-7825-84a1-0653-fbc992b991eb?restype=container

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
x-ms-request-id: 4fb89cdc-48db-4989-bd7e-51faa6269686
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-e1c7b2bc-6eb1-8547-562d-4715fd561618?restype=container

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
etag: "0x26631C5D47EA780"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6273071-14e6-442d-b60e-091d2fbef380
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-e1c7b2bc-6eb1-8547-562d-4715fd561618/test-blob-08c28df2-609b-9172-4ef2-49f973eadf83

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
BmQTBbsQjynluHASUwcMCmPtrvhg1+pbQDaSviROEWxOxA6YQhFd4v6ZI+LwYD5G5T+WhTznIi96
t8WEfdAEl6cExI74c8dSkMz5x7MHauD4TNnlt4svZqHfHotM2GQulYw77JyvTnJ3Q/Vw7Vt7c0zk
izH3H98b1F3sGVU8BrhnyzInzH5ESf1nbXSWv3lGY6s+Z0wyN3WsIBg+wjUcOz08CCEpU6bOoEIz
kLFrhBTkprWq/Z9rNZS8eqxmBYbISjE2WbdXHQ8Eb8YJ/qbDQZsDWhx/cj2e0dONbdn6aJu7akWA
NCpcjIilpo3YYTbt+DkQYqpqSdjzmIjkyrA2CQcqTZRhQwxwps2T2suvxW+cn3Wf6gXwUSFtjJyh
eMLYbpyGrROijLQsn7vd1m4MRNMZRyo7lh8BOvxy9Ldwzy4KumsvKRdb+hPAc0pKEnqyYEjJhzCY
ndh9hHMXL5j8vNCN0hwD3Rq7vkwXeiPVtyeBv5Nvp0f9ch2TsqSjQ8t6w7d6vUBer4MtDcnjgCO0
qM1LlXAEjRWIj2D/cCp1F3qBnLZsWvrnIxAQQpl+GfH53grXWK5adjai8S3fXz9Yt/VOYuRsSE3S
Y3Jg9Ep7CnZuBZEgnb/MJiZ/ymnNCMPQt4qjL7cNjJa9BfQ7+oLrJua3cFqtNxk2gju+7X7jBVuv
jzy/19u+YXj7Y5jKkSyjk6ODFZdpI4Bxba18T58Y2f+ZjGtFK04L+A7hsdSAa/APGlnaYO/DRWu8
TmouQhLZ44qYMQXAXWdVeB2JiHGr8AK8bDVFPXgQ1UYAid3j3LX8B85K6DnrT7zyhOjROr36EF1o
cdXdlKURiFy+wNSKcZtnjICiYQjI0B14U7mQPpqIBnl/e2vfH3MpOF/dLY7oZxNNaa49V65Vn6C3
ZEDsgEnBNbpaCvUwiG0MeSio66OOkOulQtTsS67KKtzKJ7ozPLgVG/fUjV0dHeFAMd2GrLP9KdRV
Rj111OoLkOAZZWCy2T1wks+sugKOhyXyrBrRRH0ozf7m3fV6oEcMyfx8BLeBjVefFRrkUG7Rx78Y
gifQOUxj8JhhzPtH9vKHn/AFEYNucR7CMi5jQ3yPFBY2YR0fPJCwGRMfH8FcVx4oXLB+y7U7qhEJ
DQcdAK0b0bjkEZTUaGJgVfhvTlFdZtoQOufMEUlh+rcMFi+IkxhmA04Id0aJVPRNHna8y1vAq6ct
DcXFT8Bugxbdx1Ez18HfCUsDVO6ThubyfvLTpC5cS2qHW4ZToLONmvQvrIyiGUe03cIPvVe5mYfe
09HOm97ngXvnrHs7i2iXdbr5ZNlaT2SrHsZsTI4TzcL/dM3iv/4VRysQu23MeVFZeEecvzWtgw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23E6EC0FC9A5460"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
content-md5: tsG9znS4RYC5L/+pg4+fIQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca69acf9-931f-4593-b24e-59100d3e4d80
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: DELETE /devstoreaccount1/test-container-e1c7b2bc-6eb1-8547-562d-4715fd561618/test-blob-08c28df2-609b-9172-4ef2-49f973eadf83

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:46:30 GMT
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
x-ms-request-id: e4c10a74-ca64-4dac-b0ed-c9bfed156b23
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-e1c7b2bc-6eb1-8547-562d-4715fd561618?restype=container

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
x-ms-request-id: a8569d87-f6d3-4a36-98d1-9f8f0a39b14d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-7d236c83-7b17-ec35-d3de-b83c169bb4b6?restype=container

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
etag: "0x2517662E3FBAC00"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f8e42623-c703-4036-87be-b1e5c39c670c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-7d236c83-7b17-ec35-d3de-b83c169bb4b6/test-blob-ae1ce3bb-934a-dff7-a575-12d347760d8d

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
UfFJdZyB/cz1I+eOEz06vsOQ4dwY/znvdUPXomhhpV3QK+olUT8aOuVQuCasaMtnOlQQt5UxdFK3
WgBYqVtjlH6KvehTFGyEdab2yEYTQwx4b2cUUe3HnraXbvc+wpCK7CSnIavjFCbni0LuO6wMoxbz
3znzTkORwh4yu6V1RbIVa9siayFhlVpBLcWr2WIJi8vhS+JXl57hFl+MsVmAckWP2NDQ6jf0kUre
sSB95em7KDDalPrPvtQ9QVTC1OMBwbt/GwCSOaCT7LmYeOV9YzB20Ygopd1Lvxr8k6jiMr1m3PBl
/crpKe+PR6dAN0Xvv90kTANa2RvdM1vllqX3sLn8MZv0GGVmjKiZmF41C4jUDNTLvuW5CwPVh8pu
A5JJl5buQwWq+qd3vb9bwUC8pyjTEYnRLPHTQiWXHpCb+IkVTwHIR8eCKhEsUwAmXkrDGOChmvEJ
eGukGgDgEtsX3MU1RnE/9F9gUed3pNnxreTa1Aav+V2XC9eWIy3Gohc2FXY68BfZhCSAQUkKktOR
s2wcBT7VZ+JonTqZqdEyma/PQY9itrzNAU/hLrgTjXkDBG/AqpzZYK6U0lLdP9tSTqeaO1BEL/2w
TgTu8zgqVBDAlqRice8S9eHgzuNp78F0j98ReVEovtVxEFuY62x1aX1CHKk28N24h0VvY2AZRl9C
eWRYGdu+l9fP8GGTeQp0a2RmJ9MXPp4CWPEMuVt0V8n8VXEHHFCig4TSZ/98JA07+vj8sx+LKzvF
VsDpst57WpmXliSYbE4TxKRPRNaehjTk0b5ieKSqcSo2QcaQuNCmVgxm5I3po42p6O96POZkJs+L
BeEfGOL07SX5YSqIgwvTqe7KOKKm+i4wuZC1LzRE0Rv2BLPvhj0qcfZn8EFiIGTjp5P4mu4t5Quz
719RP77wtJAPkn9Y4yOwoMasPgrtzZgs0YehTDcsyB+oPJbe2DE3djuwU47li8RwSPongaYBxiHG
JW43T2hY48lfr6aM0ceUdMfOPHoKRkXDMQQ9BEd5p3Z0F7PDACfTV2/Fhdsd43YzkwzeMomnvN4o
cx5jG96B5ggwF7kT0XSg+uQKRcFppk2OCnE6mnTszVvUmowJcDyRQ57S7My8H8GYPTilnHYdvs3R
1RFtRkuUQ0ldPzbnl4qneQIilrmA0eqvolw8RzHkttu+OJoqJPxSPqmCXt+LsKat/SJ0+ycUUAQm
vaTuWPwYeYhaKF7vfVUFz1gQ/nILJPG2jkkOcLuzquiWA2ZYZOasaeVXMIhHvYDMbyvPBFGRG5my
OMmyCQnMpn12WXnurWtxY5SMs/NpbtDJQQCQ5KaWBOjNpSsc+mDciokK0WQG3sLAXaC9BWelSQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x205CD5CFFAC9AE0"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
content-md5: XeOAU34/rnQ6By/ZEhqBZw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6898a3c3-cdb0-4613-b1ea-6e8cd0d9a0d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-7d236c83-7b17-ec35-d3de-b83c169bb4b6/test-blob-ae1ce3bb-934a-dff7-a575-12d347760d8d

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
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x205CD5CFFAC9AE0"
content-md5: XeOAU34/rnQ6By/ZEhqBZw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 11d54a35-83bd-4465-b889-98d06dab3b6d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:30 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: DELETE /devstoreaccount1/test-container-7d236c83-7b17-ec35-d3de-b83c169bb4b6/test-blob-ae1ce3bb-934a-dff7-a575-12d347760d8d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x205CD5CFFAC9AE0"
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
x-ms-request-id: b77751e2-c214-4380-b86e-5b9997e9bcee
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-7d236c83-7b17-ec35-d3de-b83c169bb4b6?restype=container

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
x-ms-request-id: 15acb4ce-cb93-4320-9596-2f7854b8c0f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-c7e9f8ca-3c08-d7c2-e054-912107405569?restype=container

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
etag: "0x1CF17374E02BF80"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9a3372f9-36d3-4d0d-a4f0-631ab23946dd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-c7e9f8ca-3c08-d7c2-e054-912107405569/test-blob-6929af34-9d5f-c26c-633e-cf8605d9ff80

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
J1xgJBCY1E3HMvAQdby6gAg3iFU+POotjCZkyW070QdVEPmr3zFYnNvboiysW02nhE9+zVCpQuty
M5fqMwrgi2HpumTCDqDX3+x6Ypq9gDDZvEUdvQO2q80OOauZbWjQ+xbLw6Ho5HWup+5kL+BRtLJm
EXfFws5dMg6WtNX0PXGDqWaE8r2P8NjPbxUVUnztvIX5M1zxCjhHbpCSUS+guWl84IV5zcH11iCe
9VO5R+CSqfhQ+woUkp8uPIQs/Z+pL7WsmXH3dO/DBFw8UhTkjiawAKg3T75fZ07mSpA9yNmA9cae
DK5umjQIjfet2D+KSq5dfP33cd/3TDEjESlehTyDu11ORoF4QWVzLsLHso8OXADh4EvciYPmpr99
S4kLqQe6KhzhOwQt5TqXhEIdMJqiFbUpfKXwpjLZaJ/B+vbbZ4S6DIdyLCD8tPoQRAVAyXYl2jXU
4S1iyoPqB9NlbOpEvBy+YiQSL+iULciq32ItmZ4onCDAB4VXV0IEhyRNl0gPzIjogmZSEqpNQLRk
t+ogvW40PM/Kg7WWZgvhDqfDR5Z/mxLaRBY41ol1c8bR859X48q1GFp4RUnTUhxbcAMDifke5BzX
RnlY/GZFVRDuxXNriivdDS47B1XJBvH63WWGcunNsg6Df5xRXRz0MvA45Iyo7+bYJXvK493HDj+H
XR4Av+InIBNl6AqOjLASR9RlkCJkUe1/rUxtA88wu3Fcyf/983INEcR5QwfbSpnLt5sIYX0dIgww
gRKWuR1DNCyZMcKwFFRhWH9d6w3mpGOyoUszJ1r0PqfzzHFgdlemNQ/aQhjXG6NHpwj9vzf+St2u
4xjREAzRpPIbvEfiAOIot7X+C2JK24Wo64BS9n5v9IKUspM+1SUCCZ0lvF9bZaYm1QiCAD57ZAeT
KCSMf65zq8fFTU5O6eGP+wLEJB8mTYbaKyF27fRDGU2Lq6wAdonvshCXlRdX1+wn8gQ8tj/obNue
sVON/b7TgTQBwz01joV41XIPjrdvglM0TvrwB2IOoz7QYsQ2YbRRxBTiVhSu8WN+xODM2N4kLy7/
WK7E4nrS8iD+ZCzAQXO+vcqjjCw/hVyWcUKBQcpgrDOWNgkFjeKZEGPzsI03voJsDhsUgaICv9JR
LXA4ULFWnrj4KgtquC/nCXzITNXPX7O/FDKuSyuQlHY2s2BxYb+ynRHVPpN3AlXrLHcmOXP8gs69
eDt+p1KNaJaUMwXPdqe8Fq7E+iAfSBLdwh+zaloCOjGSs+mEM/W+SNb94s5QHLXQaSLEOIitni8p
oeQz2f07kfnTPMO+OOK5BbFKIWZDjKZp4wE4PQGp5RW5W5IRi27ZwlDVfN/yETE/CzPWYnzI5Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F9228122F1E0B0"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
content-md5: iKIVOwTWnByZmFnUKKZjLg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2b7b103e-7e79-43a5-9dfd-a7a90555135d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: DELETE /devstoreaccount1/test-container-c7e9f8ca-3c08-d7c2-e054-912107405569/test-blob-6929af34-9d5f-c26c-633e-cf8605d9ff80

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fd44b1f6-a6fa-4b06-8021-2e182d0681b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-c7e9f8ca-3c08-d7c2-e054-912107405569?restype=container

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
x-ms-request-id: a22c83c9-3091-42dd-94be-dc4de6604bd4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-f6c93e14-02fb-f853-2a57-ad04dd50a779?restype=container

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
etag: "0x2320870CBD91520"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f375ece6-f545-4c59-9037-7e91260d0fce
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-f6c93e14-02fb-f853-2a57-ad04dd50a779/test-blob-155f7143-0f6e-77c6-d1d0-f832ced28299

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
8HV+0sJ33b/83VKIRAxT72O5kvAcsncFd1ElKwohKVfUFBNo0dW2zJOgGZC9PjLEfAnOFECRfD39
eVtxUrG12rP6szD56x2OAsZcfJnnRzkeYK8AUxQXQpfValh5RXri6j7cwosBy5DrPxF6NACkFjEi
UvECtIae43CZI4HEFb1LepFaCoWuHZUeFRQCnQ2WMVMnV/OI3za4Pt8aaKcPJilULrpvSQysdDVc
455ym0VjA/Itnb3Kw5taosulk7TtD+7qrm9TJ+dHe+O9K/uXRqKZt2W04YlsimoeFKdABuCAbtSw
h+3WD9wL5iHaDJefw1wpC9xPOS5lfiQENBI/BnUDPb0n5760w6eJqPpnkn3Sf1FKFvsDMDWlSgjJ
0trJy+Cs18/ad9uddEg0xpAz/eymMbXB9O95/wyHgZy16/HNv90au7qu+Ad1raKyzmqlck0cI6Ak
CNfwMtfCUvY+54lXZwezGEIx9zmuS0dNxzCi4g9PmchQqLcFKojj7KURN8UZW2dj8VkK6itndryP
o2unIHDm7k7ABr5Pre65TgqTnBSCM2vJP/C2Ra+c6TH6docdO8w1Kkh3WFWoE0RqUZsg09moDW8A
3eB/L6meIx2NVDZnmxI+XnLLCtsWICurTPMTfBVXUmkXHV7rtfue2DU3G74NArWJ4nVn3AKU6by0
0+O2i6cHNQLNT360U6h2LDKl3gVtnkk9iZmg73ZmgzOhNuIX6EyNMOW8QLM31I/M8K/P7gu3RzWa
eAENZkWMZstKExzGX0TlGK0gsF2WBbQK1P/GlpUo6u6sfXBKgMmgMNnn7cFyBpFr6tZdlpbXBHJM
ApJGxdA2IigtGeLUmpfkgICErxjzmM1tW6y/ylNX1Xn9/X02WWoJsMqYROyulk8+eRYWU1RaWWrE
2GojdlfV1URp150arSYWe/5NWlPgvsRdgVA8QYEkoqQScYEA5Tpzw2+oRb+yI8zwANhWDP8W5Bml
xvUHmZTCRTT5BzulFZXE2pbkOHkEq12ETEGpzZWk/I1nWh9EbCra5QCLuByQS+pCkjJoMqugoBuY
gkxSGXeeVAutPbt2f25sCVJ4efJA8wBWZzpjO8nix7kEq+ndh8yI7GQQ4w0vyxLD+yhYJycoV45M
/LI9OxhBy3YBctSEj4GG8I2OMBDzJ5snnz+hiZ+S21NbkYsaS7BLzxeXLVk+P2ym0jeZmid+WNQX
FZvYoELXb5eAKf72bKTcQmH4W/pB6WDT+rZn+EAs3Ti3AjYVci7VwL3CvRVusGWTvVfGhf3Z1Ss7
BaaLb3ZWVEzFPmlux9AyI5s9fytKZUlQ1DvoZlc73S0K2W2ISVBGa2nIqHL8JPWHk2FhnFb/8A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20215E2A4CB3DE0"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
content-md5: 7NL9aWNh1blrbFMB9shedw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: de161e69-a3b6-48d9-9fe4-a50a7e2c3624
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-f6c93e14-02fb-f853-2a57-ad04dd50a779/test-blob-155f7143-0f6e-77c6-d1d0-f832ced28299?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 9a3a5ca0-6d3b-f4ee-8a61-3c64ed63aad9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20215E2A4CB3DE0"
last-modified: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-lease-id: 9a3a5ca0-6d3b-f4ee-8a61-3c64ed63aad9
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e5f26260-993c-42cc-9e1a-abc78df1e425
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: DELETE /devstoreaccount1/test-container-f6c93e14-02fb-f853-2a57-ad04dd50a779/test-blob-155f7143-0f6e-77c6-d1d0-f832ced28299

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 9a3a5ca0-6d3b-f4ee-8a61-3c64ed63aad9
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
x-ms-request-id: 08425871-3255-440f-91b9-979a2ba45bce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
x-ms-delete-type-permanent: true
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-f6c93e14-02fb-f853-2a57-ad04dd50a779?restype=container

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
x-ms-request-id: a1e7549f-db90-442b-9cca-8d2557be7d61
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:30 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

