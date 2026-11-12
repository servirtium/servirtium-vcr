## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-0580e1e0-e58f-d352-2358-53dc86be7ab6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SetMetadataAsync_IfTags_Failed
now: 2026-11-12T00:48:24.4925826+00:00

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
etag: "0x267DF023B7227C0"
last-modified: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d660f931-120b-4bb0-9204-603758accc80
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:24 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-0580e1e0-e58f-d352-2358-53dc86be7ab6/test-blob-d8f855af-758e-9e51-22d3-1f535e49ebcc

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
XopOXr8hx5zfntB8wyE5up0GRKWgj81qkOLivMb/ddlthn77bxv2jY1c+fCk1dsAmWS1WARGK8+9
487cPgrW3yn3DzyjPkuBD7cXRJbdxrsH4iJhSR3UJluvPotNGU+DhhnGrcaeXVsYM0hNLuc43x0S
1VzodJUMI+jh8//AM/VolL58Fhn1aYTHSRbUhvh0dl5tO0TymhGDuordvWlbWP9S5Zkou8kEHWzY
ICt/N5zvbX2gUvixdfms+VyOF6saa/AWgqBeS7qVaR3YGXrmA4Lt7k/sugYHoW+ffMJtdQXAvbU7
abX7kCHDC+na2Fx/xfXZoSlcLrDpDuAwv8/4KPMYGFvEq5nN8V0tKa8dLMkTH7bMk9TcY48EUVrU
y9FSy+L2wr8AuxpbC6/LLgUBzOIXHJ8YK5QeO7TMv1o/+SaL217NJmkJE2SccIgkEDWKA4R4vK4y
Op9N14YKNPu/HBGJQFOnM6V4Dgk6e7oM+it/QrzVxj13WaC+f0/i/99p3FN2mtDi4s/e/66k+L7k
Qdxbi/E+6VXUEeay6bRVlg8q0J5mlV9anF/s9seO0mHh2T1zh3PtKvL9oYjpMPkaiGmfeicffqt8
Ae+RUvOORT+F0A924g6bPKasaPTXcGxm0W1e71g6wluS9oaEW9j/b1xJZF/qpKZaAz6AcxW3pZCD
K4CFL1XmSw605OyIF+DOrPiYjQwMfC3HBOwauU5G2lD1AC9XekAGYhlRNb+50etdssccHxiEdq9T
vSppzJHAbgmbkxaxdjG4kSryu0ZuDTIAvQaHKbs4cIp/BLwWnJWHkce1HT7UqzyVZI3tkbtp5bD3
aA+LOEROYyKMMXJ1ovWUayp+uO/0LBHK8cUtSt7PFh4MHjSG+1iDZ7ocR3rJIMKYWSaQ6i3AAzz+
wEd+IBlDvRpTaIPBDm/S+1A12OSWAdEDlfG4PivxTBr3hzsQBEeg2Ipfdbc+10q2vu7ciitXaL91
e4ooin/vYRxpyYY0wfcJlP9aNosaxL6mAoA8FcHuoB97moi8eE4LcBOa1A7Dgfz30/Ys/TE0W7bM
gYf/skxbeihnuSZvTByxT8V3f/Cw4oGDRULLwqLuRj/R8PbGDL7HP1nlXMfViIbZeq5rvdzGHJ4G
e2wKj7iGeHLnnVwl60MHsD+WyoW5rr278UfzgoliCtNXv5BRvK+hXuNU7eoptI9rYw2dMFEZTc2v
T55wk/bphZKJzSuytfOP9GyiZMDSkT23hx58xdqBPnLDoW0RMMvta2hYoOZkua4ZDTvldugN3b1g
uQvXbcC4B4647xOGfsShtPlXefBXU85wYreenMiKtsSvsHe/Fv6ooJlXq8qak493RMLvtWPMCQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DBC3B6F3FB2570"
last-modified: Thu, 12 Nov 2026 00:48:24 GMT
content-md5: 8lFvUYy7E+LP5UVxe6ASbA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 75bc48cc-0665-48bb-8e12-f6720833c5cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:24 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-0580e1e0-e58f-d352-2358-53dc86be7ab6/test-blob-d8f855af-758e-9e51-22d3-1f535e49ebcc?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-if-tags: "coolTag" = 'true'
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: adca8cd8-08eb-4af1-a193-47bb62ef9474
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:24 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-0580e1e0-e58f-d352-2358-53dc86be7ab6?restype=container

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
x-ms-request-id: a640cb4e-c4d5-4239-bd4b-4eddf7be2e53
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:24 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

