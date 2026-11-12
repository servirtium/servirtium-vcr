## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_DefaultsToApacheArrow
now: 2026-11-12T00:43:45.1822965+00:00

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
etag: "0x24F68DB320C63C0"
last-modified: Thu, 12 Nov 2026 00:43:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91041dff-6e49-4640-a0d7-460e5e60393e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:45 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c/foo

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
v2fqwH+rueqBn0D+5ue193aePQ+T8VbxOg5mEaI0cd9UrpS9/xiwA9Da6TGYieoFZ4xnhQOVic0Q
+YVwRahHTS1hqjhT+Phe7jk+uAgkWLEkYKoWzOzbviXGrAWSP74ok5wEN9+ysW6UCZbKVtDF7KDU
TOT9MYBBhusTjEvyy656FiVsICHRca47gcNVEGhUAcBlvfPaKmEbwrHznyQjoT3nT0CrWMx/Ato2
wq+863WDv4uLjQ27oOvDUF1w3tKJGN+FbcEnqKjz5bsYo2ixX9Y7cOCZmBQvLK9U5whuDyQIrKrP
Nn6zWxbil6dSovyDEvGHNG3y8H/LVUAS08CghdaWD/e94ShYiBTJtgFt3Ymy0NUX59q2FrwqBOA9
oYhVQhHQvJMFxTDJLqxZKDl+XXi3XwLriZ373/k7k91HG+aLc3TvnCD2rQulTbkuXO6DrKZohkGG
arhz1NyZyjJTgRPFzrTEj8FXwLL2RTvkzYILuOc235WkBAm8e8dEXOLZUsylaY45vh3lEMWOjyR9
jwdajhJKHKJ+IMmrCBP5E2PPHfNvP2Tz0fnKUc7PFXXkPuzA6s3QjjUpJ0jFjbYJ6/1iv3EwDlCj
ZrwYgMvUrgpTx8knOSmV/o+9RRcbLkRCwGXRbVYDszCbHIQRuA1qVXg9ccbs4rHTzMDic8g4hzd4
1r9lAkG0UBOZixylhEaCU/Ce3rx9Vt60/aCWIUBnY5VMmOJNBVI2iSGzU1aVLkd5YCDYmal7+3/g
sAWgHS/SMSiHWexkNE2eZ1SbyQKIH89ZHMEgj8nr0JxibFRNlmvx4CEuDdVbFCvSOjFU4DF9WJE2
RwBusqFem4hQAsf4UdHoqengWRH5/QiVTVWXlvBq5BTCFk5qgy2Az3JNChFk2uhfbDZInP+APEn4
2WRMxgSX5R2yNTqDfSW7YImfrPP2MHNsNyq5IkgVQtoEcqrJNAlttSXzsaSu3O4QjDx14ZBWAqjx
347a3cLVnfNffgt78iyAMffNAn7OvVs8qZUMn2BKrm8B2FR6k9diHhOxTl7ilZoP9bCYiQApIiEz
nTQsyf2SFc+ceRrYBZ4fauRrHW78WRT7/KqwsSVv2LUyRvWiNVQWHjmORht/N+8ReB4bvgSyN0Mg
Mc1T4mSqLKFkpb+ofTWPVP81bRP4e8S7njgGUxmxgA+xggSGwzvV5Bl6G5IvafvpjGkEfckwJ7UI
l0Mro9mHsiWw9vowCJHEYIn6fmAyjDU9HcewrQJFgVtPfiv3qkBA82ltf3MAuIPXQB0/NahV1gsO
7YYR1gUianSf4YpmzLZJuYv2xQzBPGRE2WzlBUyy+agg6Ly5LhxjShX+Ydf5cXRn9nwdXhH+TA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25000A2BEAB2400"
last-modified: Thu, 12 Nov 2026 00:43:45 GMT
content-md5: XQnyIF3hnSV9s3tDnYMzbQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0e037c8-2d4d-4e9e-9998-29cfcf542d15
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c/bar

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
v2fqwH+rueqBn0D+5ue193aePQ+T8VbxOg5mEaI0cd9UrpS9/xiwA9Da6TGYieoFZ4xnhQOVic0Q
+YVwRahHTS1hqjhT+Phe7jk+uAgkWLEkYKoWzOzbviXGrAWSP74ok5wEN9+ysW6UCZbKVtDF7KDU
TOT9MYBBhusTjEvyy656FiVsICHRca47gcNVEGhUAcBlvfPaKmEbwrHznyQjoT3nT0CrWMx/Ato2
wq+863WDv4uLjQ27oOvDUF1w3tKJGN+FbcEnqKjz5bsYo2ixX9Y7cOCZmBQvLK9U5whuDyQIrKrP
Nn6zWxbil6dSovyDEvGHNG3y8H/LVUAS08CghdaWD/e94ShYiBTJtgFt3Ymy0NUX59q2FrwqBOA9
oYhVQhHQvJMFxTDJLqxZKDl+XXi3XwLriZ373/k7k91HG+aLc3TvnCD2rQulTbkuXO6DrKZohkGG
arhz1NyZyjJTgRPFzrTEj8FXwLL2RTvkzYILuOc235WkBAm8e8dEXOLZUsylaY45vh3lEMWOjyR9
jwdajhJKHKJ+IMmrCBP5E2PPHfNvP2Tz0fnKUc7PFXXkPuzA6s3QjjUpJ0jFjbYJ6/1iv3EwDlCj
ZrwYgMvUrgpTx8knOSmV/o+9RRcbLkRCwGXRbVYDszCbHIQRuA1qVXg9ccbs4rHTzMDic8g4hzd4
1r9lAkG0UBOZixylhEaCU/Ce3rx9Vt60/aCWIUBnY5VMmOJNBVI2iSGzU1aVLkd5YCDYmal7+3/g
sAWgHS/SMSiHWexkNE2eZ1SbyQKIH89ZHMEgj8nr0JxibFRNlmvx4CEuDdVbFCvSOjFU4DF9WJE2
RwBusqFem4hQAsf4UdHoqengWRH5/QiVTVWXlvBq5BTCFk5qgy2Az3JNChFk2uhfbDZInP+APEn4
2WRMxgSX5R2yNTqDfSW7YImfrPP2MHNsNyq5IkgVQtoEcqrJNAlttSXzsaSu3O4QjDx14ZBWAqjx
347a3cLVnfNffgt78iyAMffNAn7OvVs8qZUMn2BKrm8B2FR6k9diHhOxTl7ilZoP9bCYiQApIiEz
nTQsyf2SFc+ceRrYBZ4fauRrHW78WRT7/KqwsSVv2LUyRvWiNVQWHjmORht/N+8ReB4bvgSyN0Mg
Mc1T4mSqLKFkpb+ofTWPVP81bRP4e8S7njgGUxmxgA+xggSGwzvV5Bl6G5IvafvpjGkEfckwJ7UI
l0Mro9mHsiWw9vowCJHEYIn6fmAyjDU9HcewrQJFgVtPfiv3qkBA82ltf3MAuIPXQB0/NahV1gsO
7YYR1gUianSf4YpmzLZJuYv2xQzBPGRE2WzlBUyy+agg6Ly5LhxjShX+Ydf5cXRn9nwdXhH+TA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26B5EF90817EEC0"
last-modified: Thu, 12 Nov 2026 00:43:45 GMT
content-md5: XQnyIF3hnSV9s3tDnYMzbQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f65b974c-0421-4a51-b90a-1e7d7b7a6be5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c/baz

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
v2fqwH+rueqBn0D+5ue193aePQ+T8VbxOg5mEaI0cd9UrpS9/xiwA9Da6TGYieoFZ4xnhQOVic0Q
+YVwRahHTS1hqjhT+Phe7jk+uAgkWLEkYKoWzOzbviXGrAWSP74ok5wEN9+ysW6UCZbKVtDF7KDU
TOT9MYBBhusTjEvyy656FiVsICHRca47gcNVEGhUAcBlvfPaKmEbwrHznyQjoT3nT0CrWMx/Ato2
wq+863WDv4uLjQ27oOvDUF1w3tKJGN+FbcEnqKjz5bsYo2ixX9Y7cOCZmBQvLK9U5whuDyQIrKrP
Nn6zWxbil6dSovyDEvGHNG3y8H/LVUAS08CghdaWD/e94ShYiBTJtgFt3Ymy0NUX59q2FrwqBOA9
oYhVQhHQvJMFxTDJLqxZKDl+XXi3XwLriZ373/k7k91HG+aLc3TvnCD2rQulTbkuXO6DrKZohkGG
arhz1NyZyjJTgRPFzrTEj8FXwLL2RTvkzYILuOc235WkBAm8e8dEXOLZUsylaY45vh3lEMWOjyR9
jwdajhJKHKJ+IMmrCBP5E2PPHfNvP2Tz0fnKUc7PFXXkPuzA6s3QjjUpJ0jFjbYJ6/1iv3EwDlCj
ZrwYgMvUrgpTx8knOSmV/o+9RRcbLkRCwGXRbVYDszCbHIQRuA1qVXg9ccbs4rHTzMDic8g4hzd4
1r9lAkG0UBOZixylhEaCU/Ce3rx9Vt60/aCWIUBnY5VMmOJNBVI2iSGzU1aVLkd5YCDYmal7+3/g
sAWgHS/SMSiHWexkNE2eZ1SbyQKIH89ZHMEgj8nr0JxibFRNlmvx4CEuDdVbFCvSOjFU4DF9WJE2
RwBusqFem4hQAsf4UdHoqengWRH5/QiVTVWXlvBq5BTCFk5qgy2Az3JNChFk2uhfbDZInP+APEn4
2WRMxgSX5R2yNTqDfSW7YImfrPP2MHNsNyq5IkgVQtoEcqrJNAlttSXzsaSu3O4QjDx14ZBWAqjx
347a3cLVnfNffgt78iyAMffNAn7OvVs8qZUMn2BKrm8B2FR6k9diHhOxTl7ilZoP9bCYiQApIiEz
nTQsyf2SFc+ceRrYBZ4fauRrHW78WRT7/KqwsSVv2LUyRvWiNVQWHjmORht/N+8ReB4bvgSyN0Mg
Mc1T4mSqLKFkpb+ofTWPVP81bRP4e8S7njgGUxmxgA+xggSGwzvV5Bl6G5IvafvpjGkEfckwJ7UI
l0Mro9mHsiWw9vowCJHEYIn6fmAyjDU9HcewrQJFgVtPfiv3qkBA82ltf3MAuIPXQB0/NahV1gsO
7YYR1gUianSf4YpmzLZJuYv2xQzBPGRE2WzlBUyy+agg6Ly5LhxjShX+Ydf5cXRn9nwdXhH+TA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27243349109A5C0"
last-modified: Thu, 12 Nov 2026 00:43:45 GMT
content-md5: XQnyIF3hnSV9s3tDnYMzbQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0addc12-6430-4ed9-a39f-d0b757a226b5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c/foo/foo

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
v2fqwH+rueqBn0D+5ue193aePQ+T8VbxOg5mEaI0cd9UrpS9/xiwA9Da6TGYieoFZ4xnhQOVic0Q
+YVwRahHTS1hqjhT+Phe7jk+uAgkWLEkYKoWzOzbviXGrAWSP74ok5wEN9+ysW6UCZbKVtDF7KDU
TOT9MYBBhusTjEvyy656FiVsICHRca47gcNVEGhUAcBlvfPaKmEbwrHznyQjoT3nT0CrWMx/Ato2
wq+863WDv4uLjQ27oOvDUF1w3tKJGN+FbcEnqKjz5bsYo2ixX9Y7cOCZmBQvLK9U5whuDyQIrKrP
Nn6zWxbil6dSovyDEvGHNG3y8H/LVUAS08CghdaWD/e94ShYiBTJtgFt3Ymy0NUX59q2FrwqBOA9
oYhVQhHQvJMFxTDJLqxZKDl+XXi3XwLriZ373/k7k91HG+aLc3TvnCD2rQulTbkuXO6DrKZohkGG
arhz1NyZyjJTgRPFzrTEj8FXwLL2RTvkzYILuOc235WkBAm8e8dEXOLZUsylaY45vh3lEMWOjyR9
jwdajhJKHKJ+IMmrCBP5E2PPHfNvP2Tz0fnKUc7PFXXkPuzA6s3QjjUpJ0jFjbYJ6/1iv3EwDlCj
ZrwYgMvUrgpTx8knOSmV/o+9RRcbLkRCwGXRbVYDszCbHIQRuA1qVXg9ccbs4rHTzMDic8g4hzd4
1r9lAkG0UBOZixylhEaCU/Ce3rx9Vt60/aCWIUBnY5VMmOJNBVI2iSGzU1aVLkd5YCDYmal7+3/g
sAWgHS/SMSiHWexkNE2eZ1SbyQKIH89ZHMEgj8nr0JxibFRNlmvx4CEuDdVbFCvSOjFU4DF9WJE2
RwBusqFem4hQAsf4UdHoqengWRH5/QiVTVWXlvBq5BTCFk5qgy2Az3JNChFk2uhfbDZInP+APEn4
2WRMxgSX5R2yNTqDfSW7YImfrPP2MHNsNyq5IkgVQtoEcqrJNAlttSXzsaSu3O4QjDx14ZBWAqjx
347a3cLVnfNffgt78iyAMffNAn7OvVs8qZUMn2BKrm8B2FR6k9diHhOxTl7ilZoP9bCYiQApIiEz
nTQsyf2SFc+ceRrYBZ4fauRrHW78WRT7/KqwsSVv2LUyRvWiNVQWHjmORht/N+8ReB4bvgSyN0Mg
Mc1T4mSqLKFkpb+ofTWPVP81bRP4e8S7njgGUxmxgA+xggSGwzvV5Bl6G5IvafvpjGkEfckwJ7UI
l0Mro9mHsiWw9vowCJHEYIn6fmAyjDU9HcewrQJFgVtPfiv3qkBA82ltf3MAuIPXQB0/NahV1gsO
7YYR1gUianSf4YpmzLZJuYv2xQzBPGRE2WzlBUyy+agg6Ly5LhxjShX+Ydf5cXRn9nwdXhH+TA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x257AA58469A93A0"
last-modified: Thu, 12 Nov 2026 00:43:45 GMT
content-md5: XQnyIF3hnSV9s3tDnYMzbQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 77281c6d-8b9f-4e2e-b6f4-f7df7218b02b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c/foo/bar

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
v2fqwH+rueqBn0D+5ue193aePQ+T8VbxOg5mEaI0cd9UrpS9/xiwA9Da6TGYieoFZ4xnhQOVic0Q
+YVwRahHTS1hqjhT+Phe7jk+uAgkWLEkYKoWzOzbviXGrAWSP74ok5wEN9+ysW6UCZbKVtDF7KDU
TOT9MYBBhusTjEvyy656FiVsICHRca47gcNVEGhUAcBlvfPaKmEbwrHznyQjoT3nT0CrWMx/Ato2
wq+863WDv4uLjQ27oOvDUF1w3tKJGN+FbcEnqKjz5bsYo2ixX9Y7cOCZmBQvLK9U5whuDyQIrKrP
Nn6zWxbil6dSovyDEvGHNG3y8H/LVUAS08CghdaWD/e94ShYiBTJtgFt3Ymy0NUX59q2FrwqBOA9
oYhVQhHQvJMFxTDJLqxZKDl+XXi3XwLriZ373/k7k91HG+aLc3TvnCD2rQulTbkuXO6DrKZohkGG
arhz1NyZyjJTgRPFzrTEj8FXwLL2RTvkzYILuOc235WkBAm8e8dEXOLZUsylaY45vh3lEMWOjyR9
jwdajhJKHKJ+IMmrCBP5E2PPHfNvP2Tz0fnKUc7PFXXkPuzA6s3QjjUpJ0jFjbYJ6/1iv3EwDlCj
ZrwYgMvUrgpTx8knOSmV/o+9RRcbLkRCwGXRbVYDszCbHIQRuA1qVXg9ccbs4rHTzMDic8g4hzd4
1r9lAkG0UBOZixylhEaCU/Ce3rx9Vt60/aCWIUBnY5VMmOJNBVI2iSGzU1aVLkd5YCDYmal7+3/g
sAWgHS/SMSiHWexkNE2eZ1SbyQKIH89ZHMEgj8nr0JxibFRNlmvx4CEuDdVbFCvSOjFU4DF9WJE2
RwBusqFem4hQAsf4UdHoqengWRH5/QiVTVWXlvBq5BTCFk5qgy2Az3JNChFk2uhfbDZInP+APEn4
2WRMxgSX5R2yNTqDfSW7YImfrPP2MHNsNyq5IkgVQtoEcqrJNAlttSXzsaSu3O4QjDx14ZBWAqjx
347a3cLVnfNffgt78iyAMffNAn7OvVs8qZUMn2BKrm8B2FR6k9diHhOxTl7ilZoP9bCYiQApIiEz
nTQsyf2SFc+ceRrYBZ4fauRrHW78WRT7/KqwsSVv2LUyRvWiNVQWHjmORht/N+8ReB4bvgSyN0Mg
Mc1T4mSqLKFkpb+ofTWPVP81bRP4e8S7njgGUxmxgA+xggSGwzvV5Bl6G5IvafvpjGkEfckwJ7UI
l0Mro9mHsiWw9vowCJHEYIn6fmAyjDU9HcewrQJFgVtPfiv3qkBA82ltf3MAuIPXQB0/NahV1gsO
7YYR1gUianSf4YpmzLZJuYv2xQzBPGRE2WzlBUyy+agg6Ly5LhxjShX+Ydf5cXRn9nwdXhH+TA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26223C84FE8FE80"
last-modified: Thu, 12 Nov 2026 00:43:45 GMT
content-md5: XQnyIF3hnSV9s3tDnYMzbQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 65a6a0cf-d9c1-4102-8ed3-4fb1da82f92e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c/baz/foo

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
v2fqwH+rueqBn0D+5ue193aePQ+T8VbxOg5mEaI0cd9UrpS9/xiwA9Da6TGYieoFZ4xnhQOVic0Q
+YVwRahHTS1hqjhT+Phe7jk+uAgkWLEkYKoWzOzbviXGrAWSP74ok5wEN9+ysW6UCZbKVtDF7KDU
TOT9MYBBhusTjEvyy656FiVsICHRca47gcNVEGhUAcBlvfPaKmEbwrHznyQjoT3nT0CrWMx/Ato2
wq+863WDv4uLjQ27oOvDUF1w3tKJGN+FbcEnqKjz5bsYo2ixX9Y7cOCZmBQvLK9U5whuDyQIrKrP
Nn6zWxbil6dSovyDEvGHNG3y8H/LVUAS08CghdaWD/e94ShYiBTJtgFt3Ymy0NUX59q2FrwqBOA9
oYhVQhHQvJMFxTDJLqxZKDl+XXi3XwLriZ373/k7k91HG+aLc3TvnCD2rQulTbkuXO6DrKZohkGG
arhz1NyZyjJTgRPFzrTEj8FXwLL2RTvkzYILuOc235WkBAm8e8dEXOLZUsylaY45vh3lEMWOjyR9
jwdajhJKHKJ+IMmrCBP5E2PPHfNvP2Tz0fnKUc7PFXXkPuzA6s3QjjUpJ0jFjbYJ6/1iv3EwDlCj
ZrwYgMvUrgpTx8knOSmV/o+9RRcbLkRCwGXRbVYDszCbHIQRuA1qVXg9ccbs4rHTzMDic8g4hzd4
1r9lAkG0UBOZixylhEaCU/Ce3rx9Vt60/aCWIUBnY5VMmOJNBVI2iSGzU1aVLkd5YCDYmal7+3/g
sAWgHS/SMSiHWexkNE2eZ1SbyQKIH89ZHMEgj8nr0JxibFRNlmvx4CEuDdVbFCvSOjFU4DF9WJE2
RwBusqFem4hQAsf4UdHoqengWRH5/QiVTVWXlvBq5BTCFk5qgy2Az3JNChFk2uhfbDZInP+APEn4
2WRMxgSX5R2yNTqDfSW7YImfrPP2MHNsNyq5IkgVQtoEcqrJNAlttSXzsaSu3O4QjDx14ZBWAqjx
347a3cLVnfNffgt78iyAMffNAn7OvVs8qZUMn2BKrm8B2FR6k9diHhOxTl7ilZoP9bCYiQApIiEz
nTQsyf2SFc+ceRrYBZ4fauRrHW78WRT7/KqwsSVv2LUyRvWiNVQWHjmORht/N+8ReB4bvgSyN0Mg
Mc1T4mSqLKFkpb+ofTWPVP81bRP4e8S7njgGUxmxgA+xggSGwzvV5Bl6G5IvafvpjGkEfckwJ7UI
l0Mro9mHsiWw9vowCJHEYIn6fmAyjDU9HcewrQJFgVtPfiv3qkBA82ltf3MAuIPXQB0/NahV1gsO
7YYR1gUianSf4YpmzLZJuYv2xQzBPGRE2WzlBUyy+agg6Ly5LhxjShX+Ydf5cXRn9nwdXhH+TA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x221E90127203060"
last-modified: Thu, 12 Nov 2026 00:43:45 GMT
content-md5: XQnyIF3hnSV9s3tDnYMzbQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e6f4f8cd-286b-4c1b-9921-09322e84e61d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c/baz/foo/bar

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
v2fqwH+rueqBn0D+5ue193aePQ+T8VbxOg5mEaI0cd9UrpS9/xiwA9Da6TGYieoFZ4xnhQOVic0Q
+YVwRahHTS1hqjhT+Phe7jk+uAgkWLEkYKoWzOzbviXGrAWSP74ok5wEN9+ysW6UCZbKVtDF7KDU
TOT9MYBBhusTjEvyy656FiVsICHRca47gcNVEGhUAcBlvfPaKmEbwrHznyQjoT3nT0CrWMx/Ato2
wq+863WDv4uLjQ27oOvDUF1w3tKJGN+FbcEnqKjz5bsYo2ixX9Y7cOCZmBQvLK9U5whuDyQIrKrP
Nn6zWxbil6dSovyDEvGHNG3y8H/LVUAS08CghdaWD/e94ShYiBTJtgFt3Ymy0NUX59q2FrwqBOA9
oYhVQhHQvJMFxTDJLqxZKDl+XXi3XwLriZ373/k7k91HG+aLc3TvnCD2rQulTbkuXO6DrKZohkGG
arhz1NyZyjJTgRPFzrTEj8FXwLL2RTvkzYILuOc235WkBAm8e8dEXOLZUsylaY45vh3lEMWOjyR9
jwdajhJKHKJ+IMmrCBP5E2PPHfNvP2Tz0fnKUc7PFXXkPuzA6s3QjjUpJ0jFjbYJ6/1iv3EwDlCj
ZrwYgMvUrgpTx8knOSmV/o+9RRcbLkRCwGXRbVYDszCbHIQRuA1qVXg9ccbs4rHTzMDic8g4hzd4
1r9lAkG0UBOZixylhEaCU/Ce3rx9Vt60/aCWIUBnY5VMmOJNBVI2iSGzU1aVLkd5YCDYmal7+3/g
sAWgHS/SMSiHWexkNE2eZ1SbyQKIH89ZHMEgj8nr0JxibFRNlmvx4CEuDdVbFCvSOjFU4DF9WJE2
RwBusqFem4hQAsf4UdHoqengWRH5/QiVTVWXlvBq5BTCFk5qgy2Az3JNChFk2uhfbDZInP+APEn4
2WRMxgSX5R2yNTqDfSW7YImfrPP2MHNsNyq5IkgVQtoEcqrJNAlttSXzsaSu3O4QjDx14ZBWAqjx
347a3cLVnfNffgt78iyAMffNAn7OvVs8qZUMn2BKrm8B2FR6k9diHhOxTl7ilZoP9bCYiQApIiEz
nTQsyf2SFc+ceRrYBZ4fauRrHW78WRT7/KqwsSVv2LUyRvWiNVQWHjmORht/N+8ReB4bvgSyN0Mg
Mc1T4mSqLKFkpb+ofTWPVP81bRP4e8S7njgGUxmxgA+xggSGwzvV5Bl6G5IvafvpjGkEfckwJ7UI
l0Mro9mHsiWw9vowCJHEYIn6fmAyjDU9HcewrQJFgVtPfiv3qkBA82ltf3MAuIPXQB0/NahV1gsO
7YYR1gUianSf4YpmzLZJuYv2xQzBPGRE2WzlBUyy+agg6Ly5LhxjShX+Ydf5cXRn9nwdXhH+TA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D52A8971CF6A90"
last-modified: Thu, 12 Nov 2026 00:43:45 GMT
content-md5: XQnyIF3hnSV9s3tDnYMzbQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0f6428c-a951-487a-9a1e-5fab5164cb1b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c/baz/bar/foo

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
v2fqwH+rueqBn0D+5ue193aePQ+T8VbxOg5mEaI0cd9UrpS9/xiwA9Da6TGYieoFZ4xnhQOVic0Q
+YVwRahHTS1hqjhT+Phe7jk+uAgkWLEkYKoWzOzbviXGrAWSP74ok5wEN9+ysW6UCZbKVtDF7KDU
TOT9MYBBhusTjEvyy656FiVsICHRca47gcNVEGhUAcBlvfPaKmEbwrHznyQjoT3nT0CrWMx/Ato2
wq+863WDv4uLjQ27oOvDUF1w3tKJGN+FbcEnqKjz5bsYo2ixX9Y7cOCZmBQvLK9U5whuDyQIrKrP
Nn6zWxbil6dSovyDEvGHNG3y8H/LVUAS08CghdaWD/e94ShYiBTJtgFt3Ymy0NUX59q2FrwqBOA9
oYhVQhHQvJMFxTDJLqxZKDl+XXi3XwLriZ373/k7k91HG+aLc3TvnCD2rQulTbkuXO6DrKZohkGG
arhz1NyZyjJTgRPFzrTEj8FXwLL2RTvkzYILuOc235WkBAm8e8dEXOLZUsylaY45vh3lEMWOjyR9
jwdajhJKHKJ+IMmrCBP5E2PPHfNvP2Tz0fnKUc7PFXXkPuzA6s3QjjUpJ0jFjbYJ6/1iv3EwDlCj
ZrwYgMvUrgpTx8knOSmV/o+9RRcbLkRCwGXRbVYDszCbHIQRuA1qVXg9ccbs4rHTzMDic8g4hzd4
1r9lAkG0UBOZixylhEaCU/Ce3rx9Vt60/aCWIUBnY5VMmOJNBVI2iSGzU1aVLkd5YCDYmal7+3/g
sAWgHS/SMSiHWexkNE2eZ1SbyQKIH89ZHMEgj8nr0JxibFRNlmvx4CEuDdVbFCvSOjFU4DF9WJE2
RwBusqFem4hQAsf4UdHoqengWRH5/QiVTVWXlvBq5BTCFk5qgy2Az3JNChFk2uhfbDZInP+APEn4
2WRMxgSX5R2yNTqDfSW7YImfrPP2MHNsNyq5IkgVQtoEcqrJNAlttSXzsaSu3O4QjDx14ZBWAqjx
347a3cLVnfNffgt78iyAMffNAn7OvVs8qZUMn2BKrm8B2FR6k9diHhOxTl7ilZoP9bCYiQApIiEz
nTQsyf2SFc+ceRrYBZ4fauRrHW78WRT7/KqwsSVv2LUyRvWiNVQWHjmORht/N+8ReB4bvgSyN0Mg
Mc1T4mSqLKFkpb+ofTWPVP81bRP4e8S7njgGUxmxgA+xggSGwzvV5Bl6G5IvafvpjGkEfckwJ7UI
l0Mro9mHsiWw9vowCJHEYIn6fmAyjDU9HcewrQJFgVtPfiv3qkBA82ltf3MAuIPXQB0/NahV1gsO
7YYR1gUianSf4YpmzLZJuYv2xQzBPGRE2WzlBUyy+agg6Ly5LhxjShX+Ydf5cXRn9nwdXhH+TA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223F19FDDC81B60"
last-modified: Thu, 12 Nov 2026 00:43:45 GMT
content-md5: XQnyIF3hnSV9s3tDnYMzbQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 12b93894-d044-4850-b237-49c032fd7d6f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c/foo/foo?comp=metadata

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
etag: "0x226920620D1BA00"
last-modified: Thu, 12 Nov 2026 00:43:45 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9e726a71-ccf9-458e-8254-a47e4010e815
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:45 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c?restype=container&comp=list

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
x-ms-request-id: ad75b430-2933-41d9-8482-99f301f15c30
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:45 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:45 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:45 GMT</Last-Modified><Etag>0x26B5EF90817EEC0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>XQnyIF3hnSV9s3tDnYMzbQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:45 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:45 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:45 GMT</Last-Modified><Etag>0x27243349109A5C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>XQnyIF3hnSV9s3tDnYMzbQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:45 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:45 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:45 GMT</Last-Modified><Etag>0x223F19FDDC81B60</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>XQnyIF3hnSV9s3tDnYMzbQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:45 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:45 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:45 GMT</Last-Modified><Etag>0x221E90127203060</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>XQnyIF3hnSV9s3tDnYMzbQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:45 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:45 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:45 GMT</Last-Modified><Etag>0x1D52A8971CF6A90</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>XQnyIF3hnSV9s3tDnYMzbQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:45 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:45 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:45 GMT</Last-Modified><Etag>0x25000A2BEAB2400</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>XQnyIF3hnSV9s3tDnYMzbQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:45 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:45 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:45 GMT</Last-Modified><Etag>0x26223C84FE8FE80</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>XQnyIF3hnSV9s3tDnYMzbQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:45 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:45 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:45 GMT</Last-Modified><Etag>0x226920620D1BA00</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>XQnyIF3hnSV9s3tDnYMzbQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:45 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-6ac589af-d9d0-d188-ed1c-84dd2341a41c?restype=container

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
x-ms-request-id: 364653ca-845b-4265-bf3b-d7731aa16dde
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:45 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

