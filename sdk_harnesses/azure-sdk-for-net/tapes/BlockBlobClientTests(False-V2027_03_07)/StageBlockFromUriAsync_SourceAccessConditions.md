## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fc35802b-d8ca-b7b8-2456-62cd28d1640b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(False,V2027_03_07).StageBlockFromUriAsync_SourceAccessConditions
now: 2026-11-12T00:49:46.2489050+00:00

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
etag: "0x27D54748D8C2220"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: caa9d4e5-f55b-46f9-99cc-ef32fd4b6471
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fc35802b-d8ca-b7b8-2456-62cd28d1640b/test-blob-085b38f3-6f77-8b19-f8b8-d68e3ad32b5f

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
OjIV8DcMY6ZI5UnPjErDQnzIYOulQBf8PzDYjhd5Uk7P17gKNcrKHh2OtOSO6SrakiBRX3B5Zvka
GbAGNNSPzpL7ALWRuQyx/kHOFowzbVYG/fz3J/PdVnC/7xsZw+pJ/+VRk+l1SdkTn2AuqlBt56xa
ADbYmKafHalE0snxlztXhRem4dltkLQi5IiSrqsgUQhvv8O0cWc+snY/MHcPIQcl1yU4xgXS7G+C
tbMeDG7+JIDBgdh3oxSvaC9iLl88E8KAbdeF54oCnNJTMbuzH6UIQAz2TaAvrTQRiF7Vb74QRaLx
np+WeTz2vuQFJHFY/EiKWu1TRcUhUL+ic14rLS0TQ+sZwYEFccfPAI67KYnDuYwWShXRvADcz03g
9AXdypG38uCFPjrHheklg0U2Zic137rSFeIXQobrPfEzJH3C8jX9AzeoPXpRT8Usqzm6pWkmqhRL
C7Wvn69amQFIk2BrY5EPOWLvjKE/gMYc65ZMMZeIDHpod+aATmSHTqR4CLtlwEioqmsHNh1zC4vv
krQZDWhpwIbmA+uqj+v+aD79xncKtytNpIYsgNZc9WxakbuvbkA7D0g0f71c/RuACc7fdUQT5NuI
y2niPT+wiQ1/UP4vTvn+wrcu1jdu8KZqq3cHfX8nRq3gJ6LXWNEJhPWv3a0dUbrU4LOM5Q2jGtrC
d5LHqAyNVwlRTidWJ2nmJVJCvxP5TVq9M5zMm2GfPAzIFOA/QdvoIYWkzAKTfblKpr+7YVvGySo4
CnVwwbynsRIajhKIp+R2WZ2OVYFXKbXigvSi5NuxAUu2BjZmeGDI/BrweO+nwf/aRAe9OHSp4OC/
jT/IBMw2aYzH0qCtEOE9xlhmZ7HGO8D1x6DU88nXDCZWp+ohAPdNuQ9i3+9fLTMmgHEbQngv+FJ+
0z0sYnbC8MV5V2n2HMZgGK2hZFvRlZpsrnNXu8mtJq+Xoiy6IVeZoO8q5dbKL2OruirLjZT3rD2j
wLQCajT7yzC6XnmZpvdVCMNrp7DEon4PqwGf4pgaoPXvF2GjljW7LhqlENDpEhQzdYTQiwWN3x41
874yW+iXn76EqY+WsnKOr3iWHpGuJZntbG0UShXwYjdCbqJ2iNIxDXASZWmEnMMSQduM9sCMhs0l
Re97g1Sok0ZXU0PPFyamZREgnL8vaM+qAQg5Y2t3tufVUUPitYkbadEiLUl/Qiq15pGva+oN9dwg
0YFMbzDa4J1b+sbjw6+HBDPtDDuGKr/ehHzayEr9x1tmwuQHz/mhSEysI0hj0SPiJ2e3H+mhmabC
beuzABdSXjJrfQDLfzU5TMTu2gZ2erJY96DjRadyxCk9RWEN7Uc1WcQV+FQjFqgxfdMksr+gTA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23FCF4A437A0A00"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
content-md5: s4bxwRKvNwb8Br4GZ8YAPw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f48bac51-56ea-4221-a63d-71628dfd70e5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-fc35802b-d8ca-b7b8-2456-62cd28d1640b/test-blob-4180b97c-8260-355e-e1f7-b1c7d44d1269?comp=block&blockid=dGVzdC1ibG9jay1kNDZlZjg5ZC0zZjkyLWVhYmQtYWI4YS1mZjliNGM4ODZkNWU%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-fc35802b-d8ca-b7b8-2456-62cd28d1640b/test-blob-085b38f3-6f77-8b19-f8b8-d68e3ad32b5f?sv=2027-03-07&se=2026-11-12T01%3A49%3A46Z&sr=b&sp=r&sig=J15Qiaz2iDFl%2FdS0MbScw9pfv0jSJX3Np87rfF8DS9g%3D
x-ms-return-client-request-id: true
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: s4bxwRKvNwb8Br4GZ8YAPw==
x-ms-content-crc64: xJ7Rhx7xjOw=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 70651cce-ee99-40d7-91b2-3a1bd6449ce3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-fc35802b-d8ca-b7b8-2456-62cd28d1640b?restype=container

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
x-ms-request-id: d462171e-cb72-4f88-8467-811a98818984
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-f8a87451-5e3e-70eb-da25-277fbd51b6ab?restype=container

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
etag: "0x1D85C3645F83260"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 09ebf6e5-4083-4b6e-b827-f4a661f3cd13
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-f8a87451-5e3e-70eb-da25-277fbd51b6ab/test-blob-f1e6f522-9d14-b02f-218d-458a6d22ba9f

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
pW3xQWRWzD38lpbWgsPpWIlTdl+lGSs+Df36bBc9LFrTVPXflyz5+qdq/KjIFO4XPM/1attXBYxB
sjRnXF8lvmo8Ay3NCcBdWXu4Oh2DdvgO4zBISMF/fE9pneX4kp5HRT4+jBHBSTIOlxFfnspvvjw7
WHgv3XaovIbeZGzbZcfdcPXeRennTZn9ObCwH92E+d+ovDklGGfIlc+K4uXGMzJJgi7UkHlSVAre
MqPF952pWWqNMqiNt1iNFq8aXGuzNgV+Z52vr2llVmgvRuXEAp4y4Yh7OQGJvMvVRnrKOPefKvyd
R5AA+aoAJ9xAXnBzyRQQ6HriOPwE9KrS2mjvmx1wjxvpJroOMujeehIlSF1aYn1luVB8vfL/mFPl
LR5BEYu+z85UiaJZArWSA73p36tNd3jrieLN9NIp6Y1nKATJnWiGZ3mOBtjaDLaa6rk0Fbmnl7am
VYip8Nv7Kp8V8tmxyGZUY3gyvnCfEX0rMwkZ9NTUwJFNIkfg3Xaek9s5xBnd6CFT37JBddlGB0MK
frzR4jbLQTJIZKYedIYBlCuUZUxjTkvoxhQhkku3BxoD1V66zLClbYPnlIR7NGssQOCusaH3pzBx
6Rshqa7nkFyLGp4nRsd67/jIe7nHbZGp9VJqCVZ5DC4uSeOVhMTVAAMn7xrNBfkZM8GpLit2qnuJ
d7RcfIcGEg5v+P3k5Woz83q1n3132+9YUNWUz90Ct55nCwwPeIN8Id0LXQz7NU5XdTqwwQr+EZzF
BCyxcUIwbEBefNleJHv3OH6ga33iXBuGPVmiUfWUaflwSnRXyq+a2/HMnbh0+FG/uYiLXaUe4qcR
KjPpjRtKyhPg7dkGn27OBpCMFr9iEkQH45dtCAtTUWjMRp97sU7VgdKllAt4uBoavFcVksvorhjv
4aqD3cEHjZxxOlnOU1RBtpXsvX45jyp9Uku0Pb+c5JiGjNCkUqMQnQduBn7BS2kC1Ns2+/GatVF/
BYp2U0/d1VbBR8aEnGTx2x92yoirvAfhsWnjZeim7Nd+JEwYmkm3kTEoAAOjfjd3RR/RI+rI1EmD
lKLm+W9tGlvvBXcX2EHWvzlXg7wDPjIxbB/I1cjstlADlQan0ZfCu+Wos3m/X23e+2SxcVGMgFVw
tY1PpESTAk4nE0M6Lu6hlMfWW4q5cQyy6tpkO0X/dhSwNhsKchahFbEqmEwpo8x2D9yJtiXKt0OB
nLpqLsYJKJ0uivjSlyKxNUbZjtjAiUYO7ixodcDv5X/XidVcN+bqIHCv+hnUo3e62IHe8ShqwRN0
XECaoLLcP6R4+g5MVP1f721oEY4sOUq0rp0/EPRWbMjC59ulT3++0rt1W6hpbYODfwK6Aq+FRw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FE3740B268CFA0"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
content-md5: J6vpFtSLhlDXBhF9C4ywuw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 81e8a684-252d-4958-9c62-c31f1a2de5df
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-f8a87451-5e3e-70eb-da25-277fbd51b6ab/test-blob-d23eaaee-deb6-4aa2-411a-bb91f19c6a18?comp=block&blockid=dGVzdC1ibG9jay1iMGI5OWYzYy04ZDY5LTM0YTktOGNjNC0zOTFhMjNlMzE2NjE%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-f8a87451-5e3e-70eb-da25-277fbd51b6ab/test-blob-f1e6f522-9d14-b02f-218d-458a6d22ba9f?sv=2027-03-07&se=2026-11-12T01%3A49%3A46Z&sr=b&sp=r&sig=jJsyi059m%2BW5pN29g23oPcUEXJISPexAPXNxlhqU9eU%3D
x-ms-return-client-request-id: true
x-ms-source-if-modified-since: Wed, 11 Nov 2026 00:49:46 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: J6vpFtSLhlDXBhF9C4ywuw==
x-ms-content-crc64: XDdJdHUQeqI=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: de6c23fc-ebae-4abd-9967-763e230d60b2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: DELETE /devstoreaccount1/test-container-f8a87451-5e3e-70eb-da25-277fbd51b6ab?restype=container

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
x-ms-request-id: ed27dba7-aab3-4976-a177-24d24b26fa2c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-57cc62c4-b271-4390-539b-b0fae19dbe85?restype=container

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
etag: "0x25532C6EE11E5C0"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: df83eb60-0969-4f32-8dbd-5fe6e855d4e0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-57cc62c4-b271-4390-539b-b0fae19dbe85/test-blob-4146795c-d600-bec1-0fd4-c5a26d54d92c

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
Iy1NzWkJNmABCUbypYcnXgRazI/PE6aJDnVczt2vUu4Gs/f1lUn4uyxsVmdsnp3MdFL1h9EvtRCG
w77zrWeCUbZY6/KPMci7YhFiY7w/HXDYkFqLucsd1/3nb9GKBA7E6QSwE7OrPEKJOiW/zFJTR6VO
GhwN95jrOhT0qML3MF0DnXm3jgm8LFQXAX6lXQqqkycrPOnxt/JsxNmft5SAkgrHvC7ZnLibke7I
9vUZRd0JSRSay/NzEeaHS8kwHXW/lm9z3qDc0fduj6v7KcD8Un/7lW2A5sYXVKpHUlHua3N5CF+F
pWc8LXgcKztIeOgmivhKNIgHP7CpXIr1lH+mgCQ3giBgd6wXv2f1Y7qKztvCIchYozbrccmv3Ejd
Rpn4dasXEPbHxRNLM3UgEtv2Ho6uM3K3TdzuSxBXsZpjOnjO/O4Oc73l+1y1DXDAyl/uub26LhMn
QSfPKMTmbxN45/j8UhXt56rQyTcVAkBrLYGwafjdqQtlp7vGP0v5/4tIPCV3xHhKANES6mXcET/n
Y/tDNQYbmj7tl6tZJ6hf18qrzcUb9GkIZmgmyr6miJV839tPtcmFLKHniizN8NkoshObMEN6y26R
O8+d9dB/Rg4V3UfMECEAJqAjNGo8O3WO/RerC1hSAhNsvXr65zfRZ0MdtxKRXKLxmgqiVpcEVf9Z
Dve40zu2w9s0X1KnBT5pUcwnHoRi/aF1unBOr6t7aGh7oNhAGJMHZ/Q3XfxQSpTLOQTK3TZ79xFV
QxnLZxMwuPfpLGVmKDk4H7ePK5+lJG/bg3WmsIoy/6nG6tV5PP/gBqQEZh0vZRDLkb1+68txsB6q
7+SeiQdstyy7nz1jvuO3ryT7oL1RrB5l2h/MsxTdVDq2z0wbQnycl6/xc8XSaNLaxzyndg9gWEPG
Oa/onwMY3koDre+WnG2nXwgOYDhYknJM8uzYNt4rVXcJVQnNs/is2ZV7z7rjQyvO/xYGUvcKbqY8
nK0XQKhr11d3jEdj2qsQYoej3MK3aK7BCTbHJAN//+ZikBZKlJjtD/djbLfjayVq9vBwZpHkhTT+
VjZxo7NT941gAUmVxc3utszKU/v33Z4RXS0SD5lVfgviSz5he2xDD3Upg2nb1TAigrDEGTE4B3mY
YEaGQOf0CoM9s3mPjDpgh0OGzVk0NYf9743okWXaqUTFyRslvc+NNXnmniK2k/V1Y5LtsjkfZCu+
iVBaC3keYgk1ysMfOsl0+JfgTpZlRlyXcy3S7fYLpWXvZzR+Myr/yDsYgckyVSjIeLmiPxaUWUL0
wpdLS3UTKiReL9OU9sVs4IVbTcSSZR0ECXQ8aGZPWw3xiXCTtH3FBFel0yZVNIH0NV6QOQx9Yg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F1758B853A7390"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
content-md5: 7CP/gCXm2QgRDc84K4zncQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fce06db9-551f-4d53-af0a-b8fc5a7ce851
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-57cc62c4-b271-4390-539b-b0fae19dbe85/test-blob-6d489508-91ed-aff7-d5f2-483307be2201?comp=block&blockid=dGVzdC1ibG9jay0xOTE0Mjc3NC0zYjZkLTJlYzQtOTVlNi1jNDUxOGY5MTE0OWY%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-57cc62c4-b271-4390-539b-b0fae19dbe85/test-blob-4146795c-d600-bec1-0fd4-c5a26d54d92c?sv=2027-03-07&se=2026-11-12T01%3A49%3A46Z&sr=b&sp=r&sig=R%2FTLgnInVg3nRh8KlXbEZhuMl%2Brh3%2Br5K%2FkzSlK%2Fmg8%3D
x-ms-return-client-request-id: true
x-ms-source-if-unmodified-since: Fri, 13 Nov 2026 00:49:46 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: 7CP/gCXm2QgRDc84K4zncQ==
x-ms-content-crc64: 6LKTMgzqk20=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45757368-7cc4-4283-a6bb-6eaba83b6ffd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: DELETE /devstoreaccount1/test-container-57cc62c4-b271-4390-539b-b0fae19dbe85?restype=container

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
x-ms-request-id: 17d8c97c-ee74-4e7d-9d89-5dd200ae0df8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-a387325b-10c4-ca74-8297-6b0e8d8db750?restype=container

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
etag: "0x24B6B3B24527660"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 70f7f5a3-5d6c-4db1-be28-d69facd96c10
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-a387325b-10c4-ca74-8297-6b0e8d8db750/test-blob-6eade8db-404a-0c97-94ef-f3d56c110ecb

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
ssMuRUDAvs3QGdcHzKUfRN2p2NQ3fj1kskmW1s+2oAgudJ/MYs5fmnS60qo4bf3cdycw5LTjGTOG
ypP2Kej9GnjP2FgGU+IPSj1ffKuTK0VLul6ohrxTS1trRpc7aHGMvbgxaZWl1SREIZp2g5yI8p5N
qm6JVJO7e4z9mg1K0+HM07/yYcKvpuQ5Y2Ui3Me+41P57b4CAmkkdu0IpzsX+k24qrDdlZHcnQOK
T/AumZ7EP7e6UeUjytBVzuvUp/+pImkXaTIX4E7BHE+6d7N49txPQ2iDXalold/gh8emB/YE4C2H
Fy9rrV5p+DSVaVId3dgOhWOWJcW/rtRSNlmGGhVZtZeF8d6t45UJGmR10yyNw6rvmIGSbrtnx2hb
GXcF4t0ePLO7l+v5YaHNjAphStuoxXOul4KTxkfbHip1UsoeBDiGVpd40Sy/9TbgxOGwBX2NslME
Vkpbi3Vs33jBgw/Xr4fS2/NEL/NH76JMswFmKxis6J92Gq7tK8shDPGz/nEnCBVZ3iqJSYJfvWao
Dtd0BrRfFJtwYJXZ5K8nIiMCk/EwJarsDE3tIp8cF11HRRz0rQY9U+nWtqh/f/l7YiZfXSl1d+ks
iPlncvH8U0k4kp6TM3UdxEAHWm4CbI1TcsB5vbkz0c0zxyQM1eH42mNeR+1a6C6wQZjpbR17Khxr
FP8wgpaPBMDRX2xREO9eD38LoySf+IqSyHshSmSwt50IoMHhx1fMz0IsiYjCXzCpil6ecIb3zBt1
nroabbpcIafOSG8tfUgoPtPhcm4B0GlKeL8FEUcWEdSlaymdsWKI0Gjg8xbAew0WdTGyFVmtc85Q
z/X6Vg9ftzebiBEei4xxWaIFIdxTiv2y75wWZPt7+PhaTOFsjXpZgDvfJfL79+qkQLy2p1Lx/UX4
SGZySVM7H5AZxD6qBMsnq6Ghc2QKtviycSM/xFCmaU+bdEUT5zbnpAZi4jKr+TzwjvywUInh7ZFt
wNcv/FpAclvuD4+FE8Rquc9dp9PFBnfnTjZT9RjGuoe0piZft6esIm/Xveqsa3s3Rpa5hEW9qLpg
SK0k7H1CKFUI0W2dCwEnsYVk7UiNO+O6HK6BDDVB9v1s/2/6iDXylZWVo5kNmjuVkdLAWbpx0g3K
adDOwBsfx9tvMAySLSlPcViz95hJrYFz7HpjgJxD+yxiMB5lI9V5dtu+nWkvA2SpcOdivtt0gLtO
W9Sgu0c+LDXfL/0K6k2DOYG8ixAXQ+kWuRC14D1R7a9iFsgB2bqUgHAzT9Nnn4aa34RauPWrNhjq
igI2iUv4jkJNp9OFgmDGKAqf5PQVrhmJGgG49zW5t9+wFk63XfckO8CRGfeyFF0kk4/qC1Ij1Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DF574B1FC73510"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
content-md5: FHDTr70bd/sxFkIkF74v2g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 65a7319d-ea93-482f-af38-17dafc804b4f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-a387325b-10c4-ca74-8297-6b0e8d8db750/test-blob-6eade8db-404a-0c97-94ef-f3d56c110ecb

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
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1DF574B1FC73510"
content-md5: FHDTr70bd/sxFkIkF74v2g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 95b35293-3a2e-451d-be45-9272d6d11592
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:49:46 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-a387325b-10c4-ca74-8297-6b0e8d8db750/test-blob-33a87a13-9583-d722-06a4-9363a5ceab8d?comp=block&blockid=dGVzdC1ibG9jay1jZjczNDA4Yy04OWIwLWZiZGEtMjk4NS04NTA3YmYzZWYxMTM%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-a387325b-10c4-ca74-8297-6b0e8d8db750/test-blob-6eade8db-404a-0c97-94ef-f3d56c110ecb?sv=2027-03-07&se=2026-11-12T01%3A49%3A46Z&sr=b&sp=r&sig=e3RbNRAeiMN184lX748EFJPf7Qv6RNGwYA2eZ6qJ23I%3D
x-ms-return-client-request-id: true
x-ms-source-if-match: 0x1DF574B1FC73510
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: FHDTr70bd/sxFkIkF74v2g==
x-ms-content-crc64: 6qbgHDPiIvM=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9ae3d487-1f0e-4b36-b0d5-cef0bba877e5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-a387325b-10c4-ca74-8297-6b0e8d8db750?restype=container

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
x-ms-request-id: 5e737826-12a9-4dbb-adf6-788c60d1bafd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-91d7c485-f0a9-4651-c6d5-67a5ac3466c5?restype=container

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
etag: "0x24200B60CE1A380"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ff7951b-a5eb-45d8-ad7c-76a3f7308be7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-91d7c485-f0a9-4651-c6d5-67a5ac3466c5/test-blob-e994fa1e-b474-d000-6444-c90a9a732923

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
RGZJK54/GoqgrQr+DxoYx7OA3uH3GuOb7iwI2iE1TvQev8NY9cV1RalN8fzlUzasvZ/yK1WFziqD
rT1xNkBoal4V4FBWv9LuC5g3qSnntZv1XByBQyOfmfGZ1UeIAw9p5Iad0HLmVf7MAx+8TSQBm/eh
e9oj5ic7dUdevemLZQeJzsWiSuUoDgYetT8D4kvMmDlP5oc0Rf1eYVorh5gUQZ4XM35fXlESeWzU
BDHoOJP7kiWwO36AVYnHROiK/IdtCnOg66/NbTnnPW0aYEDLdSnHMPVyZAYfl971lxlph3zlZvq+
SEzkLiTryP0RZfRI+86/w8yR+6ZsgVPQ2NUgfrXxNPlGDS3c4gHQh5wIDjLprZtKqsSvVGtUUcb4
E1ZOy0lHIDD6Ae6h4uDKwHMJY3Mh5ys61dTxQeCO8rtm48+rgrtSwe0B7qutqcfj5JP3Su1T1ysq
FPZ1Vd5Qaw8yOv4RHz64t6KFIPh/jCsMDl1Ml6fOEwyjgW3F3WsPsIKce2/J0sVVP5NKzbYzq4jK
aEeBBNRnYybxbZ7R8tk3dm914xG8QzyX9lgUg0VVcNXl+3QjjayuNRdI12UnhEy6EldHvcd2DSUL
6Q17UuDhnPzI6/dkFOjCxq75dGvXcHILWnDuDrINbu1PGKSfMuI3ZztoX5hVVf5vhfYZfZm5M3ma
b/hv841Kun0KFftEIpTMwg0wbxHatgRyf4m79PFTleQqBMLpyHOtHaQaSkADKmJiTbqMiMRowLnz
/XQEjsaMtn8XGR3R4vqZg1Fsv2vEb1QmWKY2xwwfwUQJ9sr/qI/ejpTB7BBEkWu/8gVz/AFNL40f
3TUfVe5y91jZx+svmdrBjTDXA4JE4sY7d9QHq8VDvMc94MpZvzilTvS4a8p/kFkqsm7QdSsL2/tu
494aa0uSlgok8rkPaM73MbSOi3b8vOZ73PlXckabMQTO6ttai+OpJtXAW52fG0qf2ER2fE+Fcif3
no5SOiPDiMC0QH3ynabR5WWhPGBJ28Gvt5oCJLW1SXe0YuxVV+ux/NLd69rMrTqdpZfq4zbGrsPN
ooOJwGML//cFPjq5fI157z+Oa+/n4gpfZH8dymVB7bQoh7RnKDtv0ezix24A4ykJcPT2OELT5b95
KVzk7TSRw1CGkfTZEscEH5oDBBubX4FVE1lxSrVxVaL07v/fiuO3UQMdelI1MF4s8hmoz+Gk3srb
jtraH3ibFDxS5CPHJZS2TLIYfeQuIOP7RFibyYXAUBA0BPsJ3DKKgmUW40s6ZMyF8YMujGDlrG73
39og/0u2kZQTkyGYrXCAjfp/Fz2XwN+LFtcBkcOvT1eNEvxXaoIZX1G3J9Gr7EQTrv5lZZQwXw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x242FDAD4FE18240"
last-modified: Thu, 12 Nov 2026 00:49:46 GMT
content-md5: 1o/Y0u4Q2kQC9UTguZ1h9Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4dccc8d1-ed35-4525-8e94-1fb56afb4752
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-91d7c485-f0a9-4651-c6d5-67a5ac3466c5/test-blob-ecb86678-99e0-e00e-2992-eee3c449e9c2?comp=block&blockid=dGVzdC1ibG9jay01Y2RlYjM1Yy05OWQ2LWFhYTQtNTFlNi1jMzhkZTJlMWFhOWY%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-91d7c485-f0a9-4651-c6d5-67a5ac3466c5/test-blob-e994fa1e-b474-d000-6444-c90a9a732923?sv=2027-03-07&se=2026-11-12T01%3A49%3A46Z&sr=b&sp=r&sig=5ajsHpk1e3WsrSMpC5wTEgq7PnhHP5MuDSvNtMq8WLs%3D
x-ms-return-client-request-id: true
x-ms-source-if-none-match: "garbage"
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-md5: 1o/Y0u4Q2kQC9UTguZ1h9Q==
x-ms-content-crc64: fWunG60i/Zk=
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 285ef6b9-70bf-4a03-bd14-2948b8c732e4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-91d7c485-f0a9-4651-c6d5-67a5ac3466c5?restype=container

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
x-ms-request-id: 05f3f43d-abc0-4784-8d37-af0a16afc658
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

