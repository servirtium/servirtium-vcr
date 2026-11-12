## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-221d2e1f-d0aa-91df-1678-2794254aa73d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_AccessConditionsFail_Streaming
now: 2026-11-12T00:47:52.1411542+00:00

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
etag: "0x1FAD7E57D89DE80"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 321be3e3-d42c-480e-95ec-a2964c708d6b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-221d2e1f-d0aa-91df-1678-2794254aa73d/test-blob-b6ebedbb-d689-2acf-2db6-7b751090b9a7

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
9F+InN7h9BWERI8giifDs1sut7goSgToIS/kFQb6VBAcxfgJNhyIPTkInmVBvgbutXM595PuFala
n3uv/d8PifB+A8QvuXw+pXl/IKyfp2Ip9mCSwV19LbBPr5ah2UBZ+BR1w7pBvvv3+lEZb/X8u/gY
hgZ/fMiSANYU4AnmnMw4JSeYKeOn5zdkm8cMY766UvSdiVM52nxM4sLkLd7xEF2E4EnOZJEVcJ7P
G+EBhp0XWY0VSBN5/0urTEcgw7pYcopph4J07O1jiBi0ar6aSlwlzNNQ3MdKC+H+IhhJ9K3kdqlW
l/8ao2ygsr/6xZWMEAHr+/bmB5XCHnuhdcnVGZRqz/MVRLNcCylmsCoHT0ZMcRIWXvm3/W4Tk3mD
eS2jypgrj/Whd8xOju/NgFdru841VAS3v7qbs9GEAbA52ZH7w+aR3L9QqvpGyNAJ6X0XqNiqTSQp
6wvekNwjHHUbFLRe0bxx2d4O5KkJcfbpkcpUbVnYjoxt0tfas0vjLY6EKrMcqxfApc75m2h7H3oU
9P4Rz68bQoUo8P/lliaTK7cbhEZDzeayk8eL3vMj8rJdxr5M0l7faegt9LoY2w+oZnCxX5o00ScY
XzznkGSSBP5NiNBnRllZPBteFdksmre443iCcZIXKPWXNHIi99mEmu+7ylM+QB8XWCN/1rtN68SE
Lq3rEJJsNV/bzxLmN0RC2XvpcM9jeqJYaxlvmFI5SUitnckrmIpcT5T0YnANMSHfPPw/ZHv0ILMK
kqV5/Z0NoYXJOJl6FkHwjCE7bxcxSzn4j1tV+uXNuXwVIQXl41L258HrQ/mHZCa7T9dZubGc2Edr
gG1Ct6eg/H8cZfQ7CqnPRIdWRgdAcCs0mqoOc//LeUi+emLkszAZSkd6a/8xf0UtinUpRZI/KhBB
Dhz9koh/UeusfZBH6pBXPfvAxgUrAxtl4OmKoTS2fk9RoqUTHLi/+hoThQG05p/k0QiWf2QLFgoA
l7Ge9a+39f9A9UfqRCFDAczrGH4ZsPlJpdArIP7qRoybEoQGIARqXI8CdPFY+Y3mUn6YIP6M5+e4
VE/fi9QAVa66TzGdPODHgLvuFzwH8atCRc2AUiaODiucTsu0i9C7AR5DnapbSRad0Z9Cns+rsGOj
nEYHgAOHK0EGAO4UEvXrMhUdxFMB5/u34oGGTG9c8J1oEO+KtIEbu3FoVUgnib6qV2u5jusQorVL
T52CAN/Rqg9RrAEFYX6UAgnhmJGykFnC3PUEomKyWG45PmTjmLqSl6s51ty9pPbsJYviLgkjmL9E
wCTqzQetnlSSzCIasGlPTwHlebp8BDf+F33WzyllFaaln9iVp8mkjDeIK9jU0nQik98HPh8Fxw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E7BFF183B2A030"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
content-md5: i4XN1QYy1zT0z88daq7NDQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d0cb3e0-efa1-4fad-ad2a-d6516736babc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-221d2e1f-d0aa-91df-1678-2794254aa73d/test-blob-b6ebedbb-d689-2acf-2db6-7b751090b9a7

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:47:52 GMT
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
x-ms-request-id: 4df505f0-ee23-4f41-a826-74f1d786bea2
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:52 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 3: DELETE /devstoreaccount1/test-container-221d2e1f-d0aa-91df-1678-2794254aa73d?restype=container

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
x-ms-request-id: 25864e85-2820-4e86-a465-cada82153e79
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-82ed4138-d9f4-2a5e-4508-b43c4a5dd786?restype=container

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
etag: "0x20093192F6C5480"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0ef7279-224e-4d0d-b097-0b931cb148c6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-82ed4138-d9f4-2a5e-4508-b43c4a5dd786/test-blob-6c79b4d6-9c91-def2-2379-2e24779ba470

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
oNgdqLwTGrVoXf0iWF1kkdk4z/wygtLhjsFwgSGS4M/e9NQ3cxHrJCc3GpbbPNLnpCNjEo7bVB0G
Oxr6opmU1n0uRGOILB3ITKvV+mg7BlHuiNz9Ls1BAqC2MTj38IGOokQYrfhuX3cFmsXjBlq1yjXI
DBm8lqev7UHD0fvl0VwpRlcjI1lZfylk+JMIXfxFAWYCLuRo0QycaL+3q418H8loub8Ckafcb4zw
V54Tp49EfdCU46J4wHVLh7qZotSb6NjKn6Q9Q2+/Jr9XeHptiMEvci295zwn8PlKtgrsQsy3VG/F
SQfrBzlh1bziIEj73v75aS+m3gCbo6+r841k0+PyoCMKpz+5RGr0XBJ/RM+wTtgL89mcEXZuKaZY
QBSs/ALZ74Al8Da/PyXFsoHuHF7f+qS0WN8KVo+tnH2YYQRVR18QplRPi16iTLS01170fw1HeUVw
+KMiz5nxd1O4Jt4hb2si3XYKj29FEgwrVn4wuBxwUee+5U+87ta6XhML6SbVk2fz0qKXPOnWKuWX
93kawL82SNT2YoobZe+fUDFbOijlVcMXPeZ62BT+57ppJfZdn51U1KFR3jDd12yy+Oy3evC8saG1
A4PZu2+/93vPskD4QbCTB2WHk3eSOWV5yOAoR2zJrHNVqJsaehgxkue0DiUrubY7I3OLNB0qIsod
X/OPlrAOBQXNo5kVeY1MVgGP3itATQ4p7SP5PndVK4XQ/Bolovs3pggfXhYdJqrlP94cmkSf3RLl
ZamMFMeNd3cTRHxyJrQFWDciIO/4C8Z5E/+ZOJBAMR8IQDxRq5JBkeaeCuEucxgqFkINfb0j7Vnj
EwDH9D7m0xNdaeZ3tK2l4I4IWQHkSqDnbyJOMrRi5VPjbpiReZ2ntzbO0QkxsmKUaJwuG5NX/shg
4IUcl6Be+oSTlEUVE2bxYKHLFnmWtry/ucoYM8q/i3DPMJkXiyCWcNaFnR4df1Q1PLryjOdPyirJ
Xd7VRse60wjVRePN2tWBNKaiERidojp24vYPzf6IgGZvTi1CwCkPysoVRzpwaGLlcVhBrLkRK7uj
XmPQqwYKTMR8XYynP3N8k0ZNh1oABXqUKVymRtStXSJynmLFPh/DC/t19ArWPjHkxRhyw6Ngo1jo
PIGqYwbwz/9pNaARtlUminxfixFwvesqwoG7Opp+EfoJ3QKdGaj1hCULbAmQ0g7DSzknARhHeH6W
gKGENJRl6yOmCNlTiXDUaQbsZVHimfBy+O5gVg/iwmSDB5kHcE+QpYDl6so1cMLIU5gRWhMttOaw
EjylBJQTw0V0z4HXzfm3W7/Q/K4lPIcslwN30WdRVVOyVl0S66Hs0SeEwaBA8YaeWv5UXbc4iw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x262EC8B6AB536C0"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
content-md5: rD1iOS2IFgqAoyQS4AhFrQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b0bfa0e4-ce1b-4b1d-ace8-6b0a3ee8ccc3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-82ed4138-d9f4-2a5e-4508-b43c4a5dd786/test-blob-6c79b4d6-9c91-def2-2379-2e24779ba470

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:52 GMT
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
x-ms-request-id: a3a18d6c-85ba-4b54-9fd6-f98fec44525b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:52 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-82ed4138-d9f4-2a5e-4508-b43c4a5dd786?restype=container

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
x-ms-request-id: 017584c5-59c1-439e-9718-30cd878b57a0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-872be41d-7ba1-ebe6-a67d-d87668fdf89b?restype=container

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
etag: "0x23C0ABF15B1DEA0"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cbb1449b-bf97-4818-ab40-4bf17c9033a6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-872be41d-7ba1-ebe6-a67d-d87668fdf89b/test-blob-5c9b3987-1d40-0bab-4715-d10f1213d971

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
esqGXXE0WjU1pp4mEswPArWONnmMselbzY7GFMN7dSaBkqqsFUb+6Yn1UfvdwNjabdXA2sZ+D8nh
K5DjbUVyuTB3pYAhY+1vj0zvll/ufg2166btuptfAoLgyum2GntDg5jKZRpYuAroUUp6j3hq8q2C
LoKfhP6VGKL9QJgEuHTQqxPGIxjzXDKbBWlQ5XMKdtg8NOz5pP6ZNUx4W3hy5JjVqeNlo86Uj9JP
A3+VRTMv88q/x4SI1gcULe7MegG6KCDQejuPpNMJp6UaqaB/BO8ZSGitsxwTTNLbUHbgyBTQldpe
xMr4n073tiDfbi1mlSn/sjKYDHUEvC1otFNcKd+QSRTGID8kIakatvz8NN6ldLtN4RXhOIhkWgid
j+v6moxATiUYoHTq2pGJflZ5CIhPwj+YD0jJrxGLYcY2h5G9Hxtvu+W4jNRHYgaDWLkx61GATcys
YopEd58UjD+ts1L/y186CUyilzZrUKxBRVZXWnV0tjnFEb2RK0RGo/+Uma+zhI1a9+IF3baWQRHd
AzFJvDLJOfwZOrmiqd4IW/M21rf9jcHI/WKTb9iCLtCrsycT/ebMymCymknTt04E/IHCX2pa4HVv
gL/QNskjlgzp9vW29V4NaQtWSvN49UUUjnJWv85lUdOxo3wn/JOWjgM86cFYTQcjtfZeA5WC9ot5
u6dWzdY9hKUiBFHi5Wx3wLvvOwuEvEFrMwrYB009L6zxrUDsQMEs/2UbNUm1QM+J5kPZkrt/9P9m
6pnMZXxX5dWl8Tcsi3/6wjylaYb3tvI6TiAKY5zxcblBhVUoYJnoxFB0EE+XXVrD389/2Yt5bjSm
khZcTYE4tH9+6gYq0WKivaQ1g6ajovHFRoPMcZctxxchgc2DjHfOO1vPGXJUmQ5t3BzmROqNA/Ak
lgb+bELoUCPuCU+VHjAtZkhK04h/ca11X5V6R4Msk37dXvVw0M8Z58hPZY++177suN2iQzBnpSVY
iQysbQmfwnXRuL86vJZ5MOvAMAsdtofWjo6lik9OdrnQGEfCbHm+r6Ma7B/+sftHKRJEpnUaOtKE
1t57+TgmgkIGaqRPtsNxAoBoA8lo2N2SXmA9Cs9Ett51PZaaQrVq82rd90ZX93JO0qT0sjYIHP0B
6ZvX6HhywrTG2ngt1r/L/Q9fiuCWOmbt7jcrTwOnbCGZmVkakgvxajWSkR36IfvkKLQmqJIca640
6fpBR3KwHm1Xkz1msWoEbh+rBKlJ88w7RidPgMSOfC6q5agQsCPC4XKwo46+fnZKIjlycWYF6/Yu
BQFLYZ6oyBcPu8vB9L786CI2mE8+fciwBF6KHAvHpfqy4qsid4DUB9t3rsKriC17dohEzlKm8A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20AAC3F04B39700"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
content-md5: gHIJvtHDvWRgknmmQkRgAA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3c7bcbd4-2f01-43f2-b20a-544c2128738c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-872be41d-7ba1-ebe6-a67d-d87668fdf89b/test-blob-5c9b3987-1d40-0bab-4715-d10f1213d971

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
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
x-ms-request-id: 26e20bd9-2f0d-48d4-9efd-7d4d0b0bf8e9
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:52 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-872be41d-7ba1-ebe6-a67d-d87668fdf89b?restype=container

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
x-ms-request-id: e636cd24-415c-46b9-b0f3-fa54e04a0f28
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-749062a1-cec7-0505-7c30-0fa58382d7a7?restype=container

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
etag: "0x1DE8CE9B8603DB0"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dfbd637e-3e46-4004-85e9-cb7bebc0aec5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-749062a1-cec7-0505-7c30-0fa58382d7a7/test-blob-95583df3-8c62-b3a2-f15a-368d14eea471

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
C/Ej6dwjlOova2es2XkbaJwWomvCMSm4M5XgDw4GiMU+KQMg7/CVfs6mRVtnWCsCFKcJbN9s5drI
a7VGQoTbKOOibrB2+3irgSScG+vNUNtq3fpm/Rvl0kQpV4Q7TztKyhx4xep6jBkuXeu7z8nu+xra
22WJdCvHvZxsTaP0cDLpUlDOVYvx71HhOJ8wKQJ6OlxpYXPWwFXxsAhODj91Ouy50n14H6aP6esT
qDyLl5OZ8hJHiw++EpH73aSCouERa/2zdleFARu12XiIwhgYZRh0tBwtLq/c+r/rfUEBDUYJAjw/
2CA8FPD3kbGXNlB54niMDe7F5D1O1nyXmoPZtMwxfsDb2Yz3OKArNZz9RcRvcZvJdf9XRB3/8QGk
pHltHd3lZbiPngjrlNVNmq6gUJG3KCjoED/M2Tmi2+iLU5MmvRe/GN8M39KS3eAqCqpvX6Bw7XxR
hQ2dGIt+7MMgYEFBJ9yW4Texq0hWVTJeos+PM3xHGmUW1TgKIQBUjfIPcnyf6OLO2H1ov0I0+y/b
P3a777lH2EbbK1KjjL83XR1VR+K2v7ntwFv+3lsj4doJLuKJmJ45x5k2w72QK0u9MWEk37NMJYC8
zi5dSPnqt0l3ml3drcR+G39Jf/v8XJUPQK35/gImvAlhzclv3H6gSwtzGZDu34OdpsM0A6WEwHKZ
TghM8LlGUd1TfOD7Dj8AqTPviEMEIWApXFg/8bhk3A1X1o12U1pSLcezmmOjopeDNFpxlTcvlC2n
IpRhB18l75/TozixiVXYnVt7UYb9hrrAu71d8kfVJ0FgzzDG8SVojarE0P5f0qoFmfjbs0KmqZzZ
oEyix/1X/Xv2UbkkEqs2E8PcOLa8YekSWFlP+XT/uiWU7VHZxcatbNKCaIHx4IZMpaB/ynDmHT5j
j26kBwMH95aTjyVaXE39L8zjOvlnIXfSA1PUgO+1rs8TdjZYCGTPenHqXVFh8klSgZukAuNE+272
0QSvM3en3uFVR+YXpSZnE7+IfcQmcBAKgf5UEKvsznrIYTdgH0f5Q35vDKpiOtx1Pe4kvH2pz2H0
pLF5Us01aHlrT0PuB/R3jjpFt2NmqEYh39K9yBH9HpHVbHqVgPCwOqMx9uuYhjb6rC5CZBj9jfxr
V3P7eKBnbjGyGZp54g1KlHy/NLJbiVicwhziurl42N5+Kil9tcIDyYi65m2bgMog+NCcPVlKEM4a
XrWEhbN3OUC8+7fkzd65vGopoKLrAEFRwsLp3JqENBpbYlcMf0TUQ60s3oUTPCrx4oHuIG8rLl1z
MsLwjVymOMeciWqHrTwmVV31viK7PoWX9/oZlROqLzP5mU2B5LVQhqa+drLAajVFyMsSNnA7uA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x228B324D85DE500"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
content-md5: KrYRLs4f1StKQJQVO019rA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9e85af3-0915-4963-9c95-e4fcef893838
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-749062a1-cec7-0505-7c30-0fa58382d7a7/test-blob-95583df3-8c62-b3a2-f15a-368d14eea471

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
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x228B324D85DE500"
content-md5: KrYRLs4f1StKQJQVO019rA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e8b81e9c-4f8e-4d8a-afe0-af81548a620a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:52 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-749062a1-cec7-0505-7c30-0fa58382d7a7/test-blob-95583df3-8c62-b3a2-f15a-368d14eea471

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x228B324D85DE500"
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
x-ms-request-id: 6d1051d3-8ac1-4379-8615-7100706991b5
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:52 GMT
```
### Response body recorded for playback (304: application/xml):

```
```

## Interaction 16: DELETE /devstoreaccount1/test-container-749062a1-cec7-0505-7c30-0fa58382d7a7?restype=container

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
x-ms-request-id: 81170433-d223-4fd4-ae0c-47cf998da69b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-7c38a4a7-c8fc-d7d2-8dc4-d3cc4898f8c3?restype=container

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
etag: "0x1DC583A58BA5800"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 02ac8262-3ab3-4cd0-933c-a05d3fe715c1
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-7c38a4a7-c8fc-d7d2-8dc4-d3cc4898f8c3/test-blob-5481ef0f-6222-2d76-1273-9a39881ede23

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
vuBZRIsf7vkDC4RYidwhViRaapE3v7sraoEInbnVallhc88zlGDliLY+ePFDeU6xo32o7i1mi/8l
LtoKF1BALaAr9xUM7sHDdOLb+EbJ5/AyVvo7LXwr+ufQDWaF23Fm/ktRGII4pLW85HlKi5O4XEfq
18BWBQAj//0uPOBbPphxdfr6eM5t+rJEf0gC4W9UF7EfmwSxD/lLLRmFCWfUYabh2RaYveN4fNwN
EYW4IR6O2iQvO6KUwGUBr0u16PBKcB6hIQdYu1nNph8no/5zkgz79i9CpSUETBmwlw2Yw5PswqBn
Fv8WNR/LYZWCbRxmjRw/ufHACMv4ndTuqCNLNOOMOuFdC3wM5MEQd0OPgd/8SgnwWQmhK7rVb3kr
KIz7fyyy9jI7CIKgMtQwsJCIaRv18l4ZWtvZ6w8miJwC4bw0FfgW3YqtwEGHUCY1cXspTQVdNjYu
4SRR2QsjFYDmnlEX+5qXcYuQRzEdkgq0pHmT/DqWpKuGBjPUxAR/iavAobHUHXbgktt6zO4EEU4Z
nDSRjxhGT/mmkfRnw6yHEb2GXPFZ4IcDsmpeHNe8gvTluyjP7fqSelG3LoyBec4u8rswfrRdv7yt
jtyt5zMh6Q8AgQiEuCPD8+KfobL6gjmcMCocjANAh/tsIV8d5ZMelUR9gffGqjmXbIvSvR4Kswyj
EbYJBV0LwPoNGJfDpg1PgQttfQBB1oXwhB93bcrcYW5TedPcFZDmccH9uJGi08Z9gzwSnDULYTsw
GIA9k1IwMLYpcCw6cmt7hgw/RB30TbBZ+uqNysU4SBiXq/wPqd1uzYjbeWOZQhDQlhUpyxwePMvP
45lnomXx8CcUo8Zva90u0HeVGNRMv7favDOvD3z7eW4xP8VDByoi6ok8hZ9JYSs4+vqliST2gyPi
jeYyQeCqGClYPiwX68lNci5LEDoXkFsIdxWBVu9KOryhYHlE8KmokWx18SP/IA8xWBb1q3Lpy/2L
KcnKKMI6DQNvdYpQCIKEon7NoZ43CVYGUP3ZVI9KuJV7uMbf3miqO+Qfj6uE4U+TcAjzGypeUx9y
xNjFYLh0Jb311FC8pcQWI2W6GHmrgW+uRuOGVpxqHWWmbBmQ5dsrq2rujwz/18tD3fjFpDqlx0Jo
FhrU7c4girfqFTiqhT6Jjm0PvfFirm4YQ3ikpXgqAKXXJ87BVr2bzQVVFcGTmFi5OxXNlgpRBWir
vKpWfOQ+vxWT011wyDevdPDsDZmthaog6mpjXWqbhSFlFZoTRVEhFlWs/8T6SXLdHSIaZfjO/TcA
NZF52mGq9007CrKdnC6eyvZDAYXlJqH4hj9IgSAplxhjEw+/pzzzAQd2vj6/QIHze5oBivyxGg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2314CC349BCF0A0"
last-modified: Thu, 12 Nov 2026 00:47:52 GMT
content-md5: oQMUa5dbRA3y0DiiyLuIyw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e7bd50ac-ddf5-47e4-a248-73b070d03fac
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-7c38a4a7-c8fc-d7d2-8dc4-d3cc4898f8c3/test-blob-5481ef0f-6222-2d76-1273-9a39881ede23

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_20
x-ms-lease-id: fac000b9-2d8d-7a8f-5bc4-03ec68beb967
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
x-ms-request-id: f4d71e0a-f1fb-4258-a986-f8f0b0424622
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:52 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-7c38a4a7-c8fc-d7d2-8dc4-d3cc4898f8c3?restype=container

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
x-ms-request-id: 00f682da-4558-4008-874d-0ae8c6d849d9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

