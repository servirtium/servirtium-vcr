## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4ca6b46f-57c2-bf6c-028f-472765b31ebb?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).GetBlockListAsync_LeaseFail
now: 2026-11-12T00:50:04.6328236+00:00

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
etag: "0x1D4F999E4018B00"
last-modified: Thu, 12 Nov 2026 00:50:04 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: de13b017-0146-4fec-9442-c404e487fc52
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:04 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4ca6b46f-57c2-bf6c-028f-472765b31ebb/test-blob-41582305-28b4-ed01-829c-66d5383ec688

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
Q56Td02wbO4ttHVM+DE+IxYzgQeiV1dGsrjKJfCXh8PJv+THIKZuVbdqFACztPRRXkK/Bb2+5uxG
TMWU5kb+lS2ygzlNdgNvxCxQOEJXk/3DeMet14EFCtn3gdTh2W9wa37SATG7A+c/UECRbq2q7rjH
0W1/UL6rrHlgVvUujeu838zEhZLMCHXfbodBdJsrTJMbGggC8RvAJlW3W63yEMJU1I7h5mgm+sn3
n+I2ajfdNAlhE3Ljuu6wA149FKzH7V3E7KANSWYq9B8/ClE5ibwd2iajkP1PcRmfMOIJ6eYcMLKE
cX2W0OuiNx5TpLCdd3qiHzqGI1xgdHqHbRmEIAs5ItqftBg+hwk7AVnf/M1oArloZ8qslQxVJPwC
DmPRHhYTGoHW/sJhY5cwSyIDgHitHmpgHLlAjI3NSZAbPHimaeNCzOFMkgT2BgQye0npUqOEVfD5
cQFc0o30CLQyRicfiuI/wLSWYYxmaRa1DhBD5Pfsl+eIrffh5fpUWIlPxL/cE/FnqpHu7fNjkgjr
p8N8sCS9Ra9Alt3rXtq6QgkDF6RW2Pof3Dpm/anzJRrv9j4216dkkX8QnHwUfEy2NKvqX3tjlM7I
XdTqV0cFTHHD+2echGphn4UlRTx+C1/ur8n+CcWei2FvbXrTeTo3Ck8LUIDkGq9AiL/2PU6SSlF0
/Kh9B0OrJHAGLBbwjiVL7jvscrrfCZQavoEFqE4S3SIoXnyRuQMMXywQ3e2YT/maqk8TptiXlPIT
Y0nBpXsi9E/0xy+puTQ34BKNzyymgW6Ia/3//jdKkcmJfla6Srqw7umepIfJ8PEa3MbFCcXGbOHa
OTl+IvUYqTZmHzrdfJVY3eFCCN3mvnsL5CJxhYcEwhJ03xGBMsv0hvtRY9G2PV8wbSzkhGME9Hq+
cj7TpySuYVwoaJyE16sWToLilVupVafCQBdbID6ucOuWwr+MIN7WogF1jtTCrJaAzTbhIl8fFB2X
EGcMUkEeevix7RTriS2jC/JaNMbS/5OB21IHzE2Md62i9RB3yk+/VhPcEb6BlUQJPRdsxOBWxBDT
i3fvFq2qJXZmSZQcLEGim92z9u7V/0UO/o82H7LNSzD/pD7Yz0BlMexHG0yv7BHVySkCo84i/osy
4RgedAXEmf1kHYcCysudTcUCjeT4XhF9YFaIyqhh3aazpu0oR7zmg4JPSs+J0/5dZVUJH3CnOYIG
oRSvO85UAj/hTyTddQYIHApiqRNC84xXK2VTWL01DGxrIaWoN0ez+0iPqITagO9PAQNmRY9uw62H
VxBoAKmBrEK3clNgX+TCrq7Ls0sIfap2A1e6zsbd/F74Id83S/qeDfxBIg2b76EepJfhoxBiftpl
8v1Rx9172nb1aD0Fi2KzLaVPxlqd2hO2myov+1lNlaME0Vn8TEYexUeXpodkGRg0LXZqE7d/yBjp
myuzTN8dp9KZALkJtuBfMAETBTOMUYIR+83i4oHrhAlAE7Aaa3loev60yhheK3eVC+O2bMLkXUqp
oVEROsRQrXywyKMwRMWHqos114dpss9WTdeeNRdGXLZmcckoVj85YxycrmLTZcYeLsI2r4XDQO6B
u+ztsnhkamztydP7XlNM+3NqzARtgugQgAZVEKwwojDbp5tSTLGkOET15pvzI89u6rQSWHPqEzgE
3DFxDlnAvSaiH7e3+a/BxpPAd5xMHV035yX4Hkq98JNjTm+AMirqNSh0UAMYtvAEUJLfKZybt77U
OiYzyJ7c5S8kVKs/QZNp1kJz2M1aHjA188633cb3x5awrPgDtmyKl2rT9GFFxQ7+dlNZKN/xeRv1
/tXQJAhoLI0Uj5WbZiDV6UBihirP7y6/uWZznZ+3vjLcDbeXuXNia8fUMTV4YxAzhD6ejvPxJg+m
EWuh9Y7uXdBjvlhoPTDNABti+r34RlVWPxlgGDA/6+an8KcHwHY45tRlFaW3ykYO0Y7YjixSrsoW
S7V1jUSgI9NywUyIxj+kKRTpkzGwn3XTUkeiZ1y6VULd8XXBw1iPxfHRRQj5hQpOM2QXaBuZZaw/
oTv9/bx2t2wKqtTK42a7Wc4/3lps2cw8VDT3ouwnQ4vJgSEcksc1Wo2c79o2g0/+Ww5MWoZR08hv
wKmIfxV/4mZJAGJEn8cHCYTMz+rxBtDk+Ebe2ukFd61ZrdIdrdt3HQx07IPturxHRVAChQPefrnZ
pIbOoQh9Q4m06vL16VyoVbLdfRlN9j6KlpWYAvKpey4YRAlVqXsE9qn5OM/KUVz0WjBRAAGgi61I
RApy5EGWC2/D3aRTU6s32IZwU71uv0U4o6jCWHoteLhbDGVwkRFnYy1gBnS3oQaEGSd6Lzjv2YTF
OkCZ1LL0lmXr90ZGxkd0CfCQDrnQgQKhPT5SskiAazPhq1fRzo57a3APy6nAPlPgBiZHX8vL9Lg+
95ZzouQcaowTZRvvozphFaJJwbVY4f/rcqsiOQtnFbaektf4B8mL8mAdrNk48GPr5UoogjMD5RWX
iC85+jGAq09kUBBjaQ3Zvc5UOjQls4FINlPBP5ODm63BYH+ZUvgvnQGK059TiHw8T8RkrqrgcdSt
8MTev2y74bVjoQmOP2vWJZ0zm+Di9K3WhPDPHuwC4e+q7GEzUN6Vz/Hq7+dzrg9ZjYkNrNX0y/sX
Bzp868LIYcAZ41MJotS/nszu+AXGY9XgdpBj9DQZtiBlHEijGeMvIY4mWcq7T+u0TQ4IBtL2UKRk
m3UyZGyLAC0zpIaLHIXpv9Z2nwoLJSalrqYlEK9NbsukPn5t/b0im1mciKtkKDGJH0b8gLGZWXVO
jLXFZu995TW6590Ge8IZVASwbp17QIZ1nPFoUe4ZC+UIH3AHXDVqHqN1qkFUgqSE4yyt6OrY00sv
UMn9FJNHoNz4/lxREvfORk/6BZZEIBlN5G7BbCL6MEsk1wtrbAkPLgplXIRHM9E03qGa3s616y+w
sDAlhTS5/c4QLTrrY9pG6taL3sSVBbGdjY2AX1F9buvbu7vZ6anVq161NwWWSHvHVPP3KQxrGqt/
iPinOZ58k75PD6gfbAAttjJm386rBkQSuQpehUTecKAQWWGwLnLAOaNHRjjSqOfzynPZBTvc1IGz
lICTHg55cJ8IDhOffIfApaYqY8ALPxAiarrRBGtlM4Xf/JnxLRuUztaZypnUVE3sGV+VsXDBqFVv
cLNUqGszo9uOv4DtzniKlpXpcXV3ThZs5OsM0IEUHlREgrxnQCVqZie9RpXN/krmChvb1zbf+CKd
58OAJ9NaeaArqEy8I1VwfwtOuQiBn+ahJcVlOUceZIqayllh6j5TY8z0olX9KubGa1gqkT4aG0fd
3gEN9EBZDUPCIVn7DpTN+lU7jP2Qo/vfn87u89NLgK4Rgws9Rm+Mm5QROwiNylzDXZbo3o9KTTsG
LlRxahpwdqGq6oqIj7Pmr/FofmjyUdVxK5U8Y6EfxzbQNhgbGjB6ocRm49/SOs3jAi+d4c/SE9x+
AD+EMxMAiyJUuFmby5TA7t2kjG71n/DIWWFygeVm/iM7nBrx9m2wZli9foJ0Rzaa3PPyLoduiWBO
vNqyjgk97bo1Xy96z/hv8yUWOCFuUxIq16TydM+bzRK5ojqT/thOf5DIPugHIA37gjthWFA/4GjI
h7ZkS3jqmZEcwC2+2/RMx7mQpRQpIraX9/GUOnXCesHRy3Yh6jQY3qRW62DfPKdGFJCXrjpTnmUA
zFSGVV8cWkZr7BB9K9yEeMdv0zZWt7pKTiXkKsuHfS0RIR3gkYhFOZEZdFCWyOmzEzZz48ouqhSZ
Owc6OC975G7iawq+pOY/KpqlPENqs4U7MBeUFJpi43YJRlWBCgFhnpDhs1zf9W5PM7kwiG3RL4eB
/gcY5s/UgIiTtV2RvR+YQ56yiQApXDuoRODhMloJNxfNAAv5SbfADDPUSz8RvnaZl0XPH6aHV6LM
b6Lv804tin5Fw70Un/nn8XzMVBD8l4ZpSJoVORhxRqhpLNkV0Bnlp8HAy/u4hPdL5y0puwOR0Ngc
hauzF1Bl1HwVqnMg0iFi5q1PO8uKscOiyVLrR4ql11wA+UpuMo9wW/d+otqEKxUMx9VVQpUNkdTn
EE3+eozycNMXH9nW9LQd3t/TCw7oHp4834C1T5TG82d2hiFCceFrjDIHbQs8NdMgOGO1OYbF//Kv
wpoLPCE+UCxxX22T22z+aH/c4bCS/6mtlBcxEbnhsYcukq9GX08RyBzfytZljVz2ttEH6B1BHMLx
XqgKDT5zkK7lZEi9uAkvyxmTszTSRwa6Olvn2shq7HbsVQCnBrveazoogCkTOf7I1x0ErmiNHheh
T9Lji7ble3jS0GMIiMRdtUj6qsfdpgBcHwKrZj4OXzboBbfo+uCDQwSwQWmbv09Ypvggk3RQw6nS
hmu0ORQ5xHEsH4INdLpndmfCLGSXwWCzU79F7cvCmEINFnN0zwnvd333bp/MSjE9uBwMjpZEOsUL
AOZV89alaoc/AF5H86Zd0rXnn1PA5giNCDSvtQqryduuac4jmoOmUgQYjUrT9sV1r7vhXZtxShrd
x+uh9rR9lDaCmInYOjcyQE1OqFm+uhJvOQZOymtAPB6zRdOYBVtPm/gTUF08nXWDrh1OIqLBHwzZ
Mr2uLsnLQlxrJPRkmTvx/wxgqmm0M5uQyhtO8Rl78ibGv9KeoWwvSA0B0HmAHxXhXSOVYXSiJP8h
HWStfFFC7zLNndppUl2gMGJbs2IiEKsGbJT15ZCyJJrSfYMIgcu8v+BGs4E6eArF9TARRnGd/g24
pw+8TAqhG3k/ltTamK+Xn/OB210py/OJMPBgoN0pNX92T9q7AHLWpZcH++I161yBeqd9GyKwjtsc
MxwaQXqcFmFVZEnV256BqjbFItARU0ST3yY1qxlcxcD+n81VvGQda+WA4IcTq54I/HDs62wLCt/Y
hmFTZmpI+Z6J1zzRK+7Rp7bqkHO8gDOHLK+ocNpT8pXtfTYCyQR6OOfoitRiN9CCGkO1IHlrGwUu
zDm6n4jENeWm4624z92ycFeM0/ZfJPXfJVaWndEbgmIw1P3KwJheJFTvu1MiyktmA7Ai30cPz6dE
23oyLpcTi2FKiPrg6LC+Lq+hb2iivFsKMJog+aIbIQVVhuQeK/a92zDx2EFQhRsAY7GXbV8/oh8e
J/788pK+L2f1i2HLoAK45JM4sOQZuqp/IJbxg7OlFePFAAP4wOidM6jaW/q5NMKu34jLB/I6BG1T
fdL8zauzT3V+BZ/+wCSrmn07P16vxuvTQ6Qq2g7xivyWpEMWoWX8JwuFOy4jrx5kIGx0/8UOo7bm
KYoHiHVmjHujaBvglPkXPxdTKou8r5OFxrmifIs2hwGML3fb9Z6WHq6zf0cCg4tyXcCtu3grKnn2
gcK7ww/vbOEaVGSCO0p4vAvcCC9LgkItMB7LicyIYAX95HPc21uewxNl6C8m8CJ2NA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x269517D780BCA00"
last-modified: Thu, 12 Nov 2026 00:50:04 GMT
content-md5: TX1xuOQqZ00iLsTqNmV0UA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f71da61e-94b6-401e-8e97-6d5656f6f35d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:04 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-4ca6b46f-57c2-bf6c-028f-472765b31ebb/test-blob-41582305-28b4-ed01-829c-66d5383ec688?comp=blocklist&blocklisttype=all

### Request headers recorded for playback:

```
Accept: application/xml
Authorization: SharedKey AUTHORIZATION_3
x-ms-lease-id: 77749946-40dc-a359-d734-ee872bfb980c
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: c15dfb9f-abea-4330-870f-69dbfd084796
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:04 GMT
```
### Response body recorded for playback (412: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>LeaseNotPresentWithBlobOperation</Code>
  <Message>A lease ID was specified, but the lease for the blob has expired.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-4ca6b46f-57c2-bf6c-028f-472765b31ebb?restype=container

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
x-ms-request-id: ebcf9a65-54fd-4dbe-8462-04f680c2675b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:04 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

