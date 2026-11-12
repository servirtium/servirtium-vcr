## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-d7a4d1ef-e083-cc83-43d1-a13611dc886e?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(False,V2027_03_07).GetPageRangesDiffAsync_AccessConditions
now: 2026-11-12T00:51:21.9231414+00:00

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
etag: "0x1D04EF45CD57E30"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3acf5e2e-14c5-4b0d-89a5-496ce874315f
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:21 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-d7a4d1ef-e083-cc83-43d1-a13611dc886e/test-blob-aad34256-5be0-9591-17fa-7c6c7d4448a3

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
etag: "0x1F6EDD71FAD68C0"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 90a723d2-98cb-473d-bea1-3897c585d336
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-d7a4d1ef-e083-cc83-43d1-a13611dc886e/test-blob-aad34256-5be0-9591-17fa-7c6c7d4448a3?comp=page

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
IWarvgXdzrLy/CKv9QWT48VaHZu14/SUQA6/iGMWT/+I/hWrMMppeHQhuOM44aASZpmmIyet7T1x
F332HkVP26wjJvbw6LL78KQmlCsQW15trSLKbyzY2xDXORlMc1ou0tw2FbuqIX7mqzKChlkSYLse
iHEjhGuAS0vmGK6YrnxK+MJO2kajw4uk48T5VVS2xdleLeroC01xtclvxAjPTvy1N46Xw4Z1e8Xl
f6Gmh/X3L1PVOoCSYe113SR8M/+C1JTIQx3FHwFT6LIlA4uryi7TeJW1+hR7I9ahIuZi+EfFYqoM
3kPYMQ9RgVHObF5hyRL1qbtqzdmATB9HJP0b8fBqX6Hhn+vq+0aFZHjCrbd4QFjTbE+MW5XQi5Ik
kQ0SNZBgYwy9gComCq105Ghhvp9ozuSkR4Sh3gQLEBNZxmo5cy7nYUmqu78urGGhGHcsb83yu8Ip
bu4Mv4UIsXAXzENDO3E6eVxVvRMkdZoiAMaM36BFZgqnEAVA26LDogpPF98dXdwG8vVwnf6uBfhT
6b+/e9HP0WU5nCtr+Z66kRsJ1F66BKLphu2q1MkM+QsM7fHiBCY4f0Z65MGxmvhXtgzjpTCamOUc
1vTkJfycLaMfXwyt14310VQXQB/hN+z0Ux69KVPacVQLxi0xU1pJ3bcekTrrqd9/7tTcglfFOp8I
79Le3wNPRe24oRFfw336zmNow6WxCKk+Pjt//u/8RouOKWSHa/6zzkxNMwjOHypX4rT0XXf5Vucp
n6HIz0f+u1uF0JoYcmNktPRZZNShcB4QKBw6B+gTldJ8Xstc6/8ET3isSE+QPnBRj6mDoPISiC+D
uKYrw7NzcTvHnBOXCMn0VBRc9CjOgOqs6Xg/kPTgatac2TJY2YvEOdYUyKJcuYfgjkvdtZMGtDi8
f9o7M+BG5zE8+y6WnHuJmLtRurdITy/wXwKoA7VDlSX6nFmxiAX2zeFwH75ZSfLQVB3XtfqAczCq
S9TenuR8+WUJm/8h1w+1W+zW1y9xlhUQ2K6Xa98qeigpBz0xFy/88yZYUK3yrnwNIVoNqZsAOLS+
zcU15I6G3iHX+NDShEO92uQJGUZnHikyikmEHNCMKc+Jcklpxw+X0XGMGrasO50XUM+39h5tVq+c
A1lFAcJQS84ASBL5UxLUckfV2wNzhU+sbcsB1DKwHBuazcO1UtCvO8/nq/KKHf2844TWmHurKX0K
mJT2TnacUCz3X4ZOHx93Jp80i9pcIU/ORfGu2YOg7qRGqrk7uOxYS1rGk753bcRlX3Lbd52jrndE
KAmF7neoVnDhCHRlPG2y2z9/lo6RV9gsSHoRxHcGo/xC9pDj013jHTxNlWRP/yIEKJtdIxjosw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CB33B1318F24F0"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-content-crc64: r25IyEUsOYU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dcd7775e-6f70-44ca-b63e-1f02a431d079
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-d7a4d1ef-e083-cc83-43d1-a13611dc886e/test-blob-aad34256-5be0-9591-17fa-7c6c7d4448a3?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:22.0070000Z
etag: "0x1CB33B1318F24F0"
last-modified: Thu, 12 Nov 2026 00:51:21 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 579507f1-acbd-41cd-9174-a46e2c4eb41f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-d7a4d1ef-e083-cc83-43d1-a13611dc886e/test-blob-aad34256-5be0-9591-17fa-7c6c7d4448a3?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
IWarvgXdzrLy/CKv9QWT48VaHZu14/SUQA6/iGMWT/+I/hWrMMppeHQhuOM44aASZpmmIyet7T1x
F332HkVP26wjJvbw6LL78KQmlCsQW15trSLKbyzY2xDXORlMc1ou0tw2FbuqIX7mqzKChlkSYLse
iHEjhGuAS0vmGK6YrnxK+MJO2kajw4uk48T5VVS2xdleLeroC01xtclvxAjPTvy1N46Xw4Z1e8Xl
f6Gmh/X3L1PVOoCSYe113SR8M/+C1JTIQx3FHwFT6LIlA4uryi7TeJW1+hR7I9ahIuZi+EfFYqoM
3kPYMQ9RgVHObF5hyRL1qbtqzdmATB9HJP0b8fBqX6Hhn+vq+0aFZHjCrbd4QFjTbE+MW5XQi5Ik
kQ0SNZBgYwy9gComCq105Ghhvp9ozuSkR4Sh3gQLEBNZxmo5cy7nYUmqu78urGGhGHcsb83yu8Ip
bu4Mv4UIsXAXzENDO3E6eVxVvRMkdZoiAMaM36BFZgqnEAVA26LDogpPF98dXdwG8vVwnf6uBfhT
6b+/e9HP0WU5nCtr+Z66kRsJ1F66BKLphu2q1MkM+QsM7fHiBCY4f0Z65MGxmvhXtgzjpTCamOUc
1vTkJfycLaMfXwyt14310VQXQB/hN+z0Ux69KVPacVQLxi0xU1pJ3bcekTrrqd9/7tTcglfFOp8I
79Le3wNPRe24oRFfw336zmNow6WxCKk+Pjt//u/8RouOKWSHa/6zzkxNMwjOHypX4rT0XXf5Vucp
n6HIz0f+u1uF0JoYcmNktPRZZNShcB4QKBw6B+gTldJ8Xstc6/8ET3isSE+QPnBRj6mDoPISiC+D
uKYrw7NzcTvHnBOXCMn0VBRc9CjOgOqs6Xg/kPTgatac2TJY2YvEOdYUyKJcuYfgjkvdtZMGtDi8
f9o7M+BG5zE8+y6WnHuJmLtRurdITy/wXwKoA7VDlSX6nFmxiAX2zeFwH75ZSfLQVB3XtfqAczCq
S9TenuR8+WUJm/8h1w+1W+zW1y9xlhUQ2K6Xa98qeigpBz0xFy/88yZYUK3yrnwNIVoNqZsAOLS+
zcU15I6G3iHX+NDShEO92uQJGUZnHikyikmEHNCMKc+Jcklpxw+X0XGMGrasO50XUM+39h5tVq+c
A1lFAcJQS84ASBL5UxLUckfV2wNzhU+sbcsB1DKwHBuazcO1UtCvO8/nq/KKHf2844TWmHurKX0K
mJT2TnacUCz3X4ZOHx93Jp80i9pcIU/ORfGu2YOg7qRGqrk7uOxYS1rGk753bcRlX3Lbd52jrndE
KAmF7neoVnDhCHRlPG2y2z9/lo6RV9gsSHoRxHcGo/xC9pDj013jHTxNlWRP/yIEKJtdIxjosw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2525943A6E57080"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: r25IyEUsOYU=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b19ee745-8b07-49d9-97a9-676b3c94a009
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: GET /devstoreaccount1/test-container-d7a4d1ef-e083-cc83-43d1-a13611dc886e/test-blob-aad34256-5be0-9591-17fa-7c6c7d4448a3?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A22.0070000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_6
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
etag: "0x2525943A6E57080"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4885490b-94f3-49b2-b05e-1cb292252455
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 6: DELETE /devstoreaccount1/test-container-d7a4d1ef-e083-cc83-43d1-a13611dc886e?restype=container

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
x-ms-request-id: 2a9a3d17-8232-46d5-9f1a-6162f4978443
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-a55831d1-96fd-f991-db65-782345dccf08?restype=container

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
etag: "0x2554E87A56C4FC0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3aa20910-bce9-4bdf-9f1c-31859cc7fde9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-a55831d1-96fd-f991-db65-782345dccf08/test-blob-52789ce2-c143-dd73-4957-0d9cdba87fe4

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
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
etag: "0x1D50507D44BDFA0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 710053d5-3f36-4d49-bebb-b7fef579df35
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-a55831d1-96fd-f991-db65-782345dccf08/test-blob-52789ce2-c143-dd73-4957-0d9cdba87fe4?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
WkO/snq45YaqVLn/19vdJ1iTe4eflnAPvntbpon1HTPmk8kBHR2NKrbxqO4HcwVueeVDSCz3RMPT
r/P/XD/9tDeGGUMS2wo7BVDRre6CB0p17SyjsdQG7k8FLm0pjs139PO2gVrCW53bCEPbJpfVUKip
im8SWQNjgCr0DKycEnaDWbj7y4bwspGPyKmRKsi3L93FgARdZJvvUwEvzk/wP/bMWMze2oUhuNfe
g5Fa0lViPNzP1pFyJfUdC3eEweRBnomyxNH82FVYpMcsf+EKlIGrzZFyIWhkWTPXwc4NnPfynOQI
pw2DZmSHdjLJRaYTE3b22fRTz3wgTmqeJBeGSgfQOuL8Ae10KGYs6qo2mhONw65YF8MCns1o6Fmi
5UFNASwq+AvDFhGJgrGNJ+TS6bNWEWBpLjNDzZsVlBmT0UIl3+l+C6IIya2czpQSdXfolf6mS9Pg
5NL55ypvroL39rBuZ0j7U90RTkizzGCeMVgkLP4b7IVvRfoXhSR3mRoqpdfjpA4v7UEhlf2LLBdy
WrXSSoGD3Akq/iJN4864mrQtiCeIuo1K9T+8+leI4xjjpCpvpE6Zp8jOuKXr4glzaPtIXqPw6qAo
iFVCxuKyohsJaT+kSfVllOFeugHoXhI1SZFbP4V08rqKRxv5VuDmGxaJ4XjKzh4F4srCkS+ePypC
DHxQVmKWlHeEGgLabD0AeJ7rXnyaa3tzVl26smGK6wfxtkpjlsW080wBRbQcK3aNwRmRs+Gtp6EB
3P8F2+IV+S776LXznOHYNmovmSXHVirmLfFH+TglRA+pYrnFrhhq60yGIUPAmSQ3uHx2fQ57OobV
Hq7wzgD11aSmSjooE4hSxK7ZQDXnJZPND0C8r8YALScz8JBqehxLkEufGk/pD6T0I7hgoflQ7fka
I76/OCbdpRwS9CP36EqRjrDqSApD4wCbyIsNoIsu4wKXT1dei1clwXUz1xqB/DtuzxNJZqXu1j++
I3CbzwWQ5BEgYJnzMgJYxIaVEAzlGsxPn9F45X1dqXkXoGfnivFvovIJYJuiepwR8KEeWMUz2Amj
SzAzGP+Uw7cf3JKacTqVJm4Z3LkxrSQ0ZvTbPlCz48deQz7BPInzdJ3jgp4Jdn5miTJWGvxQcp0M
/rIKuIVmbPnKPC371OnlJWccTSuGKu92dbUeXcjLDtChtT3W6bwYfBalPzpQa7VIcPSUMyRxhdTC
lEPPRw4w/y1dWh+sDjurBNAV4Ou0JQoA1uzUN9qrLy9oFFV4SDQHdT8N8xCWm2G46C9UXKToDW45
z3EiXMhTsSrvQ/rmM7ycDmurpzH5aTuKG06rV9OKgAbmP3jD5Bh3uULmpldn0rVzt044PGY9Pw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E4172B12C6A560"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: z4BFr9wroSk=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f779d72a-2c11-4f65-847a-457cdcfd95cd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-a55831d1-96fd-f991-db65-782345dccf08/test-blob-52789ce2-c143-dd73-4957-0d9cdba87fe4?comp=snapshot

### Request headers recorded for playback:

```
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
x-ms-snapshot: 2026-11-12T00:51:22.1520000Z
etag: "0x1E4172B12C6A560"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c7122b9f-3822-4e4b-8a31-dd5a7842775f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-a55831d1-96fd-f991-db65-782345dccf08/test-blob-52789ce2-c143-dd73-4957-0d9cdba87fe4?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
WkO/snq45YaqVLn/19vdJ1iTe4eflnAPvntbpon1HTPmk8kBHR2NKrbxqO4HcwVueeVDSCz3RMPT
r/P/XD/9tDeGGUMS2wo7BVDRre6CB0p17SyjsdQG7k8FLm0pjs139PO2gVrCW53bCEPbJpfVUKip
im8SWQNjgCr0DKycEnaDWbj7y4bwspGPyKmRKsi3L93FgARdZJvvUwEvzk/wP/bMWMze2oUhuNfe
g5Fa0lViPNzP1pFyJfUdC3eEweRBnomyxNH82FVYpMcsf+EKlIGrzZFyIWhkWTPXwc4NnPfynOQI
pw2DZmSHdjLJRaYTE3b22fRTz3wgTmqeJBeGSgfQOuL8Ae10KGYs6qo2mhONw65YF8MCns1o6Fmi
5UFNASwq+AvDFhGJgrGNJ+TS6bNWEWBpLjNDzZsVlBmT0UIl3+l+C6IIya2czpQSdXfolf6mS9Pg
5NL55ypvroL39rBuZ0j7U90RTkizzGCeMVgkLP4b7IVvRfoXhSR3mRoqpdfjpA4v7UEhlf2LLBdy
WrXSSoGD3Akq/iJN4864mrQtiCeIuo1K9T+8+leI4xjjpCpvpE6Zp8jOuKXr4glzaPtIXqPw6qAo
iFVCxuKyohsJaT+kSfVllOFeugHoXhI1SZFbP4V08rqKRxv5VuDmGxaJ4XjKzh4F4srCkS+ePypC
DHxQVmKWlHeEGgLabD0AeJ7rXnyaa3tzVl26smGK6wfxtkpjlsW080wBRbQcK3aNwRmRs+Gtp6EB
3P8F2+IV+S776LXznOHYNmovmSXHVirmLfFH+TglRA+pYrnFrhhq60yGIUPAmSQ3uHx2fQ57OobV
Hq7wzgD11aSmSjooE4hSxK7ZQDXnJZPND0C8r8YALScz8JBqehxLkEufGk/pD6T0I7hgoflQ7fka
I76/OCbdpRwS9CP36EqRjrDqSApD4wCbyIsNoIsu4wKXT1dei1clwXUz1xqB/DtuzxNJZqXu1j++
I3CbzwWQ5BEgYJnzMgJYxIaVEAzlGsxPn9F45X1dqXkXoGfnivFvovIJYJuiepwR8KEeWMUz2Amj
SzAzGP+Uw7cf3JKacTqVJm4Z3LkxrSQ0ZvTbPlCz48deQz7BPInzdJ3jgp4Jdn5miTJWGvxQcp0M
/rIKuIVmbPnKPC371OnlJWccTSuGKu92dbUeXcjLDtChtT3W6bwYfBalPzpQa7VIcPSUMyRxhdTC
lEPPRw4w/y1dWh+sDjurBNAV4Ou0JQoA1uzUN9qrLy9oFFV4SDQHdT8N8xCWm2G46C9UXKToDW45
z3EiXMhTsSrvQ/rmM7ycDmurpzH5aTuKG06rV9OKgAbmP3jD5Bh3uULmpldn0rVzt044PGY9Pw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24E227CB9771D00"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: z4BFr9wroSk=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 766dee2d-f76d-4a9a-8ce9-29714ba2c5d0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: GET /devstoreaccount1/test-container-a55831d1-96fd-f991-db65-782345dccf08/test-blob-52789ce2-c143-dd73-4957-0d9cdba87fe4?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A22.1520000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_13
If-Modified-Since: Wed, 11 Nov 2026 00:51:21 GMT
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
etag: "0x24E227CB9771D00"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c5ea180c-a154-4276-89d9-d40f73c79beb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 13: DELETE /devstoreaccount1/test-container-a55831d1-96fd-f991-db65-782345dccf08?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
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
x-ms-request-id: 2f7d660e-2d42-41a6-9ded-296308227528
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 14: PUT /devstoreaccount1/test-container-40983565-a779-5759-65c3-f400f343d829?restype=container

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
etag: "0x25A8A6EDA72E620"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2612040f-9293-4d4d-8109-0cf3e7d082f3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-40983565-a779-5759-65c3-f400f343d829/test-blob-eeed3452-c313-23e3-4899-389f8451449f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
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
etag: "0x2063DFED65C5AC0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 698e19e0-572a-42de-940b-eb1adf3713f9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-40983565-a779-5759-65c3-f400f343d829/test-blob-eeed3452-c313-23e3-4899-389f8451449f?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
qP8SjUzX/hHpjkGUctLBL98k5Qh4TiyiUnX432+50hN+VFf0MEvdezXbBYSCT7B22AjAYGs8J1rS
cDvX3x+iL7wtFR17zf6UR2rSnEioIALEgQZn+XKoQi38IcAPBZsWOdbIVTqS+wsJLBkAaYsRKk84
E10YOjZKhNLwfqs+hEHPu2Jy38vIMYb7XsxZp9ih6/Zw1vI9/f6fftBnonxfy6fXMK4onkqEcOHX
Hdxp8d35TpO1za1Okr1j0mH6YI8KnJIlgXYqeUys62YRZuAiNo3ybVPpqv36iJ7wxMvoihBRzYBJ
RG9mz9VGCeFHPSzcQZzUCPI8IPKVKvnYOrSAw2FVv5lg2PIdjJ59oqAcs0tyE4MvFIEdFayOtBl2
jpUgxUZ/8X6TfGiqt3xUvn5ReHeuZSYxUa/fN6rs0STYp/0JXN1anMHM35YahV0FyVYtPTuiyClu
73SXn7nTpqtE0Q9+SmKh9tu14YaPFsxR2m1TvpToNd7Ummxow/0I+Tjr1rNNh3/0jEZg7Oei39mo
RcVLgOcWXJwxqrD1ODPeredNpD8YBFLuXzJOh0n3MbqSwH44vHlR1HoXHNzO/lQSgj7/VTuaj0By
XCC1yNRSOXj1Yne1pvFu+8/FAeh2IGDdOwUK99x/+DE9xV9YnAumxOJj2JzcXdxNkFlr1I1X/DzA
143OSEGcdWlGd+CSFl/DHz0GEkfDAN0pvGeCEyOj5skil8R+13ygx2Iylub7u3r6qLVQUer0/Nev
pIvaGWFFo5EXb36aREfAZUrkkGr3LgHtiGtuUpTfLZvtzjLwxa0A7fNV40v7X2Ntj+ufEGttuHaJ
7ZH211D8OEHjrXYV0J+d46N2okq28SkHAMKpPx0vfxa8Z9gcChWiWKsJF7HtWL9LASzI9hYs0/tn
7teNU/gktC1fWGjHgNmO1EmerNp3GqcCXT7xZ4kAkJTctBs+FAWz5WKDjQBXhIBSOiLMjSYh8NQv
i/a6Mk2kX8jU6sy9T79D68d3842nq9i9nixnMwJtu8RHDokP+LIV3y03gpq0lOpjiKFeqfxGiN8d
/ZQgPSzGZi8HdkA1NPIVYhRfcCk+CAlCA6pgDxHIAIap8vse9KIBcRtqrB6pLVSvSUfo5xi23vSK
3TmBZVcdP3W5i0L39m1xXf4N01vrmdZVscXJ4Blu8xMHlBZpgAzDTG2p76ESuFLadokZqQuYnkRi
K7OSVF9bS5gu72JWCN3ySYfuQak1Q/ly72mPVUkIbvXRBlVYMfgNTaQI48jwg26sJ1+EqV2bLei6
H2T1y/VOJoFthAGImhiO4PQELF8wgmz74y7qg8SYNthtnRGTF4Guub1Hg/5sI4xH9cholgCIiQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27C2EB27AED4460"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: jAV7+aMNY/I=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dd70df69-17c8-4ad1-999a-2cec944115af
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-40983565-a779-5759-65c3-f400f343d829/test-blob-eeed3452-c313-23e3-4899-389f8451449f?comp=snapshot

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
x-ms-snapshot: 2026-11-12T00:51:22.2850000Z
etag: "0x27C2EB27AED4460"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9005ecc-e722-4248-95a8-5ef913bd8e44
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-40983565-a779-5759-65c3-f400f343d829/test-blob-eeed3452-c313-23e3-4899-389f8451449f?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
qP8SjUzX/hHpjkGUctLBL98k5Qh4TiyiUnX432+50hN+VFf0MEvdezXbBYSCT7B22AjAYGs8J1rS
cDvX3x+iL7wtFR17zf6UR2rSnEioIALEgQZn+XKoQi38IcAPBZsWOdbIVTqS+wsJLBkAaYsRKk84
E10YOjZKhNLwfqs+hEHPu2Jy38vIMYb7XsxZp9ih6/Zw1vI9/f6fftBnonxfy6fXMK4onkqEcOHX
Hdxp8d35TpO1za1Okr1j0mH6YI8KnJIlgXYqeUys62YRZuAiNo3ybVPpqv36iJ7wxMvoihBRzYBJ
RG9mz9VGCeFHPSzcQZzUCPI8IPKVKvnYOrSAw2FVv5lg2PIdjJ59oqAcs0tyE4MvFIEdFayOtBl2
jpUgxUZ/8X6TfGiqt3xUvn5ReHeuZSYxUa/fN6rs0STYp/0JXN1anMHM35YahV0FyVYtPTuiyClu
73SXn7nTpqtE0Q9+SmKh9tu14YaPFsxR2m1TvpToNd7Ummxow/0I+Tjr1rNNh3/0jEZg7Oei39mo
RcVLgOcWXJwxqrD1ODPeredNpD8YBFLuXzJOh0n3MbqSwH44vHlR1HoXHNzO/lQSgj7/VTuaj0By
XCC1yNRSOXj1Yne1pvFu+8/FAeh2IGDdOwUK99x/+DE9xV9YnAumxOJj2JzcXdxNkFlr1I1X/DzA
143OSEGcdWlGd+CSFl/DHz0GEkfDAN0pvGeCEyOj5skil8R+13ygx2Iylub7u3r6qLVQUer0/Nev
pIvaGWFFo5EXb36aREfAZUrkkGr3LgHtiGtuUpTfLZvtzjLwxa0A7fNV40v7X2Ntj+ufEGttuHaJ
7ZH211D8OEHjrXYV0J+d46N2okq28SkHAMKpPx0vfxa8Z9gcChWiWKsJF7HtWL9LASzI9hYs0/tn
7teNU/gktC1fWGjHgNmO1EmerNp3GqcCXT7xZ4kAkJTctBs+FAWz5WKDjQBXhIBSOiLMjSYh8NQv
i/a6Mk2kX8jU6sy9T79D68d3842nq9i9nixnMwJtu8RHDokP+LIV3y03gpq0lOpjiKFeqfxGiN8d
/ZQgPSzGZi8HdkA1NPIVYhRfcCk+CAlCA6pgDxHIAIap8vse9KIBcRtqrB6pLVSvSUfo5xi23vSK
3TmBZVcdP3W5i0L39m1xXf4N01vrmdZVscXJ4Blu8xMHlBZpgAzDTG2p76ESuFLadokZqQuYnkRi
K7OSVF9bS5gu72JWCN3ySYfuQak1Q/ly72mPVUkIbvXRBlVYMfgNTaQI48jwg26sJ1+EqV2bLei6
H2T1y/VOJoFthAGImhiO4PQELF8wgmz74y7qg8SYNthtnRGTF4Guub1Hg/5sI4xH9cholgCIiQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D5C59C6F673120"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: jAV7+aMNY/I=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c3efa84e-000b-452a-ac93-520252628ea5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-40983565-a779-5759-65c3-f400f343d829/test-blob-eeed3452-c313-23e3-4899-389f8451449f?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A22.2850000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_20
If-Unmodified-Since: Fri, 13 Nov 2026 00:51:21 GMT
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
etag: "0x1D5C59C6F673120"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5972e5a3-8dac-4bdd-8ec7-1fd14fb2323a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-40983565-a779-5759-65c3-f400f343d829?restype=container

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
x-ms-request-id: d4244e76-75cc-4e1a-9fc3-ce376dece7e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-e8faf89d-64c7-bca2-d44e-291bfc06fac9?restype=container

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
etag: "0x22AD0FF40920280"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c8038779-1e31-4539-be26-d5c1847adc61
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-e8faf89d-64c7-bca2-d44e-291bfc06fac9/test-blob-a2735672-ffe9-8f6d-bfa1-a38efc2f9fd8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
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
etag: "0x2100C11DED24C40"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 200e0c99-c969-4f39-898e-c7d9e3e07957
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-e8faf89d-64c7-bca2-d44e-291bfc06fac9/test-blob-a2735672-ffe9-8f6d-bfa1-a38efc2f9fd8?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
5BN0mx2Z5lQaiq6vQwiPQPv/9UCN5p+di2soJsEUwKWuUDbpkl+s2W8eh15RvUu3EWKT/DlfSv5z
1hCxcMCTBcoJAPLRpq6bUxzQb15ATM0fcRRegcNrTwY4dbtP+mivioKTR7xZ5Wq096gdj9qfMopC
kv+rNIQHnbHrmTHzTFmzIeXcrAQQxYypqokaTcAsmEIxDGhpA1X9jKoLbkw5watPam31w4aFMcxz
AYr77E/xvwDvwT/wSR2P3iBaBVc/cOney+NSNtW8q9qc9gHLAaBaGa5MSv9rXiBQZuRlKix0M5Gh
HCBsn4gqMhVlVFIbxN1/AOyo8ybpc23CAtDwVoGuJ8NwKeR/7nolIRfpBQnNNKIH5ipAy0Bqt6mz
qZ24OdyUti2Pq5r4ABJxg9EP/21j9c0u6XBWbluCBXE7zETdbec6VU/cPYgID+UYzkhuW7g8ULTP
ilBrPkjRDaUovDTNkxbq1Koeh7dEJtmKPZ8SFKm5/nuQDuKXzhYGCjDj31KxSzoyhIcOHsj8imR2
4QCpvvj8br64PIUzUwWTF3yGYUaH2PJk4JAiq9+zk4N9IO0WXUs35nCT+Q60/zGCegZMdSke7wgO
RN5o2sPeBakCtTIYfboxTnrV897jr+FeoDDYZx1aXzDkBxhtzwyttfRlskn+av1MGieuSPwpKpT9
CjqSBZ2LqFYCM3WhxH9uKD7qfv2XYDYzjEz2rBY0ut2Db8XSGq9W2grz/DaHqlanPyC+P6yXZakE
X3lRlPw/zXiYHVS6mw2Ok6PzpGT/q+H1T2z1dnow7Akbzrs2BUUOtC6+74wB7KMTL6wIpMFFBLOX
W0WPSVf9aDFKn81RV41d5fA1QbtV9GLI4kbOJ0hI1ckIn6kAfmrWwIdbt03Wwtceqr7REMP3QWfi
x2cQL0DoAskDSbjkXWaFX4A0+T0U8R9vr3yJd8UGEF1BHbcDxZFGc7SE0ngeOk1YS7BCw0gqztVH
oX/EXooE/Thboj+vgpnv7YaIkB+nUHUuMSsUw00VFk/huyQRghQpgNRAw5cOqMgXU9XBoj62oFAK
lS1f7zrrRovvzcZ03mpyXg9KZ4zdIIlj/W93U3QRKxvTBuznypCaVH0LHtoConRrT0QuaznELXWj
+/HKdPIX3aKrodd9ipN+sBIO0QGuYVr7DAMw47/iD9l3Q86ez+CK9EA4VgGc7cWwr7smtVtz9ZqX
z2fv5vriyZL+BkfE3+AyhN3BdgpZXh8+gDQEu1l+BE4zBwB4mw1GVY1vnud968/a9DF9sX6QPXFI
sWbF3g04gAH5kNjguejPeiF86sA4wJRlKcYoAFLPo8qPMOmmgHd/Nh3lhFr3+TtIrjZdE1KwEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CE70C4783051C0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: SczIIVquGSg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aabe08a3-b4d8-432f-88f1-533fb0e2ab8a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-e8faf89d-64c7-bca2-d44e-291bfc06fac9/test-blob-a2735672-ffe9-8f6d-bfa1-a38efc2f9fd8?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:22.4150000Z
etag: "0x1CE70C4783051C0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bb59f85b-376a-4384-be26-5baf3ee77beb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 25: PUT /devstoreaccount1/test-container-e8faf89d-64c7-bca2-d44e-291bfc06fac9/test-blob-a2735672-ffe9-8f6d-bfa1-a38efc2f9fd8?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
5BN0mx2Z5lQaiq6vQwiPQPv/9UCN5p+di2soJsEUwKWuUDbpkl+s2W8eh15RvUu3EWKT/DlfSv5z
1hCxcMCTBcoJAPLRpq6bUxzQb15ATM0fcRRegcNrTwY4dbtP+mivioKTR7xZ5Wq096gdj9qfMopC
kv+rNIQHnbHrmTHzTFmzIeXcrAQQxYypqokaTcAsmEIxDGhpA1X9jKoLbkw5watPam31w4aFMcxz
AYr77E/xvwDvwT/wSR2P3iBaBVc/cOney+NSNtW8q9qc9gHLAaBaGa5MSv9rXiBQZuRlKix0M5Gh
HCBsn4gqMhVlVFIbxN1/AOyo8ybpc23CAtDwVoGuJ8NwKeR/7nolIRfpBQnNNKIH5ipAy0Bqt6mz
qZ24OdyUti2Pq5r4ABJxg9EP/21j9c0u6XBWbluCBXE7zETdbec6VU/cPYgID+UYzkhuW7g8ULTP
ilBrPkjRDaUovDTNkxbq1Koeh7dEJtmKPZ8SFKm5/nuQDuKXzhYGCjDj31KxSzoyhIcOHsj8imR2
4QCpvvj8br64PIUzUwWTF3yGYUaH2PJk4JAiq9+zk4N9IO0WXUs35nCT+Q60/zGCegZMdSke7wgO
RN5o2sPeBakCtTIYfboxTnrV897jr+FeoDDYZx1aXzDkBxhtzwyttfRlskn+av1MGieuSPwpKpT9
CjqSBZ2LqFYCM3WhxH9uKD7qfv2XYDYzjEz2rBY0ut2Db8XSGq9W2grz/DaHqlanPyC+P6yXZakE
X3lRlPw/zXiYHVS6mw2Ok6PzpGT/q+H1T2z1dnow7Akbzrs2BUUOtC6+74wB7KMTL6wIpMFFBLOX
W0WPSVf9aDFKn81RV41d5fA1QbtV9GLI4kbOJ0hI1ckIn6kAfmrWwIdbt03Wwtceqr7REMP3QWfi
x2cQL0DoAskDSbjkXWaFX4A0+T0U8R9vr3yJd8UGEF1BHbcDxZFGc7SE0ngeOk1YS7BCw0gqztVH
oX/EXooE/Thboj+vgpnv7YaIkB+nUHUuMSsUw00VFk/huyQRghQpgNRAw5cOqMgXU9XBoj62oFAK
lS1f7zrrRovvzcZ03mpyXg9KZ4zdIIlj/W93U3QRKxvTBuznypCaVH0LHtoConRrT0QuaznELXWj
+/HKdPIX3aKrodd9ipN+sBIO0QGuYVr7DAMw47/iD9l3Q86ez+CK9EA4VgGc7cWwr7smtVtz9ZqX
z2fv5vriyZL+BkfE3+AyhN3BdgpZXh8+gDQEu1l+BE4zBwB4mw1GVY1vnud968/a9DF9sX6QPXFI
sWbF3g04gAH5kNjguejPeiF86sA4wJRlKcYoAFLPo8qPMOmmgHd/Nh3lhFr3+TtIrjZdE1KwEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E28F7AAB21B040"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: SczIIVquGSg=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c8366a56-0038-4d23-bb53-dff151aff16d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 26: HEAD /devstoreaccount1/test-container-e8faf89d-64c7-bca2-d44e-291bfc06fac9/test-blob-a2735672-ffe9-8f6d-bfa1-a38efc2f9fd8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-blob-type: PageBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 4096
content-type: application/octet-stream
etag: "0x1E28F7AAB21B040"
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1d29263-7758-4156-a4e4-be370f239dc9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 27: GET /devstoreaccount1/test-container-e8faf89d-64c7-bca2-d44e-291bfc06fac9/test-blob-a2735672-ffe9-8f6d-bfa1-a38efc2f9fd8?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A22.4150000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_28
If-Match: "0x1E28F7AAB21B040"
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
etag: "0x1E28F7AAB21B040"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 61f68be2-be74-448a-9c0d-1614a0f42917
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 28: DELETE /devstoreaccount1/test-container-e8faf89d-64c7-bca2-d44e-291bfc06fac9?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
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
x-ms-request-id: fd722a1d-61d9-4424-8593-87ec1e96dd98
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-b460d2f0-1046-ae80-2aed-0d5189ff28fa?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21EF709E0112240"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7deec746-7182-494a-90b4-cd050b4e2274
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-b460d2f0-1046-ae80-2aed-0d5189ff28fa/test-blob-a2b3fca9-3b52-6e39-2f8b-df511b718f77

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
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
etag: "0x1F75CD1A6718100"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e40e72ae-e59c-4705-9c6c-370bec2a1f64
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 31: PUT /devstoreaccount1/test-container-b460d2f0-1046-ae80-2aed-0d5189ff28fa/test-blob-a2b3fca9-3b52-6e39-2f8b-df511b718f77?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
3h/41CDCOSacNlpt6aixSYU8tBafDb21mPGEuzEvk7hdlXNpBlPa5sONBhvhzISH2ZXM37142NBh
QzwuPn71baOhD1M0R0MxYs1TEQei08xs/OGbYrT75L2iCMIXq6hFmJh4P7wxUpJSmnzwJcfIv3Bw
wUGcWQrvpiuWkT+BGrYkDXlvKZQPO6lPScg3C7/22khSp+pnqD6NiJmRm8BS0YDGyxhNWJXcYIaX
TRBCuJtsoLf3LnLMvWQ64qH6fqDp/HhIcD+mqIGzdkZkz1otS9D+JfsJW6IN+g6zE3b04eLlrlCY
+Udbxfc2Q7gsZ+4KDJbQ/Fml36HVOnYx85QKvpRkfiAJlVGJol8D0xfp4ZIfqAbfI+SJQM6vwr/Q
KdFiK4Qjx+nNAHdFRln5ogyK7FjkEUqOKpqw2z5RWtKRuXmOoKeSxRmoUqiOmt2Kj57CJdZm6xeG
1ADqc+yre6Wls43gawFk9yY/PL+i/5C9JUugjzX7K85hB8umqFEt/dYC6eZPqiScXS2wJ65Y5NRw
LE6gC+xwqoi/f2M1vU/UET7onxaqbnsnAzEISgMfCCP2NnwDjPLqkT9dkCrAZqDd3BVwcES+xr7T
eQe7aF+EoHY/PofT0IRM/g3WTN1QZpyQKm7urpjfOHC9LxPrLinf2fC0gScZCguQJHE253nggxJq
Kj7xlvHeXwYWFaBxYM/k93LtnOR1dx9iXYomqVD23awAgATr7kP/1SEgAvRqH8OiUfAG8+ct9bIe
jjhmt7a2Hzj0cODK+Akv7sbDVHUr+D7HhFdf7+nF0otRzV8KmB5rauK8dq7j11nn1gUhaqA98pb6
nzNeVi9OLp5UeSuqJVWnV+mSboGP5Kz+eBjkpGjqFNrID/nqDBSybUcQjl4uPLGweRK3q4QUarqG
YN0Xaoo1amVQ4RVbvUvV3wE6f1VO0DxnNCtVM2hWs6U+ZKw3mwO82iT53VucVLzH4suC2utkN5Ch
rzVf4Db8+i5wHFifnUP9faQxVfLgy99vjlGc09m62SwblezNXfrt/OMsLDdjJ0SIhFxGM+KdwORV
8FHlXyZUtUIsgwhXMCCqRFkPtJ+oC2YNFE58c6ZKftUHd2ypB5y82Hb0N6Q8MFQ7nO6JjQxFreTr
2EvX10Kc4QQyT7m0ATy8Utsps9TB0OP6Qde3wPDJwsmIvi9R5AA0WFWgCeCbh5uyzDswG/oQKQdn
3ZZq5CETaY3vK0MNa23b9Vt+IccDX7k8BfO1mKbPd5Qn6QdpyXM0jKBTq1tYpWHNVCafkQdAZH7c
Ld8tXtDmILOu5YFmcivnSpUmr7Ne5GCS50SAMOaN54WJjJuUBy3QbYunqb/fZ+L7uEdyGbTKfg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F3F4371D5DC60"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: zr2Q6fBnWfI=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 112902ac-f25e-4a3d-a319-a273848eb519
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 32: PUT /devstoreaccount1/test-container-b460d2f0-1046-ae80-2aed-0d5189ff28fa/test-blob-a2b3fca9-3b52-6e39-2f8b-df511b718f77?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_33
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:22.5440000Z
etag: "0x22F3F4371D5DC60"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 106301bb-742c-4fcb-9cae-444c1c7ad5ce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 33: PUT /devstoreaccount1/test-container-b460d2f0-1046-ae80-2aed-0d5189ff28fa/test-blob-a2b3fca9-3b52-6e39-2f8b-df511b718f77?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_34
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
3h/41CDCOSacNlpt6aixSYU8tBafDb21mPGEuzEvk7hdlXNpBlPa5sONBhvhzISH2ZXM37142NBh
QzwuPn71baOhD1M0R0MxYs1TEQei08xs/OGbYrT75L2iCMIXq6hFmJh4P7wxUpJSmnzwJcfIv3Bw
wUGcWQrvpiuWkT+BGrYkDXlvKZQPO6lPScg3C7/22khSp+pnqD6NiJmRm8BS0YDGyxhNWJXcYIaX
TRBCuJtsoLf3LnLMvWQ64qH6fqDp/HhIcD+mqIGzdkZkz1otS9D+JfsJW6IN+g6zE3b04eLlrlCY
+Udbxfc2Q7gsZ+4KDJbQ/Fml36HVOnYx85QKvpRkfiAJlVGJol8D0xfp4ZIfqAbfI+SJQM6vwr/Q
KdFiK4Qjx+nNAHdFRln5ogyK7FjkEUqOKpqw2z5RWtKRuXmOoKeSxRmoUqiOmt2Kj57CJdZm6xeG
1ADqc+yre6Wls43gawFk9yY/PL+i/5C9JUugjzX7K85hB8umqFEt/dYC6eZPqiScXS2wJ65Y5NRw
LE6gC+xwqoi/f2M1vU/UET7onxaqbnsnAzEISgMfCCP2NnwDjPLqkT9dkCrAZqDd3BVwcES+xr7T
eQe7aF+EoHY/PofT0IRM/g3WTN1QZpyQKm7urpjfOHC9LxPrLinf2fC0gScZCguQJHE253nggxJq
Kj7xlvHeXwYWFaBxYM/k93LtnOR1dx9iXYomqVD23awAgATr7kP/1SEgAvRqH8OiUfAG8+ct9bIe
jjhmt7a2Hzj0cODK+Akv7sbDVHUr+D7HhFdf7+nF0otRzV8KmB5rauK8dq7j11nn1gUhaqA98pb6
nzNeVi9OLp5UeSuqJVWnV+mSboGP5Kz+eBjkpGjqFNrID/nqDBSybUcQjl4uPLGweRK3q4QUarqG
YN0Xaoo1amVQ4RVbvUvV3wE6f1VO0DxnNCtVM2hWs6U+ZKw3mwO82iT53VucVLzH4suC2utkN5Ch
rzVf4Db8+i5wHFifnUP9faQxVfLgy99vjlGc09m62SwblezNXfrt/OMsLDdjJ0SIhFxGM+KdwORV
8FHlXyZUtUIsgwhXMCCqRFkPtJ+oC2YNFE58c6ZKftUHd2ypB5y82Hb0N6Q8MFQ7nO6JjQxFreTr
2EvX10Kc4QQyT7m0ATy8Utsps9TB0OP6Qde3wPDJwsmIvi9R5AA0WFWgCeCbh5uyzDswG/oQKQdn
3ZZq5CETaY3vK0MNa23b9Vt+IccDX7k8BfO1mKbPd5Qn6QdpyXM0jKBTq1tYpWHNVCafkQdAZH7c
Ld8tXtDmILOu5YFmcivnSpUmr7Ne5GCS50SAMOaN54WJjJuUBy3QbYunqb/fZ+L7uEdyGbTKfg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25E0DAF9A9751C0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: zr2Q6fBnWfI=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c37c162-caac-471d-9c59-d93c31d77d51
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 34: GET /devstoreaccount1/test-container-b460d2f0-1046-ae80-2aed-0d5189ff28fa/test-blob-a2b3fca9-3b52-6e39-2f8b-df511b718f77?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A22.5440000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_35
If-None-Match: "garbage"
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
etag: "0x25E0DAF9A9751C0"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9bffc1d5-dd1d-497e-be69-2e7d0d568975
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 35: DELETE /devstoreaccount1/test-container-b460d2f0-1046-ae80-2aed-0d5189ff28fa?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_36
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
x-ms-request-id: 403b2e05-2920-4a11-aadb-e19933efc3dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 36: PUT /devstoreaccount1/test-container-769a7e49-668b-cdf0-21fd-fcdce68f5242?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_37
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E1D8FF50602A0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 27a7023f-6f43-4ab0-84b4-ba1bc87eca6d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 37: PUT /devstoreaccount1/test-container-769a7e49-668b-cdf0-21fd-fcdce68f5242/test-blob-28425567-3ab6-b2a0-8062-84779e1acdd0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_38
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
etag: "0x200D7A8CBCD61A0"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c468e663-338a-4acb-b8d3-c2a19112c9ac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 38: PUT /devstoreaccount1/test-container-769a7e49-668b-cdf0-21fd-fcdce68f5242/test-blob-28425567-3ab6-b2a0-8062-84779e1acdd0?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_39
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
vw1SFmy2RAeb2ojB4ov7bGUECsNyocgO3uj2KeF4LgYwLB3YPTzWsBE6jdyx3s/1ZhgSmhAJXR1F
QzeDwBslIquCkbZtIy4pLVmyOBTsXP8YAcLJZpT2J87/k/kEUvD1FGowL00Yh0Lp6Gy2ViUJWOY4
ar5YXLwXi2rnbpA0JdtpvSOquy2xAHp/330nQNCp9joTy+cxnLitGaTjMRmytMORTJkCX525h2pE
2Xw/70uZPndVIVnzNyBq/KKIzs5hzCu6lvM3p5edWkR97MM7bilYSfOhXZNpnRV4l2L7MLmc4wxR
hFlYYpbgt8cVdkpdL414L4TbwG+XUfjevhA0oimL4Am36erQAOZcwKXLUyfKGmfUggA0wCOcuTJg
eqSGrBWdipVBpkWjpy+df//Jy/7QE6OoXx8pViDmGi+3b4ZC1ROQLsiSiXQhMdvRl0Aj0u00kGYA
3U31dDR0W4sW6zeoW6nsOZ01Poovhy1DV7/fwkdBg98fQvjGm7mTHS7oC0WkKDyXN5lQ/lHc0VYf
sRx1lJhE1GhXiBmxJZ3joSBcRnvony+DSIqt8YWOQ3ChpumdHoiVpDfdTJ8i5RH8bFwwf4rbNhHt
8ksNluLiyUWoD3+zRoOYxqJDC1KPYGN5sYQpXcPmxm/Xryw8hw1V+oNaetWSSCbYmLjnlyu/XZLo
lORduWyBwUkP3JZXWz+V7hHPNeWN5mleUMQK/y5EGFKaU/Mo90AW2LmMg2uPgT15Uaka7yesW617
/2modsIaysNEvQdLbPfQuFwsAGP9zs6Gka2FKSgq7fhFrffWbmL2cbioS8Q2LuWxSTbKgFpKfTGa
IeUUlKCaGc8PBb//+kr6NY+qVYIKUGLI0+DxX2yd+zDGO0x94twXDTL0Jygmsk/s0EvLnyeukNGC
TMHAqLlicQmOOL79fVOyk0dPFSk6oiGRBY8h0VwIF6t7+pUbV2V5krUel3mQ71P3GQzgXnuoSKqf
L6MpQJ+thiATgYK9ljvi1oNzGwqoABU8KbhPKLkv07LqfCfBT1EVcRBYfW7ROoLQ/Yf4NCyf9y6O
7RbnXV5n467P0xoTIIcxXar6T4Knau81fyoxN56GSoX5M2E6LhOx8JrAAWZovN3/xteCpaes5oIn
sd40NqwPSYiVGuwm9y+WSF7o52mIzcJMMXDHA6XdTEzeE3w0fbrusLje06Hw2c+n61xIxP8ZnuMc
5wQ7SEXit86gSOSyYcqk+TawqvogXFihHxdIlYhMxHSYGJa2smhy+xvTUJHr9ImRpMrJaPPp+4qs
migtmiFFU4NvGkk07kbNPq/eTQzGtSuOtvG+g1uArx0LCRhARGH6jfwNfNpAXbaD+ypECq1+5Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25E2B100957DE40"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: 24SmrwnUZG0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 926e57f4-550f-438d-8ee0-ffe9e90fa0c4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 39: PUT /devstoreaccount1/test-container-769a7e49-668b-cdf0-21fd-fcdce68f5242/test-blob-28425567-3ab6-b2a0-8062-84779e1acdd0?comp=snapshot

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_40
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-snapshot: 2026-11-12T00:51:22.6810000Z
etag: "0x25E2B100957DE40"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b74add51-51fa-4dc6-91e2-2f0569835a1d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 40: PUT /devstoreaccount1/test-container-769a7e49-668b-cdf0-21fd-fcdce68f5242/test-blob-28425567-3ab6-b2a0-8062-84779e1acdd0?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_41
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=2048-3071
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
vw1SFmy2RAeb2ojB4ov7bGUECsNyocgO3uj2KeF4LgYwLB3YPTzWsBE6jdyx3s/1ZhgSmhAJXR1F
QzeDwBslIquCkbZtIy4pLVmyOBTsXP8YAcLJZpT2J87/k/kEUvD1FGowL00Yh0Lp6Gy2ViUJWOY4
ar5YXLwXi2rnbpA0JdtpvSOquy2xAHp/330nQNCp9joTy+cxnLitGaTjMRmytMORTJkCX525h2pE
2Xw/70uZPndVIVnzNyBq/KKIzs5hzCu6lvM3p5edWkR97MM7bilYSfOhXZNpnRV4l2L7MLmc4wxR
hFlYYpbgt8cVdkpdL414L4TbwG+XUfjevhA0oimL4Am36erQAOZcwKXLUyfKGmfUggA0wCOcuTJg
eqSGrBWdipVBpkWjpy+df//Jy/7QE6OoXx8pViDmGi+3b4ZC1ROQLsiSiXQhMdvRl0Aj0u00kGYA
3U31dDR0W4sW6zeoW6nsOZ01Poovhy1DV7/fwkdBg98fQvjGm7mTHS7oC0WkKDyXN5lQ/lHc0VYf
sRx1lJhE1GhXiBmxJZ3joSBcRnvony+DSIqt8YWOQ3ChpumdHoiVpDfdTJ8i5RH8bFwwf4rbNhHt
8ksNluLiyUWoD3+zRoOYxqJDC1KPYGN5sYQpXcPmxm/Xryw8hw1V+oNaetWSSCbYmLjnlyu/XZLo
lORduWyBwUkP3JZXWz+V7hHPNeWN5mleUMQK/y5EGFKaU/Mo90AW2LmMg2uPgT15Uaka7yesW617
/2modsIaysNEvQdLbPfQuFwsAGP9zs6Gka2FKSgq7fhFrffWbmL2cbioS8Q2LuWxSTbKgFpKfTGa
IeUUlKCaGc8PBb//+kr6NY+qVYIKUGLI0+DxX2yd+zDGO0x94twXDTL0Jygmsk/s0EvLnyeukNGC
TMHAqLlicQmOOL79fVOyk0dPFSk6oiGRBY8h0VwIF6t7+pUbV2V5krUel3mQ71P3GQzgXnuoSKqf
L6MpQJ+thiATgYK9ljvi1oNzGwqoABU8KbhPKLkv07LqfCfBT1EVcRBYfW7ROoLQ/Yf4NCyf9y6O
7RbnXV5n467P0xoTIIcxXar6T4Knau81fyoxN56GSoX5M2E6LhOx8JrAAWZovN3/xteCpaes5oIn
sd40NqwPSYiVGuwm9y+WSF7o52mIzcJMMXDHA6XdTEzeE3w0fbrusLje06Hw2c+n61xIxP8ZnuMc
5wQ7SEXit86gSOSyYcqk+TawqvogXFihHxdIlYhMxHSYGJa2smhy+xvTUJHr9ImRpMrJaPPp+4qs
migtmiFFU4NvGkk07kbNPq/eTQzGtSuOtvG+g1uArx0LCRhARGH6jfwNfNpAXbaD+ypECq1+5Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25710F8EEA5BA80"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-content-crc64: 24SmrwnUZG0=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 497bcc93-756b-4a41-b467-b726dc351f1b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 41: PUT /devstoreaccount1/test-container-769a7e49-668b-cdf0-21fd-fcdce68f5242/test-blob-28425567-3ab6-b2a0-8062-84779e1acdd0?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_42
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: e39ffce4-8730-27d0-ee6a-2b29e42e8df9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25710F8EEA5BA80"
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
x-ms-lease-id: e39ffce4-8730-27d0-ee6a-2b29e42e8df9
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5245a0fd-8a56-4b98-9785-95bb2de7c546
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 42: GET /devstoreaccount1/test-container-769a7e49-668b-cdf0-21fd-fcdce68f5242/test-blob-28425567-3ab6-b2a0-8062-84779e1acdd0?comp=pagelist&prevsnapshot=2026-11-12T00%3A51%3A22.6810000Z

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_43
x-ms-lease-id: e39ffce4-8730-27d0-ee6a-2b29e42e8df9
x-ms-range: bytes=0-1023
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:51:22 GMT
etag: "0x25710F8EEA5BA80"
x-ms-blob-content-length: 4096
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 652d3880-9b89-4a51-8f3e-3c52bec164a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
content-type: application/xml
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><PageList><PageRange><Start>0</Start><End>1023</End></PageRange></PageList>
```

## Interaction 43: DELETE /devstoreaccount1/test-container-769a7e49-668b-cdf0-21fd-fcdce68f5242?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_44
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
x-ms-request-id: 3fa18625-a9de-4c9c-b421-f52e079014ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

