## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c2e4b147-c56f-7b5e-35df-fa3ecf880890?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_Destination_AccessConditions
now: 2026-11-12T00:47:19.6052249+00:00

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
etag: "0x20FFA195EF04E80"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0fd5a65f-343d-4651-b00e-c8396a78b3e5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c2e4b147-c56f-7b5e-35df-fa3ecf880890/test-blob-87e6ea45-f27c-a54b-a8ec-7bd2fd3a0520

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
R9bXJ67gpGNFVOlX2wr2byZ+ek31M9N3y6SwGe8trYjbEcfRDr45ZwyBfRrcBqAr6YsYUA27mxMD
YFwKMIt0F6ZgfMlCJGBnRRNBc7a4msQEhC9jFV17H3azza1iLzaBDWV0e4nW6MQqsAr5eidcSsWX
BatbEAFJ5V1Sj1ayBRbcv2ZQRB87LZxrOWVSgaVPVoPoyimKJf1kKpYsg1ltd6r0HLrADAWmXNgP
8Nec9mO3AzjTyjrsUZpp7BmJD6pC/sG6XmTrjkp9Qm5RezUlxzQydH8hma1vB8sgVx/rHEwuzPIV
4Zf+zHXtVYjMm9ZkQyTlV5oqIWQUSleZyzcqkiUhIq5DEOWcM6gKM0Qko2v0uxP7BsWyBKuNAZdA
ZQE+w8NiqngnITM+SSPyH+4f76frpBAjL4tgbx4DtQ5OW86nzHCAwvnyzJngvLyhwOS8bhLwVcDw
GpM3AjtaJGwl8O1VSlJ9ny2t+Nd2QnLOvq85Rkf8XgYNtrHcSL+9mKgsu8zPTHWSP87kQlzoetcg
aESMIN0lKJHnR5SgoVZt718vSYem/3E5pwd4FxypJTzau+B7MXfKB5I75wXh8Z54d1L9uTBQemnS
UnnWrBF0PiJXxuV28r7nZEH1axdsWLVp/6DKrGsMiUF2qN/+9FuBxqnjiSu4AoSUFVTuWw5RZvrD
ba1xqpG2Szyj/0re6XDmc6RtiM6KsPwbNpcXHS4zJEHkOoauEBwXLD3uFQM6tSvkB+dp5N4sOb2w
VXP6ny0NcNoJ+q7pOGOIVVuQm5r54YBrMhZHyUBjuADJ/bqoHY0P4aQoMbp9+s6D4Y6Cm54itnTy
j2wXxqaapUKuIDqo3zjOgLr20bDG7jhHw+iy4BxhpkdGtY4g+Br9jYt4ztmU2wFVsxrkLOXELKA0
0AO+58QlTHnzYiqqrYif+EMkTR9es+jnXC0BfXpigYjt7CgXP6XGUoJfoHjXqwaSRTOhn9+B1Rwa
14uXI87/keChvMFgiLidXvqc/hJvELEnbzhGwOKpbBYL/GgaLi+zYA6XNe5FMb16A0Dl5NcKq8fZ
cLSWuND++FCqVYtQgjDL6J4D19rC4T17y7yhxIc/AVGgQL17HKg+mT2dmtwxKoAQGfs4BtPsF452
G+wTXTPJalQ6sEJyUMz1xT6cJUdhSaE7kKqLBvt9sykvBAG7KjwJ1DCI93k+nskvQ0CUUPJHFdJK
2MyJPWRZvPwYQ0vKOpsCklAX2VIn/fHgXMO66WM35+8vcFJvgJbLLjp9Jlt+ZAmkkr2hMDt/Itra
qOGgntOY4Vtbm8lJkhK6S6oXqteWYve6Flamlbazr013ldi0K5Bn5ET/Isk/WgCq5+WRaHgDRA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x215D2AD7CD09580"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
content-md5: eFwjL08SwSkHOnY2ngn/0g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 465d1685-b402-404b-8b04-6ac52fddd33b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c2e4b147-c56f-7b5e-35df-fa3ecf880890/test-blob-92c5af19-4096-7a2e-bb56-fbaed12147d5

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
R9bXJ67gpGNFVOlX2wr2byZ+ek31M9N3y6SwGe8trYjbEcfRDr45ZwyBfRrcBqAr6YsYUA27mxMD
YFwKMIt0F6ZgfMlCJGBnRRNBc7a4msQEhC9jFV17H3azza1iLzaBDWV0e4nW6MQqsAr5eidcSsWX
BatbEAFJ5V1Sj1ayBRbcv2ZQRB87LZxrOWVSgaVPVoPoyimKJf1kKpYsg1ltd6r0HLrADAWmXNgP
8Nec9mO3AzjTyjrsUZpp7BmJD6pC/sG6XmTrjkp9Qm5RezUlxzQydH8hma1vB8sgVx/rHEwuzPIV
4Zf+zHXtVYjMm9ZkQyTlV5oqIWQUSleZyzcqkiUhIq5DEOWcM6gKM0Qko2v0uxP7BsWyBKuNAZdA
ZQE+w8NiqngnITM+SSPyH+4f76frpBAjL4tgbx4DtQ5OW86nzHCAwvnyzJngvLyhwOS8bhLwVcDw
GpM3AjtaJGwl8O1VSlJ9ny2t+Nd2QnLOvq85Rkf8XgYNtrHcSL+9mKgsu8zPTHWSP87kQlzoetcg
aESMIN0lKJHnR5SgoVZt718vSYem/3E5pwd4FxypJTzau+B7MXfKB5I75wXh8Z54d1L9uTBQemnS
UnnWrBF0PiJXxuV28r7nZEH1axdsWLVp/6DKrGsMiUF2qN/+9FuBxqnjiSu4AoSUFVTuWw5RZvrD
ba1xqpG2Szyj/0re6XDmc6RtiM6KsPwbNpcXHS4zJEHkOoauEBwXLD3uFQM6tSvkB+dp5N4sOb2w
VXP6ny0NcNoJ+q7pOGOIVVuQm5r54YBrMhZHyUBjuADJ/bqoHY0P4aQoMbp9+s6D4Y6Cm54itnTy
j2wXxqaapUKuIDqo3zjOgLr20bDG7jhHw+iy4BxhpkdGtY4g+Br9jYt4ztmU2wFVsxrkLOXELKA0
0AO+58QlTHnzYiqqrYif+EMkTR9es+jnXC0BfXpigYjt7CgXP6XGUoJfoHjXqwaSRTOhn9+B1Rwa
14uXI87/keChvMFgiLidXvqc/hJvELEnbzhGwOKpbBYL/GgaLi+zYA6XNe5FMb16A0Dl5NcKq8fZ
cLSWuND++FCqVYtQgjDL6J4D19rC4T17y7yhxIc/AVGgQL17HKg+mT2dmtwxKoAQGfs4BtPsF452
G+wTXTPJalQ6sEJyUMz1xT6cJUdhSaE7kKqLBvt9sykvBAG7KjwJ1DCI93k+nskvQ0CUUPJHFdJK
2MyJPWRZvPwYQ0vKOpsCklAX2VIn/fHgXMO66WM35+8vcFJvgJbLLjp9Jlt+ZAmkkr2hMDt/Itra
qOGgntOY4Vtbm8lJkhK6S6oXqteWYve6Flamlbazr013ldi0K5Bn5ET/Isk/WgCq5+WRaHgDRA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x233CC84DD78EB40"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
content-md5: eFwjL08SwSkHOnY2ngn/0g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b042a095-9f58-4b52-8b71-582cac18abcd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-c2e4b147-c56f-7b5e-35df-fa3ecf880890/test-blob-92c5af19-4096-7a2e-bb56-fbaed12147d5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-c2e4b147-c56f-7b5e-35df-fa3ecf880890/test-blob-87e6ea45-f27c-a54b-a8ec-7bd2fd3a0520?sv=2027-03-07&se=2026-11-12T01%3A47%3A19Z&sr=b&sp=r&sig=y1zx%2FFXqP9NieJymVXMer8iBreqewCctrJyNHC3Mk80%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22FC02CD0DCA200"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d502bda4-6d3c-48e9-b4b5-7d5eeeaf08e0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-copy-id: 93027e90-e57d-4151-b951-35fd3bdba4bf
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-c2e4b147-c56f-7b5e-35df-fa3ecf880890?restype=container

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
x-ms-request-id: f477aa85-7a15-456f-bc40-f78cb8398863
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-ca925073-0844-f2ea-f85a-79dcc4880270?restype=container

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
etag: "0x26B7ABC82F761A0"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 847da480-a4c1-41e0-918d-8bd288ddbfbe
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-ca925073-0844-f2ea-f85a-79dcc4880270/test-blob-156c7028-5752-26dc-039b-d3ad196b5633

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
4cV4uLNxrQS7a8sm9p3ThqSmXqynOtsQxdKZPMZRtjNTi8wLqY8hAqONDtg8w/tbhvM4HilWyKfq
Z/Pg13A9arWY02vQyNwVhFwIGSwC1AHXPbbTGJcK/cIlIUKcQSozUKQjpPCQir4XI5rMTa566JLx
CZm6alEejdaoq6aZeUIy1cmI3y8QRrL3vPX9Pq8UqjmvqjeQeOVSBBca6N8XfapXmXfl8ghj4cLn
wq5bIE8mlABt6c4Lol3kNdoY9l7S4D5LpqQ4L7cwTMl1qbU39uTH9FTfqZTbTPcaALwuS+tkFOJv
EHqr7mVIPZ0FlvinrD/1UAEK8zaqcFqsHS76AQHeEJXTx+ZpHAXul2z21rb+c1N9OPrpWiCrxZ8g
/tA2TTucJ4Vj1OVYjDP8G1zJs5qjrqrafcgG9LZ0JwFGSB40t0kxWq8wmp5uJKzH7T7E4RIFfE8m
XNBylTLP76zkEkMVx2MSmFjrcxMLa1gcPgd3sEXvQczODlt5vsR8YavyiRJosibbsUm5Ggk8G/B3
VlcqWD5n9dF3RrgImdmTbhJnGeJGs4zhm//8NSbCkvJqAmhtUgltipRB8Wtt0xdvJaz31AIOMKLK
Sbw/a7+qtLTGnZdxJRwI+o5NBcEhdMjnjA96y73wW9HGowhMLR/Vlj23pjWA/v+Q7tp0wSvgqNTz
V96vMOj21kLFq4ITu8xud2+Eac2SZo4P6dzje5ql5fo0WdZBJWVUwNDzu1N9fDINBUm8Wz8GYPBP
n0YLE1qnH8WH3mL2LVEJMKj9n6s7km2q1nZQ6Yq7Lfjl8YYeSK12S5uN9p3PFtj3siuWCcFFFA3Z
YTzkVzY7zLFqETzL6+j7hlMQrZzP2r+dWDZeJCM3oNx4ROZwkfRlUinsZQWcLMdDm4JtNGZxCoZ9
Rv7/3KeNMnFfUqYBivVeq1ty4nW6ASxvG4mhyWt2Bzpg80v2ZXWCXjKUPNogQRGNDokL/icRw0TS
j8Ad7GkF6EpsoZapaEXl74NCJsRST9l4E7riawkSTjAGJNa0ZHLJjlOPs6B746ZDJQ+jz51/f0Dn
pdiuI31BWlJlokRvMIoReJdxwps5/S8Unkb5bn6ThqSVzb+aG2vWTVlNFUFi0/SEklcFDr2krqio
mYQ3R+vU0huf2WPLdl0smnRC6+fusstRddsnjnjn8R8W8oHmnwZteUMlwvqRuBz62HRIYsLAuea5
5dEQrEOjuOhDtYTbRfpu1XGkyfDRv72/LbUDn49cVTibLbk0Xcz/gQkRTQKXHpJ52YxRHPD26CYT
UH6OnxhZ519LQBhBOXikpEjmv3K6Jw4iisYCCzlIpESTIAxOceHxt2ajS956OJ8UrHenECi0WA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CCFB03CAD37860"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
content-md5: cgzEPFxU9vNCjq8Ki25Krw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 60dc985a-229d-429b-b45d-a75585078a2f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-ca925073-0844-f2ea-f85a-79dcc4880270/test-blob-0b08f566-dc17-a830-5226-ee5fc1a0941c

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
4cV4uLNxrQS7a8sm9p3ThqSmXqynOtsQxdKZPMZRtjNTi8wLqY8hAqONDtg8w/tbhvM4HilWyKfq
Z/Pg13A9arWY02vQyNwVhFwIGSwC1AHXPbbTGJcK/cIlIUKcQSozUKQjpPCQir4XI5rMTa566JLx
CZm6alEejdaoq6aZeUIy1cmI3y8QRrL3vPX9Pq8UqjmvqjeQeOVSBBca6N8XfapXmXfl8ghj4cLn
wq5bIE8mlABt6c4Lol3kNdoY9l7S4D5LpqQ4L7cwTMl1qbU39uTH9FTfqZTbTPcaALwuS+tkFOJv
EHqr7mVIPZ0FlvinrD/1UAEK8zaqcFqsHS76AQHeEJXTx+ZpHAXul2z21rb+c1N9OPrpWiCrxZ8g
/tA2TTucJ4Vj1OVYjDP8G1zJs5qjrqrafcgG9LZ0JwFGSB40t0kxWq8wmp5uJKzH7T7E4RIFfE8m
XNBylTLP76zkEkMVx2MSmFjrcxMLa1gcPgd3sEXvQczODlt5vsR8YavyiRJosibbsUm5Ggk8G/B3
VlcqWD5n9dF3RrgImdmTbhJnGeJGs4zhm//8NSbCkvJqAmhtUgltipRB8Wtt0xdvJaz31AIOMKLK
Sbw/a7+qtLTGnZdxJRwI+o5NBcEhdMjnjA96y73wW9HGowhMLR/Vlj23pjWA/v+Q7tp0wSvgqNTz
V96vMOj21kLFq4ITu8xud2+Eac2SZo4P6dzje5ql5fo0WdZBJWVUwNDzu1N9fDINBUm8Wz8GYPBP
n0YLE1qnH8WH3mL2LVEJMKj9n6s7km2q1nZQ6Yq7Lfjl8YYeSK12S5uN9p3PFtj3siuWCcFFFA3Z
YTzkVzY7zLFqETzL6+j7hlMQrZzP2r+dWDZeJCM3oNx4ROZwkfRlUinsZQWcLMdDm4JtNGZxCoZ9
Rv7/3KeNMnFfUqYBivVeq1ty4nW6ASxvG4mhyWt2Bzpg80v2ZXWCXjKUPNogQRGNDokL/icRw0TS
j8Ad7GkF6EpsoZapaEXl74NCJsRST9l4E7riawkSTjAGJNa0ZHLJjlOPs6B746ZDJQ+jz51/f0Dn
pdiuI31BWlJlokRvMIoReJdxwps5/S8Unkb5bn6ThqSVzb+aG2vWTVlNFUFi0/SEklcFDr2krqio
mYQ3R+vU0huf2WPLdl0smnRC6+fusstRddsnjnjn8R8W8oHmnwZteUMlwvqRuBz62HRIYsLAuea5
5dEQrEOjuOhDtYTbRfpu1XGkyfDRv72/LbUDn49cVTibLbk0Xcz/gQkRTQKXHpJ52YxRHPD26CYT
UH6OnxhZ519LQBhBOXikpEjmv3K6Jw4iisYCCzlIpESTIAxOceHxt2ajS956OJ8UrHenECi0WA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24B40C926F77780"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
content-md5: cgzEPFxU9vNCjq8Ki25Krw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ca702882-54d4-41da-bf4f-29882e13c4dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-ca925073-0844-f2ea-f85a-79dcc4880270/test-blob-0b08f566-dc17-a830-5226-ee5fc1a0941c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:47:19 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-ca925073-0844-f2ea-f85a-79dcc4880270/test-blob-156c7028-5752-26dc-039b-d3ad196b5633?sv=2027-03-07&se=2026-11-12T01%3A47%3A19Z&sr=b&sp=r&sig=6u%2FwgleuusGs2rXdFU03XFUQ0k9tba%2Bh8Q8Z0U3Ehrg%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23B15F028AB13E0"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ef9c7784-a4b2-4916-bf1c-581c32fc3a13
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-copy-id: fb684494-52a4-4ec3-9901-636a523e5aff
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-ca925073-0844-f2ea-f85a-79dcc4880270?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
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
x-ms-request-id: bebe4b4c-54a7-4eb2-9cd4-0021a434d355
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-dde4c7df-cb05-609e-8a7c-4843a68a86a8?restype=container

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
etag: "0x21F0F8016A4BE00"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 71959d09-0411-48e6-a79b-571d675e46aa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-dde4c7df-cb05-609e-8a7c-4843a68a86a8/test-blob-67aac0e3-d8bb-9fb3-8bf3-03ae66d0a72d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_12
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
VURBGiCoQUxAw8MsaHxlYwe3zlGHeS6aV6eBm5PsAcegRQp9X3n7N4aYnUEIcfcNF+U777s1IdwV
psN4JqW4U8L8iyJy5wOOu5fK7tvtkuWvdISusRILayQuaLi1ghDh30p+C+XVmi/hrTMkajIAJxPe
ybIhCqGv8CD+RH9L2DiG6Q+Qb4b/2tlUzATf5wDyLUCk17lev9WozhvF1lavldT6noEjcLiM3u7Y
zD2d0AkgDBc/pgF/Jyk556BrOgODpTcv5El+zryHF/jLhvKYC/0Spco+b+/Te3ZY6YgYIaTqVCcG
buzAoT1at44Js6E2odyiWJU4RTVHXGjTJuUzb/ZT4DLLkZwRUgON47dgycfUIUesdcgPsg/xvhGD
7XpXJkiYtdNvaw8/kQaRq2F95pKh/gWdh/ktRC4i2dOLjWSJNbxvyBT0ZLU4beTCfQatdNh/4u51
up9Pa3GlTJI8tAOhCHWkDh1+rZlQZRoUasYndWT7C6t2FHsdIF2jThgj+7jhIHWRCWa6ATVVJFSF
OgCqfdctQahYK/T6h+3A2l6BLGlhM0pRlmv+QAp1Ie8ml+Zd+NBA9roQiPWAloJ4+ibW0/jrJAa1
WedrLgCd4goF0+8HYuKNQDavUKtV0P/phkbknk32O3PgqJ/p1ce6cqXresKScZdESZPBPNNaYIjn
gqi5uUS8Dph8J7pCpGtv9N0FalY8VxSvn1W5Nf+fhUcXAVMeALlhLmwqFUrdAaQoUkf1VfYyqiqT
ChnuA9mZ3aFyK6IYUPQkpDvpEkHK0Z6xkeK3qTBR5Vcoi/WfcyuSkDioatYBEAFS0bG6SJfoyTh7
PXH24TRxIUZL78X+hTAQV4EJImfHr4DhZNh/l52/P8G9IzW5m68EN0iQtiA8VEuAqfAV36fQs47x
FX1b8oqoi7ADQWH7V7vSBesfN/hfpRCM/u2sqV8a7G+nx4YxqES+5ypwOBPphFI0Q9q8sXyVkXBs
z/Oc/OJQ6FTyU481oFymYFDO7mz8onmbd2aFXjrzEjYVxdhRIepIIE++9zHC/6J9FVErxqIDbyx5
AYR8y4oa/kFZH9uDVT5lhs4cPqtI2HjDB0npx0uTElWs1yBmy1TFpPnvad/G+sASxkDT5jGBMCkM
uMRBMDb1xQ2G130e/7p6V5mxWG6Y/Q2I1wELvysjKqb3WROQhHPC+aTSQCJC88eGWY+Xz9e6dLq3
uFk16gbiYq3XJ6am6dMm71/KxbzqReM5hWWbjFrOPORY2csajQ6e7950a8wh33C8ceB48K7+zHJ1
+2WgRtVSCOvBTRAHC2FQK9XeddoXGKX13xp6VUs2WgxYpJGo/akIIWLhYJFftWZ+KMTYH1aYXg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CD8DE5F16C8B00"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
content-md5: a9zWMAA9+M/no74ljHwTaw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5e7c8656-da8e-442b-8d42-6d30d329f9dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-dde4c7df-cb05-609e-8a7c-4843a68a86a8/test-blob-7753d62c-b836-9514-2ab4-fb2d875d3bb6

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
VURBGiCoQUxAw8MsaHxlYwe3zlGHeS6aV6eBm5PsAcegRQp9X3n7N4aYnUEIcfcNF+U777s1IdwV
psN4JqW4U8L8iyJy5wOOu5fK7tvtkuWvdISusRILayQuaLi1ghDh30p+C+XVmi/hrTMkajIAJxPe
ybIhCqGv8CD+RH9L2DiG6Q+Qb4b/2tlUzATf5wDyLUCk17lev9WozhvF1lavldT6noEjcLiM3u7Y
zD2d0AkgDBc/pgF/Jyk556BrOgODpTcv5El+zryHF/jLhvKYC/0Spco+b+/Te3ZY6YgYIaTqVCcG
buzAoT1at44Js6E2odyiWJU4RTVHXGjTJuUzb/ZT4DLLkZwRUgON47dgycfUIUesdcgPsg/xvhGD
7XpXJkiYtdNvaw8/kQaRq2F95pKh/gWdh/ktRC4i2dOLjWSJNbxvyBT0ZLU4beTCfQatdNh/4u51
up9Pa3GlTJI8tAOhCHWkDh1+rZlQZRoUasYndWT7C6t2FHsdIF2jThgj+7jhIHWRCWa6ATVVJFSF
OgCqfdctQahYK/T6h+3A2l6BLGlhM0pRlmv+QAp1Ie8ml+Zd+NBA9roQiPWAloJ4+ibW0/jrJAa1
WedrLgCd4goF0+8HYuKNQDavUKtV0P/phkbknk32O3PgqJ/p1ce6cqXresKScZdESZPBPNNaYIjn
gqi5uUS8Dph8J7pCpGtv9N0FalY8VxSvn1W5Nf+fhUcXAVMeALlhLmwqFUrdAaQoUkf1VfYyqiqT
ChnuA9mZ3aFyK6IYUPQkpDvpEkHK0Z6xkeK3qTBR5Vcoi/WfcyuSkDioatYBEAFS0bG6SJfoyTh7
PXH24TRxIUZL78X+hTAQV4EJImfHr4DhZNh/l52/P8G9IzW5m68EN0iQtiA8VEuAqfAV36fQs47x
FX1b8oqoi7ADQWH7V7vSBesfN/hfpRCM/u2sqV8a7G+nx4YxqES+5ypwOBPphFI0Q9q8sXyVkXBs
z/Oc/OJQ6FTyU481oFymYFDO7mz8onmbd2aFXjrzEjYVxdhRIepIIE++9zHC/6J9FVErxqIDbyx5
AYR8y4oa/kFZH9uDVT5lhs4cPqtI2HjDB0npx0uTElWs1yBmy1TFpPnvad/G+sASxkDT5jGBMCkM
uMRBMDb1xQ2G130e/7p6V5mxWG6Y/Q2I1wELvysjKqb3WROQhHPC+aTSQCJC88eGWY+Xz9e6dLq3
uFk16gbiYq3XJ6am6dMm71/KxbzqReM5hWWbjFrOPORY2csajQ6e7950a8wh33C8ceB48K7+zHJ1
+2WgRtVSCOvBTRAHC2FQK9XeddoXGKX13xp6VUs2WgxYpJGo/akIIWLhYJFftWZ+KMTYH1aYXg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20BB64411D9A580"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
content-md5: a9zWMAA9+M/no74ljHwTaw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9932077-5856-433d-8b00-8df058e058c6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-dde4c7df-cb05-609e-8a7c-4843a68a86a8/test-blob-7753d62c-b836-9514-2ab4-fb2d875d3bb6

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:19 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-dde4c7df-cb05-609e-8a7c-4843a68a86a8/test-blob-67aac0e3-d8bb-9fb3-8bf3-03ae66d0a72d?sv=2027-03-07&se=2026-11-12T01%3A47%3A19Z&sr=b&sp=r&sig=Z2PlCbqtc5kmClwDQWUqunwqrPK6n1iwKLBWFCj4sEc%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23484F075282FC0"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 91ba21bd-86b1-4e9d-95ae-7dd20072fd76
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-copy-id: 2e564ef2-3bb3-4167-b528-6a274ca4245c
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-dde4c7df-cb05-609e-8a7c-4843a68a86a8?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b1c6c4b7-f391-4bd6-bf3e-ea43a6a11cd6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-e8ae46bf-4253-494d-af41-d49d5b06ffae?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2225178BC62EDE0"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 120aec10-c7d2-47e4-b2fc-9bea2c90cef7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:19 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-e8ae46bf-4253-494d-af41-d49d5b06ffae/test-blob-652b8b53-50b8-e4ad-3a65-bf9a00ac035d

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gJasSAIhJyurFDwG3YUXLbdN7h8ivtrqiQrH9ON2OSO1TazwsfKznh6DPT4FRmwqKqblDhffjMK7
wr/3WjNHNdoYUI/ZJ3zFmVAAn4Gc5EKenco8kCsL1cHqNO8zu0TrOwdj7fXcUQIqIHTH3u1AH918
WbxoCqSvDHvO7vKNkt0MFWN5OfdNwUzHEnC2RPfTqhURtmKHgzBjs+B6DWIQnI6Xu8mJxuXmL5dw
ofg0+MiE+kTce9t7hZEzFoUW0rTpt3XhH4gtSuMwK4fKFuI3LrsX9hIeMyGyGzY3Va9fz13jh+mC
Utg/VrBgrFBUsG6v++fK/tyhy4NULwNS9vQ00Fsq5474tdzi2J9ivYbQXmvHh1rHldCBQrxlLSPU
7WC7LNz0Ksjft0YL6CY8Pg39hNCYim6abDuLqaXSkoe4Des/ppGp2zOj59AUvKyqRAOuaKlSPGLx
IcChaYEiDSS+U9s7/Jd7U6id9aOehbCO4WSiJCrdZdCJTYXRCHKygNqrVWjRb0hrMxQBtUe+U5sQ
EogdgOn64e0Ksa4SqUo26nTI8jBHvXEbNvAV3LCJyvrpwfXplf/xsXN7xr2ZWYnKysrS9WBqyFUW
AUn45QQ8gee0KOhVTVV110G8y/a0gd1nSxHlttSZf/ig0pO1+cxuP0XW5TCgdX11XR4frf1eYX9s
kJnyVsoSGqnvtHrBv951TYyw3pusxtaUcFm2etH6QXAUSWgyfOh7w8uHscADtJ0/qV9xrYPjv8nD
XuZxW5/Y9HIJrXZ1Q9GjNRrQJRUVkLy7d9FxiZPtMImfbh0CCmgrrrxO+gcnymWNzXhoE5mzrs0q
teTOZmveG3zs1tW0oSuxpHZZx5a1k6xr47sbhBzv68BP11SEXUdRb96KO/OQ2SxNtm8iWuc3dCE3
Y4Ovw5Zg/OoVZMnWLUcvCFe4Kli42gmPzc2tzJHYGGIyTfrEoaxHKj4Je3Rid4ko81KPf0nIfoh5
IPXIsi9YPExmo+BMamaqcAAar16VLVZEhdk/SZkZas5ySoG3fncPsD8o+9Oo24nr5Q5Irs8p5POe
hC1WGfOzTTkR2iDl8/GJC/4fbTKDnKpPU2OK0Lv/SGaOGPpKuJdMdK2algBpBvEdv6PQCnbAG+eC
BsaPKH1+EpK5V9r3P1Jn0/iE6QWp5k1xbRAXLj7vzfwSx7LQvEwvG4Rur64XJn9RaTZ+PDLi2R94
HbttZuNTyYrd5HiglhasVc2BOjaeWkaQxsUHcZDKMO2SWJ+QwrWgGuUjOUEHsdMg0edlYJ7p2cN0
3KAeTFj5E7SKDj52HJIY4CBReiAFiBXy5p+pZc9PqX7bG+YUgs6NKiaNfaKVqbVUTIB+mF+ibw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22F0B04D659B1E0"
last-modified: Thu, 12 Nov 2026 00:47:19 GMT
content-md5: Thnz53iDw66beD/5cchczw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 80a1355e-c149-4d33-b7bf-8c3a9eb1478f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:19 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-e8ae46bf-4253-494d-af41-d49d5b06ffae/test-blob-fa50c351-0b77-5c72-3ce9-55184fd1111f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gJasSAIhJyurFDwG3YUXLbdN7h8ivtrqiQrH9ON2OSO1TazwsfKznh6DPT4FRmwqKqblDhffjMK7
wr/3WjNHNdoYUI/ZJ3zFmVAAn4Gc5EKenco8kCsL1cHqNO8zu0TrOwdj7fXcUQIqIHTH3u1AH918
WbxoCqSvDHvO7vKNkt0MFWN5OfdNwUzHEnC2RPfTqhURtmKHgzBjs+B6DWIQnI6Xu8mJxuXmL5dw
ofg0+MiE+kTce9t7hZEzFoUW0rTpt3XhH4gtSuMwK4fKFuI3LrsX9hIeMyGyGzY3Va9fz13jh+mC
Utg/VrBgrFBUsG6v++fK/tyhy4NULwNS9vQ00Fsq5474tdzi2J9ivYbQXmvHh1rHldCBQrxlLSPU
7WC7LNz0Ksjft0YL6CY8Pg39hNCYim6abDuLqaXSkoe4Des/ppGp2zOj59AUvKyqRAOuaKlSPGLx
IcChaYEiDSS+U9s7/Jd7U6id9aOehbCO4WSiJCrdZdCJTYXRCHKygNqrVWjRb0hrMxQBtUe+U5sQ
EogdgOn64e0Ksa4SqUo26nTI8jBHvXEbNvAV3LCJyvrpwfXplf/xsXN7xr2ZWYnKysrS9WBqyFUW
AUn45QQ8gee0KOhVTVV110G8y/a0gd1nSxHlttSZf/ig0pO1+cxuP0XW5TCgdX11XR4frf1eYX9s
kJnyVsoSGqnvtHrBv951TYyw3pusxtaUcFm2etH6QXAUSWgyfOh7w8uHscADtJ0/qV9xrYPjv8nD
XuZxW5/Y9HIJrXZ1Q9GjNRrQJRUVkLy7d9FxiZPtMImfbh0CCmgrrrxO+gcnymWNzXhoE5mzrs0q
teTOZmveG3zs1tW0oSuxpHZZx5a1k6xr47sbhBzv68BP11SEXUdRb96KO/OQ2SxNtm8iWuc3dCE3
Y4Ovw5Zg/OoVZMnWLUcvCFe4Kli42gmPzc2tzJHYGGIyTfrEoaxHKj4Je3Rid4ko81KPf0nIfoh5
IPXIsi9YPExmo+BMamaqcAAar16VLVZEhdk/SZkZas5ySoG3fncPsD8o+9Oo24nr5Q5Irs8p5POe
hC1WGfOzTTkR2iDl8/GJC/4fbTKDnKpPU2OK0Lv/SGaOGPpKuJdMdK2algBpBvEdv6PQCnbAG+eC
BsaPKH1+EpK5V9r3P1Jn0/iE6QWp5k1xbRAXLj7vzfwSx7LQvEwvG4Rur64XJn9RaTZ+PDLi2R94
HbttZuNTyYrd5HiglhasVc2BOjaeWkaQxsUHcZDKMO2SWJ+QwrWgGuUjOUEHsdMg0edlYJ7p2cN0
3KAeTFj5E7SKDj52HJIY4CBReiAFiBXy5p+pZc9PqX7bG+YUgs6NKiaNfaKVqbVUTIB+mF+ibw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23C00F399CBC3C0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: Thnz53iDw66beD/5cchczw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 39b78055-855d-44fd-8fb7-cf812ba031ea
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-e8ae46bf-4253-494d-af41-d49d5b06ffae/test-blob-fa50c351-0b77-5c72-3ce9-55184fd1111f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x23C00F399CBC3C0"
content-md5: Thnz53iDw66beD/5cchczw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ae319b55-4e8b-432d-b50e-657e7cbf4038
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:20 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-e8ae46bf-4253-494d-af41-d49d5b06ffae/test-blob-fa50c351-0b77-5c72-3ce9-55184fd1111f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x23C00F399CBC3C0"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-e8ae46bf-4253-494d-af41-d49d5b06ffae/test-blob-652b8b53-50b8-e4ad-3a65-bf9a00ac035d?sv=2027-03-07&se=2026-11-12T01%3A47%3A19Z&sr=b&sp=r&sig=iHecxu4bBQVG1hJU2%2B9HKAGxz2awLC7rUMXpvHrIEmg%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25C25AF8A8F5280"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ea933bd2-c303-40e5-bea3-f011be4acc05
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-copy-id: cbf8898d-a3e8-4445-bac8-422a667ddbd4
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-e8ae46bf-4253-494d-af41-d49d5b06ffae?restype=container

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
x-ms-request-id: 35cd30ee-1fda-4c49-b7f4-ed3aaabbf212
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-8993ab39-6956-dad4-78a8-423dd50eb5a8?restype=container

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
etag: "0x272DFE6701EC7A0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1dde330c-bed0-4308-a3e9-36dd86340b8a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-8993ab39-6956-dad4-78a8-423dd50eb5a8/test-blob-60cbda6a-427f-31cc-5cfd-9f1b7cc7e192

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
SSIs1A6n+EgZzyjO+5WVaVOgYVQZegbo7naBzsg0hy40rM8spDwQkbNLcIdABd/jE9nqNK1gj88b
ROaXJSl/5Ej6mk7FaMUXj8+hzgl/p+iXnrvvSlKA1B0AEV9WeWyJy4s/RmuQHqoU0qTev8DFnJ39
/4dukJr1esYwxVdlwBZjFwJ+P2F8BoAQ23euohRdOnTCWHnkGzrwSsylYFhSrhGNeqi9Rlw7gPkH
XbUjR9ex04riomidfvvIjvWV16YnvixlICdsn/QYhtiA3L2FzAL0843Obwup8Pys9bhmpqhS35+I
vSewRTSWyhuPHKE+QsHyoOQZWU4huy8rv6k7suAvLfwd/A/bRK1YN6XvGtNabrP3cwXEOYZRZwL3
hYWKWhc7YO+kIEaxF1w2wCGoMaFb0FH2Qz7aavR2zJQM5L4ozd2NtLnktU5tRVypjnhlqDZgm7Q0
lBbZYPX6LlOxpTOdDvJEGn3ndxsDiP7iMdx7ESNerEgK8znGtFPE6Yf6u6ApC4CGII65eCSZMAsY
9i8Zfh0wUvjqkxq5fmUpI42UCM1duSZb9fCVpDMjcMItrb4kqmtpymioPndlzKIpj1WXBSc+uj0I
vYksm63ExyNXjNCnBXgiKj5ktXqv9ihObBTejGua7vOAG+zhPS+643dTDUDRgYrcdNvp2gTDWcdg
3i6Z5jq4vZ7dJ+mMQOwPqdIDW+jofOqKAhePsRPuvcElgV8AIf08m1Ci9FqhUDTu2jEyv/7fd2FE
D+MiKAuK7mknZr6NDofVxr+XRoeP6LLiodfivP3DRQr9uxIZGXJFFwbweel2YMupXPk+RzDZtCYx
QIc0pzFrZCC0j1J0vKxNUi6Bn2/JbEAMOF8EhP7ZIwfs59nrEG/UhBXIwtB4NaBM8fUBWBW3aNNG
KG/RZ98i2mtLh9TSYUG+rBpZAKpvlAO/uJMI18vxNX8GpegAAh01pedkLK3MeZCzQqv7XWcp1pNs
Eq5LGQKgWVJUzLtYvqr8JFrCCmdV8z4DVZUf9tgX3c5UlPBu6YzlxNJbd63UWoQB/jkNZsssFh5w
SMRtgWJ6PO/sAym5jTrO3EaU+nyRLvoQHfifCnYDKH3R/qHHeEJv4Dq+51daR3D+PomFlxyi3xnK
XGRq2zJ46dus6I+ZBmQEJBlB0kejttWHoMzsfpBgLx6H/RveBAUIRf17rl/hZTclgHIDYAzSJ6aO
4zpmjGtKS7lwEglJJiATOY1JJwh2pTuUx/0eXc4RtNZ1TyHLoriSMWKmcFMu3FpS7yZ/if+eGD3/
0cVuLO3qX10z09b+SJfUtvWl0DXnZuqiy26okivW1jfjy9DzJAR0uxH1+wiEU6eOqtIJ+EgIFw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22748D43A0F29A0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: sy4bnEZ9m3/DloknqTyKvA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec575a59-b682-437f-aa12-c8a3f7e097ef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-8993ab39-6956-dad4-78a8-423dd50eb5a8/test-blob-241430f1-6bf1-1ee2-77c7-19e759ccddee

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
SSIs1A6n+EgZzyjO+5WVaVOgYVQZegbo7naBzsg0hy40rM8spDwQkbNLcIdABd/jE9nqNK1gj88b
ROaXJSl/5Ej6mk7FaMUXj8+hzgl/p+iXnrvvSlKA1B0AEV9WeWyJy4s/RmuQHqoU0qTev8DFnJ39
/4dukJr1esYwxVdlwBZjFwJ+P2F8BoAQ23euohRdOnTCWHnkGzrwSsylYFhSrhGNeqi9Rlw7gPkH
XbUjR9ex04riomidfvvIjvWV16YnvixlICdsn/QYhtiA3L2FzAL0843Obwup8Pys9bhmpqhS35+I
vSewRTSWyhuPHKE+QsHyoOQZWU4huy8rv6k7suAvLfwd/A/bRK1YN6XvGtNabrP3cwXEOYZRZwL3
hYWKWhc7YO+kIEaxF1w2wCGoMaFb0FH2Qz7aavR2zJQM5L4ozd2NtLnktU5tRVypjnhlqDZgm7Q0
lBbZYPX6LlOxpTOdDvJEGn3ndxsDiP7iMdx7ESNerEgK8znGtFPE6Yf6u6ApC4CGII65eCSZMAsY
9i8Zfh0wUvjqkxq5fmUpI42UCM1duSZb9fCVpDMjcMItrb4kqmtpymioPndlzKIpj1WXBSc+uj0I
vYksm63ExyNXjNCnBXgiKj5ktXqv9ihObBTejGua7vOAG+zhPS+643dTDUDRgYrcdNvp2gTDWcdg
3i6Z5jq4vZ7dJ+mMQOwPqdIDW+jofOqKAhePsRPuvcElgV8AIf08m1Ci9FqhUDTu2jEyv/7fd2FE
D+MiKAuK7mknZr6NDofVxr+XRoeP6LLiodfivP3DRQr9uxIZGXJFFwbweel2YMupXPk+RzDZtCYx
QIc0pzFrZCC0j1J0vKxNUi6Bn2/JbEAMOF8EhP7ZIwfs59nrEG/UhBXIwtB4NaBM8fUBWBW3aNNG
KG/RZ98i2mtLh9TSYUG+rBpZAKpvlAO/uJMI18vxNX8GpegAAh01pedkLK3MeZCzQqv7XWcp1pNs
Eq5LGQKgWVJUzLtYvqr8JFrCCmdV8z4DVZUf9tgX3c5UlPBu6YzlxNJbd63UWoQB/jkNZsssFh5w
SMRtgWJ6PO/sAym5jTrO3EaU+nyRLvoQHfifCnYDKH3R/qHHeEJv4Dq+51daR3D+PomFlxyi3xnK
XGRq2zJ46dus6I+ZBmQEJBlB0kejttWHoMzsfpBgLx6H/RveBAUIRf17rl/hZTclgHIDYAzSJ6aO
4zpmjGtKS7lwEglJJiATOY1JJwh2pTuUx/0eXc4RtNZ1TyHLoriSMWKmcFMu3FpS7yZ/if+eGD3/
0cVuLO3qX10z09b+SJfUtvWl0DXnZuqiy26okivW1jfjy9DzJAR0uxH1+wiEU6eOqtIJ+EgIFw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22596B4FCDEF300"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: sy4bnEZ9m3/DloknqTyKvA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 580d4ae8-7081-4401-ae48-58bb78f34164
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-8993ab39-6956-dad4-78a8-423dd50eb5a8/test-blob-241430f1-6bf1-1ee2-77c7-19e759ccddee

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-8993ab39-6956-dad4-78a8-423dd50eb5a8/test-blob-60cbda6a-427f-31cc-5cfd-9f1b7cc7e192?sv=2027-03-07&se=2026-11-12T01%3A47%3A19Z&sr=b&sp=r&sig=QgbGsY84GfyU6n4ERvDC7jiYcxY1ekhtaej%2FAZ1%2Be0E%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20CC872C0C1BAC0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8cfee0ed-49e8-410f-a7b7-17b5ee6191bd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-copy-id: 0b27410d-21c8-4d46-bfa2-17980edb915e
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-8993ab39-6956-dad4-78a8-423dd50eb5a8?restype=container

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
x-ms-request-id: aa422630-cab0-4f21-ac66-737654c573fa
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-1865b4db-a458-79f5-44c3-9e0be4382ac7?restype=container

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
etag: "0x23A7E289CCBB580"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 35ac6514-e4b5-4a0f-9e2d-32b00674eb85
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-1865b4db-a458-79f5-44c3-9e0be4382ac7/test-blob-7b7917bf-102f-0595-3ab7-1f9e647a4eff

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
yT8YyDTjJf/4rOm4KOXYjx+wQMhhyDlMO5rgLs3XOT+cUR0ZsxW6945mIKy7PFBf6w7sM/dhZgAG
y4yZA/cyIXOpG9bHv9sJ9kg6+qiNkf9JgEK+6gVHO+scEuiIIfSWNP44ESB6lysy4j2vJ2tXeDmN
T4K0czZtYeDrqqzzgdVUo8apVIDez+kXiwjImBR/xJqu+tFx4sDIy7BAj+x+P2FoWoOlriS5r3+Z
negupMjLa+USRYYD4sEF4YjQnUD8mEymXz6Q2RZ19EtR2ETYmibndCMHbPnbZXjCoMyb6RE/nAWc
h0WKOpHOnVE6sQp8LUdh6Cgc9StSy/rFzjlK2Qo5Ejs/PBLhXTmROM+ooLNtRXOFOQHpIqfZSbtK
xGxYhMNGAZ/OPfE0gIvvirxcqitGWInGxZ8JUO+TZfJXlpjNObQMYZ4UnweBULl1+ZfrfJ6QBGzi
kr4jPLGwOtj+3enyIVEHUEiMMriCRHTmk1ZXqOhTxpIr6qf16CTsZGQvg3PQgthG4ytWA9GzYE5J
PKlbWJHvqhZXxjapEmcjn85TUsABFhF9EMW9/cPAeIpZrKt7kQvSP9hceLuinNHEMmMCXw2NSCaY
3UfMMq1Tlk6sUGW7qA7DgRLnpJ1V23T0+MtfvRh8zGSF47PDBg0rCeJt9UxrCIpVP976paOJQgLT
2Dnh89g2L4QBNsRa/3oFvJq75+UnifBBCX45gSbA/KCx8C7USRYJNsbHadHF+0Bk9ekIzVscq05I
oOla/a1dQTokqA5MMHKEsbEfYB8few491Iw9ty5FlUTfjKksrzkYaSeXoVIxGMR2gxyp/EsuKSTb
HCghH4kM3hPJbKTIWAF4B/b4h9q7C7zHxzQRm5j5sGKEUZIQ90qei8I/Z6sgrisaMfVUNqFKHxBr
WlhV+kJ60LtBQwZvZxCsWfwXe6MQphgI92qipHnBOjKCpZzxSZGAxZfw32okq8rlqN2kMqNsWrM/
TALY1ytBfwnU7MFzuxBrl7YMIMeu40ygvPycHQiOFUrpsfyOqO1srl9gUL4Icu3MOJrtYDrrkWm2
OBovpWIARdd3iQkU3e/IoHJoTpONl0oO0ORtobQP/SCS2G/SPQn8Xwrmkejjt1urJMDIg0LWKKDQ
INR+k6QiZ4zpgQR/9mJpa+6IpwZhKxiIwn30R3ndvK/PAR00fsxmxClc+TZWKy1dXxhUTYGab/S8
9dEmLh8SDMRUsPRFNOwhIuPcBDHiMZZPl+hhiG8uNJIod4n7P5UKSu1xAns5FyorMyqevmrC2sM6
1pc3sYRVJntiHb1jJeNN0rpEcS8aFn++NVREkHYnZZ3FwGj+0phpG9sA1vltyA1HUOywfmmUIA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23E18428C11C860"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: ge9JIZo+jyCOkpR0GEQACw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0123d649-9c1e-4143-99ee-a681b2efe681
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-1865b4db-a458-79f5-44c3-9e0be4382ac7/test-blob-5355da21-401a-5085-6d46-fd3f8a77e634

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
yT8YyDTjJf/4rOm4KOXYjx+wQMhhyDlMO5rgLs3XOT+cUR0ZsxW6945mIKy7PFBf6w7sM/dhZgAG
y4yZA/cyIXOpG9bHv9sJ9kg6+qiNkf9JgEK+6gVHO+scEuiIIfSWNP44ESB6lysy4j2vJ2tXeDmN
T4K0czZtYeDrqqzzgdVUo8apVIDez+kXiwjImBR/xJqu+tFx4sDIy7BAj+x+P2FoWoOlriS5r3+Z
negupMjLa+USRYYD4sEF4YjQnUD8mEymXz6Q2RZ19EtR2ETYmibndCMHbPnbZXjCoMyb6RE/nAWc
h0WKOpHOnVE6sQp8LUdh6Cgc9StSy/rFzjlK2Qo5Ejs/PBLhXTmROM+ooLNtRXOFOQHpIqfZSbtK
xGxYhMNGAZ/OPfE0gIvvirxcqitGWInGxZ8JUO+TZfJXlpjNObQMYZ4UnweBULl1+ZfrfJ6QBGzi
kr4jPLGwOtj+3enyIVEHUEiMMriCRHTmk1ZXqOhTxpIr6qf16CTsZGQvg3PQgthG4ytWA9GzYE5J
PKlbWJHvqhZXxjapEmcjn85TUsABFhF9EMW9/cPAeIpZrKt7kQvSP9hceLuinNHEMmMCXw2NSCaY
3UfMMq1Tlk6sUGW7qA7DgRLnpJ1V23T0+MtfvRh8zGSF47PDBg0rCeJt9UxrCIpVP976paOJQgLT
2Dnh89g2L4QBNsRa/3oFvJq75+UnifBBCX45gSbA/KCx8C7USRYJNsbHadHF+0Bk9ekIzVscq05I
oOla/a1dQTokqA5MMHKEsbEfYB8few491Iw9ty5FlUTfjKksrzkYaSeXoVIxGMR2gxyp/EsuKSTb
HCghH4kM3hPJbKTIWAF4B/b4h9q7C7zHxzQRm5j5sGKEUZIQ90qei8I/Z6sgrisaMfVUNqFKHxBr
WlhV+kJ60LtBQwZvZxCsWfwXe6MQphgI92qipHnBOjKCpZzxSZGAxZfw32okq8rlqN2kMqNsWrM/
TALY1ytBfwnU7MFzuxBrl7YMIMeu40ygvPycHQiOFUrpsfyOqO1srl9gUL4Icu3MOJrtYDrrkWm2
OBovpWIARdd3iQkU3e/IoHJoTpONl0oO0ORtobQP/SCS2G/SPQn8Xwrmkejjt1urJMDIg0LWKKDQ
INR+k6QiZ4zpgQR/9mJpa+6IpwZhKxiIwn30R3ndvK/PAR00fsxmxClc+TZWKy1dXxhUTYGab/S8
9dEmLh8SDMRUsPRFNOwhIuPcBDHiMZZPl+hhiG8uNJIod4n7P5UKSu1xAns5FyorMyqevmrC2sM6
1pc3sYRVJntiHb1jJeNN0rpEcS8aFn++NVREkHYnZZ3FwGj+0phpG9sA1vltyA1HUOywfmmUIA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2741FC790E2ABA0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: ge9JIZo+jyCOkpR0GEQACw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 349af4c9-e82f-4220-b63c-78a4d6ce7f9e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-1865b4db-a458-79f5-44c3-9e0be4382ac7/test-blob-5355da21-401a-5085-6d46-fd3f8a77e634?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: e7a8a031-1d59-0b39-46fa-9b414d2aa9cc
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2741FC790E2ABA0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-lease-id: e7a8a031-1d59-0b39-46fa-9b414d2aa9cc
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b62160f9-3fe3-4157-be85-80fc2acce5b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-1865b4db-a458-79f5-44c3-9e0be4382ac7/test-blob-5355da21-401a-5085-6d46-fd3f8a77e634

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-1865b4db-a458-79f5-44c3-9e0be4382ac7/test-blob-7b7917bf-102f-0595-3ab7-1f9e647a4eff?sv=2027-03-07&se=2026-11-12T01%3A47%3A19Z&sr=b&sp=r&sig=8L6q3Gy4RlK6MnTNlMhGWGZL5lq52axfa0J9icDxuKY%3D
x-ms-lease-id: e7a8a031-1d59-0b39-46fa-9b414d2aa9cc
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CFF047C4E76D50"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0174b9a-28e1-4ab3-a30f-2c343d1d9595
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-copy-id: caef9154-1081-45ce-bf20-dd1769be9db8
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 31: DELETE /devstoreaccount1/test-container-1865b4db-a458-79f5-44c3-9e0be4382ac7?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
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
x-ms-request-id: 028de8c3-2cb8-4923-8db2-68f504d7897f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

