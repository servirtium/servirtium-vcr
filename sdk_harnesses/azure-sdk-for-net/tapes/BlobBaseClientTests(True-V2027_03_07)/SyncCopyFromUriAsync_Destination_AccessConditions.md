## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-7ebf391a-e7ea-7f49-b0c6-180dff15647a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).SyncCopyFromUriAsync_Destination_AccessConditions
now: 2026-11-12T00:48:33.6082585+00:00

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
etag: "0x1F48EB5CF6E5040"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5e1c85c1-02a3-40c1-9642-927af9d5dff7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-7ebf391a-e7ea-7f49-b0c6-180dff15647a/test-blob-8ed202e9-b0a2-2cc3-bc40-3968eeb0e332

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
4tEne+aLmFo97t91GS84JtUI8TBcJbwtSOI5Bn6XvYc02vORXhXkj6FlQPsI1GWBjvI49iMzHbwV
+jMEUpLbpjFXQD87psjAI2KP9+TAJXR8t3eMX8djAbw2fGTh3zwOiZrKsJMmRecpeNLBpCbXVNS/
iJoaTkZp9D6CBSpk3kMlgG1K9XTgVXGQY+f0oVyVXiePIlei9DpUYLtUo0C9xZqOnCS4jV9f3zIo
iutfdVPi7aYC1bvsgosy9pS5i7Ix055NZQQ43dHIL0MleWlP9Otocraauu/eohmYhpfKplN/97dN
EhBOqg/UOqV4xggh4wGpURj7lxiubsLqn1c6/ojvpYKyAeLaGcimxX9KZtwQdqKVIFU7hGCenqNO
ZAq4mjwciCGGb+EezjhQVdGYZAjm2Sm0pN0ztCEiFGI/jLW+7SpDLd26igfAd1Ed6y6OBTqaZ4rg
BPZe6dT/Y1t+30KCkWenVTYrK08h8y2MFsnylA4opCUr3ekz5UMIuiasQZcPmlnH5rAEbzs6vxDJ
0tILDc9MVjodV7R+c2/yI3AodbKVfHxvK61eIzXp8B7YahNx/K1WX+td8kKkSHNAEUvLEUleNFVW
nOIi7jIENGeVpQlcgSbD0hXGN4o5y+I6HRLqHd7Ueja9GmDKNHG4WL7bDqNp5I8kBz8zl/zLHdAA
6NAgGhaIwSrTnmfG+Z2kDt/MXbw+0DiDxRafoOM58v2PyUyglz6nU014lkYoXg2hj4gd/r8UwheY
nVX/6CBHmatqNy9RA3agJApuxTnyWmYI/RFaHPM9egc0CPrpqGotMf2avSfeUIwRfNq0pvzdpULu
9uoP7Hy4LLwnHPt8tnufQZM8V50/Kq2ESJ8YidQLVmK4+rF/HkWA4ZFrtjORlcVeFGVooU2lr8w9
iqPcn6PnHMaYw7vJICJOvHUL1HN687LaunRvorUUEkvlQpOho0Lug5ps+NEJlPRCGeTXmdtYwpbw
AuUueHkQhLFw5N2OrRgzHFDZDfvh0CV/LYnQPHhwjYD9sKFdwAsgXHMgmbAXs2zMpH2KfrSbDzK/
rkrwP0g4/1dckfx21lxEuLGHwDZ0aHkdA5f75Q7LYaBunRHAMBwr6JlZuiFvVc4gRcYDE0/8SkbR
0juwPBpIkTBcCDhLhIeUW9ecG65Xrq7J259HyE1RclLL713he6x/ECnxEk2V1ME+b7d3Xy+XeSSN
5mB6AcjiCpXmgJUqsuArHQuEZptgNAbeCVmV2RMjM3U5U5VLBA9gDgi4r1QsFLzXS0EjExOJLbJZ
nPdvTDCCwkwf8F9L4Bn7JFeTqISxsvWcvo7R/yBisCbi8WgX8cLXNuwIDCNdjGsoKO+79oUtqA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22B467D8DB3F0A0"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
content-md5: MzfEHRBvmqEV6tHlh2HccQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5afd4ce9-0eee-4071-9a87-fb7c998055c2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-7ebf391a-e7ea-7f49-b0c6-180dff15647a/test-blob-9771bb95-a5a9-3fd1-3222-a9d731a7baa0

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
4tEne+aLmFo97t91GS84JtUI8TBcJbwtSOI5Bn6XvYc02vORXhXkj6FlQPsI1GWBjvI49iMzHbwV
+jMEUpLbpjFXQD87psjAI2KP9+TAJXR8t3eMX8djAbw2fGTh3zwOiZrKsJMmRecpeNLBpCbXVNS/
iJoaTkZp9D6CBSpk3kMlgG1K9XTgVXGQY+f0oVyVXiePIlei9DpUYLtUo0C9xZqOnCS4jV9f3zIo
iutfdVPi7aYC1bvsgosy9pS5i7Ix055NZQQ43dHIL0MleWlP9Otocraauu/eohmYhpfKplN/97dN
EhBOqg/UOqV4xggh4wGpURj7lxiubsLqn1c6/ojvpYKyAeLaGcimxX9KZtwQdqKVIFU7hGCenqNO
ZAq4mjwciCGGb+EezjhQVdGYZAjm2Sm0pN0ztCEiFGI/jLW+7SpDLd26igfAd1Ed6y6OBTqaZ4rg
BPZe6dT/Y1t+30KCkWenVTYrK08h8y2MFsnylA4opCUr3ekz5UMIuiasQZcPmlnH5rAEbzs6vxDJ
0tILDc9MVjodV7R+c2/yI3AodbKVfHxvK61eIzXp8B7YahNx/K1WX+td8kKkSHNAEUvLEUleNFVW
nOIi7jIENGeVpQlcgSbD0hXGN4o5y+I6HRLqHd7Ueja9GmDKNHG4WL7bDqNp5I8kBz8zl/zLHdAA
6NAgGhaIwSrTnmfG+Z2kDt/MXbw+0DiDxRafoOM58v2PyUyglz6nU014lkYoXg2hj4gd/r8UwheY
nVX/6CBHmatqNy9RA3agJApuxTnyWmYI/RFaHPM9egc0CPrpqGotMf2avSfeUIwRfNq0pvzdpULu
9uoP7Hy4LLwnHPt8tnufQZM8V50/Kq2ESJ8YidQLVmK4+rF/HkWA4ZFrtjORlcVeFGVooU2lr8w9
iqPcn6PnHMaYw7vJICJOvHUL1HN687LaunRvorUUEkvlQpOho0Lug5ps+NEJlPRCGeTXmdtYwpbw
AuUueHkQhLFw5N2OrRgzHFDZDfvh0CV/LYnQPHhwjYD9sKFdwAsgXHMgmbAXs2zMpH2KfrSbDzK/
rkrwP0g4/1dckfx21lxEuLGHwDZ0aHkdA5f75Q7LYaBunRHAMBwr6JlZuiFvVc4gRcYDE0/8SkbR
0juwPBpIkTBcCDhLhIeUW9ecG65Xrq7J259HyE1RclLL713he6x/ECnxEk2V1ME+b7d3Xy+XeSSN
5mB6AcjiCpXmgJUqsuArHQuEZptgNAbeCVmV2RMjM3U5U5VLBA9gDgi4r1QsFLzXS0EjExOJLbJZ
nPdvTDCCwkwf8F9L4Bn7JFeTqISxsvWcvo7R/yBisCbi8WgX8cLXNuwIDCNdjGsoKO+79oUtqA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DF3F2419D7D60"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
content-md5: MzfEHRBvmqEV6tHlh2HccQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fde0273a-cc57-42a4-9910-74cce73885e2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-7ebf391a-e7ea-7f49-b0c6-180dff15647a/test-blob-9771bb95-a5a9-3fd1-3222-a9d731a7baa0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-7ebf391a-e7ea-7f49-b0c6-180dff15647a/test-blob-8ed202e9-b0a2-2cc3-bc40-3968eeb0e332?sv=2027-03-07&se=2026-11-12T01%3A48%3A33Z&sr=b&sp=r&sig=wsPzEz5xs%2FJgQxa4gNlfSRqzyznxcyK6DXVUyBKkTGE%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25DF1ED3CCED6A0"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b64ddeec-b5ed-42d0-bd8b-1005c221538f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-copy-id: 0fe1b253-ec89-42f1-9312-fa7ec8c02a83
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-7ebf391a-e7ea-7f49-b0c6-180dff15647a?restype=container

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
x-ms-request-id: 66aaaa3d-c105-44bc-97cf-de50320fb1d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-157e49b4-341e-8534-29db-4fe324237c77?restype=container

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
etag: "0x2324EA0CC85BBC0"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: df38a135-e0d7-4ea0-be4c-f91288d047d7
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-157e49b4-341e-8534-29db-4fe324237c77/test-blob-b3fe17d6-210a-1759-1f8b-629f4e787c58

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
RLwmOhOV/kMxk1uABuv7FYaYtKUxzhRghuxuzlbtGw+lMZN0gH+NHks65IrYtH494Dldi27XRnWn
xbMnJy/tQ3dM2tVYhpUGCpVa9uqJiNJtMe4ckI+gzusdzbvMZfcbTaETjNqp5FmkVoHZfU+LHT3h
uvZB0bLorAzpO7nZOqSeP6lIdvz3w0yUdzkOxlGcka9+6qsB2XzuKuDOv6mgyhzcOz6lQqdA6fep
rFl42eW7TakJW0/5nWUtWkscKQOi9KwdMosT908IPQG0VywidlH6EnIAlm/N4p7YeOhbJL/zB7es
W6dZqFZaAR5NRUY4CuT6IRaRol49T0/tOn5mrRhBwE90dhupoGocpZVQf51Yn20EYAOoYmRZbwtX
bG3X81QGC4T2w5TJUYCrdfzJ7NCylZoRYkwVmV7rGwYPUTT9RLJBSnQZYtvZOg+C/O1nkII7pdfS
xpAH8XIlCqiNuf9MrjBKiKJcmDO/OCg8kpxxg4uD1KxcK34iOVkB81czS4EQNk68HQjg3wykE45o
y17Ws4cdCeRT74OyKE5JWqXbi+ymLFxNtWaDo/WfuBfwuW36Kz/QFkGcvUbLCvW5loRnyIehwZ8C
iP4gmWbvtDdrwm7hTy9lC3WrCm8WgqtxyQxxN++QTvfO96JBr3zbrQgOYEeG2EdVAr0S9bcv7AZT
r9BZfnxI2nN3EleMJFz40F1mCCJj6/HFHDUyflg/nguc7QCsgS6MxYXUD8XwyN5hGSVayeTk8MTe
lGJHFlwaN3NL8DZcTE4u2UKcjtsr1FNW0GQz5dUnuP07zezMRa8puthSpNinBc3WLO+hR2Hosr8O
8EX35lGeJDc5IH5hYZSSc9QD2TB7r8uXXLjlhXGbUxstvVRqMdOGs4CgbuROdMpbDtSN5NmPkkF5
X4mYuZ7GnsxjNKM/KEEAfSWv20DmSOjuiXadDW5BnSoT8NFJ7fri2dAY6z8mG+aSjGe04LcAkhah
qi8nKZBeIpd4LDdvt5AqzQFwzl2ox26QCoEHjL1zE167p0LLu7BAucmore6uItXWiRK2j8O5+ePB
lh4OVpXaBRnZtA9NXxJQMBWT/xl/4uirMAOqvIOaAa5fCiSSMWM0zqjV1G3GiSkAZV+uJfnJQbQ2
YyWSL0iWP7Jg7lXtvv+xXzFxqQ165afZqVck7Ny0lchwW84+op9fP5W6ZZrUE6df/MXIV5emu319
uIXxcVPWrFiNfWIxc72SEmp4v4ANBZavxO8W7D4wyZ9QwOkZbc1C47hBRpZELokINkUtLvz8cLPv
Qa1kwMAaXLPC4LLUeKScNtvHy74Aa5VlDbX4A5ujVFA1Kisg3iP4J+rigU7WNL2gkPcgNKT17g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223B6E4C6174B20"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
content-md5: 0vLMcdPetjSkmEGW+Qx8kA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0bbbf30b-bc93-4de0-8d4a-f8b62d21d30d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-157e49b4-341e-8534-29db-4fe324237c77/test-blob-d3a3cfb8-e91e-8e47-d9f8-5872a4821fab

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
RLwmOhOV/kMxk1uABuv7FYaYtKUxzhRghuxuzlbtGw+lMZN0gH+NHks65IrYtH494Dldi27XRnWn
xbMnJy/tQ3dM2tVYhpUGCpVa9uqJiNJtMe4ckI+gzusdzbvMZfcbTaETjNqp5FmkVoHZfU+LHT3h
uvZB0bLorAzpO7nZOqSeP6lIdvz3w0yUdzkOxlGcka9+6qsB2XzuKuDOv6mgyhzcOz6lQqdA6fep
rFl42eW7TakJW0/5nWUtWkscKQOi9KwdMosT908IPQG0VywidlH6EnIAlm/N4p7YeOhbJL/zB7es
W6dZqFZaAR5NRUY4CuT6IRaRol49T0/tOn5mrRhBwE90dhupoGocpZVQf51Yn20EYAOoYmRZbwtX
bG3X81QGC4T2w5TJUYCrdfzJ7NCylZoRYkwVmV7rGwYPUTT9RLJBSnQZYtvZOg+C/O1nkII7pdfS
xpAH8XIlCqiNuf9MrjBKiKJcmDO/OCg8kpxxg4uD1KxcK34iOVkB81czS4EQNk68HQjg3wykE45o
y17Ws4cdCeRT74OyKE5JWqXbi+ymLFxNtWaDo/WfuBfwuW36Kz/QFkGcvUbLCvW5loRnyIehwZ8C
iP4gmWbvtDdrwm7hTy9lC3WrCm8WgqtxyQxxN++QTvfO96JBr3zbrQgOYEeG2EdVAr0S9bcv7AZT
r9BZfnxI2nN3EleMJFz40F1mCCJj6/HFHDUyflg/nguc7QCsgS6MxYXUD8XwyN5hGSVayeTk8MTe
lGJHFlwaN3NL8DZcTE4u2UKcjtsr1FNW0GQz5dUnuP07zezMRa8puthSpNinBc3WLO+hR2Hosr8O
8EX35lGeJDc5IH5hYZSSc9QD2TB7r8uXXLjlhXGbUxstvVRqMdOGs4CgbuROdMpbDtSN5NmPkkF5
X4mYuZ7GnsxjNKM/KEEAfSWv20DmSOjuiXadDW5BnSoT8NFJ7fri2dAY6z8mG+aSjGe04LcAkhah
qi8nKZBeIpd4LDdvt5AqzQFwzl2ox26QCoEHjL1zE167p0LLu7BAucmore6uItXWiRK2j8O5+ePB
lh4OVpXaBRnZtA9NXxJQMBWT/xl/4uirMAOqvIOaAa5fCiSSMWM0zqjV1G3GiSkAZV+uJfnJQbQ2
YyWSL0iWP7Jg7lXtvv+xXzFxqQ165afZqVck7Ny0lchwW84+op9fP5W6ZZrUE6df/MXIV5emu319
uIXxcVPWrFiNfWIxc72SEmp4v4ANBZavxO8W7D4wyZ9QwOkZbc1C47hBRpZELokINkUtLvz8cLPv
Qa1kwMAaXLPC4LLUeKScNtvHy74Aa5VlDbX4A5ujVFA1Kisg3iP4J+rigU7WNL2gkPcgNKT17g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22AEFFE1171A1C0"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
content-md5: 0vLMcdPetjSkmEGW+Qx8kA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ebe98b68-3e58-4886-a858-afb96476d74a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-157e49b4-341e-8534-29db-4fe324237c77/test-blob-d3a3cfb8-e91e-8e47-d9f8-5872a4821fab

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:48:33 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-157e49b4-341e-8534-29db-4fe324237c77/test-blob-b3fe17d6-210a-1759-1f8b-629f4e787c58?sv=2027-03-07&se=2026-11-12T01%3A48%3A33Z&sr=b&sp=r&sig=SQYu4GAjhztpQk72qbX9eIZo76gWh4t3QzrwiFBP%2Bp4%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2077DDCC7094F60"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5fdc1c44-3091-45b2-955f-f1f30f8c44a1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-copy-id: 92d07a5a-d466-4ac1-9a5f-d7095a51adcd
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-157e49b4-341e-8534-29db-4fe324237c77?restype=container

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
x-ms-request-id: 9e108191-424d-43d4-9488-508ef7766d87
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-08553b3f-70df-05ed-91ca-62c274946f27?restype=container

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
etag: "0x21E0A6149E31E40"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 619cc308-5cfc-4cf1-8298-efc15f2f3a4b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-08553b3f-70df-05ed-91ca-62c274946f27/test-blob-c38be818-7538-4291-ce3f-3573a0680c41

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
FJ9oZQEi0OzPb9kSyeZznGy3XxIjc3hI4Z5CU4eFGkSIMF4EGrmqHWtoOG+W2zuqV8VVvDVcBKAm
IIRi331lSlWUiZmIboKyDEKmujsIsQVimPvBL10PLCy93fo1Rz3uA+4aAVGiIehDo7DytUllHW5+
AEeBoxv3hV1typCIfcUEuLdN7q+0v3YTfoytHHbiWMCLt0f2bGDSInzzNVZXuibq7v2SGC++ykDQ
biSOSmjninLQ/MV9DktXesszwIofu8Nmwi54T0CQze0HJf47RNgTDKrkhr5gbd+xO51jiwq1sLJg
KIc6bzsyPy/YdehNGzbyH7PgOzQFBlVOxhSiLELjUnRL2htR2J1vskeOh/f2YyBncWtW1XV+WiEy
7KgmjxLt9SN0AkAaoUcWcIntdn9dV2P0OrvWjHz/zH/5Huz1SCI0oZHTgmHfTc8jP2TskeSi1JRF
MlVXFmmmdDXAIINaIShmudXtidQBFOzssk0YEzubV0lXrxXM3YsoLQ4rHi1MyR07hdcPtUrAQx5o
amMbjmH6JMk5A3ESmttJxVzG1vW/oOkv3I5jjKH+lmz3Y3IoDJ6tMPlkEsWsKer7xe/u+mwoqcp5
7LHTlpgnOmwEGzZpIbi9GKX7Wo0kg7OjZ8ayEJwAz7moryDt2pphPdhYpw20kqQ3MOHGLE88VGn+
Ly7RdCnQBEx8wHKY0D4Lmhy1zNul7tUieuC6OaJqbFq376prj8iuh6LBONEyn2Ciu5IyhoiNWEBZ
r/pJFcqpEVQX4OGUnwpUB0Q45LYD8Nt/GH4QN+bRKZdpEuDOZHLYFyZ9Gr5/DRuI3n9EVHOKVb4e
yv1MmdpuRbZJK40phaLRYM2QhdUdAApjiFlnjdUj37whsJp1i31LD9QHNeKNXlnccvSm+c/pAMny
6RGBB7jhJkvRB9UIXNRPRHYBFssn1SkAihvgfebsOK/RgqJsygccJQ6WvFaD0xUfVrRZ5+r9yxTn
gXydAahl5M8lN9oy43pu5fC8kBjSfLcFwSYxk1DF07eOhEmLfyRlMdiHXps77XM56gL5QTr7FQTE
lz+CM1B+YGQjo18w42bMVl8/Sh0bytOz96lNy5F8km5Exufk4/2HCf43GEkTCQecLerbvMrnqc1r
zjynMJTSphHw6xx+53JiuEEf5LGKoO6hsZ6modWkXR0aeBXB39lqZHE3Ih3rHUV3eASJx8Qb4S5N
BX/1LAQ7TI7+ZG9doNhotX9AUn3RtpNZLijRGpVY/pfnc9pZdDht+9WO7LnVGtgrIRJF246wfE/s
nP3baTL4pWXXdi3+DkBH0lenQsnZgxRQpfmDEyMJNveKbdg7kZKjlkdT/qSqLRLR/Qg3CDmFEg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24C5CC43B3C8080"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
content-md5: x/eUwLb2Mo16SPXdlS8ufA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dbbe7236-fa4f-4963-86e7-d9f9344dbbf6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-08553b3f-70df-05ed-91ca-62c274946f27/test-blob-82ac03c4-8586-a56f-78e6-b1151bd12dbd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_13
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
FJ9oZQEi0OzPb9kSyeZznGy3XxIjc3hI4Z5CU4eFGkSIMF4EGrmqHWtoOG+W2zuqV8VVvDVcBKAm
IIRi331lSlWUiZmIboKyDEKmujsIsQVimPvBL10PLCy93fo1Rz3uA+4aAVGiIehDo7DytUllHW5+
AEeBoxv3hV1typCIfcUEuLdN7q+0v3YTfoytHHbiWMCLt0f2bGDSInzzNVZXuibq7v2SGC++ykDQ
biSOSmjninLQ/MV9DktXesszwIofu8Nmwi54T0CQze0HJf47RNgTDKrkhr5gbd+xO51jiwq1sLJg
KIc6bzsyPy/YdehNGzbyH7PgOzQFBlVOxhSiLELjUnRL2htR2J1vskeOh/f2YyBncWtW1XV+WiEy
7KgmjxLt9SN0AkAaoUcWcIntdn9dV2P0OrvWjHz/zH/5Huz1SCI0oZHTgmHfTc8jP2TskeSi1JRF
MlVXFmmmdDXAIINaIShmudXtidQBFOzssk0YEzubV0lXrxXM3YsoLQ4rHi1MyR07hdcPtUrAQx5o
amMbjmH6JMk5A3ESmttJxVzG1vW/oOkv3I5jjKH+lmz3Y3IoDJ6tMPlkEsWsKer7xe/u+mwoqcp5
7LHTlpgnOmwEGzZpIbi9GKX7Wo0kg7OjZ8ayEJwAz7moryDt2pphPdhYpw20kqQ3MOHGLE88VGn+
Ly7RdCnQBEx8wHKY0D4Lmhy1zNul7tUieuC6OaJqbFq376prj8iuh6LBONEyn2Ciu5IyhoiNWEBZ
r/pJFcqpEVQX4OGUnwpUB0Q45LYD8Nt/GH4QN+bRKZdpEuDOZHLYFyZ9Gr5/DRuI3n9EVHOKVb4e
yv1MmdpuRbZJK40phaLRYM2QhdUdAApjiFlnjdUj37whsJp1i31LD9QHNeKNXlnccvSm+c/pAMny
6RGBB7jhJkvRB9UIXNRPRHYBFssn1SkAihvgfebsOK/RgqJsygccJQ6WvFaD0xUfVrRZ5+r9yxTn
gXydAahl5M8lN9oy43pu5fC8kBjSfLcFwSYxk1DF07eOhEmLfyRlMdiHXps77XM56gL5QTr7FQTE
lz+CM1B+YGQjo18w42bMVl8/Sh0bytOz96lNy5F8km5Exufk4/2HCf43GEkTCQecLerbvMrnqc1r
zjynMJTSphHw6xx+53JiuEEf5LGKoO6hsZ6modWkXR0aeBXB39lqZHE3Ih3rHUV3eASJx8Qb4S5N
BX/1LAQ7TI7+ZG9doNhotX9AUn3RtpNZLijRGpVY/pfnc9pZdDht+9WO7LnVGtgrIRJF246wfE/s
nP3baTL4pWXXdi3+DkBH0lenQsnZgxRQpfmDEyMJNveKbdg7kZKjlkdT/qSqLRLR/Qg3CDmFEg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24B9264D33D5E60"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
content-md5: x/eUwLb2Mo16SPXdlS8ufA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 60748e72-c801-4a42-a0f3-bb740121be46
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-08553b3f-70df-05ed-91ca-62c274946f27/test-blob-82ac03c4-8586-a56f-78e6-b1151bd12dbd

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:48:33 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-08553b3f-70df-05ed-91ca-62c274946f27/test-blob-c38be818-7538-4291-ce3f-3573a0680c41?sv=2027-03-07&se=2026-11-12T01%3A48%3A33Z&sr=b&sp=r&sig=aq4x25phfluFpN7dLSvnhjjBusZ6PKvpBpSxrJW7p%2FA%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CFC77BF9A26170"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 47fc1bfd-c152-4e5a-aa9c-23e4f661527d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-copy-id: 654b60ed-4c6f-48e9-b421-3882ab1e660e
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-08553b3f-70df-05ed-91ca-62c274946f27?restype=container

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
x-ms-request-id: 0bab9f5c-24ca-401f-85dd-d4cb2020b6b4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-52bf5b05-ce06-216a-b511-2f6575ba7168?restype=container

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
etag: "0x229B845F3DA6400"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1049a51e-2a03-470f-8feb-d35931d5acb3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:33 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-52bf5b05-ce06-216a-b511-2f6575ba7168/test-blob-32eb93ce-d2e5-b3ed-b7fe-b68a5ee8a73a

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
8cZyBY0CjJN55UtSw3sn/RF3bUWpuTv2mIrNdFYKML10SSRUXygwA84r2SCCGF056jJU/UwsvjeL
e2wCNBc9brSO3npX0p3oR2p2feAadIAslIojtjNwSIrtyeO8Lc637mps9Dnj4heUa7XitUFWcAbr
1qCMGbiBHZbvagm5Kxqbv492roBHSLJzj0p9jpJJlljd0VctKtWy6tej9HcN2kCbR/Wx4MGGpI3u
GIltBI8DptSx3FrDbZS6w8Spo1Q6ZrQK4kadl7WWVizJPxFLROZIn02jXP7l19lg9x393QA4tLLU
YyFIZg8eGoUu+S6Cbn/dYQMHlgq2JApsPJ+YmXkrkYtfduDE/zk+hUF4t96r3oidH3z9MR2oHj4X
2ylwhoAMAmiiI/ieGWHJyRHIPm0swF4W+nn9LmBtt1ihrCMPzv/AbLR2CbqQ/wYaM2cM39/Q6xvL
WYsHDtMHNWyg/Gw9uvsSCNK5tbejhvtz4vv4Ydd40MEIRHRzuV3gbtRO7wKa3Xls+dcMFzVjKNKP
lCvYD9OUJyurNHWGnk512EfjVZb52AWCi2cAa7mLpRyh4yUxCF4AusjW76gD5luIlz/tgNI8lrsm
VoNrk7tyH49Z5LopQ9Dp4prOIuldfqUMeNR5nSRJZU1pC7HalCYMY88YqQGgXlNvBJ04bnPRyNje
Xxrn+YFqEH9twDgeDk1zwb8aRdWkbBqACZmHEffZmEPZ/DUMJWpOrZiBMp4bUPVPxKy0t4MCOvMA
Zu/n4/+Ikyf1RRIYZ5tUy5c8Ijl8ZbijN0xKJeC/1sJCC796ZsqZ+Z92JQvjN1wRX+vsxhi5hAE2
RKuyPW5HNW5Q1lvc2mXMoiiaBT+twADwOcb10w+piIe9QyIf5rswL/CckmABNIWGICPvH37BiYOq
wgSoUmJfpk7THpZDrLxsadZPEC2f7wRAbrPrumgJ/LmedCO3iN2NPewSLRXuQnNng7ancnlVC9P/
Z+Ouc+zlyiLcpDiYteH5wdNBjMHvUitAhDayYYlASWlQtyH53sr/LWLzEZ46z87VrbGlE34REBS3
bu61M2iZm1rPR/3A/+IIQV9e/ECNBbVo3bPXmjXqPqcMQnDbSvr6WXVEa4fRFK7PndIeshTUKmg5
TFW0wQAk5AlVtL1xLfZlZKLKSJoul8gFCP1jzIyTNxgHov6kRZd0H4d9e2DwXXDbuU5xCeHOC7SN
rrkDwRh9wnykaor4wB4KVSkTsBxnFKqNiBI9IS43OZdJF5fdcV1uALnkTPPl4vkwZrO3ulqYJZoP
dTkFP6BNbTHzr6iHLeTMpK9jgsi3p6UZDbt6gH48sfL8zvskacEYlt7C8TJQqDnP6xarNaLRWA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2370E7F0C80AC40"
last-modified: Thu, 12 Nov 2026 00:48:33 GMT
content-md5: +0CsfpzKvrvVaatUJV9dQg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 336422fc-bc59-49de-8b10-538e0bc93848
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:33 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-52bf5b05-ce06-216a-b511-2f6575ba7168/test-blob-e9eb4aee-b5f4-c972-6481-ab9467907b4f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_18
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
8cZyBY0CjJN55UtSw3sn/RF3bUWpuTv2mIrNdFYKML10SSRUXygwA84r2SCCGF056jJU/UwsvjeL
e2wCNBc9brSO3npX0p3oR2p2feAadIAslIojtjNwSIrtyeO8Lc637mps9Dnj4heUa7XitUFWcAbr
1qCMGbiBHZbvagm5Kxqbv492roBHSLJzj0p9jpJJlljd0VctKtWy6tej9HcN2kCbR/Wx4MGGpI3u
GIltBI8DptSx3FrDbZS6w8Spo1Q6ZrQK4kadl7WWVizJPxFLROZIn02jXP7l19lg9x393QA4tLLU
YyFIZg8eGoUu+S6Cbn/dYQMHlgq2JApsPJ+YmXkrkYtfduDE/zk+hUF4t96r3oidH3z9MR2oHj4X
2ylwhoAMAmiiI/ieGWHJyRHIPm0swF4W+nn9LmBtt1ihrCMPzv/AbLR2CbqQ/wYaM2cM39/Q6xvL
WYsHDtMHNWyg/Gw9uvsSCNK5tbejhvtz4vv4Ydd40MEIRHRzuV3gbtRO7wKa3Xls+dcMFzVjKNKP
lCvYD9OUJyurNHWGnk512EfjVZb52AWCi2cAa7mLpRyh4yUxCF4AusjW76gD5luIlz/tgNI8lrsm
VoNrk7tyH49Z5LopQ9Dp4prOIuldfqUMeNR5nSRJZU1pC7HalCYMY88YqQGgXlNvBJ04bnPRyNje
Xxrn+YFqEH9twDgeDk1zwb8aRdWkbBqACZmHEffZmEPZ/DUMJWpOrZiBMp4bUPVPxKy0t4MCOvMA
Zu/n4/+Ikyf1RRIYZ5tUy5c8Ijl8ZbijN0xKJeC/1sJCC796ZsqZ+Z92JQvjN1wRX+vsxhi5hAE2
RKuyPW5HNW5Q1lvc2mXMoiiaBT+twADwOcb10w+piIe9QyIf5rswL/CckmABNIWGICPvH37BiYOq
wgSoUmJfpk7THpZDrLxsadZPEC2f7wRAbrPrumgJ/LmedCO3iN2NPewSLRXuQnNng7ancnlVC9P/
Z+Ouc+zlyiLcpDiYteH5wdNBjMHvUitAhDayYYlASWlQtyH53sr/LWLzEZ46z87VrbGlE34REBS3
bu61M2iZm1rPR/3A/+IIQV9e/ECNBbVo3bPXmjXqPqcMQnDbSvr6WXVEa4fRFK7PndIeshTUKmg5
TFW0wQAk5AlVtL1xLfZlZKLKSJoul8gFCP1jzIyTNxgHov6kRZd0H4d9e2DwXXDbuU5xCeHOC7SN
rrkDwRh9wnykaor4wB4KVSkTsBxnFKqNiBI9IS43OZdJF5fdcV1uALnkTPPl4vkwZrO3ulqYJZoP
dTkFP6BNbTHzr6iHLeTMpK9jgsi3p6UZDbt6gH48sfL8zvskacEYlt7C8TJQqDnP6xarNaLRWA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2445E30F0745940"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: +0CsfpzKvrvVaatUJV9dQg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a763a984-ef3d-4408-84eb-aee4fd5ee4b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-52bf5b05-ce06-216a-b511-2f6575ba7168/test-blob-e9eb4aee-b5f4-c972-6481-ab9467907b4f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_19
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2445E30F0745940"
content-md5: +0CsfpzKvrvVaatUJV9dQg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45214424-5691-414f-a52a-60141ae32c6a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:48:34 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-52bf5b05-ce06-216a-b511-2f6575ba7168/test-blob-e9eb4aee-b5f4-c972-6481-ab9467907b4f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x2445E30F0745940"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-52bf5b05-ce06-216a-b511-2f6575ba7168/test-blob-32eb93ce-d2e5-b3ed-b7fe-b68a5ee8a73a?sv=2027-03-07&se=2026-11-12T01%3A48%3A33Z&sr=b&sp=r&sig=HDcPSGuk70yk5qIlpQdtW0KbC4DcbgjXQmFRcYdan24%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x223E4973A2CEC80"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 862915c2-5e53-47bd-b443-62df7bce0788
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-copy-id: 94064463-0a58-4e53-a4c3-bdacf0d1b7cf
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-52bf5b05-ce06-216a-b511-2f6575ba7168?restype=container

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
x-ms-request-id: f0516f27-32ad-4670-ad24-122c20a78e3e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-902d762b-8f7d-c333-f10f-3a34991edae6?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_22
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x275D86FB60214A0"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 115ab21e-91c5-4b0c-a4b5-80763695a59d
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-902d762b-8f7d-c333-f10f-3a34991edae6/test-blob-f3f94480-d88f-e23b-447c-9cb7b5ac0412

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_23
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Q9u967boYxggIs1jJ1hLJoJnX+i7F71fFij35Xs+L0amxFGM05CYQhIVb1rC0JyZwxOxMr7xKywe
XdSO8H2c4vOGvGIHvlLxzhzWpadinUaLXiJnjPyHtZkkbnW8ClKVeI1nOxM6kQTAwGSiG4WFu8CO
A5FbNVb2/gfJ4lDdNcPJQCwa+mEzUc0dpsyY5ZkTn7K0LgfAOkM2cTwLca6z44qg2NpYa8BfWrHE
PY6KXhlutUOeKAe8CAbp44kkJ+AeacJB9wy+ujPxVdNV/Py0rBIjnbtrFbuC48/Ub4c3OjPRptTL
SGYMr/sPrdI0ZwwKNDd2AYkkslQHvxQ96kqsuhufg1Yn6WOsFu3AW2joTnvDyTpQwDmprPOAw4lR
z8WwY/K3leO14kvTyuqbZFfrH3CYeSEQW/ri9dZjpyXaWkYoD/h1MLiXDebvffVODkiclKQYuVWk
oAj41Z8NUjsl+W+kc1Redu64AGw6IN0ElOeOxxOBwaHxhG/wfVoZiruryYSGqZrzPR61YLjpaX8q
9EG4fooopDfOs+7lbvmTnnWwj1ZZfepMm4n0y2HoBxvvxogZYQwwgiVMuPasDs8lIsFDOdkp0HZX
a+MBM9nW5avT9adwej1pgAwxDcXzn4y6z6mfpM5BxvYRwfUoL09LdtJK2RgntaeD2rjN+MOxZMtW
RmQwNkDdkS+xXrhIQFC95ZbyqMZzkhoBG8oVdM0yYF0p0ejqGz+SbUfpdVbvO5loDxMsv7sF47RK
Lhp2yB1hfv5aHm5o0slWYDt/ihzDEuAwrWS6BqCiJO4zoO0kG6QpiPdYlBwr/zxJ1V+AhVmXhhw6
RRu4pnhduPp/NDLbMkSWVQIlan3EBa0ocDBBIZ6VnBnR6taJceF++9whq8sKbaMb6jBXchuedkBu
kDVHHJdb6pgYCkdtDOMgpm+holniHgONJTZuPin+MnSWG+CrN99FxsEy8WNbrd1MNsus/dPmi3Iy
ufZg7atuGtfT1/ECdW+QXNyYryyfMXhZIQhdUTWgr49ueH3o5NgVw9eLiNbrScBcG6H3TtxFk4h+
B8ujEciiMihilP3xp3cDgutVFKmibdhHADaTqWCzKOX1at0McbIO6FatibXDa3Mp88zw8H/f3Jnz
WxCSD4nHr2sX/D2Z9hA4RitT9OQihJXCabWTwjhlFo5EGRaie9nN5tpKq242j/y7t6lTjOi10Nd6
0KXTM+wysuauVd36lstShg0K2Ngmi9m42AqOEommj0g+J6sz+bLtF/mIhzofwSHeAQbaqvj+VETL
GlvipJ9cCMaUu28fHoxbHcHfngSfmRbpsBCDzORQP9JnaN9WCnNZLH9zigWyv+N5fo02H7ZAKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x276F7ACCE22C7C0"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: BcqCQ+gb8wWXhuQyNrPA9Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d76ce7f0-5da0-4d18-9413-d742dea9bcaf
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-902d762b-8f7d-c333-f10f-3a34991edae6/test-blob-8471854e-0e2c-3611-f02c-0a4d561a1f1c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_24
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
Q9u967boYxggIs1jJ1hLJoJnX+i7F71fFij35Xs+L0amxFGM05CYQhIVb1rC0JyZwxOxMr7xKywe
XdSO8H2c4vOGvGIHvlLxzhzWpadinUaLXiJnjPyHtZkkbnW8ClKVeI1nOxM6kQTAwGSiG4WFu8CO
A5FbNVb2/gfJ4lDdNcPJQCwa+mEzUc0dpsyY5ZkTn7K0LgfAOkM2cTwLca6z44qg2NpYa8BfWrHE
PY6KXhlutUOeKAe8CAbp44kkJ+AeacJB9wy+ujPxVdNV/Py0rBIjnbtrFbuC48/Ub4c3OjPRptTL
SGYMr/sPrdI0ZwwKNDd2AYkkslQHvxQ96kqsuhufg1Yn6WOsFu3AW2joTnvDyTpQwDmprPOAw4lR
z8WwY/K3leO14kvTyuqbZFfrH3CYeSEQW/ri9dZjpyXaWkYoD/h1MLiXDebvffVODkiclKQYuVWk
oAj41Z8NUjsl+W+kc1Redu64AGw6IN0ElOeOxxOBwaHxhG/wfVoZiruryYSGqZrzPR61YLjpaX8q
9EG4fooopDfOs+7lbvmTnnWwj1ZZfepMm4n0y2HoBxvvxogZYQwwgiVMuPasDs8lIsFDOdkp0HZX
a+MBM9nW5avT9adwej1pgAwxDcXzn4y6z6mfpM5BxvYRwfUoL09LdtJK2RgntaeD2rjN+MOxZMtW
RmQwNkDdkS+xXrhIQFC95ZbyqMZzkhoBG8oVdM0yYF0p0ejqGz+SbUfpdVbvO5loDxMsv7sF47RK
Lhp2yB1hfv5aHm5o0slWYDt/ihzDEuAwrWS6BqCiJO4zoO0kG6QpiPdYlBwr/zxJ1V+AhVmXhhw6
RRu4pnhduPp/NDLbMkSWVQIlan3EBa0ocDBBIZ6VnBnR6taJceF++9whq8sKbaMb6jBXchuedkBu
kDVHHJdb6pgYCkdtDOMgpm+holniHgONJTZuPin+MnSWG+CrN99FxsEy8WNbrd1MNsus/dPmi3Iy
ufZg7atuGtfT1/ECdW+QXNyYryyfMXhZIQhdUTWgr49ueH3o5NgVw9eLiNbrScBcG6H3TtxFk4h+
B8ujEciiMihilP3xp3cDgutVFKmibdhHADaTqWCzKOX1at0McbIO6FatibXDa3Mp88zw8H/f3Jnz
WxCSD4nHr2sX/D2Z9hA4RitT9OQihJXCabWTwjhlFo5EGRaie9nN5tpKq242j/y7t6lTjOi10Nd6
0KXTM+wysuauVd36lstShg0K2Ngmi9m42AqOEommj0g+J6sz+bLtF/mIhzofwSHeAQbaqvj+VETL
GlvipJ9cCMaUu28fHoxbHcHfngSfmRbpsBCDzORQP9JnaN9WCnNZLH9zigWyv+N5fo02H7ZAKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DEA2774A883A0"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: BcqCQ+gb8wWXhuQyNrPA9Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2f722a08-f49a-415a-9842-462624c5facd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-902d762b-8f7d-c333-f10f-3a34991edae6/test-blob-8471854e-0e2c-3611-f02c-0a4d561a1f1c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-902d762b-8f7d-c333-f10f-3a34991edae6/test-blob-f3f94480-d88f-e23b-447c-9cb7b5ac0412?sv=2027-03-07&se=2026-11-12T01%3A48%3A33Z&sr=b&sp=r&sig=M%2BXe%2BZchMvHMeoPfdCafcWjSk58JwuH8wPRf2cpyWWQ%3D
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2234E7179C879C0"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e17aa8ef-1aa1-4331-b65d-0b4e73f5736f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-copy-id: 2d5bdb28-4633-4302-829d-e54d1ebe4386
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-902d762b-8f7d-c333-f10f-3a34991edae6?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_26
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
x-ms-request-id: e9b396ef-57d3-4168-b3a7-0fced75fb321
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-115e3c27-7f11-53c9-4390-468916072dcc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_27
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x266B93E26354EC0"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2058162f-b297-4f0f-b51d-458e784cfcda
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-115e3c27-7f11-53c9-4390-468916072dcc/test-blob-3e327791-d0e2-9e2a-c280-1504c0595608

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_28
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
eXvomkS7/3EzwgJjzu6MKlx/kHlO8wDOux5Am8iIIOn+PdPaMYXXazzs3U98ZoVVBBwslne0foZ7
Gd4lemOpq6EZZJAasfjXpyQ8YRWwUlSZ65esW4pySr9NXximsfHZQzKuYwL0OlMjVO5SdxxxysaJ
jI7M/U8XpxnRzVHfMPUzYx7iAu9SpbFDiAabH9Oi25VRHSViDEXilrzpImwBRCT5HxT9jsfXN+fd
iHRIfIdGL/K8jRPQ0FbZ/2syaYNEQkPioQC/pUzNeuU+hYTQmho0ovN6RbYRKE69JI5cpM1kmEYx
ZtqGhoml7hMtkUvSCGVQ/saPyfyM0XmyAoC+cNUY2uw9nzRArRxp1Vej45cC6hwpC6YH1M5KpJRh
1IQJ5309FbdflWgwEFCqJvSl6e3irxdklGUvEAYd8/uf39mXYO7ZZs7fo1Wz+PtWXK3apLumfyVt
pFIYDgSxQaJtkTB2E8YFzIIfAgzCsJtp2bRYQ05A+GC0KbubwFjJLmKzRmfK30nn1dg4h3wZq/S2
rzVQWP5TLJjQwukKaQsqVtSpDmk0nvlqcW51CHHjm37H5REieNVjXxnO+hxf3GvNDTCnb5yKghA7
5eeQ3iQm7CdqQ4T5B97/Ra9QZaTcCpQCp/pBPCviPGIB55Lt04H1pw319Zjm0wVSqCnsOhxrXttT
jTYp5bD7hwYh+CBLEnIuWr6W5xX7HNT17pMC9gJGlYi3mUZKy8Fd+m2RxdvlB5a3vt9e1XfFV3Fi
NPcc+JEE22KYk3gr44/8OOynaVf4EOf9Szcj6MAQ8kLV6JbKQQHbjel5TXMdi9tQYpyKHe0aaSQP
Hq1a4PKhh6E1Vvr4MffrzNttf8Nz4L9c04YkhtRUun5yuiJUga3318XR5zXgVzCkn1ERrephnD7t
/Q1sfQDM4Zt7hnbUl0oudaf9ofiKe3tVf+aDQw2UEB7jZoOfilnEBQaZZNG6zwgG4jdCZPpGY4KS
F/4aSZ2N53VX8DDHj+tOOJzx8Bapm6/efGDWUawknQMBDHNbqrtoDH1bYt7XP1NL9CxdVHJr6HtP
O8w9tpbJMlMtxYJ38o3hiOSZTjjQBz0Nilx/x0mQlST3DG/uK1XnkS+LqXnQ1AGefMuO0ppDfjOP
MCw5SWsKnS9ef+Ye8l2OsrwIRF3DPLZa4Ut9AcOKtI07XvoorUfEgQxKclQagIlt/x/dOzrWzPN2
3mggjJtr08tZ4pNjZQR0Q8NQeMphQGDCDwGkrHlTZJIGss/epPRw3p6JwJ71CpkaaPd2hVMpFJ4I
XnyaxydSBn0BXbM1lp/O35kr2H/CzAVniUSB3N4+3J4w1kZ41hd3Nrog9K3m5dJYqKa5/TwfRg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DDDCA7DF064F20"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: 4Es+KjJ/izJQ5EYj671VJw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3ecc3421-6055-4841-913d-5d0d02b3b675
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-115e3c27-7f11-53c9-4390-468916072dcc/test-blob-c4a1b482-d8a1-8058-a371-29333884de61

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_29
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
eXvomkS7/3EzwgJjzu6MKlx/kHlO8wDOux5Am8iIIOn+PdPaMYXXazzs3U98ZoVVBBwslne0foZ7
Gd4lemOpq6EZZJAasfjXpyQ8YRWwUlSZ65esW4pySr9NXximsfHZQzKuYwL0OlMjVO5SdxxxysaJ
jI7M/U8XpxnRzVHfMPUzYx7iAu9SpbFDiAabH9Oi25VRHSViDEXilrzpImwBRCT5HxT9jsfXN+fd
iHRIfIdGL/K8jRPQ0FbZ/2syaYNEQkPioQC/pUzNeuU+hYTQmho0ovN6RbYRKE69JI5cpM1kmEYx
ZtqGhoml7hMtkUvSCGVQ/saPyfyM0XmyAoC+cNUY2uw9nzRArRxp1Vej45cC6hwpC6YH1M5KpJRh
1IQJ5309FbdflWgwEFCqJvSl6e3irxdklGUvEAYd8/uf39mXYO7ZZs7fo1Wz+PtWXK3apLumfyVt
pFIYDgSxQaJtkTB2E8YFzIIfAgzCsJtp2bRYQ05A+GC0KbubwFjJLmKzRmfK30nn1dg4h3wZq/S2
rzVQWP5TLJjQwukKaQsqVtSpDmk0nvlqcW51CHHjm37H5REieNVjXxnO+hxf3GvNDTCnb5yKghA7
5eeQ3iQm7CdqQ4T5B97/Ra9QZaTcCpQCp/pBPCviPGIB55Lt04H1pw319Zjm0wVSqCnsOhxrXttT
jTYp5bD7hwYh+CBLEnIuWr6W5xX7HNT17pMC9gJGlYi3mUZKy8Fd+m2RxdvlB5a3vt9e1XfFV3Fi
NPcc+JEE22KYk3gr44/8OOynaVf4EOf9Szcj6MAQ8kLV6JbKQQHbjel5TXMdi9tQYpyKHe0aaSQP
Hq1a4PKhh6E1Vvr4MffrzNttf8Nz4L9c04YkhtRUun5yuiJUga3318XR5zXgVzCkn1ERrephnD7t
/Q1sfQDM4Zt7hnbUl0oudaf9ofiKe3tVf+aDQw2UEB7jZoOfilnEBQaZZNG6zwgG4jdCZPpGY4KS
F/4aSZ2N53VX8DDHj+tOOJzx8Bapm6/efGDWUawknQMBDHNbqrtoDH1bYt7XP1NL9CxdVHJr6HtP
O8w9tpbJMlMtxYJ38o3hiOSZTjjQBz0Nilx/x0mQlST3DG/uK1XnkS+LqXnQ1AGefMuO0ppDfjOP
MCw5SWsKnS9ef+Ye8l2OsrwIRF3DPLZa4Ut9AcOKtI07XvoorUfEgQxKclQagIlt/x/dOzrWzPN2
3mggjJtr08tZ4pNjZQR0Q8NQeMphQGDCDwGkrHlTZJIGss/epPRw3p6JwJ71CpkaaPd2hVMpFJ4I
XnyaxydSBn0BXbM1lp/O35kr2H/CzAVniUSB3N4+3J4w1kZ41hd3Nrog9K3m5dJYqKa5/TwfRg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2447024C3340D40"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
content-md5: 4Es+KjJ/izJQ5EYj671VJw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9186fe20-1e6f-40c9-b64b-4c5b7650d499
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-115e3c27-7f11-53c9-4390-468916072dcc/test-blob-c4a1b482-d8a1-8058-a371-29333884de61?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 01b48f11-d9a4-6694-9081-312cd1e012fe
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2447024C3340D40"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-lease-id: 01b48f11-d9a4-6694-9081-312cd1e012fe
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a2015c9-6a2d-4508-b7d0-12a4f5fab1d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-115e3c27-7f11-53c9-4390-468916072dcc/test-blob-c4a1b482-d8a1-8058-a371-29333884de61

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-115e3c27-7f11-53c9-4390-468916072dcc/test-blob-3e327791-d0e2-9e2a-c280-1504c0595608?sv=2027-03-07&se=2026-11-12T01%3A48%3A33Z&sr=b&sp=r&sig=Mi%2BwxXMZdumnGBPfJd24WHrOHtTll4vQsDkOCTkHFJg%3D
x-ms-lease-id: 01b48f11-d9a4-6694-9081-312cd1e012fe
x-ms-requires-sync: true
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x273F3B89EA24D00"
last-modified: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 39bd6f35-8bfd-4ac0-82ec-286b08a81a52
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
x-ms-copy-id: 4835b4a8-7f58-40ab-9089-5b6b97d515ac
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 31: DELETE /devstoreaccount1/test-container-115e3c27-7f11-53c9-4390-468916072dcc?restype=container

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_32
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
x-ms-request-id: c4f87c12-b844-4ed9-8d63-7085aabcd3fd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:34 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

