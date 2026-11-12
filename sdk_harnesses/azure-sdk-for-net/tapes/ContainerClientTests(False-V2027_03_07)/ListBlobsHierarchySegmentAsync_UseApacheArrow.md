## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow
now: 2026-11-12T00:43:57.8415954+00:00

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
etag: "0x21796BC99571DA0"
last-modified: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 19f7874d-70e9-4915-8886-2be66075c08e
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:57 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b/foo

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
KZ/t0u5HHcAr248D0pCfZla6kQiYGUCA2tYsB0QQzEvskNlBMKHQy4/dPURghawWXByEvMXi4g9f
bfcYGxV7Gw9EF0G2XTW06sZ5u9z7IFUpFaoojBCFCa7J4sOquK95YSE1HG5rX//mz9L/aSYzY02i
7gVrU4/+vg2T7HpxCjEWAFq7xQPmvrarQbw9hqCHln52CMqqDg2SN11g13KEdcWh6WnMd55JuzBP
vxLSwThsC1b8+wFnbPFMKI6lheZDJ8z3nJ03ux7gLEyZW077wHUl88sciHnDOnx3f08PozVJC5dG
2iWaNVA3G861zRCiUWgYgJEbJp9SNGEgwDvP0YkXUE+3teVQir575GyrDm1s1C7m9iOjLeT486bD
enUUaEpFnnzB65uDx/XToEEypyb0tOsN6dpmcyJqvsE+jRBIZnwiZXDwquiSYy4t0I2ixUyAzsaK
B35w3ipZVi3ZRDrkijnFEEG1BAkCeoWrOKOVx/h1vr9Kvl/9sodFllO7uR70SUVT3bULysm8h4z5
xaaHxI80ZIZ6msvax166cG21RsFntu5eQelDavP1jTfSBOzgvtLEh1SYea95eRZXUFpcBkDLkQ63
KYKl8fmShQyUB8Jx2bGa8b9szjw/5MjT6xmZmYf2B3PeKJVQHpZaBfSi5HFU5naowRWBXsPRd0S5
0gXg+euFnQBPkrEcStIoEclInf9XfgWi8NhydaiwDLBRl0yRegsIHUdwBVPFjHZCWE35idpEYVMA
PQkTEydXn4YAy7OGl5a9P3+45nmx3WRhLx1btoPWDDX4kD0C9QofGWbNxcHDvMC2PElajHvaTl+k
seMK/OgDKb5+jQZZukp1mM0S5BiinnNcpXk5fH+6HkLdXkQnFBx9ypsCRC66XIH/5POtx2lHARJv
rlduya0+w2/EfFwFToSwlRp8oFpEokj4OpeMDFbYlVwxt2bFDgDuw4C/9eAk+ZZv/DJPy2G4KgwP
do4VsrcY6+YA05Ye64YZjtzZhaxo00ABHRAkicr6eYxatphy2BHJpgn5JCX/URCrNTyE36Vfp6JN
FJSm9GIbBVoKxDXup7XKD96ibq4bAcz/eFONdprn+g71JMN8IrKm3h/L9Y3bvI6Guc/GvDnzMhLI
p3sPjo+/Iskm+YPyTuws/I+PTww/JLvEBrzLID3VAfGwtHs2l1CPDNLDtMMLlGvimsCpZOIGiYPA
SofT9AKLUPiRQZpx9mQ/AEM6e2/4uXJQ6IZ9LJ0Oqir4dkzIvBfPN2PLeVPRcaNbaWOfzA0Tx5EV
ggt8DiNagpdveIAYdkMrakQMLUAefnfiIcM5b94d5a67szkMUyg/cPa8YvgjQ/Ifc2HJBppQ9g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24C4FAFE368B580"
last-modified: Thu, 12 Nov 2026 00:43:57 GMT
content-md5: a8jRxk6AP2hKTwGErgTzUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 27b7fd01-b7af-4503-a116-7d9232d50957
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b/bar

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
KZ/t0u5HHcAr248D0pCfZla6kQiYGUCA2tYsB0QQzEvskNlBMKHQy4/dPURghawWXByEvMXi4g9f
bfcYGxV7Gw9EF0G2XTW06sZ5u9z7IFUpFaoojBCFCa7J4sOquK95YSE1HG5rX//mz9L/aSYzY02i
7gVrU4/+vg2T7HpxCjEWAFq7xQPmvrarQbw9hqCHln52CMqqDg2SN11g13KEdcWh6WnMd55JuzBP
vxLSwThsC1b8+wFnbPFMKI6lheZDJ8z3nJ03ux7gLEyZW077wHUl88sciHnDOnx3f08PozVJC5dG
2iWaNVA3G861zRCiUWgYgJEbJp9SNGEgwDvP0YkXUE+3teVQir575GyrDm1s1C7m9iOjLeT486bD
enUUaEpFnnzB65uDx/XToEEypyb0tOsN6dpmcyJqvsE+jRBIZnwiZXDwquiSYy4t0I2ixUyAzsaK
B35w3ipZVi3ZRDrkijnFEEG1BAkCeoWrOKOVx/h1vr9Kvl/9sodFllO7uR70SUVT3bULysm8h4z5
xaaHxI80ZIZ6msvax166cG21RsFntu5eQelDavP1jTfSBOzgvtLEh1SYea95eRZXUFpcBkDLkQ63
KYKl8fmShQyUB8Jx2bGa8b9szjw/5MjT6xmZmYf2B3PeKJVQHpZaBfSi5HFU5naowRWBXsPRd0S5
0gXg+euFnQBPkrEcStIoEclInf9XfgWi8NhydaiwDLBRl0yRegsIHUdwBVPFjHZCWE35idpEYVMA
PQkTEydXn4YAy7OGl5a9P3+45nmx3WRhLx1btoPWDDX4kD0C9QofGWbNxcHDvMC2PElajHvaTl+k
seMK/OgDKb5+jQZZukp1mM0S5BiinnNcpXk5fH+6HkLdXkQnFBx9ypsCRC66XIH/5POtx2lHARJv
rlduya0+w2/EfFwFToSwlRp8oFpEokj4OpeMDFbYlVwxt2bFDgDuw4C/9eAk+ZZv/DJPy2G4KgwP
do4VsrcY6+YA05Ye64YZjtzZhaxo00ABHRAkicr6eYxatphy2BHJpgn5JCX/URCrNTyE36Vfp6JN
FJSm9GIbBVoKxDXup7XKD96ibq4bAcz/eFONdprn+g71JMN8IrKm3h/L9Y3bvI6Guc/GvDnzMhLI
p3sPjo+/Iskm+YPyTuws/I+PTww/JLvEBrzLID3VAfGwtHs2l1CPDNLDtMMLlGvimsCpZOIGiYPA
SofT9AKLUPiRQZpx9mQ/AEM6e2/4uXJQ6IZ9LJ0Oqir4dkzIvBfPN2PLeVPRcaNbaWOfzA0Tx5EV
ggt8DiNagpdveIAYdkMrakQMLUAefnfiIcM5b94d5a67szkMUyg/cPa8YvgjQ/Ifc2HJBppQ9g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x212EA7405B61700"
last-modified: Thu, 12 Nov 2026 00:43:57 GMT
content-md5: a8jRxk6AP2hKTwGErgTzUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b50332ed-9f16-4cf1-a738-082f6c9fc7e2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b/baz

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
KZ/t0u5HHcAr248D0pCfZla6kQiYGUCA2tYsB0QQzEvskNlBMKHQy4/dPURghawWXByEvMXi4g9f
bfcYGxV7Gw9EF0G2XTW06sZ5u9z7IFUpFaoojBCFCa7J4sOquK95YSE1HG5rX//mz9L/aSYzY02i
7gVrU4/+vg2T7HpxCjEWAFq7xQPmvrarQbw9hqCHln52CMqqDg2SN11g13KEdcWh6WnMd55JuzBP
vxLSwThsC1b8+wFnbPFMKI6lheZDJ8z3nJ03ux7gLEyZW077wHUl88sciHnDOnx3f08PozVJC5dG
2iWaNVA3G861zRCiUWgYgJEbJp9SNGEgwDvP0YkXUE+3teVQir575GyrDm1s1C7m9iOjLeT486bD
enUUaEpFnnzB65uDx/XToEEypyb0tOsN6dpmcyJqvsE+jRBIZnwiZXDwquiSYy4t0I2ixUyAzsaK
B35w3ipZVi3ZRDrkijnFEEG1BAkCeoWrOKOVx/h1vr9Kvl/9sodFllO7uR70SUVT3bULysm8h4z5
xaaHxI80ZIZ6msvax166cG21RsFntu5eQelDavP1jTfSBOzgvtLEh1SYea95eRZXUFpcBkDLkQ63
KYKl8fmShQyUB8Jx2bGa8b9szjw/5MjT6xmZmYf2B3PeKJVQHpZaBfSi5HFU5naowRWBXsPRd0S5
0gXg+euFnQBPkrEcStIoEclInf9XfgWi8NhydaiwDLBRl0yRegsIHUdwBVPFjHZCWE35idpEYVMA
PQkTEydXn4YAy7OGl5a9P3+45nmx3WRhLx1btoPWDDX4kD0C9QofGWbNxcHDvMC2PElajHvaTl+k
seMK/OgDKb5+jQZZukp1mM0S5BiinnNcpXk5fH+6HkLdXkQnFBx9ypsCRC66XIH/5POtx2lHARJv
rlduya0+w2/EfFwFToSwlRp8oFpEokj4OpeMDFbYlVwxt2bFDgDuw4C/9eAk+ZZv/DJPy2G4KgwP
do4VsrcY6+YA05Ye64YZjtzZhaxo00ABHRAkicr6eYxatphy2BHJpgn5JCX/URCrNTyE36Vfp6JN
FJSm9GIbBVoKxDXup7XKD96ibq4bAcz/eFONdprn+g71JMN8IrKm3h/L9Y3bvI6Guc/GvDnzMhLI
p3sPjo+/Iskm+YPyTuws/I+PTww/JLvEBrzLID3VAfGwtHs2l1CPDNLDtMMLlGvimsCpZOIGiYPA
SofT9AKLUPiRQZpx9mQ/AEM6e2/4uXJQ6IZ9LJ0Oqir4dkzIvBfPN2PLeVPRcaNbaWOfzA0Tx5EV
ggt8DiNagpdveIAYdkMrakQMLUAefnfiIcM5b94d5a67szkMUyg/cPa8YvgjQ/Ifc2HJBppQ9g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x204C6980F1ABD00"
last-modified: Thu, 12 Nov 2026 00:43:57 GMT
content-md5: a8jRxk6AP2hKTwGErgTzUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c70041bd-36ae-4d8d-ad94-f49b30a7906c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:57 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b/foo/foo

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
KZ/t0u5HHcAr248D0pCfZla6kQiYGUCA2tYsB0QQzEvskNlBMKHQy4/dPURghawWXByEvMXi4g9f
bfcYGxV7Gw9EF0G2XTW06sZ5u9z7IFUpFaoojBCFCa7J4sOquK95YSE1HG5rX//mz9L/aSYzY02i
7gVrU4/+vg2T7HpxCjEWAFq7xQPmvrarQbw9hqCHln52CMqqDg2SN11g13KEdcWh6WnMd55JuzBP
vxLSwThsC1b8+wFnbPFMKI6lheZDJ8z3nJ03ux7gLEyZW077wHUl88sciHnDOnx3f08PozVJC5dG
2iWaNVA3G861zRCiUWgYgJEbJp9SNGEgwDvP0YkXUE+3teVQir575GyrDm1s1C7m9iOjLeT486bD
enUUaEpFnnzB65uDx/XToEEypyb0tOsN6dpmcyJqvsE+jRBIZnwiZXDwquiSYy4t0I2ixUyAzsaK
B35w3ipZVi3ZRDrkijnFEEG1BAkCeoWrOKOVx/h1vr9Kvl/9sodFllO7uR70SUVT3bULysm8h4z5
xaaHxI80ZIZ6msvax166cG21RsFntu5eQelDavP1jTfSBOzgvtLEh1SYea95eRZXUFpcBkDLkQ63
KYKl8fmShQyUB8Jx2bGa8b9szjw/5MjT6xmZmYf2B3PeKJVQHpZaBfSi5HFU5naowRWBXsPRd0S5
0gXg+euFnQBPkrEcStIoEclInf9XfgWi8NhydaiwDLBRl0yRegsIHUdwBVPFjHZCWE35idpEYVMA
PQkTEydXn4YAy7OGl5a9P3+45nmx3WRhLx1btoPWDDX4kD0C9QofGWbNxcHDvMC2PElajHvaTl+k
seMK/OgDKb5+jQZZukp1mM0S5BiinnNcpXk5fH+6HkLdXkQnFBx9ypsCRC66XIH/5POtx2lHARJv
rlduya0+w2/EfFwFToSwlRp8oFpEokj4OpeMDFbYlVwxt2bFDgDuw4C/9eAk+ZZv/DJPy2G4KgwP
do4VsrcY6+YA05Ye64YZjtzZhaxo00ABHRAkicr6eYxatphy2BHJpgn5JCX/URCrNTyE36Vfp6JN
FJSm9GIbBVoKxDXup7XKD96ibq4bAcz/eFONdprn+g71JMN8IrKm3h/L9Y3bvI6Guc/GvDnzMhLI
p3sPjo+/Iskm+YPyTuws/I+PTww/JLvEBrzLID3VAfGwtHs2l1CPDNLDtMMLlGvimsCpZOIGiYPA
SofT9AKLUPiRQZpx9mQ/AEM6e2/4uXJQ6IZ9LJ0Oqir4dkzIvBfPN2PLeVPRcaNbaWOfzA0Tx5EV
ggt8DiNagpdveIAYdkMrakQMLUAefnfiIcM5b94d5a67szkMUyg/cPa8YvgjQ/Ifc2HJBppQ9g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2150B8DC2C1ECE0"
last-modified: Thu, 12 Nov 2026 00:43:58 GMT
content-md5: a8jRxk6AP2hKTwGErgTzUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 17bd2b0d-b6f0-422f-b207-345ffaa14f61
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b/foo/bar

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
KZ/t0u5HHcAr248D0pCfZla6kQiYGUCA2tYsB0QQzEvskNlBMKHQy4/dPURghawWXByEvMXi4g9f
bfcYGxV7Gw9EF0G2XTW06sZ5u9z7IFUpFaoojBCFCa7J4sOquK95YSE1HG5rX//mz9L/aSYzY02i
7gVrU4/+vg2T7HpxCjEWAFq7xQPmvrarQbw9hqCHln52CMqqDg2SN11g13KEdcWh6WnMd55JuzBP
vxLSwThsC1b8+wFnbPFMKI6lheZDJ8z3nJ03ux7gLEyZW077wHUl88sciHnDOnx3f08PozVJC5dG
2iWaNVA3G861zRCiUWgYgJEbJp9SNGEgwDvP0YkXUE+3teVQir575GyrDm1s1C7m9iOjLeT486bD
enUUaEpFnnzB65uDx/XToEEypyb0tOsN6dpmcyJqvsE+jRBIZnwiZXDwquiSYy4t0I2ixUyAzsaK
B35w3ipZVi3ZRDrkijnFEEG1BAkCeoWrOKOVx/h1vr9Kvl/9sodFllO7uR70SUVT3bULysm8h4z5
xaaHxI80ZIZ6msvax166cG21RsFntu5eQelDavP1jTfSBOzgvtLEh1SYea95eRZXUFpcBkDLkQ63
KYKl8fmShQyUB8Jx2bGa8b9szjw/5MjT6xmZmYf2B3PeKJVQHpZaBfSi5HFU5naowRWBXsPRd0S5
0gXg+euFnQBPkrEcStIoEclInf9XfgWi8NhydaiwDLBRl0yRegsIHUdwBVPFjHZCWE35idpEYVMA
PQkTEydXn4YAy7OGl5a9P3+45nmx3WRhLx1btoPWDDX4kD0C9QofGWbNxcHDvMC2PElajHvaTl+k
seMK/OgDKb5+jQZZukp1mM0S5BiinnNcpXk5fH+6HkLdXkQnFBx9ypsCRC66XIH/5POtx2lHARJv
rlduya0+w2/EfFwFToSwlRp8oFpEokj4OpeMDFbYlVwxt2bFDgDuw4C/9eAk+ZZv/DJPy2G4KgwP
do4VsrcY6+YA05Ye64YZjtzZhaxo00ABHRAkicr6eYxatphy2BHJpgn5JCX/URCrNTyE36Vfp6JN
FJSm9GIbBVoKxDXup7XKD96ibq4bAcz/eFONdprn+g71JMN8IrKm3h/L9Y3bvI6Guc/GvDnzMhLI
p3sPjo+/Iskm+YPyTuws/I+PTww/JLvEBrzLID3VAfGwtHs2l1CPDNLDtMMLlGvimsCpZOIGiYPA
SofT9AKLUPiRQZpx9mQ/AEM6e2/4uXJQ6IZ9LJ0Oqir4dkzIvBfPN2PLeVPRcaNbaWOfzA0Tx5EV
ggt8DiNagpdveIAYdkMrakQMLUAefnfiIcM5b94d5a67szkMUyg/cPa8YvgjQ/Ifc2HJBppQ9g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23745F696E0B0C0"
last-modified: Thu, 12 Nov 2026 00:43:58 GMT
content-md5: a8jRxk6AP2hKTwGErgTzUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8af3d0df-a506-4c29-ac34-a40e9205eedc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b/baz/foo

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
KZ/t0u5HHcAr248D0pCfZla6kQiYGUCA2tYsB0QQzEvskNlBMKHQy4/dPURghawWXByEvMXi4g9f
bfcYGxV7Gw9EF0G2XTW06sZ5u9z7IFUpFaoojBCFCa7J4sOquK95YSE1HG5rX//mz9L/aSYzY02i
7gVrU4/+vg2T7HpxCjEWAFq7xQPmvrarQbw9hqCHln52CMqqDg2SN11g13KEdcWh6WnMd55JuzBP
vxLSwThsC1b8+wFnbPFMKI6lheZDJ8z3nJ03ux7gLEyZW077wHUl88sciHnDOnx3f08PozVJC5dG
2iWaNVA3G861zRCiUWgYgJEbJp9SNGEgwDvP0YkXUE+3teVQir575GyrDm1s1C7m9iOjLeT486bD
enUUaEpFnnzB65uDx/XToEEypyb0tOsN6dpmcyJqvsE+jRBIZnwiZXDwquiSYy4t0I2ixUyAzsaK
B35w3ipZVi3ZRDrkijnFEEG1BAkCeoWrOKOVx/h1vr9Kvl/9sodFllO7uR70SUVT3bULysm8h4z5
xaaHxI80ZIZ6msvax166cG21RsFntu5eQelDavP1jTfSBOzgvtLEh1SYea95eRZXUFpcBkDLkQ63
KYKl8fmShQyUB8Jx2bGa8b9szjw/5MjT6xmZmYf2B3PeKJVQHpZaBfSi5HFU5naowRWBXsPRd0S5
0gXg+euFnQBPkrEcStIoEclInf9XfgWi8NhydaiwDLBRl0yRegsIHUdwBVPFjHZCWE35idpEYVMA
PQkTEydXn4YAy7OGl5a9P3+45nmx3WRhLx1btoPWDDX4kD0C9QofGWbNxcHDvMC2PElajHvaTl+k
seMK/OgDKb5+jQZZukp1mM0S5BiinnNcpXk5fH+6HkLdXkQnFBx9ypsCRC66XIH/5POtx2lHARJv
rlduya0+w2/EfFwFToSwlRp8oFpEokj4OpeMDFbYlVwxt2bFDgDuw4C/9eAk+ZZv/DJPy2G4KgwP
do4VsrcY6+YA05Ye64YZjtzZhaxo00ABHRAkicr6eYxatphy2BHJpgn5JCX/URCrNTyE36Vfp6JN
FJSm9GIbBVoKxDXup7XKD96ibq4bAcz/eFONdprn+g71JMN8IrKm3h/L9Y3bvI6Guc/GvDnzMhLI
p3sPjo+/Iskm+YPyTuws/I+PTww/JLvEBrzLID3VAfGwtHs2l1CPDNLDtMMLlGvimsCpZOIGiYPA
SofT9AKLUPiRQZpx9mQ/AEM6e2/4uXJQ6IZ9LJ0Oqir4dkzIvBfPN2PLeVPRcaNbaWOfzA0Tx5EV
ggt8DiNagpdveIAYdkMrakQMLUAefnfiIcM5b94d5a67szkMUyg/cPa8YvgjQ/Ifc2HJBppQ9g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C7FB7BF00A44E0"
last-modified: Thu, 12 Nov 2026 00:43:58 GMT
content-md5: a8jRxk6AP2hKTwGErgTzUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45df2aa1-980f-47c5-a43b-8fdc5d0caa22
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b/baz/foo/bar

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
KZ/t0u5HHcAr248D0pCfZla6kQiYGUCA2tYsB0QQzEvskNlBMKHQy4/dPURghawWXByEvMXi4g9f
bfcYGxV7Gw9EF0G2XTW06sZ5u9z7IFUpFaoojBCFCa7J4sOquK95YSE1HG5rX//mz9L/aSYzY02i
7gVrU4/+vg2T7HpxCjEWAFq7xQPmvrarQbw9hqCHln52CMqqDg2SN11g13KEdcWh6WnMd55JuzBP
vxLSwThsC1b8+wFnbPFMKI6lheZDJ8z3nJ03ux7gLEyZW077wHUl88sciHnDOnx3f08PozVJC5dG
2iWaNVA3G861zRCiUWgYgJEbJp9SNGEgwDvP0YkXUE+3teVQir575GyrDm1s1C7m9iOjLeT486bD
enUUaEpFnnzB65uDx/XToEEypyb0tOsN6dpmcyJqvsE+jRBIZnwiZXDwquiSYy4t0I2ixUyAzsaK
B35w3ipZVi3ZRDrkijnFEEG1BAkCeoWrOKOVx/h1vr9Kvl/9sodFllO7uR70SUVT3bULysm8h4z5
xaaHxI80ZIZ6msvax166cG21RsFntu5eQelDavP1jTfSBOzgvtLEh1SYea95eRZXUFpcBkDLkQ63
KYKl8fmShQyUB8Jx2bGa8b9szjw/5MjT6xmZmYf2B3PeKJVQHpZaBfSi5HFU5naowRWBXsPRd0S5
0gXg+euFnQBPkrEcStIoEclInf9XfgWi8NhydaiwDLBRl0yRegsIHUdwBVPFjHZCWE35idpEYVMA
PQkTEydXn4YAy7OGl5a9P3+45nmx3WRhLx1btoPWDDX4kD0C9QofGWbNxcHDvMC2PElajHvaTl+k
seMK/OgDKb5+jQZZukp1mM0S5BiinnNcpXk5fH+6HkLdXkQnFBx9ypsCRC66XIH/5POtx2lHARJv
rlduya0+w2/EfFwFToSwlRp8oFpEokj4OpeMDFbYlVwxt2bFDgDuw4C/9eAk+ZZv/DJPy2G4KgwP
do4VsrcY6+YA05Ye64YZjtzZhaxo00ABHRAkicr6eYxatphy2BHJpgn5JCX/URCrNTyE36Vfp6JN
FJSm9GIbBVoKxDXup7XKD96ibq4bAcz/eFONdprn+g71JMN8IrKm3h/L9Y3bvI6Guc/GvDnzMhLI
p3sPjo+/Iskm+YPyTuws/I+PTww/JLvEBrzLID3VAfGwtHs2l1CPDNLDtMMLlGvimsCpZOIGiYPA
SofT9AKLUPiRQZpx9mQ/AEM6e2/4uXJQ6IZ9LJ0Oqir4dkzIvBfPN2PLeVPRcaNbaWOfzA0Tx5EV
ggt8DiNagpdveIAYdkMrakQMLUAefnfiIcM5b94d5a67szkMUyg/cPa8YvgjQ/Ifc2HJBppQ9g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D70A5B55866C00"
last-modified: Thu, 12 Nov 2026 00:43:58 GMT
content-md5: a8jRxk6AP2hKTwGErgTzUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1b8c77b3-c5db-4dc8-a5e5-94b1b4162050
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b/baz/bar/foo

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
KZ/t0u5HHcAr248D0pCfZla6kQiYGUCA2tYsB0QQzEvskNlBMKHQy4/dPURghawWXByEvMXi4g9f
bfcYGxV7Gw9EF0G2XTW06sZ5u9z7IFUpFaoojBCFCa7J4sOquK95YSE1HG5rX//mz9L/aSYzY02i
7gVrU4/+vg2T7HpxCjEWAFq7xQPmvrarQbw9hqCHln52CMqqDg2SN11g13KEdcWh6WnMd55JuzBP
vxLSwThsC1b8+wFnbPFMKI6lheZDJ8z3nJ03ux7gLEyZW077wHUl88sciHnDOnx3f08PozVJC5dG
2iWaNVA3G861zRCiUWgYgJEbJp9SNGEgwDvP0YkXUE+3teVQir575GyrDm1s1C7m9iOjLeT486bD
enUUaEpFnnzB65uDx/XToEEypyb0tOsN6dpmcyJqvsE+jRBIZnwiZXDwquiSYy4t0I2ixUyAzsaK
B35w3ipZVi3ZRDrkijnFEEG1BAkCeoWrOKOVx/h1vr9Kvl/9sodFllO7uR70SUVT3bULysm8h4z5
xaaHxI80ZIZ6msvax166cG21RsFntu5eQelDavP1jTfSBOzgvtLEh1SYea95eRZXUFpcBkDLkQ63
KYKl8fmShQyUB8Jx2bGa8b9szjw/5MjT6xmZmYf2B3PeKJVQHpZaBfSi5HFU5naowRWBXsPRd0S5
0gXg+euFnQBPkrEcStIoEclInf9XfgWi8NhydaiwDLBRl0yRegsIHUdwBVPFjHZCWE35idpEYVMA
PQkTEydXn4YAy7OGl5a9P3+45nmx3WRhLx1btoPWDDX4kD0C9QofGWbNxcHDvMC2PElajHvaTl+k
seMK/OgDKb5+jQZZukp1mM0S5BiinnNcpXk5fH+6HkLdXkQnFBx9ypsCRC66XIH/5POtx2lHARJv
rlduya0+w2/EfFwFToSwlRp8oFpEokj4OpeMDFbYlVwxt2bFDgDuw4C/9eAk+ZZv/DJPy2G4KgwP
do4VsrcY6+YA05Ye64YZjtzZhaxo00ABHRAkicr6eYxatphy2BHJpgn5JCX/URCrNTyE36Vfp6JN
FJSm9GIbBVoKxDXup7XKD96ibq4bAcz/eFONdprn+g71JMN8IrKm3h/L9Y3bvI6Guc/GvDnzMhLI
p3sPjo+/Iskm+YPyTuws/I+PTww/JLvEBrzLID3VAfGwtHs2l1CPDNLDtMMLlGvimsCpZOIGiYPA
SofT9AKLUPiRQZpx9mQ/AEM6e2/4uXJQ6IZ9LJ0Oqir4dkzIvBfPN2PLeVPRcaNbaWOfzA0Tx5EV
ggt8DiNagpdveIAYdkMrakQMLUAefnfiIcM5b94d5a67szkMUyg/cPa8YvgjQ/Ifc2HJBppQ9g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x274525AC7D93520"
last-modified: Thu, 12 Nov 2026 00:43:58 GMT
content-md5: a8jRxk6AP2hKTwGErgTzUQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 681dd8bc-0f58-460c-a3ca-d6a7deb06f92
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b/foo/foo?comp=metadata

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
etag: "0x1E28DD109B315C0"
last-modified: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 17e3f55f-efa5-45cd-bc01-ded91ee6b781
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b?restype=container&comp=list&delimiter=%2F

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
x-ms-request-id: 0d466b6c-edc8-419b-baac-02ec887d5d8d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-689dac12-f020-7e88-a6fc-82da7757eb7b"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>baz/</Name></BlobPrefix><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:57 GMT</Last-Modified><Etag>0x212EA7405B61700</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>a8jRxk6AP2hKTwGErgTzUQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:57 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:57 GMT</Last-Modified><Etag>0x204C6980F1ABD00</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>a8jRxk6AP2hKTwGErgTzUQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:57 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:57 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:57 GMT</Last-Modified><Etag>0x24C4FAFE368B580</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>a8jRxk6AP2hKTwGErgTzUQ==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:57 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-689dac12-f020-7e88-a6fc-82da7757eb7b?restype=container

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
x-ms-request-id: ce4b97b0-d5d8-46ea-8830-d0f0c585fb43
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

