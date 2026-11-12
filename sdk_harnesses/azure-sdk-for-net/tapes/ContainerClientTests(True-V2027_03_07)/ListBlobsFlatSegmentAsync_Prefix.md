## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_Prefix
now: 2026-11-12T00:44:52.9038014+00:00

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
etag: "0x2053735686989E0"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 305c067e-f514-4d8f-ae17-589b69a1999e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206/foo

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
1pIWbhoPSKS1SgBy/MXLULEaGplmADw+a+nSzfMqHkzMIi+j7Z8xmM+8rq9LhBjEu3UrZ8lpn9ZV
1wMwPXqxiiy0pdmWKGMR6IHKqVKN8+bRDRJ9/7aCYoJZTRacAVtUCyODl94+LpISGX5Hn/aEyOMc
XjBoM4t1MUJWPdpMdOcmdZ0uCVwIkt9/a+U3OsOM1IUygKIr69iXDWWb5/C4xaSXISlYVb6HFMxQ
6cemPfZ/ymhVGvRF+orFlvz2bKrux6VAoBmZNH/Gq2vW2gIQ8c9uHB2IYquwUSafk77CkKghYiEi
ZZ3d5pXpjm+JbyCHtKUsh1CMZWT6kE7y+aHABBrDtHjg7owykTWIn9Q8J+IGGN4ZlghXlPy9J9VO
6uz0KIpUxbqnpsYY+fYaBMaQvmlr6+HDpm4RayB7I8a346ZJk3ZJ52EoXnEXAZwSPY82LGlr4/8K
MYIcQlmaLIIAYRVP0HBPRtYHQ4xwq6XR/y6QRPdcSwCnP2L0LaUHjTLuF5+Gwmwf5+WTZJ9ymoXd
SkMrCueLoxYUqJENWhkx/7VagZMFSjzBcF0RyeZhNKTcF+Nh3INKYnSJchrbEYzMYmXqFxjy1/8H
aZmKetovs3PsMUM2zyMxDx4ffNgh5l/QRGaBdx2M6kDjWnLqwOiZWb6n7uBJlpNBuAf50lsm5oM5
uTVzrjxWYEYDUnWwR082hSIaevh/h67TP78VkhfkvHPvsAeyJauCUY6ZRkMdkXC4w0w4DGuKujGH
oG59QM0uHpYBwZZIhGB3lylq5UFqtq5OXM/LrK8IZPXVK4U8BRDAayetHM/Zbz7swHVCINXwHOq/
LuP+Y3Hm+Vygc1naO5IYqXoZvZredO2Q3uw6xUMg5A6bfNYswQe1xiJzOfzlEoXjKnZb1l9Q4br2
boWFrDMZgI5KP7677OhyY/d3azvwqsxnVpvMxQ6uSpsbNVOCMBnuWrhum9LGJz2O6HJo2HV/BsO4
HlWYTLp/m/Qjn7aV7zPdiBGCgQ/5oC9dPtybRnElnC+PyRLEVg3+7v/dooiH+fk/ilBk/YS0vn0m
Ow3e5FSD/gOHBSYgGTIDhJMQHP6n1UXjXLwhwJ6q2wqVnRv/IAqqWqSEAPPSHnEdYXnxpKJ+f2XI
+oeYYT1l3Cobi3sXA2OIZcJZItVRED1LA18kuTdoFh61NyWDEfhnHiTJt5L1Bl0VaD7fJVyPd+lJ
TV7dQCLzs3VdYcw+BVTK8QOxiFmrVf0CD1D5iPDBJr87OcSZit4B1gMdl6SR12PqFTNY3u6Qnvdh
2jHS+SqFnDsMAsyPMGclr7JVjr1YcTjsD3O8aEfRq5rNOK+tL9zZl/tphNSXWuTMMy48OhA5CQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20C01542206FFC0"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
content-md5: zafy4ruV0Q9XYwVOK3Fopw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6c3e1a2d-793d-4b21-968c-9074167436be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206/bar

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
1pIWbhoPSKS1SgBy/MXLULEaGplmADw+a+nSzfMqHkzMIi+j7Z8xmM+8rq9LhBjEu3UrZ8lpn9ZV
1wMwPXqxiiy0pdmWKGMR6IHKqVKN8+bRDRJ9/7aCYoJZTRacAVtUCyODl94+LpISGX5Hn/aEyOMc
XjBoM4t1MUJWPdpMdOcmdZ0uCVwIkt9/a+U3OsOM1IUygKIr69iXDWWb5/C4xaSXISlYVb6HFMxQ
6cemPfZ/ymhVGvRF+orFlvz2bKrux6VAoBmZNH/Gq2vW2gIQ8c9uHB2IYquwUSafk77CkKghYiEi
ZZ3d5pXpjm+JbyCHtKUsh1CMZWT6kE7y+aHABBrDtHjg7owykTWIn9Q8J+IGGN4ZlghXlPy9J9VO
6uz0KIpUxbqnpsYY+fYaBMaQvmlr6+HDpm4RayB7I8a346ZJk3ZJ52EoXnEXAZwSPY82LGlr4/8K
MYIcQlmaLIIAYRVP0HBPRtYHQ4xwq6XR/y6QRPdcSwCnP2L0LaUHjTLuF5+Gwmwf5+WTZJ9ymoXd
SkMrCueLoxYUqJENWhkx/7VagZMFSjzBcF0RyeZhNKTcF+Nh3INKYnSJchrbEYzMYmXqFxjy1/8H
aZmKetovs3PsMUM2zyMxDx4ffNgh5l/QRGaBdx2M6kDjWnLqwOiZWb6n7uBJlpNBuAf50lsm5oM5
uTVzrjxWYEYDUnWwR082hSIaevh/h67TP78VkhfkvHPvsAeyJauCUY6ZRkMdkXC4w0w4DGuKujGH
oG59QM0uHpYBwZZIhGB3lylq5UFqtq5OXM/LrK8IZPXVK4U8BRDAayetHM/Zbz7swHVCINXwHOq/
LuP+Y3Hm+Vygc1naO5IYqXoZvZredO2Q3uw6xUMg5A6bfNYswQe1xiJzOfzlEoXjKnZb1l9Q4br2
boWFrDMZgI5KP7677OhyY/d3azvwqsxnVpvMxQ6uSpsbNVOCMBnuWrhum9LGJz2O6HJo2HV/BsO4
HlWYTLp/m/Qjn7aV7zPdiBGCgQ/5oC9dPtybRnElnC+PyRLEVg3+7v/dooiH+fk/ilBk/YS0vn0m
Ow3e5FSD/gOHBSYgGTIDhJMQHP6n1UXjXLwhwJ6q2wqVnRv/IAqqWqSEAPPSHnEdYXnxpKJ+f2XI
+oeYYT1l3Cobi3sXA2OIZcJZItVRED1LA18kuTdoFh61NyWDEfhnHiTJt5L1Bl0VaD7fJVyPd+lJ
TV7dQCLzs3VdYcw+BVTK8QOxiFmrVf0CD1D5iPDBJr87OcSZit4B1gMdl6SR12PqFTNY3u6Qnvdh
2jHS+SqFnDsMAsyPMGclr7JVjr1YcTjsD3O8aEfRq5rNOK+tL9zZl/tphNSXWuTMMy48OhA5CQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F70E7402EC4ED0"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
content-md5: zafy4ruV0Q9XYwVOK3Fopw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6301097f-76f7-4909-9caf-c5eb24986498
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206/baz

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
1pIWbhoPSKS1SgBy/MXLULEaGplmADw+a+nSzfMqHkzMIi+j7Z8xmM+8rq9LhBjEu3UrZ8lpn9ZV
1wMwPXqxiiy0pdmWKGMR6IHKqVKN8+bRDRJ9/7aCYoJZTRacAVtUCyODl94+LpISGX5Hn/aEyOMc
XjBoM4t1MUJWPdpMdOcmdZ0uCVwIkt9/a+U3OsOM1IUygKIr69iXDWWb5/C4xaSXISlYVb6HFMxQ
6cemPfZ/ymhVGvRF+orFlvz2bKrux6VAoBmZNH/Gq2vW2gIQ8c9uHB2IYquwUSafk77CkKghYiEi
ZZ3d5pXpjm+JbyCHtKUsh1CMZWT6kE7y+aHABBrDtHjg7owykTWIn9Q8J+IGGN4ZlghXlPy9J9VO
6uz0KIpUxbqnpsYY+fYaBMaQvmlr6+HDpm4RayB7I8a346ZJk3ZJ52EoXnEXAZwSPY82LGlr4/8K
MYIcQlmaLIIAYRVP0HBPRtYHQ4xwq6XR/y6QRPdcSwCnP2L0LaUHjTLuF5+Gwmwf5+WTZJ9ymoXd
SkMrCueLoxYUqJENWhkx/7VagZMFSjzBcF0RyeZhNKTcF+Nh3INKYnSJchrbEYzMYmXqFxjy1/8H
aZmKetovs3PsMUM2zyMxDx4ffNgh5l/QRGaBdx2M6kDjWnLqwOiZWb6n7uBJlpNBuAf50lsm5oM5
uTVzrjxWYEYDUnWwR082hSIaevh/h67TP78VkhfkvHPvsAeyJauCUY6ZRkMdkXC4w0w4DGuKujGH
oG59QM0uHpYBwZZIhGB3lylq5UFqtq5OXM/LrK8IZPXVK4U8BRDAayetHM/Zbz7swHVCINXwHOq/
LuP+Y3Hm+Vygc1naO5IYqXoZvZredO2Q3uw6xUMg5A6bfNYswQe1xiJzOfzlEoXjKnZb1l9Q4br2
boWFrDMZgI5KP7677OhyY/d3azvwqsxnVpvMxQ6uSpsbNVOCMBnuWrhum9LGJz2O6HJo2HV/BsO4
HlWYTLp/m/Qjn7aV7zPdiBGCgQ/5oC9dPtybRnElnC+PyRLEVg3+7v/dooiH+fk/ilBk/YS0vn0m
Ow3e5FSD/gOHBSYgGTIDhJMQHP6n1UXjXLwhwJ6q2wqVnRv/IAqqWqSEAPPSHnEdYXnxpKJ+f2XI
+oeYYT1l3Cobi3sXA2OIZcJZItVRED1LA18kuTdoFh61NyWDEfhnHiTJt5L1Bl0VaD7fJVyPd+lJ
TV7dQCLzs3VdYcw+BVTK8QOxiFmrVf0CD1D5iPDBJr87OcSZit4B1gMdl6SR12PqFTNY3u6Qnvdh
2jHS+SqFnDsMAsyPMGclr7JVjr1YcTjsD3O8aEfRq5rNOK+tL9zZl/tphNSXWuTMMy48OhA5CQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2220E8BEFFB3380"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
content-md5: zafy4ruV0Q9XYwVOK3Fopw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e5d93d26-e413-41f4-b9cc-488abb0790b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206/foo/foo

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
1pIWbhoPSKS1SgBy/MXLULEaGplmADw+a+nSzfMqHkzMIi+j7Z8xmM+8rq9LhBjEu3UrZ8lpn9ZV
1wMwPXqxiiy0pdmWKGMR6IHKqVKN8+bRDRJ9/7aCYoJZTRacAVtUCyODl94+LpISGX5Hn/aEyOMc
XjBoM4t1MUJWPdpMdOcmdZ0uCVwIkt9/a+U3OsOM1IUygKIr69iXDWWb5/C4xaSXISlYVb6HFMxQ
6cemPfZ/ymhVGvRF+orFlvz2bKrux6VAoBmZNH/Gq2vW2gIQ8c9uHB2IYquwUSafk77CkKghYiEi
ZZ3d5pXpjm+JbyCHtKUsh1CMZWT6kE7y+aHABBrDtHjg7owykTWIn9Q8J+IGGN4ZlghXlPy9J9VO
6uz0KIpUxbqnpsYY+fYaBMaQvmlr6+HDpm4RayB7I8a346ZJk3ZJ52EoXnEXAZwSPY82LGlr4/8K
MYIcQlmaLIIAYRVP0HBPRtYHQ4xwq6XR/y6QRPdcSwCnP2L0LaUHjTLuF5+Gwmwf5+WTZJ9ymoXd
SkMrCueLoxYUqJENWhkx/7VagZMFSjzBcF0RyeZhNKTcF+Nh3INKYnSJchrbEYzMYmXqFxjy1/8H
aZmKetovs3PsMUM2zyMxDx4ffNgh5l/QRGaBdx2M6kDjWnLqwOiZWb6n7uBJlpNBuAf50lsm5oM5
uTVzrjxWYEYDUnWwR082hSIaevh/h67TP78VkhfkvHPvsAeyJauCUY6ZRkMdkXC4w0w4DGuKujGH
oG59QM0uHpYBwZZIhGB3lylq5UFqtq5OXM/LrK8IZPXVK4U8BRDAayetHM/Zbz7swHVCINXwHOq/
LuP+Y3Hm+Vygc1naO5IYqXoZvZredO2Q3uw6xUMg5A6bfNYswQe1xiJzOfzlEoXjKnZb1l9Q4br2
boWFrDMZgI5KP7677OhyY/d3azvwqsxnVpvMxQ6uSpsbNVOCMBnuWrhum9LGJz2O6HJo2HV/BsO4
HlWYTLp/m/Qjn7aV7zPdiBGCgQ/5oC9dPtybRnElnC+PyRLEVg3+7v/dooiH+fk/ilBk/YS0vn0m
Ow3e5FSD/gOHBSYgGTIDhJMQHP6n1UXjXLwhwJ6q2wqVnRv/IAqqWqSEAPPSHnEdYXnxpKJ+f2XI
+oeYYT1l3Cobi3sXA2OIZcJZItVRED1LA18kuTdoFh61NyWDEfhnHiTJt5L1Bl0VaD7fJVyPd+lJ
TV7dQCLzs3VdYcw+BVTK8QOxiFmrVf0CD1D5iPDBJr87OcSZit4B1gMdl6SR12PqFTNY3u6Qnvdh
2jHS+SqFnDsMAsyPMGclr7JVjr1YcTjsD3O8aEfRq5rNOK+tL9zZl/tphNSXWuTMMy48OhA5CQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20F1C2186418980"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
content-md5: zafy4ruV0Q9XYwVOK3Fopw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91613c25-082d-4b0b-8073-5f1bd214ca25
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206/foo/bar

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
1pIWbhoPSKS1SgBy/MXLULEaGplmADw+a+nSzfMqHkzMIi+j7Z8xmM+8rq9LhBjEu3UrZ8lpn9ZV
1wMwPXqxiiy0pdmWKGMR6IHKqVKN8+bRDRJ9/7aCYoJZTRacAVtUCyODl94+LpISGX5Hn/aEyOMc
XjBoM4t1MUJWPdpMdOcmdZ0uCVwIkt9/a+U3OsOM1IUygKIr69iXDWWb5/C4xaSXISlYVb6HFMxQ
6cemPfZ/ymhVGvRF+orFlvz2bKrux6VAoBmZNH/Gq2vW2gIQ8c9uHB2IYquwUSafk77CkKghYiEi
ZZ3d5pXpjm+JbyCHtKUsh1CMZWT6kE7y+aHABBrDtHjg7owykTWIn9Q8J+IGGN4ZlghXlPy9J9VO
6uz0KIpUxbqnpsYY+fYaBMaQvmlr6+HDpm4RayB7I8a346ZJk3ZJ52EoXnEXAZwSPY82LGlr4/8K
MYIcQlmaLIIAYRVP0HBPRtYHQ4xwq6XR/y6QRPdcSwCnP2L0LaUHjTLuF5+Gwmwf5+WTZJ9ymoXd
SkMrCueLoxYUqJENWhkx/7VagZMFSjzBcF0RyeZhNKTcF+Nh3INKYnSJchrbEYzMYmXqFxjy1/8H
aZmKetovs3PsMUM2zyMxDx4ffNgh5l/QRGaBdx2M6kDjWnLqwOiZWb6n7uBJlpNBuAf50lsm5oM5
uTVzrjxWYEYDUnWwR082hSIaevh/h67TP78VkhfkvHPvsAeyJauCUY6ZRkMdkXC4w0w4DGuKujGH
oG59QM0uHpYBwZZIhGB3lylq5UFqtq5OXM/LrK8IZPXVK4U8BRDAayetHM/Zbz7swHVCINXwHOq/
LuP+Y3Hm+Vygc1naO5IYqXoZvZredO2Q3uw6xUMg5A6bfNYswQe1xiJzOfzlEoXjKnZb1l9Q4br2
boWFrDMZgI5KP7677OhyY/d3azvwqsxnVpvMxQ6uSpsbNVOCMBnuWrhum9LGJz2O6HJo2HV/BsO4
HlWYTLp/m/Qjn7aV7zPdiBGCgQ/5oC9dPtybRnElnC+PyRLEVg3+7v/dooiH+fk/ilBk/YS0vn0m
Ow3e5FSD/gOHBSYgGTIDhJMQHP6n1UXjXLwhwJ6q2wqVnRv/IAqqWqSEAPPSHnEdYXnxpKJ+f2XI
+oeYYT1l3Cobi3sXA2OIZcJZItVRED1LA18kuTdoFh61NyWDEfhnHiTJt5L1Bl0VaD7fJVyPd+lJ
TV7dQCLzs3VdYcw+BVTK8QOxiFmrVf0CD1D5iPDBJr87OcSZit4B1gMdl6SR12PqFTNY3u6Qnvdh
2jHS+SqFnDsMAsyPMGclr7JVjr1YcTjsD3O8aEfRq5rNOK+tL9zZl/tphNSXWuTMMy48OhA5CQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22CD6527A70B680"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
content-md5: zafy4ruV0Q9XYwVOK3Fopw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef4552ad-9886-4004-b1cb-16e91ed61061
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206/baz/foo

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
1pIWbhoPSKS1SgBy/MXLULEaGplmADw+a+nSzfMqHkzMIi+j7Z8xmM+8rq9LhBjEu3UrZ8lpn9ZV
1wMwPXqxiiy0pdmWKGMR6IHKqVKN8+bRDRJ9/7aCYoJZTRacAVtUCyODl94+LpISGX5Hn/aEyOMc
XjBoM4t1MUJWPdpMdOcmdZ0uCVwIkt9/a+U3OsOM1IUygKIr69iXDWWb5/C4xaSXISlYVb6HFMxQ
6cemPfZ/ymhVGvRF+orFlvz2bKrux6VAoBmZNH/Gq2vW2gIQ8c9uHB2IYquwUSafk77CkKghYiEi
ZZ3d5pXpjm+JbyCHtKUsh1CMZWT6kE7y+aHABBrDtHjg7owykTWIn9Q8J+IGGN4ZlghXlPy9J9VO
6uz0KIpUxbqnpsYY+fYaBMaQvmlr6+HDpm4RayB7I8a346ZJk3ZJ52EoXnEXAZwSPY82LGlr4/8K
MYIcQlmaLIIAYRVP0HBPRtYHQ4xwq6XR/y6QRPdcSwCnP2L0LaUHjTLuF5+Gwmwf5+WTZJ9ymoXd
SkMrCueLoxYUqJENWhkx/7VagZMFSjzBcF0RyeZhNKTcF+Nh3INKYnSJchrbEYzMYmXqFxjy1/8H
aZmKetovs3PsMUM2zyMxDx4ffNgh5l/QRGaBdx2M6kDjWnLqwOiZWb6n7uBJlpNBuAf50lsm5oM5
uTVzrjxWYEYDUnWwR082hSIaevh/h67TP78VkhfkvHPvsAeyJauCUY6ZRkMdkXC4w0w4DGuKujGH
oG59QM0uHpYBwZZIhGB3lylq5UFqtq5OXM/LrK8IZPXVK4U8BRDAayetHM/Zbz7swHVCINXwHOq/
LuP+Y3Hm+Vygc1naO5IYqXoZvZredO2Q3uw6xUMg5A6bfNYswQe1xiJzOfzlEoXjKnZb1l9Q4br2
boWFrDMZgI5KP7677OhyY/d3azvwqsxnVpvMxQ6uSpsbNVOCMBnuWrhum9LGJz2O6HJo2HV/BsO4
HlWYTLp/m/Qjn7aV7zPdiBGCgQ/5oC9dPtybRnElnC+PyRLEVg3+7v/dooiH+fk/ilBk/YS0vn0m
Ow3e5FSD/gOHBSYgGTIDhJMQHP6n1UXjXLwhwJ6q2wqVnRv/IAqqWqSEAPPSHnEdYXnxpKJ+f2XI
+oeYYT1l3Cobi3sXA2OIZcJZItVRED1LA18kuTdoFh61NyWDEfhnHiTJt5L1Bl0VaD7fJVyPd+lJ
TV7dQCLzs3VdYcw+BVTK8QOxiFmrVf0CD1D5iPDBJr87OcSZit4B1gMdl6SR12PqFTNY3u6Qnvdh
2jHS+SqFnDsMAsyPMGclr7JVjr1YcTjsD3O8aEfRq5rNOK+tL9zZl/tphNSXWuTMMy48OhA5CQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x217128BBFCAE8E0"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
content-md5: zafy4ruV0Q9XYwVOK3Fopw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36d5f86a-caab-466a-9b4c-89e76c208bef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206/baz/foo/bar

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
1pIWbhoPSKS1SgBy/MXLULEaGplmADw+a+nSzfMqHkzMIi+j7Z8xmM+8rq9LhBjEu3UrZ8lpn9ZV
1wMwPXqxiiy0pdmWKGMR6IHKqVKN8+bRDRJ9/7aCYoJZTRacAVtUCyODl94+LpISGX5Hn/aEyOMc
XjBoM4t1MUJWPdpMdOcmdZ0uCVwIkt9/a+U3OsOM1IUygKIr69iXDWWb5/C4xaSXISlYVb6HFMxQ
6cemPfZ/ymhVGvRF+orFlvz2bKrux6VAoBmZNH/Gq2vW2gIQ8c9uHB2IYquwUSafk77CkKghYiEi
ZZ3d5pXpjm+JbyCHtKUsh1CMZWT6kE7y+aHABBrDtHjg7owykTWIn9Q8J+IGGN4ZlghXlPy9J9VO
6uz0KIpUxbqnpsYY+fYaBMaQvmlr6+HDpm4RayB7I8a346ZJk3ZJ52EoXnEXAZwSPY82LGlr4/8K
MYIcQlmaLIIAYRVP0HBPRtYHQ4xwq6XR/y6QRPdcSwCnP2L0LaUHjTLuF5+Gwmwf5+WTZJ9ymoXd
SkMrCueLoxYUqJENWhkx/7VagZMFSjzBcF0RyeZhNKTcF+Nh3INKYnSJchrbEYzMYmXqFxjy1/8H
aZmKetovs3PsMUM2zyMxDx4ffNgh5l/QRGaBdx2M6kDjWnLqwOiZWb6n7uBJlpNBuAf50lsm5oM5
uTVzrjxWYEYDUnWwR082hSIaevh/h67TP78VkhfkvHPvsAeyJauCUY6ZRkMdkXC4w0w4DGuKujGH
oG59QM0uHpYBwZZIhGB3lylq5UFqtq5OXM/LrK8IZPXVK4U8BRDAayetHM/Zbz7swHVCINXwHOq/
LuP+Y3Hm+Vygc1naO5IYqXoZvZredO2Q3uw6xUMg5A6bfNYswQe1xiJzOfzlEoXjKnZb1l9Q4br2
boWFrDMZgI5KP7677OhyY/d3azvwqsxnVpvMxQ6uSpsbNVOCMBnuWrhum9LGJz2O6HJo2HV/BsO4
HlWYTLp/m/Qjn7aV7zPdiBGCgQ/5oC9dPtybRnElnC+PyRLEVg3+7v/dooiH+fk/ilBk/YS0vn0m
Ow3e5FSD/gOHBSYgGTIDhJMQHP6n1UXjXLwhwJ6q2wqVnRv/IAqqWqSEAPPSHnEdYXnxpKJ+f2XI
+oeYYT1l3Cobi3sXA2OIZcJZItVRED1LA18kuTdoFh61NyWDEfhnHiTJt5L1Bl0VaD7fJVyPd+lJ
TV7dQCLzs3VdYcw+BVTK8QOxiFmrVf0CD1D5iPDBJr87OcSZit4B1gMdl6SR12PqFTNY3u6Qnvdh
2jHS+SqFnDsMAsyPMGclr7JVjr1YcTjsD3O8aEfRq5rNOK+tL9zZl/tphNSXWuTMMy48OhA5CQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7D2AFD088CEC0"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
content-md5: zafy4ruV0Q9XYwVOK3Fopw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a0de58c-3a4a-4219-a854-f67eb8dcb2cc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206/baz/bar/foo

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
1pIWbhoPSKS1SgBy/MXLULEaGplmADw+a+nSzfMqHkzMIi+j7Z8xmM+8rq9LhBjEu3UrZ8lpn9ZV
1wMwPXqxiiy0pdmWKGMR6IHKqVKN8+bRDRJ9/7aCYoJZTRacAVtUCyODl94+LpISGX5Hn/aEyOMc
XjBoM4t1MUJWPdpMdOcmdZ0uCVwIkt9/a+U3OsOM1IUygKIr69iXDWWb5/C4xaSXISlYVb6HFMxQ
6cemPfZ/ymhVGvRF+orFlvz2bKrux6VAoBmZNH/Gq2vW2gIQ8c9uHB2IYquwUSafk77CkKghYiEi
ZZ3d5pXpjm+JbyCHtKUsh1CMZWT6kE7y+aHABBrDtHjg7owykTWIn9Q8J+IGGN4ZlghXlPy9J9VO
6uz0KIpUxbqnpsYY+fYaBMaQvmlr6+HDpm4RayB7I8a346ZJk3ZJ52EoXnEXAZwSPY82LGlr4/8K
MYIcQlmaLIIAYRVP0HBPRtYHQ4xwq6XR/y6QRPdcSwCnP2L0LaUHjTLuF5+Gwmwf5+WTZJ9ymoXd
SkMrCueLoxYUqJENWhkx/7VagZMFSjzBcF0RyeZhNKTcF+Nh3INKYnSJchrbEYzMYmXqFxjy1/8H
aZmKetovs3PsMUM2zyMxDx4ffNgh5l/QRGaBdx2M6kDjWnLqwOiZWb6n7uBJlpNBuAf50lsm5oM5
uTVzrjxWYEYDUnWwR082hSIaevh/h67TP78VkhfkvHPvsAeyJauCUY6ZRkMdkXC4w0w4DGuKujGH
oG59QM0uHpYBwZZIhGB3lylq5UFqtq5OXM/LrK8IZPXVK4U8BRDAayetHM/Zbz7swHVCINXwHOq/
LuP+Y3Hm+Vygc1naO5IYqXoZvZredO2Q3uw6xUMg5A6bfNYswQe1xiJzOfzlEoXjKnZb1l9Q4br2
boWFrDMZgI5KP7677OhyY/d3azvwqsxnVpvMxQ6uSpsbNVOCMBnuWrhum9LGJz2O6HJo2HV/BsO4
HlWYTLp/m/Qjn7aV7zPdiBGCgQ/5oC9dPtybRnElnC+PyRLEVg3+7v/dooiH+fk/ilBk/YS0vn0m
Ow3e5FSD/gOHBSYgGTIDhJMQHP6n1UXjXLwhwJ6q2wqVnRv/IAqqWqSEAPPSHnEdYXnxpKJ+f2XI
+oeYYT1l3Cobi3sXA2OIZcJZItVRED1LA18kuTdoFh61NyWDEfhnHiTJt5L1Bl0VaD7fJVyPd+lJ
TV7dQCLzs3VdYcw+BVTK8QOxiFmrVf0CD1D5iPDBJr87OcSZit4B1gMdl6SR12PqFTNY3u6Qnvdh
2jHS+SqFnDsMAsyPMGclr7JVjr1YcTjsD3O8aEfRq5rNOK+tL9zZl/tphNSXWuTMMy48OhA5CQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2046B3436254560"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
content-md5: zafy4ruV0Q9XYwVOK3Fopw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6f043fe-b819-4441-9758-1ea739cd31c0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206/foo/foo?comp=metadata

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
etag: "0x242D67BDF3460E0"
last-modified: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 415054c7-b905-4f33-9bd5-b0da0f0b746d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206?restype=container&comp=list&prefix=foo

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: c6157b99-2b6a-4402-b06a-918a192717a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206"><Prefix>foo</Prefix><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:52 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:52 GMT</Last-Modified><Etag>0x20C01542206FFC0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>zafy4ruV0Q9XYwVOK3Fopw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:52 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:53 GMT</Last-Modified><Etag>0x22CD6527A70B680</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>zafy4ruV0Q9XYwVOK3Fopw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:53 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:53 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:53 GMT</Last-Modified><Etag>0x242D67BDF3460E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>zafy4ruV0Q9XYwVOK3Fopw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:53 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-636117a8-4bf9-14f7-8a86-c6dc82e40206?restype=container

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
x-ms-request-id: d04e8407-f36e-4e1d-b797-dc1a5b088538
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:53 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

