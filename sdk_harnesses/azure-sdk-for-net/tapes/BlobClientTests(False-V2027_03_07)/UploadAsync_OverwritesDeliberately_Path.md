## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d37037d8-6625-4250-1206-257943a29e0b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(False,V2027_03_07).UploadAsync_OverwritesDeliberately_Path
now: 2026-11-12T00:49:01.3777754+00:00

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
etag: "0x1DE0F4032A15E40"
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 21b06110-30bd-4f1a-8643-31198eb4949e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:01 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d37037d8-6625-4250-1206-257943a29e0b/test-blob-8a523ba7-ceeb-859f-3502-9706f0757b05

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
6+1B9fGgGOFoAwPjti+pkEnlJ4gLwJUJl+qdIs9JUp2KH41WYakZBiNwIejLvM4GWQa8Ck3z+itX
OF4GA/URHrBmWJeiUi+gyyFlmp6tPtocl8nJjUdPlyVh/yhKEgItXwM3ZWM3ZAbXHD8sjV+NqvqD
6mwsSJFpFsFxQFMGVbgeODubdth25TLC8nAIIgnG1FUuxiiWARdxzk6ixSSz0MaGDlUk8TMhDQQ5
aVYgYPO3q2v+2I6QiDYkKaeK0x8ODyGqghS0oeMhDLkjXJfAUW1b6xq4tPc39YYeAMiLlznlK1k0
dd3fAgmI3MvVbCufY9g6L+gEVVspc4yOlqEalXWAPjE9jNuQe+gQMNcrYYlaf53vUWdQ4NX+CgJR
UGxobUdWVS75Ydb8qbMA9CWD/hEDMxYDKkMNL11cPoHYPit7qMOQ1QxaYB3G86e0UOywewzxTR1V
ZEIDSCXQnSJVJGuIhEth8igEqNL5PTebWN9wq8N05/AOJUOAjY3nicL6cM48LMugTojk7aVKXCYK
Z+9FX/Ff4D16el4I4WWbHB4Q/sxpXywU0F06kPlLw8kcdiWdoSnQm4+RwrJsmG0jSdCGOl1ZoQjD
MY+UJFBDLraV62pA/Xr0P2M915x5pzfwF0YpxYlswtQd2nCaPHY/TpT8160C40tVkfr6HMprSYlX
ow0JGWksKCiVIiMKWgLs/YgIfdCK7TP70zOPcqYKsZHmQphpNTUq0K6EbMAoSzf3DR9BY8u5zbbZ
DkU2nbaCinGRIxhqg8dT3a0hBYBz0oj7l2SGyU7FLXTijyfv9DL4AuJOligfjYpX7oYemMc1Zjy9
OgVS+8EjzPWjiPOgZOh6KQOeJDtf3AnZL9vIppWsrCnrMrotpQYgK8oyewWXt4mdo2/ElkEAXV37
eMzmWyZg9tvJtTItTYP8fvhxLWEEQnhRKgIl5xbo6tRdMSw6OtCj0YQqzQFXb1bryBhIjy/89zZU
lDAjOg/E4ctd0BxWwUQozVvc2nV2+bqsOR7+n1qkYDn25qWfgJZ1Zes2+p46lQfTH8LUIBzA3Zt1
dwHwxkFwuHDiX9qfiU3EZnSKQP8bcaQXKn+Y0EAcNQgJKQiVhZ+pxUEuWDUsNJZ0D7qoNp2cWgZc
2JzC2OgvxSnSlV9FL+DV4Hu97Rlu6vXpJMGGdP9rbc8COawC5+xZ/pILWp83L9/Z0lUh3mzs7e2m
2LQnqVAqZiePQvYz0vmOZO6GY5BVsfThrKKpSY9iFUu/XA44MlVC4PR3p+zppf9ck3l+ZYpdUCe/
Rf2ugRyYLS2qdHbrVTKZRIKc3QoI9waiTLYV5LDAYQvneOxXk1/Y33m/PzGJcT1H5SEIwXIctg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20C0981E57E9720"
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
content-md5: 2LmMkPH+IahwXqK52vCBmQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eff90aa4-f415-46af-b54a-79ca0e65749c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d37037d8-6625-4250-1206-257943a29e0b/test-blob-8a523ba7-ceeb-859f-3502-9706f0757b05

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
6+1B9fGgGOFoAwPjti+pkEnlJ4gLwJUJl+qdIs9JUp2KH41WYakZBiNwIejLvM4GWQa8Ck3z+itX
OF4GA/URHrBmWJeiUi+gyyFlmp6tPtocl8nJjUdPlyVh/yhKEgItXwM3ZWM3ZAbXHD8sjV+NqvqD
6mwsSJFpFsFxQFMGVbgeODubdth25TLC8nAIIgnG1FUuxiiWARdxzk6ixSSz0MaGDlUk8TMhDQQ5
aVYgYPO3q2v+2I6QiDYkKaeK0x8ODyGqghS0oeMhDLkjXJfAUW1b6xq4tPc39YYeAMiLlznlK1k0
dd3fAgmI3MvVbCufY9g6L+gEVVspc4yOlqEalXWAPjE9jNuQe+gQMNcrYYlaf53vUWdQ4NX+CgJR
UGxobUdWVS75Ydb8qbMA9CWD/hEDMxYDKkMNL11cPoHYPit7qMOQ1QxaYB3G86e0UOywewzxTR1V
ZEIDSCXQnSJVJGuIhEth8igEqNL5PTebWN9wq8N05/AOJUOAjY3nicL6cM48LMugTojk7aVKXCYK
Z+9FX/Ff4D16el4I4WWbHB4Q/sxpXywU0F06kPlLw8kcdiWdoSnQm4+RwrJsmG0jSdCGOl1ZoQjD
MY+UJFBDLraV62pA/Xr0P2M915x5pzfwF0YpxYlswtQd2nCaPHY/TpT8160C40tVkfr6HMprSYlX
ow0JGWksKCiVIiMKWgLs/YgIfdCK7TP70zOPcqYKsZHmQphpNTUq0K6EbMAoSzf3DR9BY8u5zbbZ
DkU2nbaCinGRIxhqg8dT3a0hBYBz0oj7l2SGyU7FLXTijyfv9DL4AuJOligfjYpX7oYemMc1Zjy9
OgVS+8EjzPWjiPOgZOh6KQOeJDtf3AnZL9vIppWsrCnrMrotpQYgK8oyewWXt4mdo2/ElkEAXV37
eMzmWyZg9tvJtTItTYP8fvhxLWEEQnhRKgIl5xbo6tRdMSw6OtCj0YQqzQFXb1bryBhIjy/89zZU
lDAjOg/E4ctd0BxWwUQozVvc2nV2+bqsOR7+n1qkYDn25qWfgJZ1Zes2+p46lQfTH8LUIBzA3Zt1
dwHwxkFwuHDiX9qfiU3EZnSKQP8bcaQXKn+Y0EAcNQgJKQiVhZ+pxUEuWDUsNJZ0D7qoNp2cWgZc
2JzC2OgvxSnSlV9FL+DV4Hu97Rlu6vXpJMGGdP9rbc8COawC5+xZ/pILWp83L9/Z0lUh3mzs7e2m
2LQnqVAqZiePQvYz0vmOZO6GY5BVsfThrKKpSY9iFUu/XA44MlVC4PR3p+zppf9ck3l+ZYpdUCe/
Rf2ugRyYLS2qdHbrVTKZRIKc3QoI9waiTLYV5LDAYQvneOxXk1/Y33m/PzGJcT1H5SEIwXIctg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F4692CE15149D0"
last-modified: Thu, 12 Nov 2026 00:49:01 GMT
content-md5: 2LmMkPH+IahwXqK52vCBmQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4c61a4df-6094-4b3b-8c5f-2c92bb1425c7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-d37037d8-6625-4250-1206-257943a29e0b?restype=container

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
x-ms-request-id: 5ba9dc20-3ec1-455b-a7ae-5974fb4ea898
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

