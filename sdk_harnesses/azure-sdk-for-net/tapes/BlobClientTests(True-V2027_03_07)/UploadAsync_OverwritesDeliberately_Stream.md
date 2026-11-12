## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-40419f84-dd7f-f9d9-10b9-cfe9d5622bb5?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_OverwritesDeliberately_Stream
now: 2026-11-12T00:49:15.8539162+00:00

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
etag: "0x21D482BB86DD0C0"
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 15d616d3-a5e5-4d9f-8834-ee651f35a8e5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-40419f84-dd7f-f9d9-10b9-cfe9d5622bb5/test-blob-9e1a0e72-fcb4-b210-615a-f5150e1104e3

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
ZAeOg/GEs2U1qGX6sAlUYTRH1eOP5e+Hj4/fJOfD6v+07ITO1KjD7lu1aAuXFgFXBpPgxzsgU38Y
B/RipY59cr5lRcOEho2Mg+eI2nzj73iNhx1T4iPDk5kFts2zYUnMN/VNMdA9038GVENUl3gCNBd7
1R1xKY+aorIqf9DA2CKevKOHlb2nT7SeTY7fb/sgAoG1OIwrWw1ls48eElOvRXshttvVe55Z04Vo
0twBujO2Cn1OC6CVcmGWIeIuiDxg7wgSvrkgS4biXGQGw4gxZPhbaAjWYDrbi0N5Plq8K0pIB+PT
7/x6lb/2bK87j6/ZZL3p0iA0io7NNzJ1pwwsJTAavbukXXX84dNJ4PSLoPyUn9qd01gqFH1VBrjK
BO2yyUZ+IdHzNQdH7fBM66qaQpc14QcyjlLY76k+T1e9MtzmlhatDX4qoGrSVeZn3SnTusQglCPl
gDrzpTEoteaviroUZlST7DQYC0CdXzlscRGAa5STnJ65ABbbuWdMAuqEIsorU3fUP82PCIjjSCAB
hzQgp0pRHO4cW2U+uDPMywhVGDxvQB2aqyzGA5MV1rj12TEzLFugMgbbD/gRloaawjyAjS/kkkcW
hvweihlbB4StSN4BmZ+tteU2kzEliBSlLEBXlUiIEEfqHKZegqjsgAdzZE6nmCmd0tdJrv4V8P3n
eF7YBHI8JDeWFnz4TjM9SRMpsiTG/pMXucJxPmJJ1SuodwlJFHyVNz8WEIGspISkDGTq6z7ZIHrK
wEqvyubVTUFQUNcp8zWXlHvksO0RahU+zDL+XuntzlaOf1Mx5WxZQMNAXFOsehgvU1fD9HCNuFY1
cf2z1+9YY4GBm3TiZa4Oi28q0Q7BkVIazwqRKtnlAcb8/HRupWnU5/nSK9+kTO6ptGkBY+dIdOCr
mQjkxjinm5mt5Wk6oOUFVekV72VzdoIc6HVw5J7ftIiTwwxh7yHAKpBF9meFbxOD+w39MoR6OCOG
x97CNrf7zTDgpt3ZpGbIVMTVLX8al3hh7eiR4oEDGYrp2yhC/fPYSig3pMg2qlanNN7ApAqjazBm
YEjOaeuu3YxS78k9hlfR/eJW4/KvK0OS6q2jQ3WARm/33JyqCuA9iMc85LqNaa6G76cnTYg9tjUF
PH8+CpoX0alZRqm6JvICGVorc0aIBID+HFPNWPjnuiZnpc5g/n4tJBIRMyMEzMm0JTMtEULufDf+
P+1GSXmwcouDU4AjoRrc/k80d9Bd+lCKGTPFuqnjeCmXYb+Q5tqZYcGXgXhIkYMZUBLzugVmoUSd
uzBG67jin9tXjD9aTBh0mxYPxnnXQoevq2mW8L0kMMB68iuqU3UJteGd8ARDvgT6fh/uV9rLxQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x205CF01EE6F34A0"
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
content-md5: 52AU6VBltODnvTTq9FVcUg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3e8699a8-6abc-4d59-99bf-f38a433e0ec4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-40419f84-dd7f-f9d9-10b9-cfe9d5622bb5/test-blob-9e1a0e72-fcb4-b210-615a-f5150e1104e3

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
eaiWP05Mrx0zW3/fWe3KSKAFEZg5UoJr7GWbcZ412eWvLbIBvDa6aTGAvKnE36oNtNdOUckziyYm
KlLpsD1//oKZMCw7yYtqS6dmuZXZpw26jr3H5ocbe6GL25Lj0LjzAL4mKq5+0utL5AYhzNKRTIJF
LyKAtxf6fbSLr+34hnrvcrjXs3xfO7vRewKB+a/P+o4PnqGWc0mmK6z68yL9U12LMlkZupkF5fRm
rjwVeIQFvLVf6ejYWP9vMIfPZUeY1Cil9cdVtT/1CbitL8QMkbMo9Ddsnml0s9lZqYkRNYCszdoU
cIO9sAZ1ad8wKyg7Yp/Up3AQKzW+MELt+wu25NM3AGLp+CEva0Qx9zWKRIewHkfqPY4QnKGkVT9A
z7T6v4QL+CrGUmp9pDsr3zQANOy7PN3Ey6ZFJ2TARKPh75uPNjewfktc6szcbJhS5L1spCFThJPX
NfTextHGBg3GnLSfnKj9T7WgXlIQ514N8kOnU5+CjmoIuABD0rd6luO+FtDjs0gUb1RrsiZAxk6V
0NSOHrJtRA5Kl+Ooun3+JshuUtGOKT/6k+RLFttEx/GyrQHi7HcxUNHBmRtkbLXWbYxd0nR8B6aV
k4vOIi0yBs/x9Qx8GzpRPQH/zJAjliYvdKlP5/V9NaZbTVnrYi6kj5NMcnaoWlFRC5RyfToWcvxk
n66D4x/adL9mIM3hZdrSWz391iOwhhlX/dtgCrhrRdpch8KAIKt0cv62QTmEcKa6oCL9GJvZtBiU
K+VDeWkH+9vzhd4XUjqRiGQk+UXf0400pmqWbiw+gtKq6/TGMPiUr0ZekOvIok3na483tLrTtFhY
D9P/cIyvtAILbWZFy1hrkEr+gUKhbAQcrgKcB84Y1zacbSEllT65r9zovDTnoqA3zCRw1DMVtqLO
4sGKEq0085YvqV03RvsLRdJmuK/PNQxhZTuqpwMDh7Z+VrJ9L5wutMmet/lCAIUpZY5hrv7z/621
KK1yikuTLCGmuO9IjhY1NwTlMX4TH2S1gEF0odi4ilcFxwbuvCp9CovXm0eW4Nd4LHb6Dc0voQlI
vQkKHopJ7i6XQ8YPRnvZaCbyPIMdHqBq+3Vhvn2K1Sb8pv8hc+wAjq0Z/pwRaOX7IKWmPGWGK55o
nyMU5y+wDW2gE6B7uPQ68q3VBB8DWZOQZp7X45nAdntguNPI66d+aPAvcFVFf2iwbEq4sCZ+ZUaQ
hIGR2CrU4JwkG/8gcQYGV5wv1Og9SuY2JndPCMVU4VONOGYm7I/GWpC4IGRokPpDsViKT5BdUjqa
W7KzhNfX0Dmskjif4GoMaHlXhSqBzZZ8C1ZsypLCMOYsi5HdEtW54VAru/3Bo9HtfeYWBc0PGQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FEE0FB814B5270"
last-modified: Thu, 12 Nov 2026 00:49:15 GMT
content-md5: 7HKkXJwsfiWqG+y81YeXwg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9ee709c-db23-409e-ae16-c46f3b2bf529
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-40419f84-dd7f-f9d9-10b9-cfe9d5622bb5?restype=container

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
x-ms-request-id: c0071f6e-255e-485a-9184-c630ffb82f95
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

