## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-bb93cecb-aaa2-cca2-5323-01741c8920d6?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.PageBlobClientTests(True,V2027_03_07).ClearPagesAsync_EncryptionScope
now: 2026-11-12T00:51:44.0394092+00:00

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
etag: "0x1F312757DE5C940"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 315e481b-76d6-4b30-8ea7-d08a4a30271a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-bb93cecb-aaa2-cca2-5323-01741c8920d6/test-blob-d6eeb9bc-b519-11e6-f576-7f3b59257265

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
If-None-Match: *
x-ms-blob-content-length: 4096
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
etag: "0x1F1000BEF2FC740"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0b23acbd-6cfa-4b34-9abd-66d5ff8df87d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-bb93cecb-aaa2-cca2-5323-01741c8920d6/test-blob-d6eeb9bc-b519-11e6-f576-7f3b59257265?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
x-ms-page-write: update
x-ms-range: bytes=0-4095
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
sDs3O/sxzuXJuBRtVJuwgAJECvRGe5cV6IHFLCpmci2xm8ThUeTbiuoIDWCheLxaxf45FBp9HzSk
IlN5bKK6YkXnvLnXzy4daYAKPW42dG/EamYsLV4SM3uPPC+RYR5ITqoaubwDg/bPG6uac+LFba7k
tAE7jjXn1Ig9R5L/jAdhwe/DHLqywedvXBGyeMCZyc+Bra0dDb91M+Uzxjtk0I+jObHyAlHzMfMZ
yzIjNFzIo33Dft9aQ7QvTujVf/urC4yCDz4Op8d9jXu6A0GNUf6IaiK+oVGvSPX9wrNoHrL3bsCl
oSUdufy2RfFjoEBzovzqTBTZ7Wk60sZJEeQTFG7JwpWA57DZarEmCFxgTKi1iSC3ftKdHoBWa85e
1KcYojCCmt6q8rpMEOJjs+QN2YYek4jDXJacLKQUKnvhepYJDWUr3bLJCpdmam7wOmubSZFIQEAf
VEWa5m06lsg+apZMWaV+4fzUVInwXfEorPE4eODqmTpV6bkgkfdEj3TPJ//YpODGHGeVdOy3LvdU
cjp8AR3nVNFb9m/sXk8Ej8QUITXxTwgQclt4VCROnbrByx+8yI5X59IufK1x2r4XkeQnog3BYiIy
a47BbgCsDVi0KpIwR8c2vTpjw9Nan5idYMNAJvutAGn9ilz/lXjSgW5UvK8r50kc8eXTXp5O18v2
Iw09bOddBykpM71rNifBkEJlBePocnl6IzUV2qLKrrKQCXFqlRSH97WGAbSLsbq9Ec1c6dHoDbGU
wkmxRyyHXoQK2i21Vvst3g4tYnDE7nF7V8jUbsXhp/vA1tLK1a+I/qIwgdaMCLrSLgvCuqtAz9TY
Nu9jsvC+KTMy9YAoYghfpWPOlG2a7k8NAj+6HuxQgAb+8p+/JEyycVejWhM6qcsCYxVHcjtnPUef
VbCxBAtG4XR6KnBpn4EXGyMV9pQ801hzt7rXCQ7Kl7VXH86cAGxMXXiev39bmcSUL1YXUUayY4JX
PkxQb9hmr5K6En+yexu3yJkcnhTYFx72Qtq3s0VupLxMRMIf/O2fNw/soIZE4bM7YImslsRtfiYu
Wiz+r/xNTG3DZjdYl8ysfGYF63aXsmEnfFO8wQ7338ab8aHBoYgTn1QZgHt74si8ABldaJKwlqjL
1zKpkIpfy4dxvKYq6tve8UwifjHlq5qK/8H0mXYz61r59cpVaQ/JubT0CiUhkhU+f3ZGjRh35iuY
HpHJazIQPdFLMfQRiIg8WMR88KB0aW2rthoA7V1Cgg+evUt+AE6C5M1U1WEgLfbuCTVT+vWLI7Uj
HrQYEE9zCa7lcso8vlh1+QzSIJMMiokjEuQo74caE5qWWuGaatR94MyyO7orsUrd3gHouAIhF5Qr
9P1rSxonyl8wpmR22484VEDHWU7O92CZSxCGMVqXdEJNbnXWEpWyi3Fb+wrmZgJxsGPCWr1FXP2c
0gAJoJkEmTEhKWwZYkKrFM7dc/xWs+QOFIH31RqFBxF4OT+UqerYVmLYxDyWWE4gF0XvaOkARh8b
+4wXDcMXnCJboCgCFmvjBRyafe6od7wz1r7Ulp4nePIgea5ewEmewSgaO7clHgHaC2PNZskwcoPP
5DcFQgaDMyg14Zy9hUTS/LvGjjwEDbe9+oo7WhEp8AYqjtwSmH8ilgeO7zxkHYYe+mkNauRGytZ/
SEd7SNkWDPGVkvZowGM8o/c1dh17WN0EHV+oHIUh5MQFklA3pk4ud+NKzoqQtToG0MbtEVS4A/Bq
dyp5bvBsc60yYy0SBf2pBv46MYlSdGgloUu+NNNvTI5gzS8ktQjz3VvdXlEM88vJRApVftJmFwPC
U82krT7awheesjjNhFH2R1MudRUWGa2A9PDIGs28+bUsYWE7Ti8cAps5bUGS/L+5Xzd/OKHtqzof
JLlOEqhJ4riCoSPvuvgjEnN63axs7fgxDrqWPcETPrYnGyl2zfDz74qIEFqcyaQ+XCYuc86NsjfB
HQPts6X3b2JsyJ/PrESDhu0h5NydlUQWV+Cb5cvomWjxtbDsBjzlkKH3LwEEb6/hq+zgbM5aI4e+
1lvEXImXhC423feTloCwPFQ7pWVDEegxuTneByyalpIoLi/gIDQXYKrTzpG4TRVsMDB6H30he8Rz
k6JQuXwBnEZka2dQ0BsfJEW7b0NWeGwkcdf8IHcUBrNqbY2Rx6Yu0TJLU+KtG18VWvo3ZguBHBo2
K0elBXzOT2S05WONjV2ejJ4RCyWJdlZ358V93Z+n6VBzW5tfiMy1fAN++Tb8h82dmNlscBH0rLXx
LR62UXLEDPwSGjLBPwTSW48hC3wfe1/44ETGO3g/fq7mblqt/yuRue056W2b21nVmhWB06E40bK+
vnEt/tGD05uD29GpJFxkkFGP5pLxXQXr8KBjvasNrpyo7kC6Y7sctRbSF/+HK3W4HUNPqOofzWFs
Qg0wHxXwdS00ATYbqiyWczB8H0UFY8Qrqp9nvgWyiCHeTSGt7JUA4aLSUyo/nXMWuDW5o60cZt5I
BHV1iLYngngUPFwL6Yabez2iMhCa7A0sUQbP+OVzwudCZOcgilnrq9CyKmAXCs6uHidweTTOrhhn
STewV4qToXp0yYWfevHkt4Y/58GtFEY3Idm9A0mydLXOuUEhO1RGH4nmokFJDqQ2jMKtjsZXujTx
eDax1Z4wwlXP0cGwwnwy+cg3x3IE7hI0hnaGBOXvd/4MMMIdlUnrtd/seT3ihspGe5X+H/PC7Yoj
fE8nqb1v4FnCo5G6FGR/TBGSF3TUUQCsQIlQ8VcLSUM3+hn5xAsifJnjIOI4jGYxftPhMNUVTypP
e2k0H+8Ct1pOghpLhYgGcJvb8DEddLQjH3KDKhltIavuqkii7V2q4WmI6QlL5vlL2sA6Ol74MQe0
EQB8f4xA4WFvXNo/ZII9MQ/IlYqr1zl4N09ZM+dM9XhB7dxdLWLcRwio3IkeDHU9/AlPMJx8CTnG
BEc95616I2Zh/Xam3wOt7E2CAvuvWSvZGzbd/MXcxeSiligan2BaLrkjvA7/lxwFokRP+gY+F6ob
Y8t2nCaghTiSA0nakkzsJ9RCjJ0c2oQZ11qBjMvdY39+/zuV45GSgjfWbJPTKhD3YtIy/IsN/ohG
XMTMH/httKDJXJIRV0RCrwllRm7xRq1Kiir4q2b0cQCzTobNxmM+aLfyCc595guN702Bp7gaVRYX
gZTOdAg51euSXQi9deimJ962/jzezKQea7wZcslHmflwtUTOb/OuuTTi6ogC0Hpk2n/ZY1baOLTw
sAlMH2IhSsQPTb+k2LjqB0UH/OIbG5pBtZhJbTWjlnyP3b/qYpnRwJ/D84O6wALH71wQ0jzS1ZRu
CmrK2NyPa7ZDFPr4AKWrNjtCWCgXh/SVgn7ZksM/vQgre1cvB+jCNIfMdqwHzu+2ZJwBj31rVoN1
NVZettjyA1byzYROfC5SfyOgSxBIjbOPIi0nPi2LvyTUudKSZH2u2XNVFQBqaOhtrg9ZywtyLKei
zpSry8UpZw5fesJcwBum8XGd83iyJLlFuo8eMvMZYY0q75XpAw6uLK7xC+4lEe70stqa1Tkv8Kra
ZRE1CzUbRhg1MtGFvO1j78fKwBjLIKmhKX8ZfoxU+v7qD579eCF41sXV8N4dbvbsN+VxZS+RD0Vn
lOG1AceM4TfSmq1PZXamUelT9S/Kg7uJLEem4pTPWQBYleM/wtX9SQ6nS9NIndFuyxRGPhkVnRAm
LNR/5f6iAkGt9tCTZo4UVqshIzjnQI92NxaAiRvmQ/fSGZYAfWQQBEiSmqcA22WFMedt9HrYPutF
Ca3nInkmx7LYwEz4FNhHEB7wVabodVyx+lczeE99+tqqu3S2KOLOa9P0KBsZjR0PJuNb6OlFXJRR
Nici805jW8VxTVhkkOg8IenS9ExAmGw6I1JrIRLwZF7fZfG6rHiFkMxVp0DEq5X7H8YAc2hHEJ67
58/8+DqzgOj6hCv2gnRwTWOA6/EsdXi8cAJL8PH2mFRT/8SpiJeSoSZXyiZqBJxSkCUExyStjnJW
P4c3aJD2BOzWo4OwxsTL7UrK1apSUmtl+V/M8dEvpnBSU0kQWjiVYMY6k2EZoslhONna4rnHBOwb
0W8xKhIapvwSXXN6u5IRNXTkF78KTFeVarj3VcO3ik5d9IjIZDWzH+xkBkRW5nxGya1E4uwtEYUY
m79ZIlE4W9IkHccJSNE/MPjSpUYSP4Q8sYsWcqhhL+IDsMh1WfybLKpxMci0PIDcBbL0W2s+BVw7
HXHFIugqwu7lBpgIydb7NnmboA28h3QLOm31bdR2xKprOjyK1QnCR27azzbo0zzb+STyo2RPfpX9
uud7NFUZbkHtnY6acGBv2Vme4rg9ImcwGnSwhCFFHLumjRshRhIZwGD1+jatQIjDgsoLsJzdv5eA
ShnhaOkgp4DS8+NFTZNHhSFXSCcwg9nr7QJXOmsfyc2Dofv4OFh31VO12k2kfTQ3xCt7hXdvUMc/
9XvnyW0VsykWwayXTkzI4HLUe6mMR2/OH3Y/o0NVE1E0uULcjwzloCYjjryHn3besqUEm9Qds64M
GKn31RDlwK1bY5UJ7FBm79uCaLiyR4AAYfGeUHh8FgWU0Hdi7soWPs0OKzvh1cZUnaz5m0r1WdAo
93QeRnA1302PdRzZBAAQbCrqpBtEHosqSrLMgnq7n3amOvZW9/dd2UzuUWCpe5mr6S4gCrW149jo
9Py9aVzS1NamMskKuXQzjcrPVs0rgc8YIJlMmpTA8VYebgP7n3DvG32JA0jPoDC57X3r5YwLvHIt
pEjChjlB5UBz7EpxN+1a3ztPon2GSX9pkq0W1QzJErKQzvsnLJRESB0IXLTlSLWPkAVRvBr1plvI
WfSLKhA0qtmY4WnyMrOmCllffuzLhEr4h0QGd1aYmyefX9OguR0N07HbTGdLnV5SqrHAlShu/dWq
k6PLLjKDAEVCUtPfBlE8Uao68DfirOnmtM2l1wX+MWH+9iV5QqV/WEwhCUuKcqRfg0N9Mw2ex+a5
5Hll3Sg/QyFy4Q8rww8Fu5jqwaOeXEEoRVTCgP1UXy8/v10rGXoj4cUqGJCUM8Azd3h1swVCGog4
PZjUfcMjHYHg7AOy2qEdx9/edEOwkxGTjgiF3qwp/aTU8tziT2MBBvoPtEe9gJ3WV+smY6ZEh6mG
Qe+6nj/Ut+5e3ujFO3h73G5Jod/K1g1rr4fAApn+j2szXA10R2i7OvxZX6K1ERxzqoY4++XJu2vi
Tu+4E7RUX058kd9qB5UFjmficHZqtp1qTVgTxpSFaaCikvl5AiZIBP9UOH88CaLxMmx+50v0d5dR
TcZbQZi69yg/x3WcjItBmmx3Fn4eLUO2IZQnBoFVrhphJ7Vf7MJmmkBX/UItVaXgPU3efGAZMx+D
pSAEkvCm6RhaOmXW4a2qEHw9xi8BiMvvR8k0djK6R/SV3EeiYgdPsRMp0hpAClugNA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F00E8147FEF670"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-content-crc64: J135bREjaj8=
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ed4b62d6-0a92-446b-a55b-dab385012498
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-bb93cecb-aaa2-cca2-5323-01741c8920d6/test-blob-d6eeb9bc-b519-11e6-f576-7f3b59257265?comp=page

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-page-write: clear
x-ms-range: bytes=1024-2047
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C11A8BA5A495A0"
last-modified: Thu, 12 Nov 2026 00:51:44 GMT
x-ms-blob-sequence-number: 0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f7f3321a-c1b0-4fe4-9645-882e6c72bbb6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-bb93cecb-aaa2-cca2-5323-01741c8920d6?restype=container

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
x-ms-request-id: e76796d3-b0a1-4ed9-9c04-bf4f2dcf6c9b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:51:44 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

