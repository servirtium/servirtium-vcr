## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2c6e9c3c-1da0-3941-ff57-b5259601713b?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).DownloadAsync_AccessConditions_BinaryData
now: 2026-11-12T00:47:50.0675981+00:00

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
etag: "0x1E1286A8F58F060"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 091f3c3b-b9ce-4f3a-b757-6fc4baa28561
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2c6e9c3c-1da0-3941-ff57-b5259601713b/test-blob-e4da4cb3-e06e-33da-a997-b404a2afe8b2

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
qlZCsNTADhGEXiMmd6x0Z9jPKW6AuPnjqzwCE4U2QF+D64A/eIaxfI5dp0H5GsJS401Nx9cDu/Fd
XgSYvfuLTh7Eo4ssNe5SHq3gIhG46pB5sC836XiHgDCO4RqBGL6S0VkiNXc2Ja1e+6gpI5jgpHR0
Hg3LU2SlPCJbnlPU0AXvTVG3lbUZQ4qC2e7QXV2XrT2lDPqwx371ffhU24daiSqjOtVHKQ+/WtuD
SXp21d7Fw/AWL8MKPobSwhi8xWcCJ0/DLCOHUIQt5rIfLX0DfqcajheXQ1pmmPtPdGb3ApVzgCEr
sqm7PnJr6EkR6xEIz0NwojZQa+T0XZMnONweNuMcrKxc2Mv+X1ClLFsRVK3qRqQihmBfIxU9NlUV
kwWWTbJm9T9lrPZ4ckPmqj+J4wjmPfE3+6+CvYiWHqF16MtKDt6oq15uhZmuqhQdeHjWtFNMLlUT
XlED4zi2zo1VAol3nJxg4DeqeLhYiVGaZUQQwGpNKbp2NrCNpMcmt7cLWKeLptzcdtMboradu9QA
aH7zpQ0jB9nPAGXr0zxwg8ABTDCpD75oNEqWMoYD2HrbjDtJMhGp6FHOu6V28KKXqx/1nG+jVlm/
i3HDjNVSyyfrD0YAJlCuV2Tf2lMZ8kOn/4ZnDTwLNzbiiqeg5lt7fPB9i+FcloTOR0QKxHsFpZku
G41O673r39cPHpyoDnEJY15jnGdiSmgBmMb4AHO63OQOcsrNLZAykqsJTHjoJjjTAWAcogkyy9Ak
TVL38t9jVUG4mZymOzbNMAq7Wf3vGXKNJf8TnTrb3Kb6qOA+O5/Lpfc3MIycLMUpTnH+dnLSNDPf
ac3fULgG3L31rJNWj/Vq8LMGuOnm8Pg56k7J3GYzJ3OsX9HS61U/MFPOpoAx0r98lIW/zHxK+HjU
pmVpPQBWwoQfqjAjmARex4eWF0p4BxeOTEjgdFv3YmZZ/kXv1fNSeOT7EiiPWPuBYAT0tOEuW55O
2vC4dk4pKEjJypm+b/GUQ59mffXv//RMXxNWAq2FKqKnoPsCmgKV0ungxY5hw/ETYHBByN6oX9v8
axc60iWaRJ/3Fs72kamd0KsLDjll6pwhQ6I8Q2LE/0EfBi7qWv/ERYHvaqwjHM7Ho/cznFChloF7
GI+DXQE8MheM1ot6snWrR8m4dn/v/ibTdJ9rkGPxfm+sb0FvQOh/sjiUlkZDTfGBh1SH6SACixpo
r+hh0aG0m1gczkIzOwfgOMNHW2fgkCeu6QkOaZRPquQnB5D/HuGW4PvuJn6uTktNprFcujCyhx7A
s+eYpTHDzSNeDDR24RrisHps8mmp/5u9wcPj8u+0dX9xPmr6/jrJKllbUEEX1sSXegm1RZW0Fw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20FF87828108040"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
content-md5: /1trAIF82/ANLrIds2TDqQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5777de74-11f6-44ed-95f6-86c233c060c5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-2c6e9c3c-1da0-3941-ff57-b5259601713b/test-blob-e4da4cb3-e06e-33da-a997-b404a2afe8b2

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x20FF87828108040"
content-md5: /1trAIF82/ANLrIds2TDqQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72021d06-1f8a-4061-84bc-eb5c7071a276
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: /1trAIF82/ANLrIds2TDqQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
qlZCsNTADhGEXiMmd6x0Z9jPKW6AuPnjqzwCE4U2QF+D64A/eIaxfI5dp0H5GsJS401Nx9cDu/Fd
XgSYvfuLTh7Eo4ssNe5SHq3gIhG46pB5sC836XiHgDCO4RqBGL6S0VkiNXc2Ja1e+6gpI5jgpHR0
Hg3LU2SlPCJbnlPU0AXvTVG3lbUZQ4qC2e7QXV2XrT2lDPqwx371ffhU24daiSqjOtVHKQ+/WtuD
SXp21d7Fw/AWL8MKPobSwhi8xWcCJ0/DLCOHUIQt5rIfLX0DfqcajheXQ1pmmPtPdGb3ApVzgCEr
sqm7PnJr6EkR6xEIz0NwojZQa+T0XZMnONweNuMcrKxc2Mv+X1ClLFsRVK3qRqQihmBfIxU9NlUV
kwWWTbJm9T9lrPZ4ckPmqj+J4wjmPfE3+6+CvYiWHqF16MtKDt6oq15uhZmuqhQdeHjWtFNMLlUT
XlED4zi2zo1VAol3nJxg4DeqeLhYiVGaZUQQwGpNKbp2NrCNpMcmt7cLWKeLptzcdtMboradu9QA
aH7zpQ0jB9nPAGXr0zxwg8ABTDCpD75oNEqWMoYD2HrbjDtJMhGp6FHOu6V28KKXqx/1nG+jVlm/
i3HDjNVSyyfrD0YAJlCuV2Tf2lMZ8kOn/4ZnDTwLNzbiiqeg5lt7fPB9i+FcloTOR0QKxHsFpZku
G41O673r39cPHpyoDnEJY15jnGdiSmgBmMb4AHO63OQOcsrNLZAykqsJTHjoJjjTAWAcogkyy9Ak
TVL38t9jVUG4mZymOzbNMAq7Wf3vGXKNJf8TnTrb3Kb6qOA+O5/Lpfc3MIycLMUpTnH+dnLSNDPf
ac3fULgG3L31rJNWj/Vq8LMGuOnm8Pg56k7J3GYzJ3OsX9HS61U/MFPOpoAx0r98lIW/zHxK+HjU
pmVpPQBWwoQfqjAjmARex4eWF0p4BxeOTEjgdFv3YmZZ/kXv1fNSeOT7EiiPWPuBYAT0tOEuW55O
2vC4dk4pKEjJypm+b/GUQ59mffXv//RMXxNWAq2FKqKnoPsCmgKV0ungxY5hw/ETYHBByN6oX9v8
axc60iWaRJ/3Fs72kamd0KsLDjll6pwhQ6I8Q2LE/0EfBi7qWv/ERYHvaqwjHM7Ho/cznFChloF7
GI+DXQE8MheM1ot6snWrR8m4dn/v/ibTdJ9rkGPxfm+sb0FvQOh/sjiUlkZDTfGBh1SH6SACixpo
r+hh0aG0m1gczkIzOwfgOMNHW2fgkCeu6QkOaZRPquQnB5D/HuGW4PvuJn6uTktNprFcujCyhx7A
s+eYpTHDzSNeDDR24RrisHps8mmp/5u9wcPj8u+0dX9xPmr6/jrJKllbUEEX1sSXegm1RZW0Fw==
```

## Interaction 3: DELETE /devstoreaccount1/test-container-2c6e9c3c-1da0-3941-ff57-b5259601713b?restype=container

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
x-ms-request-id: e58507b9-871f-4570-afc4-9a7b4dd538a5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-10c8a33f-af4d-a659-ebfe-4c78e6fe2fea?restype=container

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
etag: "0x212973CA3F51720"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a81b9804-c8e8-447f-aaa8-7db38a74833b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-10c8a33f-af4d-a659-ebfe-4c78e6fe2fea/test-blob-cabb77d2-08dd-32d2-2f1c-3fe5797d54a2

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
vCe2riNWW0l/KKaqYtEi55FXdaLNpMoE8jT5b5RhTatoykd7+DqP6Ud+kSUJr0MZ3GTmj4iMHBhc
srvvXeu0Hdr7QpiKpu9Xx4xaThOk+0Lw35Mwe74i260vHkZ+oItcynRKDW2rjzZ1jsf8Mc4FuLd4
/n1YhKEc2GbqWoep2ScB/oSeWe3VRVBdu+z3JqnfKmaOBaINBEXSLjUGwTSuy7Wf+jJJZl7Jo7gs
+si1JbK8CjAgGtOF8/o+zCu4z4Qcru83Vyt3lcQIxGLp4Al8HQmCSbYEjrHhGgc3C5kzEdM0EEzZ
fc2GRXVrGFVxnBLxwa4hNYbNFyA+VT0kP4oq1LKPtNC9o588+wNBmHVbcH70RknqEtxNZ/grmyeQ
YgbqQUSi4edCNB4O5TmCi3+q4uW/MPhBP8LWQU3XkQh3q5n8VlcxuI6WshIq3Cyiytt5gLhC0DIO
qQGCzKCaaqIWlzmghTQoeSlWKH7mFmOVM3ZyXhBPNdtm7q1Vr+zu/EdvFETzAkSmUAeO66i0J5Oe
7JgpJwuSxmFeOZeH0so9aCw2dgEeoTExyw0JwEkzssYat8JTxNQ83U7jlcitH348UYN7frGRf0tn
91z9iAUYK4bQbRsI6aNX+ZmzOwtohKyPzW/FtzQViDd368x4P1RIympB3LFiNGffI4QX3UQ//nOv
bbuWUnNSu+Tkkf7X37pFa3ChJqf6LZgH5pOw/arzN+1ZyNGYsnf27yHMfqNpCETJ0nLTntfLtD8i
jmzgob068VkQfRfprLn5qjaGLq/1nt1P5is3H5kVjRORdSMKFk5jkoxJWIot4CW52vOgRYaQLe+O
kLuSAtG/++8DVzaV7pPoI5siq0VSIgYFfkWldEiNAUgzfIaS0ZC7il2bKYnuJOtguCLrbYGqO261
jIOLGYemdlbuYXINVVEKZiHot/h8F1paRbwmoZPHiUAX3UQMMHHW9LMzAMJ5UmLQ4AZgwYR1OHUp
MdPKgNTCJtcx9XgN/TawEsNFSRaX4PJaVsGMZ8i7oaXP4/6dC3PecNnrR1zpwuLQsK/BMO5ekVDg
cCkTNb8PdVTSPRo4EgZPZtk8rJmWcJPevLcZ+nG3cVGtvJtJyzoa3NEIF4XIl52occoVIeW3Sv+W
NHkI9XviG8zIilZrBZqeIs/HjVgOFSQZcImnok9r9nGbs5fBEeZWJvy5AA1HPWwvdv8V8L2miB5U
7oXyO3h8XJTk0FID3BDpcWZcVBUX0jMcdytQVQW09Ct4bSNhZOuDPKN5YmwaK5ruLH9WSjMJPRtR
1cNNLAeOMNwmi2/tiAx72RhynW/GAkyRYSmGXan3by8HD44nNhCc6jKQ86AqAaNy2nEblp+riw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E241314CB3200"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
content-md5: av2H2/IHtNL0aGnM+Je88g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a7f23e3b-3e94-4cf9-8a7d-bc61444a6216
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: GET /devstoreaccount1/test-container-10c8a33f-af4d-a659-ebfe-4c78e6fe2fea/test-blob-cabb77d2-08dd-32d2-2f1c-3fe5797d54a2

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_7
If-Modified-Since: Wed, 11 Nov 2026 00:47:50 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x20E241314CB3200"
content-md5: av2H2/IHtNL0aGnM+Je88g==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 627a338a-30f7-4c73-a74a-11430a539490
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: av2H2/IHtNL0aGnM+Je88g==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
vCe2riNWW0l/KKaqYtEi55FXdaLNpMoE8jT5b5RhTatoykd7+DqP6Ud+kSUJr0MZ3GTmj4iMHBhc
srvvXeu0Hdr7QpiKpu9Xx4xaThOk+0Lw35Mwe74i260vHkZ+oItcynRKDW2rjzZ1jsf8Mc4FuLd4
/n1YhKEc2GbqWoep2ScB/oSeWe3VRVBdu+z3JqnfKmaOBaINBEXSLjUGwTSuy7Wf+jJJZl7Jo7gs
+si1JbK8CjAgGtOF8/o+zCu4z4Qcru83Vyt3lcQIxGLp4Al8HQmCSbYEjrHhGgc3C5kzEdM0EEzZ
fc2GRXVrGFVxnBLxwa4hNYbNFyA+VT0kP4oq1LKPtNC9o588+wNBmHVbcH70RknqEtxNZ/grmyeQ
YgbqQUSi4edCNB4O5TmCi3+q4uW/MPhBP8LWQU3XkQh3q5n8VlcxuI6WshIq3Cyiytt5gLhC0DIO
qQGCzKCaaqIWlzmghTQoeSlWKH7mFmOVM3ZyXhBPNdtm7q1Vr+zu/EdvFETzAkSmUAeO66i0J5Oe
7JgpJwuSxmFeOZeH0so9aCw2dgEeoTExyw0JwEkzssYat8JTxNQ83U7jlcitH348UYN7frGRf0tn
91z9iAUYK4bQbRsI6aNX+ZmzOwtohKyPzW/FtzQViDd368x4P1RIympB3LFiNGffI4QX3UQ//nOv
bbuWUnNSu+Tkkf7X37pFa3ChJqf6LZgH5pOw/arzN+1ZyNGYsnf27yHMfqNpCETJ0nLTntfLtD8i
jmzgob068VkQfRfprLn5qjaGLq/1nt1P5is3H5kVjRORdSMKFk5jkoxJWIot4CW52vOgRYaQLe+O
kLuSAtG/++8DVzaV7pPoI5siq0VSIgYFfkWldEiNAUgzfIaS0ZC7il2bKYnuJOtguCLrbYGqO261
jIOLGYemdlbuYXINVVEKZiHot/h8F1paRbwmoZPHiUAX3UQMMHHW9LMzAMJ5UmLQ4AZgwYR1OHUp
MdPKgNTCJtcx9XgN/TawEsNFSRaX4PJaVsGMZ8i7oaXP4/6dC3PecNnrR1zpwuLQsK/BMO5ekVDg
cCkTNb8PdVTSPRo4EgZPZtk8rJmWcJPevLcZ+nG3cVGtvJtJyzoa3NEIF4XIl52occoVIeW3Sv+W
NHkI9XviG8zIilZrBZqeIs/HjVgOFSQZcImnok9r9nGbs5fBEeZWJvy5AA1HPWwvdv8V8L2miB5U
7oXyO3h8XJTk0FID3BDpcWZcVBUX0jMcdytQVQW09Ct4bSNhZOuDPKN5YmwaK5ruLH9WSjMJPRtR
1cNNLAeOMNwmi2/tiAx72RhynW/GAkyRYSmGXan3by8HD44nNhCc6jKQ86AqAaNy2nEblp+riw==
```

## Interaction 7: DELETE /devstoreaccount1/test-container-10c8a33f-af4d-a659-ebfe-4c78e6fe2fea?restype=container

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
x-ms-request-id: 8500c8b0-485d-48f8-8f3f-4c72f7359218
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-3db3d607-0f35-66ab-6085-138238dcd890?restype=container

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
etag: "0x26C712D407DF260"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d8f9f9f-c378-415b-a819-a7ec85c30c8c
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-3db3d607-0f35-66ab-6085-138238dcd890/test-blob-dd692d32-a181-93d0-001f-dce0d1be526c

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
W4O8sHpGvuJgXsSE6xwq9IbOE8DsblXDy1VqWPRP+VJDron1waMowRjQ3NdLJ3tDWh/7askYpO0u
+OQl22XuEGVxQDySNTLjpVGoG5F+eKTZJv3UVI6JKwqcxsm+A+Wy4sxx2ec+sSXsGMR3cIhbsIBA
S7VoGbzW6BQx9m5pJKJs9jnFDJ69mnTY6DvJEbuCQBZJfrcvSsgQmvDSDbq3g/QhC3pOlqPhg7BA
jzGADddZrrVXIKXrPKxxtHKu6o26IWRHpwVBNKpzZ/sG77qXkI0ZeV4FX2JONs/N3OIxM5gjhm7M
OWXRF3oL5Liq5Ezx2iTklHEutMEC+HE2c1fIQTRi42hLylYoR2Hk+nuqpFGC3AK9TJ4n9NGsykH0
m6QiQqKDRwHkpQ/NvE0PSrpGV1Qfs5dUCvSWO+6WnwAVNKy9wbfYJlxQnjby75BQF6oXZnLt1OcM
zjit7QwSTQYPuIigUogDbjD4zhVgYhpkRSRDfziNKF/FsPN+KjlPPlAw4zYIsMUhFPdC9QbRrGwd
Safozs7NgpAp26GVhEP3qJDFMH/kXJVfImtASzJY8wSHYeCSZ2+BYmCm3tUjjI+0Skx2DHvtOe0S
iKxjjDdd0OecDiNjZEAgQ84ePn3AO5XbjADm4ueImijzgN7CHdUpSA7thn1sUOUMVcitzvtvUU0W
iP82d+7/E3T7b+RhXSX49PVv0rQXbzwa2o0f28stgy6RrJXW89Ag7XMJceEBqveitNoFAH+Y/hjD
HJ1g4Diozeu20LGPIgElTuVBDv5aGS+VfCbxJ4Ov+K19EtYzvw06YKP1StlFEpLY4LGaV/AaaAJt
ymMRt6ZoB9gEEg8q8Y/YBq1aZc5WUGmUGUfRFKC8YqnUxfSpKan8jUMBQQCCre4iwlFDvwM0F3r6
fZ5el/I3SK9mViuaLt0DXdiLVQ9pEWtZr1JPeKOln656r6sLnvVQyvlQHFbCh5NzQGErqMJrkGsy
Beef588MwLZ9IH8x+L/iOosWGfUUlii/3DhBefbsDh4/2JgOsOIpQ1ufRWYTQkehSW03VXd2Hm+/
4AuWykfAkBJh8R8n04qo7NWZdFDBrJnwny+JtbmnybopTtDXk3gU37VUslEoenbjjmmh3Kke/TRx
pSsXNtpYuSdk/YS60VhchZWbbfpHyCW5pSdQBewRC1GbZe1N/Kja+/gpw33xKb0QRVYUgpA6KtwG
XZGzCLM7U/IzHmtqDonswXEBHgWoyHxpQMCV/YjAYTsRR54XJvNE7m+KvQpRpTbNJ8AeOAvXXpUU
SsjzpVZpcrwwWcbq1Jp+vTCVHQtyF5qJyNXIoikvOekJAtwrUUgZIEpNIUxw41MmoHrbQUCKog==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E42FA259FA44E0"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
content-md5: fuF0+wGkJw4/o5pndTy/eg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c750cdb2-2519-477b-be86-fd8db22eafce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-3db3d607-0f35-66ab-6085-138238dcd890/test-blob-dd692d32-a181-93d0-001f-dce0d1be526c

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_11
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:50 GMT
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1E42FA259FA44E0"
content-md5: fuF0+wGkJw4/o5pndTy/eg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e2630037-3cd0-4ea7-9588-c7d8652bcfb6
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: fuF0+wGkJw4/o5pndTy/eg==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
W4O8sHpGvuJgXsSE6xwq9IbOE8DsblXDy1VqWPRP+VJDron1waMowRjQ3NdLJ3tDWh/7askYpO0u
+OQl22XuEGVxQDySNTLjpVGoG5F+eKTZJv3UVI6JKwqcxsm+A+Wy4sxx2ec+sSXsGMR3cIhbsIBA
S7VoGbzW6BQx9m5pJKJs9jnFDJ69mnTY6DvJEbuCQBZJfrcvSsgQmvDSDbq3g/QhC3pOlqPhg7BA
jzGADddZrrVXIKXrPKxxtHKu6o26IWRHpwVBNKpzZ/sG77qXkI0ZeV4FX2JONs/N3OIxM5gjhm7M
OWXRF3oL5Liq5Ezx2iTklHEutMEC+HE2c1fIQTRi42hLylYoR2Hk+nuqpFGC3AK9TJ4n9NGsykH0
m6QiQqKDRwHkpQ/NvE0PSrpGV1Qfs5dUCvSWO+6WnwAVNKy9wbfYJlxQnjby75BQF6oXZnLt1OcM
zjit7QwSTQYPuIigUogDbjD4zhVgYhpkRSRDfziNKF/FsPN+KjlPPlAw4zYIsMUhFPdC9QbRrGwd
Safozs7NgpAp26GVhEP3qJDFMH/kXJVfImtASzJY8wSHYeCSZ2+BYmCm3tUjjI+0Skx2DHvtOe0S
iKxjjDdd0OecDiNjZEAgQ84ePn3AO5XbjADm4ueImijzgN7CHdUpSA7thn1sUOUMVcitzvtvUU0W
iP82d+7/E3T7b+RhXSX49PVv0rQXbzwa2o0f28stgy6RrJXW89Ag7XMJceEBqveitNoFAH+Y/hjD
HJ1g4Diozeu20LGPIgElTuVBDv5aGS+VfCbxJ4Ov+K19EtYzvw06YKP1StlFEpLY4LGaV/AaaAJt
ymMRt6ZoB9gEEg8q8Y/YBq1aZc5WUGmUGUfRFKC8YqnUxfSpKan8jUMBQQCCre4iwlFDvwM0F3r6
fZ5el/I3SK9mViuaLt0DXdiLVQ9pEWtZr1JPeKOln656r6sLnvVQyvlQHFbCh5NzQGErqMJrkGsy
Beef588MwLZ9IH8x+L/iOosWGfUUlii/3DhBefbsDh4/2JgOsOIpQ1ufRWYTQkehSW03VXd2Hm+/
4AuWykfAkBJh8R8n04qo7NWZdFDBrJnwny+JtbmnybopTtDXk3gU37VUslEoenbjjmmh3Kke/TRx
pSsXNtpYuSdk/YS60VhchZWbbfpHyCW5pSdQBewRC1GbZe1N/Kja+/gpw33xKb0QRVYUgpA6KtwG
XZGzCLM7U/IzHmtqDonswXEBHgWoyHxpQMCV/YjAYTsRR54XJvNE7m+KvQpRpTbNJ8AeOAvXXpUU
SsjzpVZpcrwwWcbq1Jp+vTCVHQtyF5qJyNXIoikvOekJAtwrUUgZIEpNIUxw41MmoHrbQUCKog==
```

## Interaction 11: DELETE /devstoreaccount1/test-container-3db3d607-0f35-66ab-6085-138238dcd890?restype=container

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
x-ms-request-id: afa8c257-0b51-4310-b8c3-c44806c738ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-c0fc7ce7-f624-194e-e481-a202ae54f7a9?restype=container

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
etag: "0x1C63C522625D150"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f7d4693a-9d49-4837-9e07-4e2be5dd54ef
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-c0fc7ce7-f624-194e-e481-a202ae54f7a9/test-blob-d84e2df1-293c-5106-1135-3a622ed35d5a

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
f2Cq/edrmH96uiAskwKBZ00O88VDyX4831D4///O5KwoM2FxFFSEfOR9RmnWIYXhADq0n2AyZbXh
bh6Wcpl/rNZzBF+hD1P5iXbhxoMUZb3KFv7FGURM9c2rkKU27gpL/ZmTYh0lQPHmuxbpUZ8yzQhg
y1uaupKRJw6S9n+twptslcjpgAOfpNYN314uYqQueMOd1SKvsEMHAjsPk0lxOPh6fbvWSUwEwSaE
jds0Y8RqY368EO15veWF4n7IkBGNm6ZmtOXoVy92mBP7KyNo0592pDDLtSgKAcDWUWbNPDAV9vE0
za/fggtORXfZfZHBHA/fUevgwuV+W7MlEQbIqVzj5TQxNAXwlyIlfHCwMIMuFDRX7utFNTQLtXL7
uXAFhpsa9pddj+gK77nIu0Z1zSov9/3RcLtxnbAAJX6S9N2yIPXUljrr0IRMTf4xfHntludHzMJy
MxXgqVnmXGpqd/vcFZtQoDfwRCZ4hSO8PyA3Eo+WSycbP+zg9OzgBHMa4dYDVWbenfavVoic+q7x
I2o4r0ra0yvTwNWub6xLDz+yXaNNueq5WHWZ5vWffkU+7tCBqFQpPw6qL5SQLy1KZEZI6pwLpGqA
f1fUQew2NEKQcIHbyWfqiB6VoolVKClIToKuVpSpMklmASn9VP4hdPtSAL6sbpreXmF+dgLgKlYu
jPJqh92t5j03dMg+7TQgcy2NAydqnODo0PgzK7xHhtfSz8cLt+0epRmAdPrSoHAtXgLVUicuw/AS
grfkebuA8O7wax1sFLw/b14O6SflFjCHBs26cTOwpAvX+DQ2OStdAIQL4TRSwElFleLJINrJLGyH
XHPuxn66QMcSlRuHCTUysOmj2TT8NEWDddtQ54MwDsvIr923bzkFUaFsQCstvYytlm/xJVM3iycu
a1GjaVlD4YdQvllYe0GvnYiTj/QZVbdOo1EUP+h4kSS1iQPoYedHKF+k3f8yVBouQYfKpPszFBWa
VMYIL6Ke1y01o/I9xzugS2eVdHi4HE825f1gre0ogXTuTg0hP/i8BQXR/LEn8XpMKliTnp+c4Th2
0UqkPipADCF+Tngufwxu2G9y5h+dDvSCFIOUlePUUmzVqm6uGMfbkfCQqaICHatMJcUwKfsY2cJV
ISqmq3c9qfwMWdSdwL+nl1UvDWRSgPbYSG8doyhxvNGrWfacNOZ4UgCl9cTWrmUGiJKm6ctdA6Ez
zmIHHwXUmpwC8mbJC2JutrtkrIoyAZoKFxqWy9IGTVZVaWaDcDP60Von07v+PH0vNzIQ+VYWAczH
/QjqPs/J/KUQdKH86kaIatsvCi7eDNqcZpOg9VP/PmeZvHMrD5KLXdYW7cjcM0zsiI965vae6Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2203D6DFFD56EC0"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
content-md5: rBSA5Z+S6av4gZa2OfMSwQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6be97d4a-6d94-4b66-b5ea-e15e31d6d8cb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 14: HEAD /devstoreaccount1/test-container-c0fc7ce7-f624-194e-e481-a202ae54f7a9/test-blob-d84e2df1-293c-5106-1135-3a622ed35d5a

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
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x2203D6DFFD56EC0"
content-md5: rBSA5Z+S6av4gZa2OfMSwQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e84c676c-50f1-466c-9d76-4b92a1d18f48
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:50 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 15: GET /devstoreaccount1/test-container-c0fc7ce7-f624-194e-e481-a202ae54f7a9/test-blob-d84e2df1-293c-5106-1135-3a622ed35d5a

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_16
If-Match: "0x2203D6DFFD56EC0"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x2203D6DFFD56EC0"
content-md5: rBSA5Z+S6av4gZa2OfMSwQ==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 77f1eb07-ad8b-4e12-8b6a-795db90f1b81
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: rBSA5Z+S6av4gZa2OfMSwQ==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
f2Cq/edrmH96uiAskwKBZ00O88VDyX4831D4///O5KwoM2FxFFSEfOR9RmnWIYXhADq0n2AyZbXh
bh6Wcpl/rNZzBF+hD1P5iXbhxoMUZb3KFv7FGURM9c2rkKU27gpL/ZmTYh0lQPHmuxbpUZ8yzQhg
y1uaupKRJw6S9n+twptslcjpgAOfpNYN314uYqQueMOd1SKvsEMHAjsPk0lxOPh6fbvWSUwEwSaE
jds0Y8RqY368EO15veWF4n7IkBGNm6ZmtOXoVy92mBP7KyNo0592pDDLtSgKAcDWUWbNPDAV9vE0
za/fggtORXfZfZHBHA/fUevgwuV+W7MlEQbIqVzj5TQxNAXwlyIlfHCwMIMuFDRX7utFNTQLtXL7
uXAFhpsa9pddj+gK77nIu0Z1zSov9/3RcLtxnbAAJX6S9N2yIPXUljrr0IRMTf4xfHntludHzMJy
MxXgqVnmXGpqd/vcFZtQoDfwRCZ4hSO8PyA3Eo+WSycbP+zg9OzgBHMa4dYDVWbenfavVoic+q7x
I2o4r0ra0yvTwNWub6xLDz+yXaNNueq5WHWZ5vWffkU+7tCBqFQpPw6qL5SQLy1KZEZI6pwLpGqA
f1fUQew2NEKQcIHbyWfqiB6VoolVKClIToKuVpSpMklmASn9VP4hdPtSAL6sbpreXmF+dgLgKlYu
jPJqh92t5j03dMg+7TQgcy2NAydqnODo0PgzK7xHhtfSz8cLt+0epRmAdPrSoHAtXgLVUicuw/AS
grfkebuA8O7wax1sFLw/b14O6SflFjCHBs26cTOwpAvX+DQ2OStdAIQL4TRSwElFleLJINrJLGyH
XHPuxn66QMcSlRuHCTUysOmj2TT8NEWDddtQ54MwDsvIr923bzkFUaFsQCstvYytlm/xJVM3iycu
a1GjaVlD4YdQvllYe0GvnYiTj/QZVbdOo1EUP+h4kSS1iQPoYedHKF+k3f8yVBouQYfKpPszFBWa
VMYIL6Ke1y01o/I9xzugS2eVdHi4HE825f1gre0ogXTuTg0hP/i8BQXR/LEn8XpMKliTnp+c4Th2
0UqkPipADCF+Tngufwxu2G9y5h+dDvSCFIOUlePUUmzVqm6uGMfbkfCQqaICHatMJcUwKfsY2cJV
ISqmq3c9qfwMWdSdwL+nl1UvDWRSgPbYSG8doyhxvNGrWfacNOZ4UgCl9cTWrmUGiJKm6ctdA6Ez
zmIHHwXUmpwC8mbJC2JutrtkrIoyAZoKFxqWy9IGTVZVaWaDcDP60Von07v+PH0vNzIQ+VYWAczH
/QjqPs/J/KUQdKH86kaIatsvCi7eDNqcZpOg9VP/PmeZvHMrD5KLXdYW7cjcM0zsiI965vae6Q==
```

## Interaction 16: DELETE /devstoreaccount1/test-container-c0fc7ce7-f624-194e-e481-a202ae54f7a9?restype=container

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
x-ms-request-id: 2583634f-81a5-4335-9f4c-ee81819147e5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-57ada449-1ec8-c012-3247-b36dc4855871?restype=container

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
etag: "0x2093B67CE598EA0"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bc063c0b-5f64-4e62-a59c-f6398962e029
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: PUT /devstoreaccount1/test-container-57ada449-1ec8-c012-3247-b36dc4855871/test-blob-aad43d6f-f762-508b-9173-51c919f41a2e

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
+9KC/cG6TzTQxdyTodEdGSs0MUFJRyDSGo2l9HWYjIvcyGdbUF+ZjlV4hwJCfh9hKZpCkFMXJ7Sy
r+M0FFq+NzhQtthqwcjMm6Lr0MAej5tuRMrbVvw4xaGzqaF7ZHn7uk/J8shG92jRdvSwK1fzkyBH
xtCP4uA8GPE3thcnUDYp8BZwVJ3TJ01iCt8Ih5pJvxWBNJ6pa9hujdnWDkBQqia9hzpBgz+Cc56D
LNgBNJFX7fcBphuYf4Q9AcbD/RkMEl+5Sv9fCDvW/sAAJj//bVlIfyBITgQKJQi2A4F4vnaFdhl4
R+qR+OW8K6dbmFhFPpRte374xMRbryT2qQW5XUBKerAlhyZutoY7jCJcr42vcMXtC0P4jLFVHJjF
mk/fAs5nER2oILZt/sT3vTei/wCXRzhAy1L8Ue7+z2uNqRs3W4pU9Z1wBk8Ofwx/AM56sx2XLVMW
nzZ8ar8uqlBL4FWov2GtTQliJ0DoMUtFfVAfhBxN9XzIIbtT14veQVz/w5+31kBtzGUTNQYTLW7q
NuxuDiU0/erY4J6lWnV+hOXj6W2sjqcPsre2OsB2tfNNaKGebzM3ysW13vaix3LvlLEgL0MAPqdF
XltufcIpYiqqWPHU3xSyrB+o9q+wbetFx6YPVYWwTSr5WRDXyU0DjHvL926AG7ScbYMkWEj3lPFw
KLYcGgyl+gvH2oYD2+PRpWo05HV8xazxcugCi/ThAcQfZ6CX5nFvJv1juEAumZGfUrPew69782MJ
Kqgjo24W5djB5HRCOr74xb54GAxrw9lWYjlBAz4UpHM9jbzJS4KOTdNnbbQdXRj05f7xAtpXnWfO
zUA11OKarEAABawCLno76ss4BFYkOQUgTB4/I6GZ5e9U+n5CWXnxzcB0HVdr8raEtRgPHpkQqpM7
FIfEWoieZx+9rTT8+ZBRRzaVrxyttVpnu22IicdVRFDqBkTxLHI31bY4rkSCiLyHvdZje/p3jV8t
XJ8bFt1YZ2nkEfNLYBrEXdpldQcV5DKxAMvw8slVcnjlxNDSHL/Y30bbnnbJO127nh0gERdXF3hs
aRURZ3Wgjp56ZptK8UAbjZXAOka76MVtNFOrNWFgja1XZbOqxnjROw/XTtXCca3cBYSClt0ysYFQ
pDIh9Fk9Gdju84uNcMYd7/4245nvq8OmzzDc3vbPJbQxWiJGr0a2mjX91H4hTpS9ZKfe/M3oYPhu
eiUpYTrhHs3XXBak1j+4gElj8tZFhYCbHnlP8SnnSPkp1zUhjDj6G7awSfJ9GY1oJnyDhW0iKfWk
jULAkiyk7xMdev8KlvMQaNYglTuOHgXr58qsZMOLB65AfP72OomJC1reYJ6OXo+IchyXAZO5Fg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26A2F6F77960EE0"
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
content-md5: b/5tWtvh9+cU171HMqTqBg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5dbedca0-7aca-43db-ad31-f3704e6cdc89
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 19: GET /devstoreaccount1/test-container-57ada449-1ec8-c012-3247-b36dc4855871/test-blob-aad43d6f-f762-508b-9173-51c919f41a2e

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "garbage"
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:50 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x26A2F6F77960EE0"
content-md5: b/5tWtvh9+cU171HMqTqBg==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e542116a-f60f-4efe-af18-771d2b6e5601
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:47:50 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: b/5tWtvh9+cU171HMqTqBg==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
+9KC/cG6TzTQxdyTodEdGSs0MUFJRyDSGo2l9HWYjIvcyGdbUF+ZjlV4hwJCfh9hKZpCkFMXJ7Sy
r+M0FFq+NzhQtthqwcjMm6Lr0MAej5tuRMrbVvw4xaGzqaF7ZHn7uk/J8shG92jRdvSwK1fzkyBH
xtCP4uA8GPE3thcnUDYp8BZwVJ3TJ01iCt8Ih5pJvxWBNJ6pa9hujdnWDkBQqia9hzpBgz+Cc56D
LNgBNJFX7fcBphuYf4Q9AcbD/RkMEl+5Sv9fCDvW/sAAJj//bVlIfyBITgQKJQi2A4F4vnaFdhl4
R+qR+OW8K6dbmFhFPpRte374xMRbryT2qQW5XUBKerAlhyZutoY7jCJcr42vcMXtC0P4jLFVHJjF
mk/fAs5nER2oILZt/sT3vTei/wCXRzhAy1L8Ue7+z2uNqRs3W4pU9Z1wBk8Ofwx/AM56sx2XLVMW
nzZ8ar8uqlBL4FWov2GtTQliJ0DoMUtFfVAfhBxN9XzIIbtT14veQVz/w5+31kBtzGUTNQYTLW7q
NuxuDiU0/erY4J6lWnV+hOXj6W2sjqcPsre2OsB2tfNNaKGebzM3ysW13vaix3LvlLEgL0MAPqdF
XltufcIpYiqqWPHU3xSyrB+o9q+wbetFx6YPVYWwTSr5WRDXyU0DjHvL926AG7ScbYMkWEj3lPFw
KLYcGgyl+gvH2oYD2+PRpWo05HV8xazxcugCi/ThAcQfZ6CX5nFvJv1juEAumZGfUrPew69782MJ
Kqgjo24W5djB5HRCOr74xb54GAxrw9lWYjlBAz4UpHM9jbzJS4KOTdNnbbQdXRj05f7xAtpXnWfO
zUA11OKarEAABawCLno76ss4BFYkOQUgTB4/I6GZ5e9U+n5CWXnxzcB0HVdr8raEtRgPHpkQqpM7
FIfEWoieZx+9rTT8+ZBRRzaVrxyttVpnu22IicdVRFDqBkTxLHI31bY4rkSCiLyHvdZje/p3jV8t
XJ8bFt1YZ2nkEfNLYBrEXdpldQcV5DKxAMvw8slVcnjlxNDSHL/Y30bbnnbJO127nh0gERdXF3hs
aRURZ3Wgjp56ZptK8UAbjZXAOka76MVtNFOrNWFgja1XZbOqxnjROw/XTtXCca3cBYSClt0ysYFQ
pDIh9Fk9Gdju84uNcMYd7/4245nvq8OmzzDc3vbPJbQxWiJGr0a2mjX91H4hTpS9ZKfe/M3oYPhu
eiUpYTrhHs3XXBak1j+4gElj8tZFhYCbHnlP8SnnSPkp1zUhjDj6G7awSfJ9GY1oJnyDhW0iKfWk
jULAkiyk7xMdev8KlvMQaNYglTuOHgXr58qsZMOLB65AfP72OomJC1reYJ6OXo+IchyXAZO5Fg==
```

## Interaction 20: DELETE /devstoreaccount1/test-container-57ada449-1ec8-c012-3247-b36dc4855871?restype=container

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
x-ms-request-id: d43058f7-5952-477a-a49f-316505025419
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

