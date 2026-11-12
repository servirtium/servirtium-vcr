## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f26c8b4f-30d3-1197-8c86-ebca3c088497?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).ReleaseLeaseAsync
now: 2026-11-12T00:48:16.2432570+00:00

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
etag: "0x20D603B61F8CF60"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3d9c22cd-a76c-4755-9208-07cedadbf8fe
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f26c8b4f-30d3-1197-8c86-ebca3c088497/test-blob-0ae75e2b-d548-2a5c-5ce3-8dae0b184318

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
2WxorPLU30ovRwdYDOc/1lzOlQhEPHx5L0GW8KLpBnRC0/DQn9ilVn+c2gHNBB10o7dRPYM6053v
732wPu6oRUGTFTn3bzaEKD6JqGF6rCojIkzrl8jxCP9S4LBb9BiQ85W/Ou/kfTSAzRREsCs8dEJS
jByiva14og05pY+GKTQm+bTMu3I7PqQXasqzrFfTFmttCGf87jbnR5fhq9il+aPgHrd3cLnQF053
ilLjxfW2ZY4jGCDMKgt95XPaWZPMcnAm0o6fXKWxnPAZhGPkA4KiK0VJgeGCFPSs+YtF9r66qhfh
vPJnFgjocnwwsqWnmOHxOC1Og/CPpL6Z8mIaa6YyX9pLA0ePOhQ8YA5lUmJPBWGqU76QbCcnURgz
zSOmzgfV/VPKW5WZYv0ZESPhKlFbSu0BcBfnofKzJLIvW23wlpIHj1QPhKrMEPHAd1sDRSbG14I2
pF3w7lxgFzbjaQaQKHuR2pv8TMZDNV8lJyqXr9+LaYPquvE0F6D4rm1z6afrME7fcmqLyYu88m/9
yscxyGdXVwCCpm6JXMP6BJ1Y0Eu4Ovbbtzx0AJ/4LceBNkzZxuYGG5GmaYngVhankMXtZCIjRZDQ
VRAq41dgiXimByV2IT23UrS6EdBs+mEmzHDaC8mkXvG7CXDV2zg6Rd8ROU7wMG6HNRFuaTO/Y1uv
Axbnhn6vAqk0uhfM4nZ7gMzxW8ESNpwBU9W3NfS+/KYVJdgiU79gYjelvHVXulOb8+lnzgeancx5
5TOp98y0db5wt7yeWCwMkPiJbHomqZiBHEILVy6ee4cLqW2Mt2tr8Ea35gOW/Jq8Wj0OEDBSUzya
J9uJqR2Q0Ts0k6+/gNmNHXwzb8OV6x+oTv3wkGpXuVUw8o+P4kcpJxTHYWnr/NpjgPO0HuR5BDy7
4Vogn0HQ3dlZjo1K/js1Ckeuzom1vVIijQ93o5txt+1S1ADsCIfT94SQkW1MGYK3fxOcyjazBSQI
/RIyWDo+6Neg9yo6SALA29YFJSvk1nSNwCOH1ey3n87c4wp1oZ5JUamWrCFYfDYQ3O9freD4JCee
pJgWthPq6FdbXmX3Sjo4u9SCTSpSNEPtdvn9WPHu47/j1/wGM5qWq8TJ/B7RGZG1JvILdtb9S3BU
KUAa7Y9mbXqmFHM+MYg57KJmiDclG11nSDH/4m3o5YuLsglafL40Y4+jKwQddvVp0ok0l8M4Lg3i
sqVeZosNvS7osn9/3nDjMSSogvBZStE8lQ/jtE7IU4P7eMkZ1vwElW3VNcR16vQZUWWej6wciGfT
ItB7KQnfIF/7g2WmyVsopOyDgxQMxqsbymLpKcPX3+9iRbQriGxj9RVlemeOcocJduu/mQRSxw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23F01A55C67E1C0"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
content-md5: sR55LDs0UqBsFkMU3qiP8w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 26fb63ef-499d-4bfa-b212-8235501031f6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f26c8b4f-30d3-1197-8c86-ebca3c088497/test-blob-0ae75e2b-d548-2a5c-5ce3-8dae0b184318?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 5f60255b-f6a6-9bf6-23a3-764484a7fc1b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23F01A55C67E1C0"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-lease-id: 5f60255b-f6a6-9bf6-23a3-764484a7fc1b
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 752e1820-1739-4daf-8190-a402a25a364e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-f26c8b4f-30d3-1197-8c86-ebca3c088497/test-blob-0ae75e2b-d548-2a5c-5ce3-8dae0b184318?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-lease-action: release
x-ms-lease-id: 5f60255b-f6a6-9bf6-23a3-764484a7fc1b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23F01A55C67E1C0"
last-modified: Thu, 12 Nov 2026 00:48:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fbd7498e-ed00-4d1f-9a72-3e468566c609
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-f26c8b4f-30d3-1197-8c86-ebca3c088497?restype=container

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
x-ms-request-id: 8792b399-b913-488f-a042-953fdf267576
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

