## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8913d7fe-4d26-d53f-424d-b8643dd3dae0?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).Ctor_StorageAccountAudience
now: 2026-11-12T00:48:54.8654972+00:00

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
etag: "0x27AABE40ED76BE0"
last-modified: Thu, 12 Nov 2026 00:48:54 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4bc09783-eefc-480b-b890-b3a18ac2b632
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:54 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8913d7fe-4d26-d53f-424d-b8643dd3dae0/test-blob-7ff7eb66-c6cc-b2c5-a4cc-9ebe9d1fd585

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
leTZlk76CQ+T8Z0SiTg697Bz1oa5ZPlWUDIjrAsTrv54lxfB+Kw5A84D9jWvLEwKEsG0yf1TJjHr
g0Yb110Ef0OemfEgeP4EOtO4tm3EpiPlGZlJX+QBJHHm1nVlHStw/3fxEZNb6prCr48pmnDDJ9wj
Nr7Duh9enHWAOaKJnh2nR7b20pWQii7/h7BV2IkAI6+ZQuZtrURYknQd27D4ORBxgVO5zFRHk6uP
wzNvCcTrfxby71w2Oppynj8gcq5+B02f41Y2RlZaUq863ukR6ImwMluZBUmzO0e4Ry4UJyD9ELvl
zyVutDjAl52t+1uwYLW2bz9S5QIE66gOff8oRiqOPc0tLBljQn0j2G2rBkDsCOd4Xrfgqiu54ON9
XzY5mFFyH72NgjOcUi3CLwyUWOVnInUYr+dzrZOhdEs15eNG6kAbOOeCXoWz3AuKHnofJIj+FTzB
Ielq/3Ep6w3oZm1Ke0XMeR/95cTvZNPb6Y8Ygk/DNs+mhclXsTl1WHJ4ynWeP6I1U6toADB40bwV
jhXiEWm+JC+dpPZ7dcflh4xSd5pdPans4i+kWjWeLbMNQSMkk0cIuqVFAJurud7kgnmkJlohuFBs
9S45Gcr5/nZDbjOjwfRESb30FzwNQShRv9i8+gdY64nTt54ZzqDbSwElaEuqQMCFX92cLaATXrMF
6FnyPQRv6oOq0ApVK3odGMs759ndp38XN5spu73ov1jqFOZG6Q79tn3H/3C2LzRjfxXU2HfaJ0Ha
2gVpRS7GwhGxahaT1i68PTFcFqcOYAhmxjyoE+bhEOylaw4JlHBOAT1fBcUdz6nmGJtFfhGZzHr9
An/yHq4qz1op7mofs6nADRRqr1tCSfeSwftLnJHbC5+UC5LxW+OONTVr8+A+xmTxhHD8LxwfuriI
X1yz3jPITuLKi6cWz7Ix23kl11YWVPuWWRch39yCdFHZafuH21YBoqX+dDq927W+y1Oj+eJicgth
HIQbp28GRxZWPGa2qgAiIzWwF+DA2X5iYxOJ33tud/fwJb7S5vs2+CwkZ55PByFTgNatsVoroEMG
uURbfWeb58VuxoRBUD05eh+znHLfE1vyNV+kwMWdxIV7zCy32nrEiH/Z4EGdES+YdDc6dwTQJqbo
aEcI9yf/0QH+xYQQgp+l7xPyBjMaVSMwC0yOYk2AqqWGznEzvJFY2Q4/nkyqh/KXlYjw3h9yzhMj
2OvacG60fhrfirMtcTOCmiwk27fXhYRZ983Ej8yGEwBeD+OmfWigix8xy/0/aSNVbkTyTvJcTFJn
gHmh7+5OWHayz2FP3BzEhFCXprmGGo2pbyGIk8QNAsORP/zv/psx4nKGjJnBBZEnLsqixKaY4A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E890D93F070300"
last-modified: Thu, 12 Nov 2026 00:48:54 GMT
content-md5: 9Al3aTGhPO5tdToTcX6ZtA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5f958881-1b33-4d0a-875c-25a77e2048b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:54 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: DELETE /devstoreaccount1/test-container-8913d7fe-4d26-d53f-424d-b8643dd3dae0?restype=container

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
x-ms-request-id: ccb27f57-4e6a-4579-a735-513e26857087
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:54 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

