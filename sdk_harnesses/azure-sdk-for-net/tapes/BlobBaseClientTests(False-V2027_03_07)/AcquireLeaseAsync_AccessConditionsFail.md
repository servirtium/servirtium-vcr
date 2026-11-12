## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b2d92af9-1b4b-0cb4-bd38-24f50d982bde?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).AcquireLeaseAsync_AccessConditionsFail
now: 2026-11-12T00:46:16.4104828+00:00

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
etag: "0x25112D4B0885780"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b8b5c2d5-adc1-499c-9952-126893a3aa40
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b2d92af9-1b4b-0cb4-bd38-24f50d982bde/test-blob-f262fc84-022c-3f74-5d46-3a0af81231ee

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
hSiM+Zaj9dHuct5lI0QcD83tuZDSidL3tZpUBOCqE6oGNXDlCzFI4AeRBLkkDhwZKis8CligG/tV
lUT8T/DwQ14zXu3UNwOcpNmJQYUZ0qZ9O9m1bglRZhl1j3btTJEWocBb8bAuRfMnn2V/F9p2PMKd
fhMWOtVV4fjTXqeNr1hIcp/FveH2Tvbmjs6j0k4+/lOzT819AGbqBg+3W+ZLmvANNqU7sX7gpi8d
MKwHsg6qlGBU2V+Ky3I42rfSP/MQm/TelpupA03U06meX8+64lQADMaG98CQgmsyAtbHDmY7DZS4
KRxzAZASfwW27Guifvdj0TItiqMzTRMvdgF3DcVCYlI7Ark4jQs1c3i62ZYAkIPeYzw0DoPwhNsI
Q4qOmnFAdIkZZ3w+K0Qn9xYreHR9L+V+mKmIDlTOSn3eL0mAptgHemUM5ykHoDj4DRZsxQtnixSk
EAHHt2Y1Sh3/X/v6plE9JP4OcEe8d/hxkAE9YoRxd6Q125XWP8L/150LB0A9/WbFL6AMWBvM6JkJ
Vidl9+iYjehXxMq7ZuQ8D5mqsG+3NJKaeDLjZB+JaPP8zemamt+1c3pY5TmcCci80EiBITcqUSGU
yn61tCjIzlvWv5n7oXW59T31X05Z/W5qJ5TWB0e80nvHBc9h/75RjxfdxkouwC7TyCz5NPLTO80P
So2U8scUGewdM5ulV/V+pM83fDcjO2ZmAj4bwp2J9MoBUbQxvJ1PyKxeEY2SLXA2e5AjnL+W6w8m
Lu+I+VZPlD/RpAZBTecy57OKxSrZ09TN5UcNZlgLa2WlC46tx89VD31NwYlq9S2o8LQLCyblTFoa
uxQPQS3nxjihm0JYhCDkNLatjBJLY/AZZHWj/18/wL4zkgu6Rs1PZftQyFnrT2yUJtZvN8BIz1cj
9d24RMbYYtqDJPIUKe7pXSYX+puWLhQJD9iIz4j+68OzllHwliE0d2V+aCp6f/zohdqZMNS8jcfI
rzTtUJJShTkvYJKc+cYE4oI1F8bpj4/cn0quZLru9wmKJ+fsRifTLOLxSh9pTIwTlE5Rh3YB3yCl
EbBIoyF+QWmJEtLfGJxbYurj+ERvclO+m89snG+TiUjHRjV3ionBcwm24Dm5M3yy9iWLHefbNp9c
ighREaT59oiJGNFm49dhIoU6uZEZBGdTuqVKB2xh6xCVGgCAcGFkveqxLxuqSxNNKvpioXwNQoah
/Vf/ru4cKCzA0cjX4LIj1fynaNRLqG+S/d1x/0qTh9h533IJZQ77lAfv6XlKdUlIPsuAZtqxVlXn
bbAQqyniLUnwXQFAGnDtq9TNW771R4iUKMF+EiH+x4gdIfhd6+jdDLwwWRdHCCNbkroF5PqW8g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26CA3C2FA35D500"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
content-md5: hquU08KGCg++MxBuhhk0XQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64770aeb-11d3-41fd-983a-f73367055a06
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b2d92af9-1b4b-0cb4-bd38-24f50d982bde/test-blob-f262fc84-022c-3f74-5d46-3a0af81231ee?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
If-Modified-Since: Fri, 13 Nov 2026 00:46:16 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 837c2825-6468-271a-f295-7823f87790c0
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
x-ms-request-id: 39529e6c-0ba6-4532-a731-351805038359
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:16 GMT
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

## Interaction 3: DELETE /devstoreaccount1/test-container-b2d92af9-1b4b-0cb4-bd38-24f50d982bde?restype=container

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
x-ms-request-id: 1bd17de1-32c5-4701-b241-8c537dbef1db
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-014fefeb-eec4-4c70-209d-227f66f8e38e?restype=container

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
etag: "0x23D18065A7FF340"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a38abdc5-bfb8-4d52-9af6-f6cf311427fc
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-014fefeb-eec4-4c70-209d-227f66f8e38e/test-blob-34d32f86-656e-a875-a208-6781cfe52be4

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
AvoZ9auULTa4MGLLQZrB+bLqnMmjW1GGeqZfvIbufTpxPn1r3u3j8gGcfD4CqWcHR23P5UhiQKep
k3oENHGwyrMoWQIdVRvFB6rHB98Sg9A/V3UZHpfxD/7Vwkty3r2Q7LGL2lBk6vFSCt2emjjIlg+q
xdz8l6sbNkkESJPQUijtNxsth6mA222DxhS5U3TFDSs7yBjglFUGcKQGX6Jdgbi1sWMdmg9mKepv
eNCWYeLVPjpnlIkPDKLFJxYEenvLJkRcBKEQp3Ic1Z4ucRuEbw/BMSFn9e0upaTAV3P4Ya9vpFGL
OlxAxJbIS7/q4ZuHQLcHQ0haYzBXLl/9UFD+JHPvv83J+TWygG2KnqktQ8QIORa78B5nFEAgMwv9
Q3NGyidM+yHOvUeCVcLbz8WGKuqb9BY5QjNUh6qMqcYptT35Q9SC4UeiOnzPOZtci0V6mQkgYk9d
DYfz93N2QRSBWJ+E4YvxBEmi+LmZaQmY+PxlEg+8CFPtnDZNjunULPhoTuD716q5iZXAfmmVw6N9
W/93ES8ExE9Ml0VVpHZfzszBMRsonSBRrIh5/IrpWNiSzzLpXBrJY4mQrkBkY+UfYK+d05GIVL7f
JWWmi8fFYz5tw9RDdnKx+M6Rl+7f7UijWpzbS4RGCnp0Cja1ItjCy0sB9qAQ2+k87NvD9rzQ/zgc
AjAq6Re6Jrhaz2w7/NX1z8yi3faok36znl+pghS9pAr+mB+nl+IzR9Dntgx9Ae8FzSbwLSFBdG+x
d0u3EKOknCphPGO2TTjpb5YmwNxxNZ1vo7TuzHfovSOv9h+XfDYsQhniG8SLT4DtB76LGrSTQEKt
R23uts+zeH9ABlcZUvJf+X3CjxnY5FM0AMW5XaJvHLXd6TTJPYxKLqNFS0ko07TLLCE20LAo1WMZ
ubUJ+hvc0OmiPGm+lbvxeGF2k5gKDCwR7TGBOUwFtBPQr4PWQDOHaHpfhpdLDJZlRFhPsUHKD62J
+AzqW5ednIdV7eY4Gzct7iseqoaVxuGaHPT0tQPSBZ/WTUgmnQziwukQ9h6wLCkgIsIWrGUm8zIr
Tz+iqeeDg+hGYc7vBlEeO+echNDC6u/L05NBu1k6r1kW+03NPxkCjHI2actbMRxx93B9im9haWVP
19VUQseODLJ02AsDUPzOmvhdi4EjcKJ3z8TpvCXqtJHofmhDrUmrqFwZ5lgQbaZ0r+92BN3jK2Yz
3XIDpU+MiiR5GtKTiuyuseMkCopJZmIddQ02c6+0BFICD9DXqAINjFs0l1PU4CQCyFP5vyDc6nYQ
5i9CVhZ0xBWAkXsb1wjgFn4uFM4OSZToNKtcukUxJiVZxsLTyzZEwNI9U0+p5vBKGaiirdaoAQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D1AA8EEE8DC5E0"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
content-md5: vpAfbErY87c5z3wlWWBz6A==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 64dd9c8a-fdc7-4d07-a17f-1a37a1a18925
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-014fefeb-eec4-4c70-209d-227f66f8e38e/test-blob-34d32f86-656e-a875-a208-6781cfe52be4?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
If-Unmodified-Since: Wed, 11 Nov 2026 00:46:16 GMT
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 22599a9c-186b-d00a-4f6b-55c111460d4b
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
x-ms-request-id: 4e8eccba-6d03-422f-b7b3-2367d967d680
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:16 GMT
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

## Interaction 7: DELETE /devstoreaccount1/test-container-014fefeb-eec4-4c70-209d-227f66f8e38e?restype=container

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
x-ms-request-id: 52407318-c682-49f5-bd95-7e33088b5bdb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-fb54e947-f5d1-3f45-4dba-11a19c8e784f?restype=container

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
etag: "0x24AEF2DB697D1A0"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 03570b26-a194-48a8-8b04-be3413328e79
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-fb54e947-f5d1-3f45-4dba-11a19c8e784f/test-blob-3825c4b1-1471-a8d9-c86c-04e45324df03

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
C11aw4GtMKdVGtSxBmg0wPIGEEwh1dozEKwyZPFh6ynaDZY+M7XNA5N+4lc/J6FgOEPxTROS4jWD
J7PVesy18y+q1vjS9Yw9OQy5o/KC9OgK0iytb54WRytguwwB94nHyO8olVGojUK3tBMG2T9DADPK
y6igCIOQlI7NcjmAO0KD8doDWl6XYkTp9ruKD27rHLvZNyvgJ79rlwDC2hsJNnnRg+hkP6XUM2lj
thHIBoUg4lV9pgQWoskamMNe1Icp379CuYuFht0WBQPCfXCuopF7ovjFi5B0uuAeSqfhdV7hOddS
hkz5mlt4Z6AAUyVZbPYy4zKOY1Quzf6qZzw2NI+l4EOZWxtEgQecTSPvdGa7xd2wrpIsU9aCI7lN
TjMfQjIRWnLhvxDa7mEr8hYwPliX76JehYb8eY1tFjhi9jLTfAvx3hn02QXM1sAxAWDAUuRgtV+R
wL2sFOHldKjYd/cuV3UKP2A+oxWckq7Fy3ctrcRTAkHTQbxORco3DmRc9F7JAqnqtROEIRFJ9S4O
5khpuMfkhHW1WxW5vPmVBpSwQJ5P/MnOQvexz+AvikyNP1+CzVadeG/pE6eTMfgZ7xt8mLSQv+l+
m3XPMrSVhtHIK3yaEjg9E8guZekiOhD/l+DFsvGY/YB1AzLhzkW6VI3VywV8ftziPoXsYVn/XGFl
0JrU0NPfMC38JQ4GXESCcxFcTG4KghkD4nRsq5wndafRfP6q5YS59prXf1nN2+FAau1HoxDyWk2B
0e1ec4WR1K9nNeBG2I2NolbUMwO/NQaSLEGu39KW3iGwKBSWW4IVRquqZqYB+ZFguQC5HidKwpzm
zEdE4/Tc0Fa+lq959kfTvuxXFM9gkTKvTibR3cD6ZmZ4sI470WO2zZVPQmPi5sO55V868q3MhjsU
lJTOCvOVxDBIAEa5mO2JoUY6EE/PzGdiGPdhwHO5qylTJjzO58OhuX4zmeZ8/01ysFBmknXrRcct
a/H8NAO8j1UcZXGwu7qDmFbRnDOB5hip7g8iUhm0Z+F0oXvRpYV6dgmQX5rcwvWW4vkfGqmUq4XY
UkbzmT08aP6POxo+svPRViUp8IZ+zCwajG8flEw44PX2+FI+h93MVPebTYbbWDAGTcSDarv/WoUa
2A3NHNOyVlskSLmgks9IXZyP43+lPjQ/GUaItXU6957MJK7Q/zcj6fYrtg92Zbv0Ow0fcHcGdJnZ
jgONKaHl6lEb024geF5ka/mIeogkyLOLk3loGocnxq8U93E0lr9URcu+WpFM1MKuugR9ffoRtMVQ
AZYnfc/K9A2+DIHtL9U5NDS8ZW4iPr+2uV+CqUi1AkKr5JQpLcj89GWDjcdBwYovQ0nFVU9WLg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27854EB2F99C960"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
content-md5: r8cVPMxsZ4g9JBE3f5IdtA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d803805e-7708-4a25-8b64-9e9d2ed47fc0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-fb54e947-f5d1-3f45-4dba-11a19c8e784f/test-blob-3825c4b1-1471-a8d9-c86c-04e45324df03?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
If-Match: "garbage"
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: c370d6c2-476f-c44b-0909-3e414b401006
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
x-ms-request-id: 51718d7b-3525-40ed-90e5-499791d091d0
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:16 GMT
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

## Interaction 11: DELETE /devstoreaccount1/test-container-fb54e947-f5d1-3f45-4dba-11a19c8e784f?restype=container

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
x-ms-request-id: 3249e563-c4a5-436d-9f4a-2eaa6dd34f13
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-0870c06b-b19e-75f7-f8d5-5366ffefadf3?restype=container

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
etag: "0x1FC55C94E021D30"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bf3a1d09-7cdf-4dc3-99c7-24791f785311
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-0870c06b-b19e-75f7-f8d5-5366ffefadf3/test-blob-52d1b554-05bc-ad8c-1abf-84bd037f3fee

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
M0JZld5OjxHe+8ua8+TFGlxL7JVuvUpmM8Pt3y06cniVZTK8lRgVBibAc8A58bk1+Wlgt5Opf3X4
82EaYbDkpIlTBI6xCIRENuZvrkqJLUIKt+XD2brk7OW9xKK2+qV13M835uwqg/DkHICtOdErbsUf
D6nLIMrPbhep9ETijTtB+tF6UkZV4DP03r05N7MUklXcl+r7qbsEaHjVgI+sAo9Faz7/sBx/yi91
10INlTZklWLuBvVRRVEWdunOf1+kR9wu9Mt1FOE4Xc27hdJ599JBcestvvuZ8ybs6TozsErQ0Y9l
36Bq7oCAtakolb9+nH4WjA50d4nglACliCunBayD67RDFBgx1oJqrAhScV5mbky7HCM7W1oFhEqg
xWVV2a/8pKoLO4hl5LaMCcqAjiOiPhre6+mISI9ZPY/OkREcFdJZVcyzWjLDVjdtrlKPhPYn/YZL
du7GdFwbsv75l1Okb/T3JzhW7uPnG5WyGpk9ybiZppOK0Z7kkuBwmKg0yr7kyD9dmF290A6jY1tZ
FFnD3uhFX/C/Gp5WE5RY5lY6s1DWzVJa3zFb3NaE5m5Di36HrLq/72rNJK6gB4TIZeq4aK8LgkYH
af636oMaOjMwE4gW0Dmce8TlCamjudesknbrzH6+Nwg4f0O7CATns+l6cPT8spSwHO3rJXmcY7An
ClcMLm61cdt/3VH24HK//la/KUjisODiO7CQ0hKPmxuTlP6t2oR7xP8ZfNRDujt7LCcj3TlnRFl2
KvO+JJ/I8EI1Ykx0ESTRRGRJyTMLn4B1FabrbL7hK0+kNq+RvaBgUIySDVjuBhoCUZjVHnoma4ty
SA743YODUzb90Np0QIfE6XimeZEohw+L6BomDA3UfcskHnSRZ3IIDroh8TY/jREQEDUBf/L5ScH/
bPVpXUYpKFIPUCETMoEGnWrXB5bYTFoIFfzX0/7ZKtSykvp8n7Fz98jjMD3w/d2z++GHIkIrJiCb
YEhKUVVUNSVMYKCGif64Yw/N9BscGBgeJNcdUQiSh2va4T9pKaVzj/sXpJw9LHLjz74yXjEEfkgw
LC19NuMdutk1rKe+TzppWWUgBXN74fdlOYJJXyg51WP3Ofx49lgX+urCCIDKJH+EyQTM5HnUtEs2
GPxh1Fqw+9ZExxY98WMMCQqJuNl3mxUCxJYjbfHpI4SxQd5btSaPEQyphV1pRtehwNpuSvxyv33n
Xg/EjY3lWqSRjLCFsFPk+qbMzRW4mX6+gawWe9iIP4JhdFcXyoR+xCq517onHBCHiVBVpfFnLsSQ
BQvhzt/LCUwtIzv7zS8hTQjq/8LEl2Wcj/GIM5mQ+UWThsV5nfZL7c5t+fjUi7whM1jpfS8CzA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D5A3515AD7EE80"
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
content-md5: 3Y4xQBSHVXh/0okUysEzpw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 04bfa073-63aa-4199-bc97-e642347c1d72
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-0870c06b-b19e-75f7-f8d5-5366ffefadf3/test-blob-52d1b554-05bc-ad8c-1abf-84bd037f3fee

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
last-modified: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:16 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x1D5A3515AD7EE80"
content-md5: 3Y4xQBSHVXh/0okUysEzpw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4464b646-b786-4d62-af57-6b8136fb557f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:46:16 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-0870c06b-b19e-75f7-f8d5-5366ffefadf3/test-blob-52d1b554-05bc-ad8c-1abf-84bd037f3fee?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
If-None-Match: "0x1D5A3515AD7EE80"
x-ms-lease-action: acquire
x-ms-lease-duration: 15
x-ms-proposed-lease-id: 3f44a56e-42ee-b2d6-9d2a-f568476aa8af
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
x-ms-request-id: 6167e60b-d9a5-4c42-bc9a-d7ffb62563b6
content-type: application/xml
Date: Thu, 12 Nov 2026 00:46:16 GMT
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

## Interaction 16: DELETE /devstoreaccount1/test-container-0870c06b-b19e-75f7-f8d5-5366ffefadf3?restype=container

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
x-ms-request-id: 390990c0-53ad-47bb-b58b-694d518eeeeb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:16 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

