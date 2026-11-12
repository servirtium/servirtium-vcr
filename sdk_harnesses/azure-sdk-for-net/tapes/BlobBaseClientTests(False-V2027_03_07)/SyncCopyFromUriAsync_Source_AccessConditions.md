## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-35d962a3-7cb8-d779-f774-c70890507e56?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_Source_AccessConditions
now: 2026-11-12T00:47:22.1835905+00:00

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
etag: "0x226A0BAB2ECC540"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20b70a64-9c97-40df-b4c1-cbd7608d396c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-35d962a3-7cb8-d779-f774-c70890507e56/test-blob-0ff06094-c9bd-0413-1bfb-e23935640b6a

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
a/Px8jmqrG9HHRuLTBpEpW8uiyGUhx7ZTtQavZo/oZNpXZydX4sd6rSBx6CuiLgBtjzKB9np1eTV
F6RkkO7VB3uHIe99p0bkEKBtEr9+KsYcGAdddZm6f4e3x0fnuVrFrL8kJmbIhA/25vc4fMMlVuzd
R3fnd5LhzaFoxd/+/FdGp2X/WQRgU5P3Zo+iggPDknFaCnHi3jQtQlnEYL4v+Omg8tVdJf3offTj
7xEDPkuepDJuo/LlY8gw0haqm/PVyG6lAo8tZWxzcYx9/u4jKgQOJryLwVT2uo4MLFPmPuIADiej
XTy7cD7G+jJmaGTaDacSnHU3SQYZr0gBITkYjTOqfO/Hf8zHUrV9xcYhkFEpMh+r1KFsycUgia30
uk8FrW3+u+t1Eo3aS0m/uYM/9x721+4ZbLmSPbMqpvYf05hldxhZI9VltB+R0YhXrA9C4ZGO/eJg
60C0bH04S2yXu3exWkFr5tRJkCPPiJswOpGj58RkkNW1BIzXpbZXLGmz+RURpVLN1/q8RWy/kWKk
gzLslWOnMiuh+1W1k0Ae8mO5G4+GHpQ+1RDKp0to9nIpMiGEa5cGC8bpb6r8GEO6nlMJBnbTHmSd
rb9T3YrgOAXjjGEfmYbMsxDInK/qQr3MDwn3X/D8VRS85r3Ysy07CTakGYvimgXMPFJlC4K1s2sB
hs2B6NgV5jZMY7LJ8wDijJJ4RSgy6nUDKyKdlkqSBjNR1ixguiFdjzJVlTdSAklSg3/vPG1Dz5xY
fby2d0/sulx+eB3TgtFxG7b23VQ9sSnZSxPKosrGDgeQCDxkpxfjaNrb04osfwGtfSG3TfJHGsyT
3Cw7IReRuGkVQnmVDXOeE3R5Yt2ercwSHSWpDsEUSe5w0Mvrp0bDSRsgFjyHF3CtGTl9zrfu9S5g
KQTy6KmoAPmLJDyosmsuthjBfZePiwW1/PWHlns2gduci31C0WFxeBVD+/M0BGbNTxeeLXeX0J3+
POy0IWp+VaNgDCfu6+W3UAWBTI8SgfeOuUdjl1RkBLvfQ5R1vVerxaVP0/g/32My59xxFYQN67v0
JWciGr5P+wdsDqdRQZKu1ofqw63+T9njMa938+420VjYgJfviKrnANjx09G74aVJwz/8IygO9daO
P+kO1wgYNTxPeMH6vk3cAsLUDXsIJ08JLS+vOq4vyorBYUnB2SjQ2Z6Va2jkTwTyICFmOehahReZ
BKrYafqOIK42OVwEGymZBDTdc7vnJd4qvBqMyZChZtsxJ9R+92+jBku6rRWo7gT4zDS0fRJbst/L
rqzgAVcdlNKB0vRUGg3EOWxwLXfIgs4VlPxb7enJ1nT1s0jDwgTznBlDJhsQo7En70Sm64VoAg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E107C609826C80"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
content-md5: KaKQsNKlVFoSORJ1PKhERQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 525d941f-94f4-40c5-9124-51af8030fb48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-35d962a3-7cb8-d779-f774-c70890507e56/test-blob-6dcbdd2b-c25b-e9a7-b8fc-7f5f67c40176

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-35d962a3-7cb8-d779-f774-c70890507e56/test-blob-0ff06094-c9bd-0413-1bfb-e23935640b6a?sv=2027-03-07&se=2026-11-12T01%3A47%3A22Z&sr=b&sp=r&sig=YskgIXJLwT7EJI%2ByGEVagxRpt5BodAiRZq2feSU56UE%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-source-if-match: 
x-ms-source-if-none-match: 
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F98FDACDF0AFD0"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 39d63d39-5c46-44b3-a227-2b314cb08127
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-copy-id: 4691a390-bcba-4863-b6ec-c81c47339abf
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-35d962a3-7cb8-d779-f774-c70890507e56?restype=container

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
x-ms-request-id: 803f52da-22db-4a51-8534-350b06fcd5a3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-5e907c67-5b85-05b3-f04a-34fda422eaef?restype=container

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
etag: "0x1E361FED94622A0"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 30bc969a-4a50-4742-88cc-c3b0f045f04c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-5e907c67-5b85-05b3-f04a-34fda422eaef/test-blob-e61db08d-96f7-d998-715a-6e1f90444a63

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
7s4+bvQJfdAqxX0QjqlElRGQ0ranGn7Q5LbsK+yTdKwA0A/W43z6gzJNuzIZiEvIFdkOAHGTu9NP
bYk9HVLjllDRD72abrGUlU+EWl9Mt1xrIxUThHQ6bRU7h3byvWXgaSThSHiOLqcneWsiD2F0A7Yt
0vk8zxLclqKoXuc7odfppPA6am/k3PVu7AsJF12zxoO/xetso5oSBbHV5s/A7NeTOWtxOZhHSfUE
zuMG0n5E9Jhje9zsfQBVJ2S+DvYlrgAzdd7yQozreHz1Z9W3CzIykPE3XHD7prxqGxI0iDr/3h/j
012gUrILeANg9xUrnhsxjH4E7lGPOM8iiCd6tu9B9oi10zjVkT4/LORsmq+mPnz2Avy7+vDNU5uO
fcmKkMETHgCNdcrjW/pAxMJtIp0ffEqqhLPyhfuY6ICdRxR0tZsjWXyuGMmxE6YCezUuYDD9bgF/
3wsNIJgE9Y1KRRTlyw8mSckhcWOB+XEM8ArFaYhPn9kS9dWPFTjjqSM7Z82SHLAmBxZm3Pyd/uaa
ADCOPosE+qY60tY6ljSRPcc/RZKketNZn2Jy6cLcdPbu9RUHVGqYN2wnWEna63Di1Z41XrlU9oZd
NJ8pkhHjXV7fTKEfieldpw0lfCGJf7TxjxMkpxY9mf6Oqh/Lb6RbRPrr+p/Pwku12LarLnlk07Xr
NwL9v7ZHobKikN7JkThpyjgnnYQUIs3Hbs9fkWuFKtdq4DehXYVDpFjtLDJt7EZ+QmRAPDUw1hU1
NVDn5xBGHWYHX7EAx2yz4/krJ/aaWoKI4U8HRO2hOgkibCg0XLxIpg/LZY2UfXr3jFg8BK8fmtrO
XgbAP9h5ZiSo3ltEf4c844Hmz/X182PUD7iUZDVaA9FNZv62iGY2Uv9o7J8fsg3RACEuOMvl2Wqj
6zAg5AHvTduK9xmJhloasH31jQfDtV2qwmQULMoFZ4yTEpw2Fm3+eJ7Elbr0SHnGE4hO70tj3zbS
dSKc2iEQhI+M9XO+5JkP9xRo/x+itnnqThlCt3hAMDJlY6BKYZ59sxErZ1MGCC7uPvg3++AXML+o
sYwIzswXS8VAWIH4xZV26kwOd04m5EXqU3l/CTVSTjLhorARdOVEFByOxa+s9XliwRCTCLlwgcxG
HXpTl0KP7gpOFyLlZHZnymMymB+WPl3/HUckvkV5cCDjyldq8XzZ/takXd5WfF2aLD5WPumtr98c
U3r6ay/F1aYBApke/NjmWJpI8uB/qaDqipIHIjI3Nht4TZ0C35On34g3VHrDey9lb+VPZL3+narZ
EOCdvbJ0ysx+pq475HkGoRNYSFQlJg9iobJM6NFeebDzKM+yCSHVwoquRdSBKotsSMKpplVWsw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24FB7365D18A480"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
content-md5: XCovKIdfuEWjxLSzc5PcUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7e8f5d4a-e5d4-4d55-99ca-984496fded5d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-5e907c67-5b85-05b3-f04a-34fda422eaef/test-blob-1c3bd1e9-27ff-fae2-202c-fe47bba95497

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-5e907c67-5b85-05b3-f04a-34fda422eaef/test-blob-e61db08d-96f7-d998-715a-6e1f90444a63?sv=2027-03-07&se=2026-11-12T01%3A47%3A22Z&sr=b&sp=r&sig=jeW5XwPkRj62Xk%2FEnV%2BqUSgNHmm6IhHGSbqwmRLdETM%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-source-if-match: 
x-ms-source-if-modified-since: Wed, 11 Nov 2026 00:47:22 GMT
x-ms-source-if-none-match: 
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F3711937A532E0"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 96d32e0f-72e4-4159-9cba-17ea78b217be
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-copy-id: bd9e01ba-4c0a-4182-a01d-f095ec1cb927
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-5e907c67-5b85-05b3-f04a-34fda422eaef?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 292b9121-9323-41d8-94be-356454377e2e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-c98582f1-e177-e13a-7726-e0a00fb4d35b?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F2E801E0EE9E10"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a448e29c-3eac-4cc6-bc92-5633f2404dce
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-c98582f1-e177-e13a-7726-e0a00fb4d35b/test-blob-e1e6759d-05ce-9bd5-a8b3-25a882e2d0c2

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
8yq4I9CMOweXWqTYR0Lra1mjqkXDc8nsrekhxLySXpVWHazk/LCKEDneSXRg/VNmyLlO3zeK/oBh
y3Xma3dLBfsPgiqVB2+oGJkM5SlUi7CWuvsDQ39dyx4rgjA6pKXBk0R4UXop0MBJpcaefhlXDEDF
ULB7SMF8srcLaoQ/bnPzSlLk3Do1bOo7uZ24vk0F03XvdFT1RkuC/J7DHWU8CjdSqjPHczAGj+PG
QI4kw/NpBpYPT/kf/gQGYd+bck+E/q9lZhQZPmBF6eVxLgW8XjmrWRfPLbo+M6suwBFRah2UQUHf
vl3fUMg2ymUUrs//SgKm8Bg3tdH0JzJo6n1O83/H3ezD3Z/bywlPmGNVKoXbL3YOq3oEXIxw65Yq
dmVK6NbmTNDjO2xiyiQP6Bxunv2tjbsHP0gEwoBgU/EJsVWjBLCMbt20+PQJq+FV9XNwAUyZfOmq
Q6iO4YlQgud7WRjPa+Rs4TAg+ZTH/ZNnr80N8FKlbzRs+cAH/oxTY3UMjlLIhomPAx8beYNU4kUV
JjK7Q5KV1erkYnEjZOOjzJUfum9BnihEfewyifaxGBZ68tdZlyDjdrln5CMXbJ88eKztNSjW04gK
d8WmYkz0MkpaqHELSTR0O0O22boELRFM9hFJw+Luox9PTyBbPRRsc7HZvMMuMC54ePnkIPnOBUq0
WWs6qm5nbARSvPkUGf4vSWYIK3BNHsbi0UvpCoIlgUrVpuOoMshCcVC+23Q0Y1/6tdeTxdnZZzql
WNkjfmKBLDuvPnIahhaexrogjkJRrW3s7lSqkrtw/D+oA9nuH/PuPK85hSXs4C7A9P8fudj4U6ps
N48N1pp/P0IzcoM9r6fHMlGTGChIAA4m6p28UEJnsK8vgedj4GYUuUbiuW2rg0VXWIeGZDqBJDeB
5+z8wu7/y8HUDS2/Y1Hrfl/iZUegemZYZPi74Ex0rV2w4fl5F/ZY4+2s13YXmPQ1m+Xbn77w4GyG
pF71ROt1X1/QDoFXcmdoioJZ86PvQMwDhUVmmA6ewACN8nKYYp8CN3cWR4ly3ih+cxQ8luzIl2SR
8r6lDsdQMU6AyX/0zyjjV7ws2PlCkKcc6CX6YioTxFsOBm/gXCiwxhU78RSoiqPsWT4wnL5qT2EW
iCahVs8kbQUk5cm4AvuTexLkB56Tc16CDgjr4yedpLcNytMCDm9FFoQOhKTaM1ZDnCGrhkjDghTI
H0jGOIndh0ESqzgnkW2jn/AZhO+5p9qyp0YG8R5uSke+Ou4mft77MfxjyIgeHAuzB+ZXqf4lDndt
FJFC1pUjo2DwaFZ+fCASHlLzVt9Sk4s7U+k3FqBJmSt3uWlMuFtnQCQnLrO0NYvFRYurMriXGw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26EEDAB4400CC20"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
content-md5: 38jATvz2DPEB5VwquSbWtg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 234d0326-e055-49eb-b05a-35d7819ebd1c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-c98582f1-e177-e13a-7726-e0a00fb4d35b/test-blob-83070580-ebab-bf8c-a7cf-2b07c3b6c565

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-c98582f1-e177-e13a-7726-e0a00fb4d35b/test-blob-e1e6759d-05ce-9bd5-a8b3-25a882e2d0c2?sv=2027-03-07&se=2026-11-12T01%3A47%3A22Z&sr=b&sp=r&sig=dFcO8Qt%2Bg3tV6GoGRe3uNXoNMwIqRrxlCnwCYPOzjh8%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-source-if-match: 
x-ms-source-if-none-match: 
x-ms-source-if-unmodified-since: Fri, 13 Nov 2026 00:47:22 GMT
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2603BD273F872A0"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: eab449c5-4573-403c-8dc4-d4c5231a2512
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-copy-id: 79e00e6f-01ee-4bf4-8da9-73070b2eae9c
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-c98582f1-e177-e13a-7726-e0a00fb4d35b?restype=container

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
x-ms-request-id: 81691bf9-04b5-4266-a000-b8e314a904bc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-bb158bf7-652a-87d8-1d5e-71d1159d6773?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26FA2D34027E8E0"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c61e07b2-7972-4bdc-8ba4-ff1de708eae3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-bb158bf7-652a-87d8-1d5e-71d1159d6773/test-blob-47e99ddf-d8b1-54bb-9867-87e3892ec80e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
gCW0pqLc8Bosf2VNebuqCWi3KCbNfrMf0MAiwt71/e+WYlHv6cDQAqzOGjFybtrdvX170QaiQQFy
lNbhui47N4J2txdpuh+n5yV5/mOBrWHmRAVgeizp8yFPfVXq7kh+kuKv/LfDcwJe0+ngKEKe8Od0
+3Uo271VjMP2Gj3Kvfnd+2uB0rCqItECAqZCCMvesIxtdfLSVbckWW/0zVjFkxbwAy3XHB42ytmk
JdgXE4P3GGmwXEcGCqWzXHhAtlV4PG6QUQWdBpRuNqsZLi/fDUbr/LTuFTfP6fmII8Cm9RODK+lp
hsF+WRHVQSWb7dt11E4xVbmgiSc3wWgLFePTyEGXlQNGdYeFbaKjGNMRM/wdEk5ydKBZ46LBMsVZ
ckMtAnnkA1jYLl/HrOcX/HBTJY1r7gOVYVOgPrFhhELBK/pedhZZLTCkRePvq8e5QuYxbg037YRA
mKEmRMWmd6kcBYDtuIZa+fddx6gfprWM5/vLLxY1ij52Ht51M+lq/c460qZGzIlf13QV2ibcIfHr
mVzJ2keT53pCdpqo5cYO8sra5dQPRRtxa1iiH7AXmvzsiZmMoSKGp+orA1XvtvKuBudcATwd21RB
WG7v8MjKKtydvFssglGnUz3p5EHGgrVm9BjIu5jAzq1FSkizl7YiYNh4UfqWgYSVtK3+NPcSe9a5
ifyvAm9E3O2t5zcI87yHx4RpTTC6z3KUMwfqwpq2Ms9y+Q65c15pNHQN6ZlMjMHxdm1zqS2l/7mJ
Gs9nWRpT97RolfmuzVMm/xm7rebZSKZG+EstQ4mhzPpUL1iOAdpauvHl4/bHQ6gZTakU6lLTsNIo
IWDPJbQrx8n/WZ77l/0+YPL082SvfrWiFPbgjOKngX6GZd95ipQ9uRstx+kKHrWr1Ylf3rxteaOr
LRG+SzvmWNcfdDEexdZetzpJgbfLl/ZANLdYR6PCGew8zl2Df27gRm8R66mEjRCzASeCJPfs35Ub
fRaEjhA0XFtE4fd42zfLaDpHuqtMvKampEZ8P/T0UO7HaAFYXLhf3Y5NP6sZOibvt7u8pCXpzsFv
3enKuB1mT5EIsHM1cguC6Nwd/3z7jWkfjIc5OKzJ3plA6H/OlCRx5+8aEIqzuUSvOrtIzM9EdE9/
qiyVLRflPtLZ9IqMs1O4qxiN4H3fbNJCif3wgBHK/HQwT+r427nXNdK32sS6I4dnkCC2tpTSoD5Z
UqMa9L3BDvgWW2Rpv9BetaqqJ5ENiGV2iPDwE0XfXq6rnogVvUEU9svMpMcj/tBQWADqJ3isS8o9
pGzM0PqyNv21viBISPhpljHGQeOeUoogoLtF9Tc2/1O91xnURyXRGm7JbkCvCA8IgJBG5grmnw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2118B94A1AE8D60"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
content-md5: 2sgVSKATjAjoukSrkXkMuw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5e45c1cf-4212-47ce-96e8-36a8d349fd32
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-bb158bf7-652a-87d8-1d5e-71d1159d6773/test-blob-47e99ddf-d8b1-54bb-9867-87e3892ec80e

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
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2118B94A1AE8D60"
content-md5: 2sgVSKATjAjoukSrkXkMuw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 09799b7a-9ce7-4e85-9513-a6ce505a4131
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:22 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-bb158bf7-652a-87d8-1d5e-71d1159d6773/test-blob-30ace251-6d3e-c640-7ebe-cd8a71df944e

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-bb158bf7-652a-87d8-1d5e-71d1159d6773/test-blob-47e99ddf-d8b1-54bb-9867-87e3892ec80e?sv=2027-03-07&se=2026-11-12T01%3A47%3A22Z&sr=b&sp=r&sig=izG5rqzkGsy4wInO4cqHnp4rpZfF1qEUHxzoEa6qZMw%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-source-if-match: 0x2118B94A1AE8D60
x-ms-source-if-none-match: 
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F74C7B388B7030"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 563d16bf-ca9d-42ba-b25c-0f27e5e82777
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-copy-id: a30213f0-09af-49a8-a820-8fee454d97a8
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-bb158bf7-652a-87d8-1d5e-71d1159d6773?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_17
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
x-ms-request-id: cc9eb13f-da0e-49c1-b193-7016adb41c32
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-7527f50c-e4d4-704a-98ac-3c74a6f01848?restype=container

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
etag: "0x21E1DF57EDFC9C0"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 03096602-3f45-4183-a7c8-f0efa72b3ecc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-7527f50c-e4d4-704a-98ac-3c74a6f01848/test-blob-f2c838d6-f49a-ac92-2d03-ef81e17d9e29

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
7EI68eNxymyXO5iSMMwgjqaEszgWobMYYnpI0fTIjhoOE4dktidlZW1bWl5bAHtg42HbXMplEkuO
Io5oKfl3z61+hB1Eu9h+H07Lu0ZUvGL+5+2T7TFQqAA81ZSY/Dxz44ux3XxeHCeJXD17mlcEOWUs
akEM5OF7LtscB+ZE5SMSV9e6o9/moMvFCZH01A6pOJwubJL6Z/+qNq+gQRRBRXYaaUOASZaGRcl2
RtpQhlrNc89KFXmQF+/YEGwvRV62hMQa2mrLKe4FpybIhCEkWq9V085F9y/9iVJTqDkqVgBqv8IW
NazvAUrgRG1SyJPOs7a92nGQcYyUHVEYd4G121EmXsRfDiQDZdGDZLLBqsG+hfSDbHuO2U41gRha
14rJKmkcLGnPb6WRunWgDQzZ03KQWfKMMm7VmIR2KYwMqI5HujlJpH5X7hVO8rIG7sxBW66lyn2X
PPj7R5TlWUUZhBLnWFPSkC70OGrcPUC7zqm4NM7eZ90QsH1BTlzqcpXQNW2gH5V5bst/sZESuv64
P3nqLCR3Oh001qjVkULRCcbVDAjSG68UP8UDX7VL/vV+iQ/jAEVwWftQa0jso92IrafLPa725SPJ
1e1fdNtn6dizVggz7gmBZLMMgrBnJ5voerENgMBHh6PrGipYEeUf6YJvOUzVVb+eSdj76WNzYa1R
d/kqWWgXa85kR9TeKFLN7Zgt+O1PEyXybzboTJ4/eLh9Bprr9Y8ZV859cA3rwCGGLfzKRWm/AmPU
N+oyLx8wJc8bYCK44vcJFKAf0aIXB64VYh6hdTJOvQM2Fr2l5yiuTEs+z1/+zUoEwTHJnzHBvTA7
HM0Aj6+czaMegcs5ZCx4cYRX2TdOFpTUnLMBhB3SdVmNacparr2boQG830x+y10EUS6saeT47QU5
LPL8m0iFSwtyrPpiHcPGvDc1kjdHVdFW/DPvJQx0lHzEIYHLnwW5NpNADB5iojRr5q2sw1rO8dYg
pp8VliX//Rh+nftB+h0xfFyjBkiz81r/gz9fyNAh9i+qq/lmpJ9uQQ4F5AQ4KeuPe0b+K+qObbJE
FRLmoDVHXKfLlk8kyti8NcU6rg5VxllUz0yKI8pFHD5GIY6Mh6DZvYddbJOba7BuQfYlU76j70+5
kdHovTndhnoR3ahKL60kYPCH+FrGuGObHOHUH8h/ojI/0/bP8ABOgOUYiY0HIxJJAPPOHPf08thu
TKFXCGaxkjt2C1u2VXDwOXh0rS/Vk/jPih/VsYY7SuEdYaNe9nd+Z/ZSkRi2kquD3eN/gESpmLmo
iH5H2+G1O8B6mfTMkUIA9UY4ggLfGPhzUtOivMqddMjqtm34NosVnVZXPPm2tkugfor9cBW2yA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20BC9D9BD27F0A0"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
content-md5: YzKiBeAg0DrwO4oN5xSAew==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0014a787-1b51-4911-b225-5925249e1ad3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-7527f50c-e4d4-704a-98ac-3c74a6f01848/test-blob-89d48670-120d-f67f-dc24-2be2dbd408be

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-7527f50c-e4d4-704a-98ac-3c74a6f01848/test-blob-f2c838d6-f49a-ac92-2d03-ef81e17d9e29?sv=2027-03-07&se=2026-11-12T01%3A47%3A22Z&sr=b&sp=r&sig=%2FycosNVelY2WAPtFu9Zui%2BEawy3Bqb3KlpUCoBHB9g4%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-source-if-match: 
x-ms-source-if-none-match: "garbage"
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x263AD1F597E07E0"
last-modified: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4e2e4755-a575-4eb3-8d72-f9c0cb8abfc6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
x-ms-copy-id: 128ebb6a-d3bf-42ce-bfee-a24150cb946c
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-7527f50c-e4d4-704a-98ac-3c74a6f01848?restype=container

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
x-ms-request-id: 2c965d8b-2c3a-4bd6-a527-b0766844373f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:22 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

