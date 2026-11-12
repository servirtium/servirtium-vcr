## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-07fb935e-c917-3915-fb06-2149b752fa2f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadToAsync_PathOverloads
now: 2026-11-12T00:47:59.9731122+00:00

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
etag: "0x249A3E231856000"
last-modified: Thu, 12 Nov 2026 00:47:59 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9c52f2ac-1e29-4fb8-96c2-a05279ad1aa7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:59 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-07fb935e-c917-3915-fb06-2149b752fa2f/test-blob-8d9df47a-577c-f079-abd7-1f24d32f93d8

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
na5ux10JrGBkw7KMMAzRes2TvNmvk1km/m1Nj1QgNQaUgYQ3EcuzVeebolMXiQjvNad7JJUgfwlV
R8nwuxwLQ46r96+ImmgB32fyFPAGD3RkXlqspRBwcwJ64skCwpnKj1/Ea5FZZ5s+ekQuLmsZTzhU
jF3CX559O4SsDbif/xzOJ4SRQaPjCva/bivMQkWWYZKRrTY7CDDARzANrFnin3onXwbmhw2UcYFn
AvBzsfg/FqwlDVHmkh9U0fpy1V6c3M+wpOI+r9mF/Dy00wU/TJU3zpatvZEoQcznkrYTIZsjyiYh
ww0WAGbToBAVMr4ZFIRlOwfH7x89h2MVVx0jcdugkQnfHomHIc0w2h2BEw8NzX4xruaUW9sH4zuq
AKlIry41dKC1OvX73Rk5lhUBvHNUCIme8sP0CzUt1zpN3SEk5yruS59uWJOINdHNW8TGBSfIVvgf
qb1qQWhrh2K7rv/3FK/qEnDU5a/2FrzyJrBwZ9IThYcpBD1shAo2AtAwzYfR1UYV2/K283BIKZMA
eBq4+h+QqCh4zhBxfo5mnuLfxkk1IFFpWozfXJIX4NuqbAvwfQiwoCReWQc2pF1jUFSNaWNKy1jI
Tp+SsEuWYe00xhGDdSHaLiYk18ZKM7YvfAw9iXd4YKCzJy5oHe/Zx/gZAd1L4Nozsjo9JfSRfhvp
YzQ/Wdd1vGZxz07ychA2Sw/NMDHZ5JsxCtc9OzqsIqkTf7q7mW4ho0R32RGMQEApBtrkw03pEH6Y
Dk4AOIErxK2l3/NWerGhrI3tYQqJpMmXFDRgx15bKW87I4sfIWvDSxVj52BM0owoQxbA/K5zDmmF
aSNNyv1OSbaEGlcmgYshKRX1Jb1pSkGnN4RHmizAyBQhmrdHdYEYFZ2qyLg1AsKLn9KYfeisGx7i
pZN4B66Jw1JDBObT2bSU3RAfv4GIcjTBvPtaKEordX6ZZc/unw7uIAVm8v7bt8UeA6DYjFycWTNe
t0qyL5oHF45oOnTkpj4CMJ58IoA25gQ2PCWpU+gh/Aucj+fDPPFqXtpvc31ROlxh1Vy+IDazJ9BF
fPJ1XsSlRj5oRxZWP/SsEsSlxnOH5ALISH6MY9vU6WgXfb/+9AAWyiw+6fJFC5ZnEQ5yDmFdvpjw
rBVGGeJik16uP8E1rR3EjvxGSPsPgzznJVHNYtoHur8nDUfq0LBJ3FWTlszUMmTwrn9kFnWc4SnY
XvORlDGDp4UCDZ/V2r5L/Gule+xwE/Lt3bRboqNJiiweEXK8uEgkEO9H0iXEGtTBGRkK92U9aEoB
pLd9KAXhuYNzt8hLjkQjgGv8KUDNKcLfmomJP5LH4KknuxSQp+jpZRmhUWMLdYrV5nf5QD4JNA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F63BEF086EDB30"
last-modified: Thu, 12 Nov 2026 00:47:59 GMT
content-md5: wPH88gRwrC/1noQjNDKj7w==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 48ad57fa-9d24-4aa3-b866-eefc975c78a7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:59 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-07fb935e-c917-3915-fb06-2149b752fa2f/test-blob-8d9df47a-577c-f079-abd7-1f24d32f93d8

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:59 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:59 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x1F63BEF086EDB30"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 18a608af-3c5a-460b-84c3-a3d372458aff
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: wPH88gRwrC/1noQjNDKj7w==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
na5ux10JrGBkw7KMMAzRes2TvNmvk1km/m1Nj1QgNQaUgYQ3EcuzVeebolMXiQjvNad7JJUgfwlV
R8nwuxwLQ46r96+ImmgB32fyFPAGD3RkXlqspRBwcwJ64skCwpnKj1/Ea5FZZ5s+ekQuLmsZTzhU
jF3CX559O4SsDbif/xzOJ4SRQaPjCva/bivMQkWWYZKRrTY7CDDARzANrFnin3onXwbmhw2UcYFn
AvBzsfg/FqwlDVHmkh9U0fpy1V6c3M+wpOI+r9mF/Dy00wU/TJU3zpatvZEoQcznkrYTIZsjyiYh
ww0WAGbToBAVMr4ZFIRlOwfH7x89h2MVVx0jcdugkQnfHomHIc0w2h2BEw8NzX4xruaUW9sH4zuq
AKlIry41dKC1OvX73Rk5lhUBvHNUCIme8sP0CzUt1zpN3SEk5yruS59uWJOINdHNW8TGBSfIVvgf
qb1qQWhrh2K7rv/3FK/qEnDU5a/2FrzyJrBwZ9IThYcpBD1shAo2AtAwzYfR1UYV2/K283BIKZMA
eBq4+h+QqCh4zhBxfo5mnuLfxkk1IFFpWozfXJIX4NuqbAvwfQiwoCReWQc2pF1jUFSNaWNKy1jI
Tp+SsEuWYe00xhGDdSHaLiYk18ZKM7YvfAw9iXd4YKCzJy5oHe/Zx/gZAd1L4Nozsjo9JfSRfhvp
YzQ/Wdd1vGZxz07ychA2Sw/NMDHZ5JsxCtc9OzqsIqkTf7q7mW4ho0R32RGMQEApBtrkw03pEH6Y
Dk4AOIErxK2l3/NWerGhrI3tYQqJpMmXFDRgx15bKW87I4sfIWvDSxVj52BM0owoQxbA/K5zDmmF
aSNNyv1OSbaEGlcmgYshKRX1Jb1pSkGnN4RHmizAyBQhmrdHdYEYFZ2qyLg1AsKLn9KYfeisGx7i
pZN4B66Jw1JDBObT2bSU3RAfv4GIcjTBvPtaKEordX6ZZc/unw7uIAVm8v7bt8UeA6DYjFycWTNe
t0qyL5oHF45oOnTkpj4CMJ58IoA25gQ2PCWpU+gh/Aucj+fDPPFqXtpvc31ROlxh1Vy+IDazJ9BF
fPJ1XsSlRj5oRxZWP/SsEsSlxnOH5ALISH6MY9vU6WgXfb/+9AAWyiw+6fJFC5ZnEQ5yDmFdvpjw
rBVGGeJik16uP8E1rR3EjvxGSPsPgzznJVHNYtoHur8nDUfq0LBJ3FWTlszUMmTwrn9kFnWc4SnY
XvORlDGDp4UCDZ/V2r5L/Gule+xwE/Lt3bRboqNJiiweEXK8uEgkEO9H0iXEGtTBGRkK92U9aEoB
pLd9KAXhuYNzt8hLjkQjgGv8KUDNKcLfmomJP5LH4KknuxSQp+jpZRmhUWMLdYrV5nf5QD4JNA==
```

## Interaction 3: GET /devstoreaccount1/test-container-07fb935e-c917-3915-fb06-2149b752fa2f/test-blob-8d9df47a-577c-f079-abd7-1f24d32f93d8

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_4
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:59 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:59 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x1F63BEF086EDB30"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9826aa76-d21d-416e-afe7-3399e428a06b
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: wPH88gRwrC/1noQjNDKj7w==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
na5ux10JrGBkw7KMMAzRes2TvNmvk1km/m1Nj1QgNQaUgYQ3EcuzVeebolMXiQjvNad7JJUgfwlV
R8nwuxwLQ46r96+ImmgB32fyFPAGD3RkXlqspRBwcwJ64skCwpnKj1/Ea5FZZ5s+ekQuLmsZTzhU
jF3CX559O4SsDbif/xzOJ4SRQaPjCva/bivMQkWWYZKRrTY7CDDARzANrFnin3onXwbmhw2UcYFn
AvBzsfg/FqwlDVHmkh9U0fpy1V6c3M+wpOI+r9mF/Dy00wU/TJU3zpatvZEoQcznkrYTIZsjyiYh
ww0WAGbToBAVMr4ZFIRlOwfH7x89h2MVVx0jcdugkQnfHomHIc0w2h2BEw8NzX4xruaUW9sH4zuq
AKlIry41dKC1OvX73Rk5lhUBvHNUCIme8sP0CzUt1zpN3SEk5yruS59uWJOINdHNW8TGBSfIVvgf
qb1qQWhrh2K7rv/3FK/qEnDU5a/2FrzyJrBwZ9IThYcpBD1shAo2AtAwzYfR1UYV2/K283BIKZMA
eBq4+h+QqCh4zhBxfo5mnuLfxkk1IFFpWozfXJIX4NuqbAvwfQiwoCReWQc2pF1jUFSNaWNKy1jI
Tp+SsEuWYe00xhGDdSHaLiYk18ZKM7YvfAw9iXd4YKCzJy5oHe/Zx/gZAd1L4Nozsjo9JfSRfhvp
YzQ/Wdd1vGZxz07ychA2Sw/NMDHZ5JsxCtc9OzqsIqkTf7q7mW4ho0R32RGMQEApBtrkw03pEH6Y
Dk4AOIErxK2l3/NWerGhrI3tYQqJpMmXFDRgx15bKW87I4sfIWvDSxVj52BM0owoQxbA/K5zDmmF
aSNNyv1OSbaEGlcmgYshKRX1Jb1pSkGnN4RHmizAyBQhmrdHdYEYFZ2qyLg1AsKLn9KYfeisGx7i
pZN4B66Jw1JDBObT2bSU3RAfv4GIcjTBvPtaKEordX6ZZc/unw7uIAVm8v7bt8UeA6DYjFycWTNe
t0qyL5oHF45oOnTkpj4CMJ58IoA25gQ2PCWpU+gh/Aucj+fDPPFqXtpvc31ROlxh1Vy+IDazJ9BF
fPJ1XsSlRj5oRxZWP/SsEsSlxnOH5ALISH6MY9vU6WgXfb/+9AAWyiw+6fJFC5ZnEQ5yDmFdvpjw
rBVGGeJik16uP8E1rR3EjvxGSPsPgzznJVHNYtoHur8nDUfq0LBJ3FWTlszUMmTwrn9kFnWc4SnY
XvORlDGDp4UCDZ/V2r5L/Gule+xwE/Lt3bRboqNJiiweEXK8uEgkEO9H0iXEGtTBGRkK92U9aEoB
pLd9KAXhuYNzt8hLjkQjgGv8KUDNKcLfmomJP5LH4KknuxSQp+jpZRmhUWMLdYrV5nf5QD4JNA==
```

## Interaction 4: GET /devstoreaccount1/test-container-07fb935e-c917-3915-fb06-2149b752fa2f/test-blob-8d9df47a-577c-f079-abd7-1f24d32f93d8

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_5
x-ms-range: bytes=0-4194303
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:59 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:59 GMT
content-length: 1024
content-type: application/octet-stream
content-range: bytes 0-1023/1024
etag: "0x1F63BEF086EDB30"
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8e742c2a-2d17-42d7-ac5a-2a0cf3e5270d
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:48:00 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: wPH88gRwrC/1noQjNDKj7w==
```
### Response body recorded for playback (206: application/octet-stream base64 below):

```
na5ux10JrGBkw7KMMAzRes2TvNmvk1km/m1Nj1QgNQaUgYQ3EcuzVeebolMXiQjvNad7JJUgfwlV
R8nwuxwLQ46r96+ImmgB32fyFPAGD3RkXlqspRBwcwJ64skCwpnKj1/Ea5FZZ5s+ekQuLmsZTzhU
jF3CX559O4SsDbif/xzOJ4SRQaPjCva/bivMQkWWYZKRrTY7CDDARzANrFnin3onXwbmhw2UcYFn
AvBzsfg/FqwlDVHmkh9U0fpy1V6c3M+wpOI+r9mF/Dy00wU/TJU3zpatvZEoQcznkrYTIZsjyiYh
ww0WAGbToBAVMr4ZFIRlOwfH7x89h2MVVx0jcdugkQnfHomHIc0w2h2BEw8NzX4xruaUW9sH4zuq
AKlIry41dKC1OvX73Rk5lhUBvHNUCIme8sP0CzUt1zpN3SEk5yruS59uWJOINdHNW8TGBSfIVvgf
qb1qQWhrh2K7rv/3FK/qEnDU5a/2FrzyJrBwZ9IThYcpBD1shAo2AtAwzYfR1UYV2/K283BIKZMA
eBq4+h+QqCh4zhBxfo5mnuLfxkk1IFFpWozfXJIX4NuqbAvwfQiwoCReWQc2pF1jUFSNaWNKy1jI
Tp+SsEuWYe00xhGDdSHaLiYk18ZKM7YvfAw9iXd4YKCzJy5oHe/Zx/gZAd1L4Nozsjo9JfSRfhvp
YzQ/Wdd1vGZxz07ychA2Sw/NMDHZ5JsxCtc9OzqsIqkTf7q7mW4ho0R32RGMQEApBtrkw03pEH6Y
Dk4AOIErxK2l3/NWerGhrI3tYQqJpMmXFDRgx15bKW87I4sfIWvDSxVj52BM0owoQxbA/K5zDmmF
aSNNyv1OSbaEGlcmgYshKRX1Jb1pSkGnN4RHmizAyBQhmrdHdYEYFZ2qyLg1AsKLn9KYfeisGx7i
pZN4B66Jw1JDBObT2bSU3RAfv4GIcjTBvPtaKEordX6ZZc/unw7uIAVm8v7bt8UeA6DYjFycWTNe
t0qyL5oHF45oOnTkpj4CMJ58IoA25gQ2PCWpU+gh/Aucj+fDPPFqXtpvc31ROlxh1Vy+IDazJ9BF
fPJ1XsSlRj5oRxZWP/SsEsSlxnOH5ALISH6MY9vU6WgXfb/+9AAWyiw+6fJFC5ZnEQ5yDmFdvpjw
rBVGGeJik16uP8E1rR3EjvxGSPsPgzznJVHNYtoHur8nDUfq0LBJ3FWTlszUMmTwrn9kFnWc4SnY
XvORlDGDp4UCDZ/V2r5L/Gule+xwE/Lt3bRboqNJiiweEXK8uEgkEO9H0iXEGtTBGRkK92U9aEoB
pLd9KAXhuYNzt8hLjkQjgGv8KUDNKcLfmomJP5LH4KknuxSQp+jpZRmhUWMLdYrV5nf5QD4JNA==
```

## Interaction 5: DELETE /devstoreaccount1/test-container-07fb935e-c917-3915-fb06-2149b752fa2f?restype=container

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d86687ca-4af7-4939-89a6-224fc835a671
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:00 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

