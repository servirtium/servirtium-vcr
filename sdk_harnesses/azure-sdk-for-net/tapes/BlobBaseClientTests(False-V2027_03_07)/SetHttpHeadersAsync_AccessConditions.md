## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-37a9ce19-eeb9-7e29-4c4b-1fbdbd2e2bba?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SetHttpHeadersAsync_AccessConditions
now: 2026-11-12T00:47:06.1632590+00:00

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
etag: "0x22C03CCC5856AA0"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0e4e25b3-f259-458d-a68e-f0a284761eae
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-37a9ce19-eeb9-7e29-4c4b-1fbdbd2e2bba/test-blob-ff5cafce-1108-3f3f-fc01-c56cea705e49

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
y5oWWBCvehfk3fb/h30Gphvrj+Fcap0Hjmk6uCm8k9vt1vEjF9OqHzVFGyobQLh/+x5Q/uF87WH9
DsmmdMHtJ0oaEbCL4o5IQG+sFk5y7E2xu70Ka5T6cOmQJgkJA6tzV/PgAS4H9BiQCL5yz9YSiiJ8
9bgE47y1H6DH+7yFPzzEOb9bkuoeqcekemPWiKETfZvmjA7ybnQ3KuGOP/lbC8iBrZYXt/c4XUvx
X2hY35f/tH0gn7Iu0spKJGcIkGnOSW+bVdoL+8akrS/CAQ4L3ktJjot7OmsVUtvLzJOPL83iIhb5
vYm99Li3fPGDbNC7P0UcvgHeUw4DhQL/Py8zFH1h4N74ESHCjJrSw756kuYKD4xNc3HLA88I9jiG
vrSIhGhzIYvywy0kWjJnC49QiPMc9DCi5aEMltwO8BvpO83lSj9WB3BaF0tfKBk+Y/hAt21FasmE
5Z7GZoqv5NMROx5kgsFP+oGCwdzkQ7yHzjPkzTito9ADYGSgj6DmqzN4Te362eE38L3swqjtoKLh
P5hXyhaaZJdOYCFcr2vhnBaoa/bPjfRSrdx7weEoFsDBvk8IjuEd3elVrHm/2kFRCyaSRDSsEbGj
BR05H6K2JUlgm/Ab2A01i44NeuB7ktObKba6ltKMFayeZInD5L1GnoYvXj9RNjIZXbmlnpfQKHJK
nvbr/I931IVDfXSEcabQxttaSzSUSfKEoDkY5nYVzTsWeUbHW6L3t4q5Drm9lesS1di8dt0+tlQD
Z1tWXu0OLrA5bfdfCGs5Y5Op2js5xgtNBhGeWVZe18Pxw/NGoFmcq98IhCfzssxtghNJlNsZyaBQ
CFjccNVZ2pU0bUR38sI6DS5bMELkWVNEMNZDFUPn2PpS9pcAwDsKr6mRv0WH9ZBRDoetvZlea64F
lz/+FsVSTJVKJfsqOk3zUYGZUpoOvTpF8Qa7Ohth9Iro+ij7C5jjPnKvPNCUJtM6umwXxRkU99oF
uSS/lxJ66TBwQT8k90XptRQnXoBpsMsygH+uSS5x1ANO9lJzJKdgNVKfI+SUFsMnLg8F7JlZmwhZ
jBaSy6AC/2081gDzdZFsxygtyY3mnmq8hxsfbOdp9FtKGpeQzWmynSR3WD/CNLl9mCVwK9F7cu6s
1kSF45KF0uGlqFr63Pq+eyxob0Yq+lNhodTC+cmJz6ip5PYlLbqS8YVeHIteg7sqsq+lEgKogdzx
I0G9wtkXHNmyUfgDmU5x1n3AzN3IAx0ZmEcZ5LymAWIaNAl41C+sRgCxrDLCJxlhMzyE57X+KR8k
pCqR/jgdDE+W6GRE+QJOE4XdFlbqVnAut7CAIRmtHAvpUy8EGkjHk6DiLD60HTo6NtMvIBLJOg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C73E2E1409ADA0"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
content-md5: QQ45eGLQTQ873kKIIQ+EhQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cca59ca1-6876-4d13-a03d-4372c0e42cb0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-37a9ce19-eeb9-7e29-4c4b-1fbdbd2e2bba/test-blob-ff5cafce-1108-3f3f-fc01-c56cea705e49?comp=properties

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
etag: "0x1C5DC071EF4C310"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c4fa35bd-5f84-4bba-8388-fd428c906fd3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-37a9ce19-eeb9-7e29-4c4b-1fbdbd2e2bba?restype=container

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
x-ms-request-id: 297a2c2e-8ebe-4802-9196-8ef4754aa18a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-4663b94e-9d88-36ea-e8cb-595aa5d24af9?restype=container

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
etag: "0x2033A05CFB6EB20"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80c2a07b-073a-4478-bc86-2c1126ba4798
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-4663b94e-9d88-36ea-e8cb-595aa5d24af9/test-blob-b682163d-2907-7932-9a75-45eb457dfcf9

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
IBnhSrYBP/a1rENyW8KVZ+va8gqPEjIkh+qrElf/8GvPYDmL8f9CPNaMAFvmvx7Y4N7/aovxaQ7n
vcPMVS2etrvYovuICXXrmLYzAxHXPsfM0zF5AIXf3fYrpDQ8duao7UqfDRwjT9doE9LVvmb8EH77
AIL8JbU1+MQEXWVBryLPihXGNzCqqINaEOyzCh+QLpS1QXVjrMeUahRXHvJxJ2SwBTNQNdhOUFf+
ohXJgu6lcy7RjG6sbN5OMc0bUomR6OmIAgTsQPi7ZvAeZAqxy+cmsqvDoJv1BJlUAQMLM/3Nbbks
QX/puDM2FSV9jgfTnGbl9KDezkdOkv5rlz70sDPyUPdQhYloPfp3jIt1d3WRgWSdJT5d7p5y3a+A
fSD0QWXxiz0QghbcfbelZ0G72BqI2hbZV4r1lGFY3qfa57/ZgkslhOw4gf5OwKeHt4dctgWU+KMK
G+na/Pbbt6RuApb3y+T1lVQtUFkXi5fibtza+yeiRe8cz2diS4f2XMlZ374Rj+yiZiCxZ6dK8o9R
944ZAbt9zLyn2/t9k0rMN/OPvazZ0d7wN5QG8d5H0t3YEFP53FsO3BIBabTwJdPW5S+zujTieCav
KMkmdtvdXwgepYP30luYgOGZ12cqABLBMAyvkxeo9ZctSrOR52U3JAmr0YBP3xLUGzlTSaC+hCi3
ZEbOLszxdbDryYenBpl7YrNdfi6RclH523jdVav3bsWL2oMfaPU9ulzQYxWKLBSg1+fsYAb6JfL0
1VNTEx8E9FrCHCwWXPm9IMTSwQ48bq5jPH7ECg6/kLSQKpOi6ac8y266yBDoinrtL0BCKGPkuGak
8NahP+pMAot3hTFmGzYclfafgaaeerED19vOfWhRrHEt/fnQm4yEbsaEcQVJhxMJJZJtRDfABnUk
nWgPfYUiJdm/OR08TPpqGxLgGQmsuk/HxFjW5Gc6bPeEq/4kdPBAYUsriU72zdiYAykk4OxreOIY
SLksTEFxhcwluKD7RaYin7e+gDEB0fd/PeA+FowKGDMbCyw3FBUJugSC0BU4nL2CAkA0rPexFnfC
rQ9gM24/G59t4Dp66ouitcYtfwDhR6AjuxNL1Ww8afS0dWYGqIeVQrV2y7uCBxe1kvcwhJd24GZu
PXdb80UzMHZFxnQknAw/mDxLa3zkoLP8lkN0C+VcPZUAl2sPOU9wQppFPUGikfXr8exbK3TpiZzD
Xl0BvyWR6IjfIwShMF7s2yjhn2NyWQROiBr5ARIhFg7OS9vyboN1s1S5w23wScGNblBLCOk5UQVY
szYKmOd1vgz20+SD+mylbOwOuJWXXT5Ya5LB1g4llPrVmbtNahttQwVg+nbdCnTkppv8K5hvwQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FA140C7153F700"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
content-md5: m3HI6GiSSVLEePrBzeRBDw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8f86d15c-7a4e-4baf-801b-e5ee9f9becff
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-4663b94e-9d88-36ea-e8cb-595aa5d24af9/test-blob-b682163d-2907-7932-9a75-45eb457dfcf9?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:47:06 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EBCDEA8C2CC8A0"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d5791eca-ec5f-411e-9634-a492a6e87a36
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-4663b94e-9d88-36ea-e8cb-595aa5d24af9?restype=container

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
x-ms-request-id: d359ec50-4c45-4a5a-aedb-7d265974e9b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-2cb1f755-b455-fee7-d03e-eaad61b15702?restype=container

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
etag: "0x23937BFFE3B4260"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 567af22f-9793-4a47-adc0-7dd954772f08
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-2cb1f755-b455-fee7-d03e-eaad61b15702/test-blob-9074a1d1-6336-7bc8-601d-dd3073286961

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
ZddlVrjuF48dYik38l0TMk6ZK4kj3ovyLjbMN9e3iqjViEeJTAFJ44nlc9M6kIgDCqrh2v3fPYdM
cyeCIeC4ZdeBYmoViuZNT0gAPmu3uJ6tySws1bCq9UvAPNjax8GpLQ38uC4e7YDDlIq13/8blbuI
1Vizi5Am1mweVU4NcoeGVxBeuv9wjtusaEAl9RZMpKYdUfJo9aF91eLB/5gytiEDLojuvdq7GEZ9
BiNPAeBW0rCn8CGVHmFv4eQcro5CerIfIseOXufLYTir6u9+LdQBay3oisUAbhAmftz1n2q4Ootx
MN4ZyHTI247p6TNy8bMQGkNhWvDsH7S3Z98L1cLN869jDf326KO4IK43FoTctI0o5YQnVuCbhBAq
YmCVvAbLG/WDD+S1GjKgqDpBtAgv2rNR4+89ppzPyIjsy4VCI2Ooa/uOWaSpcstSh66mWc8I+4is
Q9kWjnRZtEZbyU6sXYTWmUkNoIEOp3Ak6x/tKG645ND9luCJkd2GNaVeTql9pikqz7+G+1oHnZxp
8qJVa4vYouR+rsakTQhrhmrbsFnGp0X1w1mvMuh19vlDIJ86MckZhavE/vdjhYK3G3TvK+xCoktd
X6cxKHD8CLjNYCxoMFWhwiqtAqhOkj7X+Bd0hcsMAH5U3dEi6F07yPY+liVVTuoeTmnBlZ+iD81p
WjBZh4LswF+uFFODftnNcjmyD/wZgaosVTZiSmvesc0EuI0s4kBzUtXFpzmWmtCP9CJm8ADQUNmG
LDFMinb0z2OGf8ZMoJD4P7wnU9lwlbpm01ZIeMDMM2i0prYPJ8de0djVEBsKQlOSbbFDqfz/FZZ2
5bcfq1aiuUtdmPnZ6Rf1yIIBm4WfXJADtgsOiYprtJEfmEEQPyaBMlfQrKpZuIOZTuF6/XoQ14gn
HPVLlDDB8uNoulHW5Yhcf2guz7Dmqf2HdTqo8bYXDsC56SIxNp4mDrnG8f4yw2lYHX4S4gjXQHP3
xB71GAEsUKuQHPxlK0nJB8D3H7f+VbHRUNM4BSu44aivOXGAMPa4mqFToaZs8vI0SNtH4CG7+W9t
JMgt80p/2DpUtvLXSdbJPoUWq7MKZF3hBLxQcAGG9EACEgwui6ZW1MlsGDwAXP8FfqKcpU27Yr9r
S++OLmc5zcKx1DbJm7Pev9fpnkwg4ai9S/Je6k7yR7BNwj+3yKViMkt6TofJO+LvveV20cRzSmpH
0eN02uNzv42GfNhzJ/cxh2wBppMg8xAQbyxpe3Xr2XjVcPfB7VdnBo75Q74Je5buREpYcqTWJt3T
ZGq2CkQYmqJgnbcAcJkUmZ8EJrBRBvOWejYqk2fT/kkZ7onssfxK4Kgbqd7e7tSxQ9gE0v8sgQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C55B18CAB91250"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
content-md5: q4w2VKDg3wm5W/khWaWklg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79e7d297-fb63-448a-a53f-e71eb9a19bbb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-2cb1f755-b455-fee7-d03e-eaad61b15702/test-blob-9074a1d1-6336-7bc8-601d-dd3073286961?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:06 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2120C82A6D6AAE0"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6afcfcb9-d2ff-4853-8672-2829f3028872
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-2cb1f755-b455-fee7-d03e-eaad61b15702?restype=container

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
x-ms-request-id: 15aa8bb0-4c9b-4dac-8d59-6acb067dc10f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-8f1f775d-ee0d-3b07-8c9e-6de6810f27e8?restype=container

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
etag: "0x1D4F30FA17B6990"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5b83f9bb-9603-4277-91c5-899eda5fd285
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-8f1f775d-ee0d-3b07-8c9e-6de6810f27e8/test-blob-0846b9a3-5c35-b715-8c62-794f8ece2c4a

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
7W0rdZFsPfKh4B0/cQdToRvwYRi5JEsAYWcCq3W3rL1yI/kU47JXNnxTZ1Q/1UaED9cznm0TkMgh
KxMpaZJ96TRfzU0OPr5pmSucZb32wYshfZydgw1QXpIw8rieLczp1n0g4Af5dtAZygVBdioLKmmI
B+v232YnD2+63ksFy2tes49A1uGEKAfLhLkIDudoJMhOFibh8/cX+dCYPpeEE/6a48Oby1SIA9/j
KlqsHgCHUrmDtrVFfb+YKd0Q6+lvR3C7biskzFl0xhJG/cicatrQEezeAFxJVGYDA6F2eBj2c+Pp
8bDVY4VfD/Ci/3/2/L4DQNr9kUYTcRnEIMm3/U76T4nlsnkp+q5mfvFsplXmDAbjczc9+OKd1X+W
EEK8pxGiqK/2EUlF2UUslxJUp8vD3RTC1IoWvFenR9z5kulrqtffyv2m8Pq9npnxEGHPSC600zIu
+dOHi+xXTsltS0ZbwOw7dN3NHO0ZBTbwJav11/6tRL+3PbADWD4RT6EwT1JTlVB0k9NR57ZFFfOd
lmZAYXfLvwaGpIM8OByeu81L6LXjnY9bgUMrXF0JcSi8ZsHY0e0qZY9LzPDMOFu3sivo+i09ufnW
5OAzn2KpfTJbf9JaxergIIIml9Cej0noc6kxIHf6fqzIAuwN98Utok++cbiJXO1BCNmrFyIpOFWX
Siy5d1y7YAAlksP+0yi8+PSA4B2QXxe88BidT2aJnsmWdayZdCvyAhC4Y8oqQjSw7h4tqFc3BusV
/IZEHRCZm/P5Z118IoTJjt0N1/tMkq7j7GFHXPZyXm7BhHekruUAHsfWMNrXNMyaYxp6Ki/wyGrY
YDCvUT/9hwnuup4NJOD4DbgzdmHTDLeUrfjc+DQ/0bwMzE20Uc2I2anR6HoujD86gR12vFEIBFN4
GqNGIY/Vr+niAFeSQ7vrq524ASQ9ZiG5onYWyRRqBMj5OzYpQbca/DmQTIvnpz5hihG0UAIvO7OC
jH4YvubUd/yPmQeFwmnlngXqrRqV0vo3tT4DtrTFyQCDp7Q4AT1Tu9SPVw423MinzrH9RI6Y7LqE
4Qmo0cFHys8HARu0rJ3Hl/FGBXvsAdh1W+cCyIRy6rr6tCA0q+oSR4w/L9qt8iEUNaycUuc+l98w
MnXaRQJKlBZguvh9k+wGM73urdL+x2nF7ZPY1ZjSuxxAA3h1OAKK9JrDTTgpl6HAlh4pUOoNMmsM
FFducr5+jv7bPJB0kfq7Y7g3Onowm1byFz96qWsyM9EMaSSrG4LcRb86TloQSwUjbuwy1vfx23gA
fFp/A+STqAm/aCfWD0g1W/W79k374cw5Vjt+AFzZGo2rqp4oXEHap6VRUePdTV6k/HoBNuUrBQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x233D4AD99866CA0"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
content-md5: Y1vEI2RfEU8TzViq5UtNXQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f077db64-f1b6-43e8-a06d-cf48c7479b16
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-8f1f775d-ee0d-3b07-8c9e-6de6810f27e8/test-blob-0846b9a3-5c35-b715-8c62-794f8ece2c4a

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
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x233D4AD99866CA0"
content-md5: Y1vEI2RfEU8TzViq5UtNXQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3e75fa2-4248-49f1-a983-002c8344554c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:06 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-8f1f775d-ee0d-3b07-8c9e-6de6810f27e8/test-blob-0846b9a3-5c35-b715-8c62-794f8ece2c4a?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x233D4AD99866CA0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EE86CBDAD6F250"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dc530ae7-f943-4699-9f41-f4ccd6042138
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-8f1f775d-ee0d-3b07-8c9e-6de6810f27e8?restype=container

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
x-ms-request-id: cdb3bf72-9b41-4565-b0e4-877a7ae3cd75
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-ad458d9b-14a9-aca8-e54d-9a2a64a90dfe?restype=container

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
etag: "0x206B0381C967180"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b27c858f-2174-4006-a747-a287fe139178
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-ad458d9b-14a9-aca8-e54d-9a2a64a90dfe/test-blob-a74ee0b4-8faa-5be9-09dc-da03e1d8e4a8

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
gKUDmhaUMJP8pGyWQyP5++58TVWWg1oMpOmjzTmkyg1o8am/pnLnH6+7qwUjUxjl4t8UZYqPEf1K
9vYs8GNZV9lfLVF6OlV8lC6l2tdV6VHRvutaj2WC2eCrdK98uy5MYlMrxCXGa6eKmNFc6Tcm9Q2k
WzJ4/8d03FRxzsWl/9n/WXiEKSUrClJD0PeTJvCohX+h11/81GOLtufRVJzi5Jj3XI+/ocvoeFDf
NC7Q4bVjyUlGBCh5A4UU+HI9Wra1Yexem8lg6eOzuF4PHJ80utUxbYtTm99wflkKqqlYqx6aKdNC
ckXsA99mkkvJaubm4D6dC+wqYsUM7R1vVT86Ww1AdfPL8UiQRWms7AmUpxRzJMpru58xb8YNNoQn
fK6gLDc9ifXzGu71DMaDfna7d0YJ/DF0z59uDgUsvbvDaMi7C8DSVh0ffwnbda7YrvFQUb4+Hn98
K1yXz3rvx1wyMqT9x3K16SAo6nwnmFnwlWAU22v8hUlJPt9jOoejL7itqUMK2+Z+m2idFTQDVZID
pzka2+vwNaxatIiSUa6ZhbrDee8W5rp5lUADX3AVRelNYJNOiFTNvHOWryZe60m5BJB5P9uj7MB+
oUWr7dY7RG6fRfEbSvxm9r18fzeTG6n2SVrgnAYNqnTSz+cOIc+cWmq3vqZYnrmTEkgeJmyJ64ac
taN7W6hokpt8SHsVWNTt3yTM21wDnauhTIq97oMHSeRgcWwrIf/CTysK21U+frl0MEdIvA8pmBf4
2g8eqqQXdf+WtOZnwr4lCosx+MFVYs7QSb08vozUN9hVMkbvo6WH82ZWp8nSDG6IIrKD+KBVo3hB
TWHm27ZywX0OEY93NWbmqQVb/roE/TxOs5zaUT84/4/OrlVDoRev5OVMxPrfEe1LnE6b+qS9PE8l
lycamHA+1RL/qIcRogjtrBrUtzlBb6Gvj7TwnQXqEXEFHgnwlEt1Du/o4GllOvlFrU2K6YQW5CiF
awm7TTgMFJcVC4T//RfOX6lKWI84SVS6q++4YCjs7zrhailCucC23MvSUC51RrA2u4rbzIuZTSK0
AaJIU7RvKBxJHZLujKXok3vEZvkmRGQ+gaSdESKuSBwGjbgebYgWYycSLCgdRy/k8jgQ1ecojrw9
CtIQ0Rf5mtV25/7tyiXyrQPSExg7IDp1uR/pnnI13f/74GO2BpEQGJFTp2Aw9ygTHifkVnqjAumX
mhj3D/xiQQn+8enCO6dxwfuH6HnaRcH21oBLUIeFV956Hmt5GAiU8GZWMQU/UeKAc5R+HBlwvVVW
ADl8F/CCeZkKSBw796ny8vcTgxO8t4Wdy93yBjvECmAWIxfPGNl107hrNAjFRHvrjCkhXDpBmQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22510E0FA56D460"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
content-md5: 9ZTy+ibR6qPFtA2Z7NKmgw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 43bb23f6-aaea-4929-9348-c96f1acb57b0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-ad458d9b-14a9-aca8-e54d-9a2a64a90dfe/test-blob-a74ee0b4-8faa-5be9-09dc-da03e1d8e4a8?comp=properties

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
etag: "0x246842E3D9E9680"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1efbf589-e4b7-4af0-9834-9a75e669f81a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-ad458d9b-14a9-aca8-e54d-9a2a64a90dfe?restype=container

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
x-ms-request-id: ec65609c-db16-40bf-8a5a-1318ce211dfb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-4bdeb349-9013-5e72-453e-bb25d39123d9?restype=container

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
etag: "0x2780837A9B87540"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0a3b1732-d692-4809-996c-657ad412379d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-4bdeb349-9013-5e72-453e-bb25d39123d9/test-blob-5baf9d1e-8350-d87c-8761-067a11a3ad26

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
1InOGzqNYkNFDe/KCR6nWWlPA7+K5UnGNwbEsYn3TKKQlFBKwwefkDtsFUOUss5ouawRwZ/unO5A
COQ0ybC5TsBMOXXNXZZhsHKDHc8FMYU3XPjc5ooCovhiCbsja8eKsseCR3hZmlsWrxEsan8eO9Zf
/Gy43Gc2SZZ9a1TbPkSr+WsIguoM3sKcxjZ41Th4Q87kw25a0tVfTP3h3C4HO3HMgXEUFrjsUh2q
HBYxvXReBCiF9nrVUCaVqDXsKwKTlIvEq1THZCwW+HFQsLa/Lo+JgtgFgkT29jFKfm6C/yYbF4eL
bREfl5/8b/0JhaBw1nmmY6gqjRJGzbQifOa9k/lKNZkuNMF+aes4CRJH7XGR2aj03Jx98Yl0RJ9c
/Rq5PtwEvk8GQqK4J/m98YQA/99CkaM9ybZdzEMPuu8hImzQf8s2Qi8iipcGPLWiwAAFdEW/GWx3
e3Ulp/EM94eylgWN7HG5ybywIAYMN40BugxDCkWqYggAWQRVEJs9FpMPU6WvFdOOTKqIDvhlakPo
JO3lyOxBCDT8jJNtY7ghcwpz/OPnUaQ5tL6bIVMQmu7AbeyuV02mzUtxsohAIenxZ5vt8W5gANJI
rBMupufg7PKkrPXMcxu9zS6Ydp4b+ZPVqbm4IqiAYGwaZas5dyZjkMaWm3XzJfSAMCQ/x4ozLbOA
Wf0tKMlJI0uIsQ1vg1UINOXYhF0e4YPFN/KDQJni5jf4uR0pNmj8TXcpanPmEKzPN5KkW6hVYXh5
aPDXxeOypsvVd8o33v592zbl9HcQ3idGtAkGPouOo1elr853JYiUd8SoEZnhl1iUJoByb2wAaYnJ
kBDZq2g/RtNzki4wBrWuUH2yZ82OZB2wchcLHDPqpEZErZR3u8tcaMrFbgUqYyDKwx7vTQG8Oyzz
KThQNCqgiO3o61ghNpWyVv8DyPYYhg73QVgU+1dFiHJohJGSCzOgJOUXQnjHqI2IPPcCuXI22qMp
WfPRjI2Wo2LlubEDH0vLYqMQAEOWL5jLi75fQs8AMqruabFAz5hYgZ8V4e/bhB2rNlbOJdpfkypb
BQDPNmCT5YcHFbaZi5MKuH+kgU2p7wahtAt5MQzPj9aH5cmYiEs+gvxo1G9nEqvCw21buhLcsRX5
LYJUGrR6N4XgEabKci80Zf5RQRuWOqFgtm2fdNTEqzO0nlvI6mdH7ZzqhwAE+FE9J1UTi3D6Y/Pg
82NH28KxHGZzFdTUa3qXCVN+rLOgW74bYU1/sR/Cujtn5/cE/xHZOGuakeJ8abvae4Ece7ZAQJel
K3l1MWtGsFuZbYODkglCpXNHBsnbnviRpDWepT6EJqdfX9SYZAb/U+GG4/s4Vul32tVC+DnNyQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E3DAC3E495B150"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
content-md5: BZ8qmUHOUl0MI8MW56J7Bg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc9f31f0-8077-4185-84ca-a09f8d8c61a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-4bdeb349-9013-5e72-453e-bb25d39123d9/test-blob-5baf9d1e-8350-d87c-8761-067a11a3ad26?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 8de3808c-a835-1d0a-1446-db243335a940
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E3DAC3E495B150"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-lease-id: 8de3808c-a835-1d0a-1446-db243335a940
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cf0ab11a-10e6-42d3-8500-213fa153fb3c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-4bdeb349-9013-5e72-453e-bb25d39123d9/test-blob-5baf9d1e-8350-d87c-8761-067a11a3ad26?comp=properties

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-lease-id: 8de3808c-a835-1d0a-1446-db243335a940
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23B420086DA1900"
last-modified: Thu, 12 Nov 2026 00:47:06 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f694f7c-85bf-42b0-98a8-658cf939c984
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-4bdeb349-9013-5e72-453e-bb25d39123d9?restype=container

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
x-ms-request-id: b8e32819-32ff-4622-b289-137815c65a5d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:06 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

