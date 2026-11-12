## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-8603fe59-f805-5047-8436-a13f5fe434ba?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).BreakLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:46:18.3023045+00:00

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
etag: "0x1D68FF69F5641A0"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3d25c310-6f9d-477f-b990-9adfbf2a7bc6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-8603fe59-f805-5047-8436-a13f5fe434ba/test-blob-8c011aa3-bd08-bcc0-ccd4-d7924177b60d

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
5QnCV5uKaP8bzSSIDMWf38LktRZT7eKcPka5MCC1DwyAk1lVId0fGbEBcDqYN7AHNPfPXMKfuvgm
JhlU0DfeZr4YB3hsSr3lxJxkUXynAwaWsvwp5rJK4NlgL/vEy0h5Igp8fzA3muo56ZglO2l7fiIS
vR47tX8LziaeCxrCIflT6y5yKoTWXhcR7/waJKVw5bDYsQ0qPm2KcbEJmI/Pdsif0VA7CVOePF4G
KcWD8KmBLiVp6m/rKazA57nSzcaIQnk0e1JVNdxdOnWuIxSnB4AHh2ppZYxYs6ijeiGay2+YfudM
T3VWLPlJDLD6PQWYGeA4y0VbHtzs28iqsbu6wm4GFaUtWrcLsFtxH1jcXXWiC2BBYQApPV8KYHSt
rHo+j0pB9Cdgar4oLRrq6v6DD31SB6ZaeGFt3NhFIvpDXQTgMpAOmmlNQqCiGTPmP1Jgh1D2W6TU
5Bbo0xdPG0jE5dAVCbdudHQTBMUFt18uh52F5JupTQJfC055JsdS/idY3jRj0DWa8hLb4lbfziy3
ukx5yTatGpfNtf5o9U6twQWdrdkqyrZo6/GIzmqrgDwiwWx72DXwqsOclRs2Mv3ELSBRQSFTjO+V
Ed5FJEwtITXBRjPiMunQrQIVjjSbMbj0xKBJWj4bzzR85cZWq4V3b3TldezJ4vs3gJQePf66+uAl
UGCr48f3pnb+ZU0ieQJ8nR/AtbvMKuKlEtqp/JE2wurmMVolzIus7s91y3yuFQaSoaDe+UUkWCV+
BtHtTankx6NiPEinV9GTFMbsV19l9v3TF1vxV8ilwdg1psW6v6ElkAPYS9m+60nOS+V+NwHGGQ/U
GTZO83DavHpvcbEM2VQlx8ZcjKojFSwRIwzjJ4rXb4215qZq152T/o9fTnmYwnGRWHA6aoxksAQK
PdBj95XvmAIkVvOtuu8pyI4bxMayeGCaUc4ZnAUAUDWhYJrNLwb6b7V2c2x+456AEaH9Ses9V8Rv
yabG1fz9JAW9DFpVW5mIIVURPAX0HG0wmYpkAgdKZAnVXWZfM5m4eU9mwddDKrYHdSeWLBu+e6w4
ljxymSH+c6hRgP0yKO67WMO1jVuW7G7UXI3ftDftF+K5J5xdRt8uZ00v8qq41Uw52tRYCO1RoarN
nT2THr5wY2gbeQFSXhHjhyUNZ/nEG4ZAptljlQ70Z4Xxj6iimkmOvo9BnFtL53vCdIHIRDqwCYK2
U3jkDM1aJxF7YM5oQe3cfqhqgn4r9b5eoSGMLCNLQIYm60fQqrHB5nVK0IatWTOT68aSRoYDi125
hmuszfvuMB9IQlWmDNT2qJsJ4SQ3sEft+EBduPr/I2DpFiNGFRh6W6BnZBfe7d7xnJ7r+ao5gQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C99A07E3A02EE0"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
content-md5: WBZrS5GK4uCXHU9NQGo37A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 840b04a4-325c-4a4b-a9a8-5bc205121ed4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-8603fe59-f805-5047-8436-a13f5fe434ba/test-blob-8c011aa3-bd08-bcc0-ccd4-d7924177b60d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: d5be24d5-91ba-2577-481e-f4bcf5b1b093
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C99A07E3A02EE0"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-lease-id: d5be24d5-91ba-2577-481e-f4bcf5b1b093
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 00305ab4-95d8-4558-8664-85595ad182a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-8603fe59-f805-5047-8436-a13f5fe434ba/test-blob-8c011aa3-bd08-bcc0-ccd4-d7924177b60d?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:46:18 GMT
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 5f58c491-756f-4a52-95b4-51b510ef47d2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:18 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 4: DELETE /devstoreaccount1/test-container-8603fe59-f805-5047-8436-a13f5fe434ba?restype=container

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
x-ms-request-id: af2797a9-976b-4fe3-8c9b-04b427f15636
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-84858f82-4cd0-0f30-0b61-6b1c5c1429b6?restype=container

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
etag: "0x1FD26AFF2C2F090"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f010ce87-21df-4675-b0b8-7cfcec7add2d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-84858f82-4cd0-0f30-0b61-6b1c5c1429b6/test-blob-214d94b0-4356-cabf-2942-1cf8e930e940

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
6wpoaiW0sYn0r8lYJVrJNPQ+DGBjjjw+z7pbji83Jdp4KjBRq7+R++PDLaZ5Z6TOeOgEqySI3V3N
KZpqWSJavYrv3/speIg1rRB9oGCWxGgWjBVHM3q18E3Tg4IlJqLAaXAbioeppQBfzv0TCzz8N2Qx
VMwNEokQOe+uVfQGD4ZuvDbvejrhbecU52R8ouQQ1kwd89LWs1fmC1CX+k8MWb92pU4GDLwqT+fl
+Colk5cKnX+o6By0mAnfCW7qSnKYCI6lBf2WCcmP86Pr8LoswHe4jF3QY3CiwgxFJwNNPwV1Te+c
gI6adJO1GfV4yadOskj3Mb0Vx6UdAkPwUOLGQbOddqPLkEDpHhfJGkp7Kvll93S7Vg1IYIVKf35L
qSSx79dB2lMDgyIIDhOlS61aothKi1luC+qlVRUegBHBnXXzFytyOU+lYXRSskj6ohTX79ymAR3K
Q+Ttm4Q95AIRRnCdsTOB6GiIpCnkG1iiq7MBRpA0G5xXKNRHhZ3KaHxxQWvXXPDgVQd0HV305ieL
SvDRO51x3CvTRoleOmLKvTusctrsyk7CIfGIv/4/Y0Ktuzut+SzfAGRABBZngRulqV8hR3NMnn+i
Dhqs6BwtlOJGsX8nHcQPzXJ1rMY3W5/V4xaeHhzPYBy7C+sSMhdHE28zIc+bfYyaEnkA1/K4arJ6
1gQGjnbGdlFibBLZ/JtbLplWAzrPOmaKBAyjz4kqAqA4l1sSQYT5bap+ORF5wRXdpahYYWZ4q5ye
fIppI6fIOGlxoGVASO0UXZaQUQFVEEL2xSrg0aA6wOy+dMT6j0oCtgCnByGvnVy7RATQ51mbSGtI
c11952bJN995gdQoGc1LjpoArgkgRyjOJI2cadmSIytYshzshM6a3s9CNRuHkyo2hFm/m5piJys1
r8PZLc0G516pz2awXwnMZdA53hEMRpFiZeV/04iQ9ovxt9QLwbECO0693cPEhSVP8jXKKUkZKGgy
d8fohhTVGNnbv6c0waQeNqLDTmjNnd/AL+BSxsxB145s2EnpGbQ558Xq6MZ9GzGQq/KmVdkAZdno
KFc0glENmegZyOhaNR3timej47UZQhSuwhvZm4G0bHNwAPFdBWRz3E7dZFJINXXVuctyXIIjz+VC
hcA2M/5mZFx16jQrj4UCLwZmO97BZoylA+K2QQ/xTDELG4CkPKhPd//200tAqSlGcCx7vZQHgB8z
kC8csCJNg54DIHQEXvNdFsPey5JBZFq4b9HjdY+cA5phcKx5M8fcqVCsPIm1QRI5HqbQKbWM8ivV
ZEBRaQ4OZhzZo+1G5OP8ASJClCjRAy6+qVbozNrk1H6Ao8+Hiz9CndZs250k8jrC1CeTSl0DBA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x259CB75601A8EC0"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
content-md5: R2rZdKb4EMNoTDC9YlZ4kg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 297c1a4d-03c5-4fc6-918b-410efdea4a42
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-84858f82-4cd0-0f30-0b61-6b1c5c1429b6/test-blob-214d94b0-4356-cabf-2942-1cf8e930e940?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_8
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c0931260-26b7-419a-f5cf-6fc640147576
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x259CB75601A8EC0"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-lease-id: c0931260-26b7-419a-f5cf-6fc640147576
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 228f2b34-d8e3-49f5-8ceb-c351ce09c989
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-84858f82-4cd0-0f30-0b61-6b1c5c1429b6/test-blob-214d94b0-4356-cabf-2942-1cf8e930e940?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:46:18 GMT
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 7e97ab5f-6be3-499b-a780-ab5a738989ac
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:18 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 9: DELETE /devstoreaccount1/test-container-84858f82-4cd0-0f30-0b61-6b1c5c1429b6?restype=container

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
x-ms-request-id: 6290f6c4-eee2-4c29-bf9f-383aee49c17b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-52f6ffe3-2864-9990-b71c-25f8b3518920?restype=container

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
etag: "0x2153942F0CB6A80"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 474ded39-a0d1-4d5f-8f17-cb6eba7e2bdc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-52f6ffe3-2864-9990-b71c-25f8b3518920/test-blob-756e9f7c-7ef7-778a-3b2b-e6ceb52bf9ae

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
XrGvSmaxoDeB+QmaAKKOo0VOSqGlAH5kdH4WOULB5Isid5kBoT+5yv828/118HeYnEKJZuBYCF4y
S9Xnm2b1vxV9d4kJjAEGlYCibwyB74QHfZz/OH2qym46z1Zp0i+YQTPn93jujw9BgtFgtZlRsVxR
4B3K9oeX060az72qncJRCi3ZmfcMGe6MvbasShTU6B76GPIRzUusTyTK08BSluUOD6tseBhlRMYv
PjjQ64iYRuafsITQPzziLEnSQUYtOSfQnTtoaHAFlNMr4o8S22SbMozZs+ZgPs9viUvOkgOAAQQR
AE1NMN52mRuxpF2sz1HkNw+5U4ZAcF9r+d8kNwLQq+CLAdsWTQGuYxnKr5lyw7n66lr0xq190JDt
4jf/UWIZ4fl8IM51zekNC/BsdsDG+DYlKU2n3OUzDjFLKWvKrxG3sc6g9qLrhBxx5rq9EFnPJ+kB
2SgVcQUTSRKcKqR+QlzetcXyJgKTOqUwNvUqdf3YewGCydbpokDJjKyPTlp386Re31uT3AHmbZ6C
5DoP6NMVxK6i/HmG9BKFKZlVBOxLuENRzJaiRJ4Am1w3Zr0FuaPZeomr1Pcr2OpIDrNnkGiyNyv3
vhw9coAPomAcTo5VgG/1fIpin+RMJvOsWjXrmAr0hS+SDvuHnAcJnDKWDopb845EchTdT5dHq5go
kBhKJApVKMlfwnF0buCDWQOxtRdpUGenpiX2FjWXSmNiXgvuvncoQObB/DAc0AQ0WfaUlfWAvz+x
o37kXxGTx3cOEQ/UlJqMiXUxqFM2i9Yhwrw+ArVt4Z/LPRr5ROHULTS4Db70X8VbCAyATxbrehin
wp1UVMXCoS9wCFeAkkWTXHsffX0XLGL34vqo7ZKI38ICUYFEf9hv9myOhFdt23XH7PKbzPyakJY6
XXHKGrSd5yiVfUHDT9yir4cRiacLigaE4ACf7RPFZ8HqCSJmpdu48J0u1140BJ0V+R10iAfvL9Jr
RTmz/vkV0BWA2EW6OwqsWZgJ3LKoUNxjifT1UN+6+9pP+1+iBPKjGQdItCtXW70TyC5u5VIfwvVc
T3QFIH82xdxraj+qCVWlZcOrX5yxCy424YewSxaHLzlqRbR+nviHEu5O7PB+ab7ZyX+PdGJYq0RG
zz73hXrG4zoGQMOgJsfKI02uYh89t3jI1oGW+LvWEZpwOM66kIxziAm2dyj7OaO4xFAVqkgkCBfG
Lq/5L+p+MC4pL+74EJPAOtoWh0BPzZ3e3jNrwGdSTC+29GHdelkeN0f60gm0v7S9VG9tDoHXdmAS
GlC2E2/G1uO+QRsx48CB91D4VfuTKR9+rWv35D6t330Ay18IaCPYM/sm9n2Zi3Gv7BYx3iFlfg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CF37DB22C632C0"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
content-md5: TqCPTr3DMyw9Xw8CPaPaYw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7ca3fead-2319-48a2-a80f-a3119069565c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-52f6ffe3-2864-9990-b71c-25f8b3518920/test-blob-756e9f7c-7ef7-778a-3b2b-e6ceb52bf9ae?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 653730f1-cf03-a5f1-1062-9d301860788f
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CF37DB22C632C0"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-lease-id: 653730f1-cf03-a5f1-1062-9d301860788f
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9327ac04-6c6a-4a26-bf16-ed07b2f23b31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-52f6ffe3-2864-9990-b71c-25f8b3518920/test-blob-756e9f7c-7ef7-778a-3b2b-e6ceb52bf9ae?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 639bd27e-9568-4017-b9ef-c28047dbd4ad
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:18 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 14: DELETE /devstoreaccount1/test-container-52f6ffe3-2864-9990-b71c-25f8b3518920?restype=container

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
x-ms-request-id: a566f26e-3bd2-4c79-b307-ecc62db8324d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-ff21202c-336d-e5a2-22fa-48f8277c005c?restype=container

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
etag: "0x275BB0C29BB2800"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bd750100-4e0d-4912-a19b-5e97b9e62202
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-ff21202c-336d-e5a2-22fa-48f8277c005c/test-blob-d86e4c9b-bd30-64d5-0a80-e51afb5a594e

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
dIcEvv9lEb6OUkMIhvh+lGFBlcvyoF5vS7317E2H6seh+YSfd0JcNjqwSd55zN0RAlG5usWNXNMp
lXNCbyRwBmd8Z4x03hwe5F6RQlaA9X7f5Or8zi8BE52wduLPGsYWP0N2/WRQnCM1mtVn/Bp9qKD0
Yos6dDg3elPvxGc6T8qXegITCfcaj0fGxzNZmheDM81C2rc728sKPoMQYdi8+koLz4EXaZ+o2tNE
dK0F3eA8bJGa+HUSXJ43Ccp0CS5uCszoTsqWa8kumQDj92cdBWCj1PRHIQLV+XPi4GDUM9Cl1Wnh
HI8VpgHIbF50LmQ2GgRq0TU5J+jJElRXs4poWWYvPiL9POjQjS7zf7WjYMsOq8ZcamGba62BFwk7
vfN2XxP4Re9COd0bmUMGRqgzJrKJSQfDC+4Ek9J1fCTeldA7fB+iqxvby3LoQdEelCUETfFXsXTr
slQk9LIdzby4PANzy8qJkXqWrn2U28od5f6tcC4zh+RcT8nKfrZpvf61LwTNq8hae7x2wAP2V9eK
Bg6zb12OhbUfFnwBvhPELfB/3qvFUDo1UvRxvcbgZvjxQHeotU6hJ6pOrZRMWbypsZISd3gsxLbU
fRxoHMfvPrCED36bG3ei3rYAdqKl6fk4yAszzu5/xXvB1DgxOAvjX2/kyEk9DZYacJnBK00ULpMj
L1O7u3DBBEoD2kc/cKWrHRcywSGv+rp1GV1VvpotrKakDQi3J6T+IsP/OjNO2//zFg024WxydDWZ
RaISbEaw1S6hmmOc8/VyNJ9dsMCHJj1eYaeM98s5MpnTHuIC7LZ9T2QFrUCcVyMYw63NFMN1Eh5k
tAqeI95iaGfJydUTcEjo4GBbgnn8wgqEdDMeax7VXgzDnjes3yuFokXZ0o5OBFNk5DNjGZClZ/L/
Ga+rRPxI82rIUNIQPAE11d80I+98Nm/guYbqckR8HjZFrMV72l1IkN8jhbSAVKgyLUOwcEQCguJA
yop1XYElTDKcypA7ufuB65IQWbG7X2Xet0UBy63xQiniOw/S0zJe/TiB5IkY93RILoSx8ikxhGsl
lqY8JICEqodmWH3rrhhfslt4OXrcxsDRuJwoQFD/sbakrTyMItm3/DoBsZ/2XYBsUUDOuEvwSdDl
amvkW2o3ZqbGRgHb05CCwDw/2hUg2lscvO4PMfhrs2Rsprdt06DQykr4LxZ+kH6wS/cOsW67xJAQ
x597JzWtW5OdbyzYFO2bbxDKKKtEnSxvX+UBXQL1seInXQwBVKIVStSD4SBS1zcKckFe8Jzkyyly
DMhQrP6QqL5KsbfgmRpttd3XwbwMHYeu9urAlsBFQpHij0jaxZ7V8jlhByV/Kdkn8Du/DAptZQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24749A737DEEA60"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
content-md5: JRcUg8JQyyLZfXCm4l9NFg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3626ced6-55a3-4213-86b0-d7d75aacf137
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: HEAD /devstoreaccount1/test-container-ff21202c-336d-e5a2-22fa-48f8277c005c/test-blob-d86e4c9b-bd30-64d5-0a80-e51afb5a594e

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
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x24749A737DEEA60"
content-md5: JRcUg8JQyyLZfXCm4l9NFg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ace4e05e-1d21-4044-b737-ee75fc4a8f2e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:18 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-ff21202c-336d-e5a2-22fa-48f8277c005c/test-blob-d86e4c9b-bd30-64d5-0a80-e51afb5a594e?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: b6a140ee-d013-fe11-046f-26fe0ad193f0
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24749A737DEEA60"
last-modified: Thu, 12 Nov 2026 00:46:18 GMT
x-ms-lease-id: b6a140ee-d013-fe11-046f-26fe0ad193f0
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7564476e-c73d-4322-a0ec-994edb3ffe7c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-ff21202c-336d-e5a2-22fa-48f8277c005c/test-blob-d86e4c9b-bd30-64d5-0a80-e51afb5a594e?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x24749A737DEEA60"
x-ms-lease-action: break
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 09e5b864-78ae-454d-b843-d7b80e92cf3d
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:18 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>ConditionNotMet</Code>
  <Message>The condition specified using HTTP conditional header(s) is not met.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 20: DELETE /devstoreaccount1/test-container-ff21202c-336d-e5a2-22fa-48f8277c005c?restype=container

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
x-ms-request-id: 907f8b85-ed8b-46c3-ac7e-0ec5f8142048
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:18 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

