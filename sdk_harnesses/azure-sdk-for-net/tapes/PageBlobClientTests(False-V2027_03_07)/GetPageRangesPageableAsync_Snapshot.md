## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-96b5024f-cebc-493b-81ef-46706e47c2ac?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesPageableAsync_Snapshot
now: 2026-11-12T00:51:27.5265327+00:00

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
etag: "0x2576434ECBD8B20"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1568c5ea-4ee5-44f5-b99c-8df244ec3f2b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-96b5024f-cebc-493b-81ef-46706e47c2ac/test-blob-210f6a82-0829-0d4d-b7c5-de6be2bacbc9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
x-ms-blob-sequence-number: 0
x-ms-blob-type: PageBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C354202C46D2A0"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c15c88a-6dfc-44f1-8ff1-9ec62db8794d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-96b5024f-cebc-493b-81ef-46706e47c2ac/test-blob-210f6a82-0829-0d4d-b7c5-de6be2bacbc9?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
X1k5uDkRHa8E52oIae9ZkxLoephodHpHtaje9+/QZsckfBEUDQlycE1gHEKdRKTHbEtY+j8zYerf
8QORMya/M4Cj5OzeRYUJdQpKCFc3qnAEF4ujeGuH8BsmNBwF4T0moOnB+l+36SfGToU16FmSp0eS
jBubG7oUG/TRtxBpA5PMJGdudq8RTC1k3SnmUQjBlI3Uc1Qhi4UurN5r5jEWXEvxaMTyIzGXgT/u
Nz6RLsrsDyOClJA/q5jiQMnRpmb7TYHe9OhDz3BcPPEUM1RGnH0Uf9cOlMe6sr0rD+NnxtvZ8um9
sznhqD+yJlieKnhEm6NMvSaP7bm5I0IrGL+M9XYWO0FqielDMteXW21vHIhE5nRAGwi0SgQwA4/3
tY9/JjHhh+432RG5CItP95FLSQe55zFKTNpuYvE8OoZZTHxHFzU8jpSZDAxjhhN9ZFJz5LqIPc5d
NNlXcyT9+5+LX7sOCN9cD7pyINok58XH8P6eyVXL0Q6t6eJb5RtwmxFt1yZXblxyFtX/Fh3zOU0T
j4ImXzJKv46tYB79ACmfAoXJtw+fb4GiK7J/zLrxurCVR1WYSTzeIheXqQ49dRWrXxSYKoE9dB8B
hDOAy/PUvKZuZ7nUB7hI6pX3B8ZzZLac02ymWI8uWNI1lsUJXlckw+1nzw1c11hbTz/sRWxZjiB8
5PeHLmMWPw/mnnDzP4s900TYC5SoP/sUSglPQRJl3AiljHpgnZWJUY/+dTnnaBC0r3EogIOL06T7
cuNZxv78gMJoTrIR3TauTroEqsnCLeH5m5KhPVuFGbjWZCqxMIqRAfR2fhpdotE7eTHJhynaOUUB
YCtrW0Nn4zT6OnkM/R4vcqnUS67Hm/jAZcMpvJKP/Cvkr89fJqWxD5vmY2hYLnwSmRR/Be2XOsUy
q/V/PSeiaj5NJ01P0EwEIzsS4TiQZzdGFiJ9EPY9THQJLXuvMdJ0Q/kpCgYvw8jIe+GyhVmNoUO+
OSYEJFpIENvYRaPRVPFpnZ0/Z10wF1NZtZUUi8cbfIs38fircB+e4fkrV30l9ibwSOi8TjrmjSHT
qm7FM4UUvcgYmWP5vix+oIZjBcDWNL9uJELeXi5RUWPW18aw2a10F5m0DVzC9oq7Pq20g4hh/XWv
Vg5DNV6axkgAIuZmzcbY7u4mISdirC24IyCAnc7addpQAIOeMeE7GkYUwtSjVXDn25SaO9tNTarh
ihE9GSl5Ja0MFcxDOb0M6gfhTepZFM6wmcE6QDr+ArPYvabQ/gEcmpwmlz+jo6LWjlDUbP/Ah3VD
jX9oP+VzDRIZansWPOwGxLJNMn2ODPYeY7LpKZa0GDYwjHCBtFu2s4ktijgmv1FkzqhMclT3tA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21AA7C804F791E0"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-content-crc64: +4VkYka5lf8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5386eb59-ac54-491f-bbd7-78ef3f81f6ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-96b5024f-cebc-493b-81ef-46706e47c2ac/test-blob-210f6a82-0829-0d4d-b7c5-de6be2bacbc9?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
X1k5uDkRHa8E52oIae9ZkxLoephodHpHtaje9+/QZsckfBEUDQlycE1gHEKdRKTHbEtY+j8zYerf
8QORMya/M4Cj5OzeRYUJdQpKCFc3qnAEF4ujeGuH8BsmNBwF4T0moOnB+l+36SfGToU16FmSp0eS
jBubG7oUG/TRtxBpA5PMJGdudq8RTC1k3SnmUQjBlI3Uc1Qhi4UurN5r5jEWXEvxaMTyIzGXgT/u
Nz6RLsrsDyOClJA/q5jiQMnRpmb7TYHe9OhDz3BcPPEUM1RGnH0Uf9cOlMe6sr0rD+NnxtvZ8um9
sznhqD+yJlieKnhEm6NMvSaP7bm5I0IrGL+M9XYWO0FqielDMteXW21vHIhE5nRAGwi0SgQwA4/3
tY9/JjHhh+432RG5CItP95FLSQe55zFKTNpuYvE8OoZZTHxHFzU8jpSZDAxjhhN9ZFJz5LqIPc5d
NNlXcyT9+5+LX7sOCN9cD7pyINok58XH8P6eyVXL0Q6t6eJb5RtwmxFt1yZXblxyFtX/Fh3zOU0T
j4ImXzJKv46tYB79ACmfAoXJtw+fb4GiK7J/zLrxurCVR1WYSTzeIheXqQ49dRWrXxSYKoE9dB8B
hDOAy/PUvKZuZ7nUB7hI6pX3B8ZzZLac02ymWI8uWNI1lsUJXlckw+1nzw1c11hbTz/sRWxZjiB8
5PeHLmMWPw/mnnDzP4s900TYC5SoP/sUSglPQRJl3AiljHpgnZWJUY/+dTnnaBC0r3EogIOL06T7
cuNZxv78gMJoTrIR3TauTroEqsnCLeH5m5KhPVuFGbjWZCqxMIqRAfR2fhpdotE7eTHJhynaOUUB
YCtrW0Nn4zT6OnkM/R4vcqnUS67Hm/jAZcMpvJKP/Cvkr89fJqWxD5vmY2hYLnwSmRR/Be2XOsUy
q/V/PSeiaj5NJ01P0EwEIzsS4TiQZzdGFiJ9EPY9THQJLXuvMdJ0Q/kpCgYvw8jIe+GyhVmNoUO+
OSYEJFpIENvYRaPRVPFpnZ0/Z10wF1NZtZUUi8cbfIs38fircB+e4fkrV30l9ibwSOi8TjrmjSHT
qm7FM4UUvcgYmWP5vix+oIZjBcDWNL9uJELeXi5RUWPW18aw2a10F5m0DVzC9oq7Pq20g4hh/XWv
Vg5DNV6axkgAIuZmzcbY7u4mISdirC24IyCAnc7addpQAIOeMeE7GkYUwtSjVXDn25SaO9tNTarh
ihE9GSl5Ja0MFcxDOb0M6gfhTepZFM6wmcE6QDr+ArPYvabQ/gEcmpwmlz+jo6LWjlDUbP/Ah3VD
jX9oP+VzDRIZansWPOwGxLJNMn2ODPYeY7LpKZa0GDYwjHCBtFu2s4ktijgmv1FkzqhMclT3tA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D72CA8E71A24E0"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-content-crc64: +4VkYka5lf8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7acf4474-5c89-486c-88db-1d9d972eee57
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-96b5024f-cebc-493b-81ef-46706e47c2ac/test-blob-210f6a82-0829-0d4d-b7c5-de6be2bacbc9?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:27.6450000Z
etag: "0x1D72CA8E71A24E0"
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2477dc06-126c-40c5-89b4-0e48cfa08f05
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-96b5024f-cebc-493b-81ef-46706e47c2ac/test-blob-210f6a82-0829-0d4d-b7c5-de6be2bacbc9?comp=pagelist&snapshot=2026-11-12T00%3A51%3A27.6450000Z

### Request headers recorded for playback:

```
Accept: application/xml
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
last-modified: Thu, 12 Nov 2026 00:51:27 GMT
etag: "0x1D72CA8E71A24E0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 653a613b-dadf-402d-a862-e344b91bd9d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange><PageRange><Start>2048</Start><End>3071</End></PageRange></PageList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-96b5024f-cebc-493b-81ef-46706e47c2ac?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
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
x-ms-request-id: 02d96bd7-dec9-4430-8bcb-38c2797ac2e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:27 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

