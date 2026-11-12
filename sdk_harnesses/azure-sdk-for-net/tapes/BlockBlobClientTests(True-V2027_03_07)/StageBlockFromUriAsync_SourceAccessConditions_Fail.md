## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-f82f60ac-8db8-1551-6241-d2d8c5966a62?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlockBlobClientTests(True,V2027_03_07).StageBlockFromUriAsync_SourceAccessConditions_Fail
now: 2026-11-12T00:50:09.0613875+00:00

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
etag: "0x26D1C8D937C1B40"
last-modified: Thu, 12 Nov 2026 00:50:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: abbdeaa1-6eb0-435d-9898-753b3aa30ebe
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-f82f60ac-8db8-1551-6241-d2d8c5966a62/test-blob-9b867997-b217-5860-8a7a-a5522702e9e2

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
qh4/IamNsUxApTkxpvLg1ylKxSRTlOdul8o2PEf1tnW30X06CIj5Hq/itxJUH29vYfquetFGDhU2
0YneV3QFS+7DedV0ps6hUKZ0cd3VGXhbxttMRjyjccJoAzf/G8c73GskkKWZ+rosDSkr0Z04YbcR
gpGYuQWxIAcSDKKXoTXeOZRxsIjSwcsgIDgSeKAkMKF/7pg2oiNlcnCeh+4YlGv0TJcIxrAuPsHF
d5jMn6dn7twAF7OcqJZwDD4YNDrdCIvNHisIG2rxUa/XcCqKmdPJNpkSF3y3WKMBl7lyFgqG528M
/4B8XtJxD8YExDdr5XNrT/2hy/AOFcaHB4OwfzqkUIm7fZlSTNjGoAi2s5NslbFGBscN5Rx//uq6
9FdOwZCMX3SusGfZGAIl2irnWGEyG3LRaXhzl2tsPH+vl1iBeN54KlQfveVJbe3F6Arxl6WIh9jk
fFgXGMcIQXToKoGppGJMby4NE16Nh/uKrq9he6TaJw+AnPyGYBGMFnxwYUNsG0SopSh2enR6V/Rc
jGoYp8bPDQJxKAdmxQ4dgfziHCa4HpJruNZ8ZKybBkQHKtOmdG+2oVRA+/M8Qd8ZWfl3lzvOo27Y
rO7wU6lW1iHDXps6dwyNLHvRdyOeL3f2YguyI24IOYZlzceBxk6r6iXReONE3+Ht6mvA/CtLOn13
+fCeo7KzuiUU1alEC2YtJo3+zbaTsYMpxTkCSDxaGZNKCsxdDEZyHr6+MAo4qN4Fk9aeTWzG40ht
dd14sHHoubsW+gGZzxlGi6/41YB48B1a/bVmvMwmhCaD8Jdp+m1M1XZOIq7da8O9V8K9zg3H9ITA
HrO8gv3v73XaFt+B3ZFBrP8KKc5vfZHxqGQJabYYu/sTqNu6j1N4XzI4AlXkO3kxfCENvcq1UaEh
ytmY5Ya/wVvjbjS1hhyskcqbNno8DW3r2OyUC/4wXVc6mMV533mseEH5AM1EfPUFYSsAGhom5bxs
rQ2ZK7ZdshDdeu1WMrFQ7r05Qgyfplz3jqnSMEM8E7MIDTJsE0yKnE69ZwEHri55rytc7aOwzAex
oZwMioHNoGY6TiV/5NtwrqW+4j5a7+B7WYEY3yUPWEAqunKvfhLM8MabzWAJ+cpQ6z/+8erIVrK8
kTAAtMBAK/bkVSlowDCS8vF3vyJ/cl+3x/TmEWZVYWS/8+zhzDsGWqJqJKSg5yoPa//4UZePPR/R
Se3MWhmPjvPFqM1DsSW2cWSAFU27FuDJ1qZmXBDMMLXNEIJOOf+I2pWw2z5cy7rZQt8zDyfRFTMM
A4NzKDHj+XgYdaCiaDhl9zq3CjuibArsjBoxmSCO+/pPQTV7FbJkzeHFRFUZNtmnzRfsGgv3ag==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2282EF5AAFD0CA0"
last-modified: Thu, 12 Nov 2026 00:50:09 GMT
content-md5: p1knvmELWLPTGx+7dSOUaA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 049af6eb-67e7-44b3-889d-2cc9fb005c13
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-f82f60ac-8db8-1551-6241-d2d8c5966a62/test-blob-593c5388-27dc-d2b4-5540-89cb08a1e1ef?comp=block&blockid=dGVzdC1ibG9jay0wMjllZDY1OC0xNjhlLTFiNGMtODE2ZC1iYWRiNzNlNGIyYTQ%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-f82f60ac-8db8-1551-6241-d2d8c5966a62/test-blob-9b867997-b217-5860-8a7a-a5522702e9e2
x-ms-return-client-request-id: true
x-ms-source-if-modified-since: Fri, 13 Nov 2026 00:50:09 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: CannotVerifyCopySource
x-ms-request-id: b91b19e1-e569-4f49-867b-89683cd69ce1
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:09 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>CannotVerifyCopySource</Code>
  <Message>Could not verify the copy source within the specified time.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-f82f60ac-8db8-1551-6241-d2d8c5966a62?restype=container

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
x-ms-request-id: 35c1e758-6699-4ec2-86a0-253049ebc925
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-c66435e4-9ece-708e-c4b4-45d628954fe9?restype=container

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
etag: "0x253C3920B7C5CC0"
last-modified: Thu, 12 Nov 2026 00:50:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d3c590ee-3640-41af-92fc-dcd34b95c5f9
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-c66435e4-9ece-708e-c4b4-45d628954fe9/test-blob-35a2b554-9344-5b2a-58e8-ac51735bd088

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
mLb6UGTmU3IGIdhvbNlfcY7l5tI8GiG5SC4+2tB28+sd0UO96WI//eLxwKzGHwPrVNNIQq58rH2V
QQc2qHiijy3sUZuVoogrpejwS1p08ykrU4X8LrE9oSXGJ6daCVVpTzB+2c1nVbJKHJzFjGEiIE3e
C1XzpWF8rq91z3rh0ZyThvsq9Rlbw/3TsREUdxTEowdae/4AdqrOAioe8YY4aUoAMgVl+Co0g0hX
H/NPaDebsStyh1Wekw9RW/PuPdF2m0fHFEUPXqvcJfi2qFa2f5nzg0BbxeL1Yp/1FJw3RUV24ISr
iFTyi1J/lmFc5+q5mtxZ+7qQG9Zl0bGlGUoOpOCyP8jSC/ZFAPft2y6BmHq0PHm/3kqL5cWuRrai
THIIcPGAqagh5o/mE/rDo0Cn4zg38NzQT8aWJ1kDI8Q/o7SE5Wo8AO7Sk1Xq2cpPyEKEBmJ9aluV
NyEq6oJOHsPKpm9GPr3VauNKZV2H5nX8Rl4WfhxhwTlY765IERVsg3SSHzNaCYqFr5x/MwX9DlGs
LqQjN6CmaOQ27U8PjFjN3uHp9MZBoTzUkc6A4o4zWuBcnONwSEvU7LZOIxw7diNDsVUkFBqKaoxo
T6bRJYZWA5JusvB1XJWVFQcP830fmBqrPTA4D0XG0jFXCPilAscw9yCJzMMyzlS/jv8SencOSLaL
JedVHvNMqOC+HlSd8BJA3/tdlsxWeG/ceIFGtFe6SL9BGdzf2tktPCTjdLAAIp3s0Zp7sbHqNax4
eaVyBvSIA9WUW9c2YQUhL1qncwS/3FXjWuK8PpcNV+QvZmEzuzYwWnHaa8fGtnCVWYFXQ8GouZ1Q
j6sRzMQ+hgPzBvqk7nQkdhiT5HCOHKRyJuUVthQihq3D4yuKHo6snOTD06918WsNM8ypFdUswnIH
n6XfKdDv0H9N4AtImViK5kiMykn0/DV5B4JHeHHXlyG5g3/ozXMU0wIwJxBgxJl0Hy6NoPcpEqJv
ZSFNp1gOdUnqjxbYoRnUePZGxNUlGULo01lCSvYpkHDceGdRxiuqIbHGdTWDm30VuCgA4k7NSkve
ZNP+yytTwP6m/Cmxg7HKnKIjXqMNZTjcLZLOKK0iDi0bc2JXrFWGc7U23Z5TYzR2NkWrquyn0f6b
IZ6ZhJhRg+37lRBPcvBNneru1oiZicldV/Jnd2RAdKFjvIq27e8c5VmxV80kJ8NVXgwCufp2AZjV
Oyym6QyIuiFu7LZllrD70fAu6DH8ODAvEhhXPrqm7Lvy4bHCdvxNKZyrtjsN8MhcB+cJSBhn2QP8
dtfzMHxmx//6c7T/OFv04b+UUIL1IiFQ+zfTnaSiiwitxf8kWfggRO47EnwTXc6MFWZZ0oiABw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E81E9C73EA33D0"
last-modified: Thu, 12 Nov 2026 00:50:09 GMT
content-md5: Ce4bD2tBJTT/XL+NwY4uNw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 98aeb9ed-756e-4e3e-b5df-e6bacf4b4f43
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-c66435e4-9ece-708e-c4b4-45d628954fe9/test-blob-940b73c6-0fba-3da5-9d69-47873d49b87f?comp=block&blockid=dGVzdC1ibG9jay02ZmFhYmUyZC1jM2I2LWIxZGMtYzNkZi1iYTk0NjcwYzVhMzA%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_7
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-c66435e4-9ece-708e-c4b4-45d628954fe9/test-blob-35a2b554-9344-5b2a-58e8-ac51735bd088
x-ms-return-client-request-id: true
x-ms-source-if-unmodified-since: Wed, 11 Nov 2026 00:50:09 GMT
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: CannotVerifyCopySource
x-ms-request-id: 974cb7b9-baa5-4d89-ada1-de93699d64b9
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:09 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>CannotVerifyCopySource</Code>
  <Message>Could not verify the copy source within the specified time.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 7: DELETE /devstoreaccount1/test-container-c66435e4-9ece-708e-c4b4-45d628954fe9?restype=container

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
x-ms-request-id: bbe35e84-44e5-4081-9033-b4765ad8cce4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-5f92de44-ec7d-454d-1065-97db4ba21d0f?restype=container

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
etag: "0x21B9C94BB34D740"
last-modified: Thu, 12 Nov 2026 00:50:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6ad25b40-5f3d-41a7-9859-273504cc089c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-5f92de44-ec7d-454d-1065-97db4ba21d0f/test-blob-0e54c58f-5cbb-e0bf-0d04-5441fa89c186

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
Ly0ktbBg0QOXWtDaVRDWkQ4WQl+2WAJAcGVfUSwAZSHCqmQ656WA5A2PyCIbc+//jgXNNV+9WNcq
40RKAX/XlvSvF6qrnKpoll5SJpDfJP12X8ImMzDBBFGNDwNhNeKNuDEtbFtEVPJbZJ4AazJGS79G
1KK8sGLE7hNYHo2mB2F8xG5esbihMQvQys+SwJgfRsNEGmA/0AfPaX5I6zVltV09hKbD6JoGpaKX
7OWTMi16ONfJYewAPPRnj0g6WUXVahVxVDvyXF4pPnW+qOMhOzZQzrJdm1NwPEiyXFhRzEtcwoHQ
Id3yh9x5oCN3QpQQRVMR6YqTd8/BABjzPwAF13EpYeViURpZXkbW5Psw+fqzohYFQOLAyUqyDiDF
/kjbdMiyTeCurvM5t4tEvJPTkAYdQJ3p/5aOaJebr0L5lF/++m8yfqwZBfMiy4hXfA233n0ap76q
8nQxI+RIE/6xQCMrRsIkoBJaAzqpxjQON+yK49HF3uyhUwj6AVrH0PL1cYtlKzVKkz1rv6ODAStA
I+z4vi8t7GE3ivO5KZ+3kjJItFWoqAu2P1CTWR9IHVHcud1uzxLCx4UpLqBCkWmesyxxOkzWmHrg
Qn7empJC7myh3XDBScMghu3Pf3prc67n9aXy1+MFBiFjjYyU5Czz5z8zoLP53GpoUbRfBxj/dc7P
96XsTxeJnNZOXrs2i6HA25c7N9L67Rk7iYYupf8IYxi+xOyHBpcoqQTdqn2vMsUSniuBxD371QmL
scaQW/bXRvuieMe1ONUAE47OHUObi1fAGwbTh5/bw+7i+1XRl04NBWSCDbr9XWZWgLGvLLfG8CZv
0D/vA75bxrTZ0jx/L3tAwRjeGX2dw76gfQbuLJY2HAsvYscOHQGlJkYFJIsp1lE1b2uf6Nao0QyB
T4W3bZodorUwUM20MqMWOPI3l54yd6e1uL0rlzM1h5C6jM577rmr54LV+IaDgT3Hia/jcDluT9fe
AbTd8gqC+8k9+aXVmko5i7AcXX4gMjeAZA6EURZWTD32newEzvV3U/29RoeX8e5lquWJUfFZvc99
XY38/aqy5q1o3/1dNb26pAmBY+uv6HIfHqcxzPpLnN8chnBnelVSCmDaLhLxB3Qnz6zo11nkzXQb
3d4CgRmyHUIdQa9NUim0LlmL1bpgLRczCf1OYsWFOLj7TJ12T4hGJxHP08bE2nyDNKgAWPe6u6/H
z3gbZLp9lwj2UQWMPd/RRK6okFpRbi6Byi4chd/AQZHur38PKsNWUjy9zol29/fJLxNJESpVdmFJ
mpmLYREoNQ90nY1fwRrqUT4dk5+lCtM3UlbMdi9mmTkdxpApy/AqlZh5Allpam75X7/rN+LCpA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x203E222D4218800"
last-modified: Thu, 12 Nov 2026 00:50:09 GMT
content-md5: TVJ7ueTd6v3d3Vgehnp9SA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c0cc6c39-209a-498a-8e21-6bd70c9db473
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-5f92de44-ec7d-454d-1065-97db4ba21d0f/test-blob-07fdf34d-082b-ce7a-e8e8-d2176f7a6156?comp=block&blockid=dGVzdC1ibG9jay02NDAwMjE1Yi1lMjc2LTM5NmUtZDk5OS1mNDU1MTUyOTczNzA%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_11
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-5f92de44-ec7d-454d-1065-97db4ba21d0f/test-blob-0e54c58f-5cbb-e0bf-0d04-5441fa89c186
x-ms-return-client-request-id: true
x-ms-source-if-match: "garbage"
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: CannotVerifyCopySource
x-ms-request-id: 09973d1b-35e9-43ee-80b1-b685914d12aa
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:09 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>CannotVerifyCopySource</Code>
  <Message>Could not verify the copy source within the specified time.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-5f92de44-ec7d-454d-1065-97db4ba21d0f?restype=container

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
x-ms-request-id: c0a4cee5-470f-4ccc-af84-541f20cc8e4e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-449e389d-bae5-8778-4b86-26d38aa77092?restype=container

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
etag: "0x1DFF73C16F58400"
last-modified: Thu, 12 Nov 2026 00:50:09 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c72f064b-5a0a-402e-aa16-e2119243f863
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:50:09 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-449e389d-bae5-8778-4b86-26d38aa77092/test-blob-ba8b44f7-0800-145b-2cfc-5c150844ad45

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
ov3l2YldEGuExC2RFCS4vnRheTbcHXGgqHkY8LubrjIpYbIXQ5rnQCgywCCM53MmzWdeKC05toWL
RDAPRB+w6RX7aLJyoXvaejkNqlxRFMEG8iNTPIYE76stjP5p1/wJgtYKkX7AtCzshK30KwsoOjBu
CVL7XK2P9ngGRRR9caM8BCiFRoNCRT73Z7fZEMOfBFHN+s6pDSUpe5oGuW4XbxIKtyfjovOtLMMU
BPX1teW0Z0DDr3bUkvYDXMvoPIzP4PikzlmcvGFdIM4KlQkwNMW0UVItU7+cNSQw4EYoxO83RCT8
UOeMGKrfZY6oyv3t0igFNOs5oYw4CJg1a9sbNVve01DkM+PeKDmnTu4w9GsmQw0eI5AE/qOYxEdO
VqzOxDAzyfesCJ9EJgyykVKdBxQtDijO/RLK2tStTG+bkNGN2Iq+/Sp0ejpu2fyEUmxQ+rwzIEeD
AMYeaO4i/7wwqJY6JLjI3wrpuJTuYCMVRohoXFGzaG+KCdjDoJQ8Unt+PTFlSS2ziBuxSWeylaCj
CCJluaJqfT8nsBvgBD92rWYZcCLysP1btNM1AR8H13Q3IJdy1pjYE8DxPZkR0oTcO5wBmSV+sFgl
CgTONHsgINimqOSnBNbOQFxhAXJjSeFPWcWCBT1PuW8/TMyTCd5F0B3AaiqgNTfGM1jIHK/lwcAj
f9u2nhqbV+90Z7cJOjd+HDBVo963rySOvNLkhpzAWosMcIoDjjICJRM6K81/vPghSgB+jx7ha8+3
J+FIttBStA0r/cmseo3+U33LfYRWDv/ZwzycQcptKgW7S2dQum9C6HfAVL8vdc9yfzygFe5LYBni
bvKUtXJCvtLE8S4mrpgOiZQMlrpAqk5sKsKOzBUXcOtNbkt8rTIFfpbsaoOgTNGjkoxZPspfocSk
KIuws/G9rYFD2EBNkdtiBxcjVD/Ky93x6zqIvTEg7syH14WmVcqkL70CXXOQVgCx9zeyO0yE2lyt
v8i2Ne9QIupzxbpVu7FMfiWCx25qYJU51sb5brJ/A/0p+JUC7fnNsjqIHJBGXDuFZbwnARLtQ14z
fV4pVrQ388G9LMIcSpErtRUz4UME83qLcwj2WAHqO7U3z3CbpFuFUSnOiS94aRsr/Ez8uWEbLonk
nuOsQZvA0vAM5XogjxG6rpAaNWpKEgnsylu17oFUG6HntgZ32Q+NDrY/bIShC2w7QgvQAPgfmYva
v3dACuRuuMnZOdkLQtSBjCazC6WFS7/ueqt2gxqoyB16nRmYTQTS0LO7x9KTMP83T3TSa43lVHS3
Uo84+DSuMXG7kKW66D8i4DvyyYPsWkqsPjSm1lyPlEil4Pt0mtd+DJZh2J9afGY1r4pS84rwyg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2780EC316D3DDC0"
last-modified: Thu, 12 Nov 2026 00:50:09 GMT
content-md5: fC7Nl3PVUXW5DSXediDQJw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b9b68179-9fac-4a17-a8ec-5f069ffb5e5a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:09 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-449e389d-bae5-8778-4b86-26d38aa77092/test-blob-ba8b44f7-0800-145b-2cfc-5c150844ad45

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
last-modified: Thu, 12 Nov 2026 00:50:09 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:50:09 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2780EC316D3DDC0"
content-md5: fC7Nl3PVUXW5DSXediDQJw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8bbaa5ec-a1e7-4c80-9677-1094079a4fc3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:09 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:50:09 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-449e389d-bae5-8778-4b86-26d38aa77092/test-blob-edbd7364-828b-51ab-c2ce-7126d13ca0bd?comp=block&blockid=dGVzdC1ibG9jay0yZjAzMTViNC0xZDBlLTA0N2UtM2I0Yy1hYmEyZmU2NjVkZjE%3D

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_16
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-449e389d-bae5-8778-4b86-26d38aa77092/test-blob-ba8b44f7-0800-145b-2cfc-5c150844ad45
x-ms-return-client-request-id: true
x-ms-source-if-none-match: 0x2780EC316D3DDC0
x-ms-source-range: bytes=0-
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: CannotVerifyCopySource
x-ms-request-id: 7bd44c62-41fe-452f-a2eb-1c6e2de97fa3
content-type: application/xml
Date: Thu, 12 Nov 2026 00:50:09 GMT
```
### Response body recorded for playback (403: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>CannotVerifyCopySource</Code>
  <Message>Could not verify the copy source within the specified time.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 16: DELETE /devstoreaccount1/test-container-449e389d-bae5-8778-4b86-26d38aa77092?restype=container

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
x-ms-request-id: ffbc06a3-a0d8-45c0-8d92-ec51d4d50bc8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:50:09 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

