## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-44e46c10-cdf5-1254-f789-e177a273194a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_Destination_AccessConditions
now: 2026-11-12T00:47:14.1462013+00:00

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
etag: "0x1D9D6D5A1AE6340"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bf98a715-f01d-4fdb-a61e-d35a51ac0baa
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-44e46c10-cdf5-1254-f789-e177a273194a/test-blob-0748844e-bdae-6402-169f-eda93033d87e

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
avxLIlTP6g8qScTwlL/PkLp+cLtZNrjk38O0UgiCYsv8wc6DaxSlQYLUGasIY343ulC9JANd8TRE
ZkKRGpcGqOf59NLxSySm2S84hR0M23xEfZi4xT7Ins+aPwXRFCbqzXDED26rRW4sF0vUJGsWN4vF
TJ3/TuKoMFYCVwsf1MQITresR8sOmTcpjK7y9Hlkgwh5C8eJ63+OG98XqO5iDEKGy9a0au+/t7Jl
1sI0tTzdntQDpcj9fmI4Hivs9vBJxn9rbCiirxkYulQUJBW8WWaiOgkaX2Z6iU1ze0vD0sHCHA9D
yEkUOu+66+tz6FpNfMTFSbznL2cY8OPbLjPNVOeTUgcFeZAcjv8aX3N7B6HyJv+G/okE2uyoKthl
OQy77ZcD4JVSSAI0qLu8zM/znelC6Ag0RlZejngaXU+4t1XzX3LcdyYLn978UlXNRw0dtIzuI1AD
hqZApVEdN+qze/FmyW1dFyXCNkkqN/QAkEZq/anCyZME79jLm9LU7mfzSNZjZ36fv51nK+0G2U+y
QBQLsjpB8bJeYdqVkntS7kjhNu4dnSnIyj4MWp2m/hWIGVu+yTstslckBQWjCi0hFD2kJaJglaLq
Quj7NJcUt2PEDXkflCUMtISX+JcjJMAQ6kVfAdhzKIO404ZTMX3AEE2i3vy0AoAYmHEeyZwLxh4n
6kpRtLaKUeT1ZsCeuYIG1+hJgUXDXOjER2lnVV7mrQ1oK0czbluXF40Yv5vAed/uF/G0wUTYZI5i
jG1MIvyGDrmzNo0702iMsWm4q51MBM2JeT1sMuvIj8e40OLuS/WRkbDiDUNRs0SJKBDaILjwFYif
wqm+GdzN6qbGggKGnmZ0JhnsavaJOMX44wnb7W8OyLpZTohL0njUFCKcijFBAoqpZvmfA6qRFork
xjXS8f02uLlHLU/eKFOgGFbU7a2Tt+B/MoZ1b8QQyDj9ZwxCASMkZdJ4+dU6yj2l/utUvSjcUA5V
Ur92wEj1N2QX4MBHXRYzr4fbG74KRWdJ0HDYuwoPIRf+7a5jrqWJgsFwIup8XqDVIQ2hATVQSg1X
LfDYHHxaCL+pSXBnzwHiUZj8miJ9zHHQA5n9bSDirqOhDIC0sWVFFhor0hUwbVILv6+cU7Dq2mB/
BxniXJqfx5rMxsKALaAzt4MIUflbn5VH8a1wRlrztzEgNalLYrp/iwt6Y6ePipIPaJss4YhmI2eE
m2vsLoE/2A6RYPj251TJiMbu4Tztt2YbYd2/xtWouRFBx8dOk12JOoqY/iqZGIFGY1nCd0ErluME
0M2kgBI56KbmtR+NevVoZKaxVbk8gkhbeGN75ULQFTHjSsKP5bp4XxWDsmNhuehjWhObekEqyA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2266ADF1532D5A0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: IhhiBZgmCSNvP+7fK158VA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2252c61d-938f-4898-8318-f7fcb565ead3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-44e46c10-cdf5-1254-f789-e177a273194a/test-blob-a3f538eb-cfb8-f9e5-bf7a-188b2e349bf0

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
avxLIlTP6g8qScTwlL/PkLp+cLtZNrjk38O0UgiCYsv8wc6DaxSlQYLUGasIY343ulC9JANd8TRE
ZkKRGpcGqOf59NLxSySm2S84hR0M23xEfZi4xT7Ins+aPwXRFCbqzXDED26rRW4sF0vUJGsWN4vF
TJ3/TuKoMFYCVwsf1MQITresR8sOmTcpjK7y9Hlkgwh5C8eJ63+OG98XqO5iDEKGy9a0au+/t7Jl
1sI0tTzdntQDpcj9fmI4Hivs9vBJxn9rbCiirxkYulQUJBW8WWaiOgkaX2Z6iU1ze0vD0sHCHA9D
yEkUOu+66+tz6FpNfMTFSbznL2cY8OPbLjPNVOeTUgcFeZAcjv8aX3N7B6HyJv+G/okE2uyoKthl
OQy77ZcD4JVSSAI0qLu8zM/znelC6Ag0RlZejngaXU+4t1XzX3LcdyYLn978UlXNRw0dtIzuI1AD
hqZApVEdN+qze/FmyW1dFyXCNkkqN/QAkEZq/anCyZME79jLm9LU7mfzSNZjZ36fv51nK+0G2U+y
QBQLsjpB8bJeYdqVkntS7kjhNu4dnSnIyj4MWp2m/hWIGVu+yTstslckBQWjCi0hFD2kJaJglaLq
Quj7NJcUt2PEDXkflCUMtISX+JcjJMAQ6kVfAdhzKIO404ZTMX3AEE2i3vy0AoAYmHEeyZwLxh4n
6kpRtLaKUeT1ZsCeuYIG1+hJgUXDXOjER2lnVV7mrQ1oK0czbluXF40Yv5vAed/uF/G0wUTYZI5i
jG1MIvyGDrmzNo0702iMsWm4q51MBM2JeT1sMuvIj8e40OLuS/WRkbDiDUNRs0SJKBDaILjwFYif
wqm+GdzN6qbGggKGnmZ0JhnsavaJOMX44wnb7W8OyLpZTohL0njUFCKcijFBAoqpZvmfA6qRFork
xjXS8f02uLlHLU/eKFOgGFbU7a2Tt+B/MoZ1b8QQyDj9ZwxCASMkZdJ4+dU6yj2l/utUvSjcUA5V
Ur92wEj1N2QX4MBHXRYzr4fbG74KRWdJ0HDYuwoPIRf+7a5jrqWJgsFwIup8XqDVIQ2hATVQSg1X
LfDYHHxaCL+pSXBnzwHiUZj8miJ9zHHQA5n9bSDirqOhDIC0sWVFFhor0hUwbVILv6+cU7Dq2mB/
BxniXJqfx5rMxsKALaAzt4MIUflbn5VH8a1wRlrztzEgNalLYrp/iwt6Y6ePipIPaJss4YhmI2eE
m2vsLoE/2A6RYPj251TJiMbu4Tztt2YbYd2/xtWouRFBx8dOk12JOoqY/iqZGIFGY1nCd0ErluME
0M2kgBI56KbmtR+NevVoZKaxVbk8gkhbeGN75ULQFTHjSsKP5bp4XxWDsmNhuehjWhObekEqyA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2300316922943A0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: IhhiBZgmCSNvP+7fK158VA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9f5aa6d3-d57e-4efc-a740-77347a7915b6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-44e46c10-cdf5-1254-f789-e177a273194a/test-blob-a3f538eb-cfb8-f9e5-bf7a-188b2e349bf0

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-44e46c10-cdf5-1254-f789-e177a273194a/test-blob-0748844e-bdae-6402-169f-eda93033d87e
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x241D30063AC6520"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a9003326-94f0-485b-a7be-704024f441d4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-copy-id: bb33089c-41a4-4c0e-b62b-4ab26acd30ec
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 4: DELETE /devstoreaccount1/test-container-44e46c10-cdf5-1254-f789-e177a273194a?restype=container

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
x-ms-request-id: 4d12fb27-3bf8-422d-81ba-422e1b40faf5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-0b7381b9-b29d-a1ca-121f-9cc3730fb830?restype=container

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
etag: "0x1E966A377B6CCC0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 89fc4a75-3dc8-4548-b299-88bc049f77c6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-0b7381b9-b29d-a1ca-121f-9cc3730fb830/test-blob-6a028bef-00bb-5196-7d6f-8e113d12e1a8

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
gZSvQUuGD36fTkgzpXc14gP98K6/zeE5blSQmTMhha/C5wqahFmkMnL0bE5qlvub6bm/dh8KcLOy
dtP29nZLfciYcb5sml2qWL48ymGTztdY9a95YQ+QuHZW6A6Grjz7qe6F0iU9Lk5cFR1hzaZSH6f7
nQDG0Ru5B7hHFrJOJKqBQCFyDfyyG8ZhHEvxL+rQA8lmihA7NdfSzMps9RicDvFz342E4BKrSYI5
ZbXQx9fOdxLp55maRgpKn0AxRSWuxQ5aflBcSyO2u0CNAdAiAgXynn4FsiZX2JmDOkDRegNdi5+m
dUmHcSvvMixYDEQ6J507PqemqBLoAqW22RHj5UE9MHUwe428ayxTFn/5/sxUSRKjljtbtuONvXKj
0JgZDE3rG9zOCawPf9N7U5GS7gPZYpD+P08F4XmSo70aGJqUOQoyDuPwhj9mkxZo4GNR+s9vym4H
G8z95TliO2Xu9WY45xmGYOAg6dtQmKw4nAEWQKnuqk0rjB4+NCipjUrZd52vL/lJypruT+GStoIg
xUk4S/q8/0oYDVr6SCu4dluRdiAOiG0IzHYO/1tsmNacHm/fcUFPHXdSliKeT4JvNtiFAT9hETzb
L3+ErgDvrHSEXiq72AQZQVmpu/FLaX3zn8iC5peWOgwzA0LCym53Y+qtGvBYtF7UbL/luFZKkMUB
kA43bMXc7SMdiNTBVnfqMVgHnU+Mm+tqrnrXsIK26HN8wDlfQPYk0CzMOiyJEhVI+ob9Q/J2dPUj
zL5LBT2hZ59hRZU9i/Fh4swiwGG/4Ztkj7X7uKSABktEO3M42cvvK9OMJ82AC2+VnGEmU7SUZOoj
5nWIpq774T5J+E99KQgAM5WOMrrN5IRFZRxDWrKXsNeIFPJWZ4QkkUaONhIgF3JYJSAfBTEwVQLx
QkCRt4eLskh39BQVqswQaaFzP65yJE2p6jSSd6qlWL/wZSREktm/AoPJqCJeQ3tTD5yQvRZUfx3y
6M1S+Tqe0pxUJEWozNbItDwqqHsqS6a5P2gNFZqpnOYGUaoLbAlIK9aGCR41q0LGxwjZKdahx5wm
mbnSkL0Bq4hfoXsrvEcz4X2lpEKIg5MlR02Sz3IPZIkO5NNPdpsYhF2W1gnHmgvBpkhZ/CNanhYm
rEhwb9wVTzzxHdd042rijSDk8q2KXqxB0Ckqtmhms0a8KcpSqBSBgIbM1X0zTMPdd24Cdaxom06b
Lp+y6pnUi2mRt7qgj+UMYnEnvYgvDoNlTT/5Yz6aVI17tnl1zpbs+EkTopUIPOeJ9hI6Qd7GbB8b
TJxa2igr9mMsJdlrlpTaOsQ+G2zuXRFXcGwrXxKutUpZWYH5kh4h6Ksy3BYOHV9+XwcZh1CzLQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24B02C492387240"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: Pas7pnkcyVd4r5KHNfJcBw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1f334001-8264-407b-b868-d264ef69a354
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-0b7381b9-b29d-a1ca-121f-9cc3730fb830/test-blob-c1331da6-80bc-49fa-520c-ac000a942ef9

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
gZSvQUuGD36fTkgzpXc14gP98K6/zeE5blSQmTMhha/C5wqahFmkMnL0bE5qlvub6bm/dh8KcLOy
dtP29nZLfciYcb5sml2qWL48ymGTztdY9a95YQ+QuHZW6A6Grjz7qe6F0iU9Lk5cFR1hzaZSH6f7
nQDG0Ru5B7hHFrJOJKqBQCFyDfyyG8ZhHEvxL+rQA8lmihA7NdfSzMps9RicDvFz342E4BKrSYI5
ZbXQx9fOdxLp55maRgpKn0AxRSWuxQ5aflBcSyO2u0CNAdAiAgXynn4FsiZX2JmDOkDRegNdi5+m
dUmHcSvvMixYDEQ6J507PqemqBLoAqW22RHj5UE9MHUwe428ayxTFn/5/sxUSRKjljtbtuONvXKj
0JgZDE3rG9zOCawPf9N7U5GS7gPZYpD+P08F4XmSo70aGJqUOQoyDuPwhj9mkxZo4GNR+s9vym4H
G8z95TliO2Xu9WY45xmGYOAg6dtQmKw4nAEWQKnuqk0rjB4+NCipjUrZd52vL/lJypruT+GStoIg
xUk4S/q8/0oYDVr6SCu4dluRdiAOiG0IzHYO/1tsmNacHm/fcUFPHXdSliKeT4JvNtiFAT9hETzb
L3+ErgDvrHSEXiq72AQZQVmpu/FLaX3zn8iC5peWOgwzA0LCym53Y+qtGvBYtF7UbL/luFZKkMUB
kA43bMXc7SMdiNTBVnfqMVgHnU+Mm+tqrnrXsIK26HN8wDlfQPYk0CzMOiyJEhVI+ob9Q/J2dPUj
zL5LBT2hZ59hRZU9i/Fh4swiwGG/4Ztkj7X7uKSABktEO3M42cvvK9OMJ82AC2+VnGEmU7SUZOoj
5nWIpq774T5J+E99KQgAM5WOMrrN5IRFZRxDWrKXsNeIFPJWZ4QkkUaONhIgF3JYJSAfBTEwVQLx
QkCRt4eLskh39BQVqswQaaFzP65yJE2p6jSSd6qlWL/wZSREktm/AoPJqCJeQ3tTD5yQvRZUfx3y
6M1S+Tqe0pxUJEWozNbItDwqqHsqS6a5P2gNFZqpnOYGUaoLbAlIK9aGCR41q0LGxwjZKdahx5wm
mbnSkL0Bq4hfoXsrvEcz4X2lpEKIg5MlR02Sz3IPZIkO5NNPdpsYhF2W1gnHmgvBpkhZ/CNanhYm
rEhwb9wVTzzxHdd042rijSDk8q2KXqxB0Ckqtmhms0a8KcpSqBSBgIbM1X0zTMPdd24Cdaxom06b
Lp+y6pnUi2mRt7qgj+UMYnEnvYgvDoNlTT/5Yz6aVI17tnl1zpbs+EkTopUIPOeJ9hI6Qd7GbB8b
TJxa2igr9mMsJdlrlpTaOsQ+G2zuXRFXcGwrXxKutUpZWYH5kh4h6Ksy3BYOHV9+XwcZh1CzLQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22CA7011A30F680"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: Pas7pnkcyVd4r5KHNfJcBw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 843233a8-7298-4577-9c78-6e46c3c3e319
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-0b7381b9-b29d-a1ca-121f-9cc3730fb830/test-blob-c1331da6-80bc-49fa-520c-ac000a942ef9

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Modified-Since: Wed, 11 Nov 2026 00:47:14 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-0b7381b9-b29d-a1ca-121f-9cc3730fb830/test-blob-6a028bef-00bb-5196-7d6f-8e113d12e1a8
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1ED0A88368A7FA0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2d43be52-d634-4490-9fe4-eb37b6afadce
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-copy-id: d041ec97-d469-4fb6-b3a7-605302761627
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 9: DELETE /devstoreaccount1/test-container-0b7381b9-b29d-a1ca-121f-9cc3730fb830?restype=container

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
x-ms-request-id: a4e562f1-5b5e-4ad1-bc2b-1f9e629ff212
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-6e912ca6-b48f-e865-14e1-5ea77f0c226b?restype=container

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
etag: "0x1E3B398CAC9B910"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 01bc6306-9f2b-42be-b706-a9b80431f128
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-6e912ca6-b48f-e865-14e1-5ea77f0c226b/test-blob-8394c246-a2f3-07ff-0065-aa403329b08b

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
fl9zah3ycW+QuRevU5ZG6EGUaxCBchjyt0qs2yJTyUbpQIGrIcPctLsi3tWctpR+mnVl6qAR6gxG
gbPSRZZMPfDRxRMUmsd+uLZVXpRDVQG2LUCs7d6l11V1ZJ8QCW4k1aHlyvCBaQCt5zLpvIx3Ayux
HBhVoE8RLO29nzYnba9IMInzXooQNMQ//gWsuxvJ/WF0XuxWzjVR054Cw8rKhnmCoYsDhKWgoOdT
FqFJZHDS9KHUsw7C8mFUoYrsDXH5dXiMKRmQxni8074EAriTB24uMM8o9dJrwK8pr+MatJJ2WqAo
vTtWQS4pGN9Qve+owJkcvd2i0YCmIWlqZheVoR8rjqgYa0oz1+6h/9zzGgO/gO5J/fa11IgfgpzS
7NsWk3e/JS9HkFRP6ebuAdKksgZmquYoTKModbof+emuYesTimtlM/TTePCa+hQQx9O2e8+VbEH0
7kfTlq91J5dqoYf62ndmPn8RkjL1jVKPGK3naX0aGPWqH5skkpxEXlFZL1iNFe1bTzxQg9kP/mD0
RH4Cjb0ZUIiSULvbQqzizTPhnF75AQPAixpByZQbmiA6L04eQtCTQN7P+sQygA2PbbamLmIC+0J7
QgKj14bzdrWboBJexIpiTVx/KQc+jQoNsVzedGy9ODQLogDO8GhX3IMPl9/6MagsROAGgtE7PbT3
liYqFQJJ3WjeUiGJlF30KE2DLvYrEoCzsjCLt7Vi0GVM1lpBLcaBxbl2HN6Hoq+DEVqEtw69y4Om
dmPRvSazfIG8Pb0CsvqGAWk8tfWhLA+AB6Va3RhXjgrWm7ZjsAeTw6BcymXygF9f/balgBaOBEpT
ULWAWJ5pZa6zLBZEI1FhqfJVRGGpjodG+uBisQ7zSJZsD19SE2oB82W3P1RIG9llQ9ckOMDoqcIu
Ol6+BrOfv+OA2BTxD5WIVFD88k8y/d8G/W02zxDWg2WdI9kMQuyyF39xyEPFczRBnONv7Ldy/Dx+
uAlFafDTqVSvU+u8exFjSdvPwTScQIk49TIsZpetKiacjYnjbK6PnR7uFh9JhCDRC6LcojsH4nd/
DHO9p0K9ASnEIO6HgNwsQCMWrSpp73ASWlv00YjrlKoSY2A60vbbMBX2hGQxSYvGr2IX8TRNFhwD
qkznyS+g2ItDdRx88m4tOnwUc2oM4BDQLiEm1KJ2xE1DNiep9GflVavY7tRuSb3z6be3OKKx98o8
F5sNegTpzbHPOLtHhEYVLx2/M/I8YuRkMurrvoyqkT9cbN3M19qn7yAinxEBrGVxogmF8sPX/7S3
qUga/Q8kJKZ76hdoSVdCGETSGcLSYoaFehuCJZ97hW0oFS6SjfER/XpqhcFNCFmxQtp/BeXy5A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FF7097C86F6A20"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: sN/OOnppEtH7uRqcCMRzXA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0c9a799b-81d7-4909-9539-5f3919a5659e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-6e912ca6-b48f-e865-14e1-5ea77f0c226b/test-blob-481bc052-dc67-38c4-72c2-d0e2c4fc7f87

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
fl9zah3ycW+QuRevU5ZG6EGUaxCBchjyt0qs2yJTyUbpQIGrIcPctLsi3tWctpR+mnVl6qAR6gxG
gbPSRZZMPfDRxRMUmsd+uLZVXpRDVQG2LUCs7d6l11V1ZJ8QCW4k1aHlyvCBaQCt5zLpvIx3Ayux
HBhVoE8RLO29nzYnba9IMInzXooQNMQ//gWsuxvJ/WF0XuxWzjVR054Cw8rKhnmCoYsDhKWgoOdT
FqFJZHDS9KHUsw7C8mFUoYrsDXH5dXiMKRmQxni8074EAriTB24uMM8o9dJrwK8pr+MatJJ2WqAo
vTtWQS4pGN9Qve+owJkcvd2i0YCmIWlqZheVoR8rjqgYa0oz1+6h/9zzGgO/gO5J/fa11IgfgpzS
7NsWk3e/JS9HkFRP6ebuAdKksgZmquYoTKModbof+emuYesTimtlM/TTePCa+hQQx9O2e8+VbEH0
7kfTlq91J5dqoYf62ndmPn8RkjL1jVKPGK3naX0aGPWqH5skkpxEXlFZL1iNFe1bTzxQg9kP/mD0
RH4Cjb0ZUIiSULvbQqzizTPhnF75AQPAixpByZQbmiA6L04eQtCTQN7P+sQygA2PbbamLmIC+0J7
QgKj14bzdrWboBJexIpiTVx/KQc+jQoNsVzedGy9ODQLogDO8GhX3IMPl9/6MagsROAGgtE7PbT3
liYqFQJJ3WjeUiGJlF30KE2DLvYrEoCzsjCLt7Vi0GVM1lpBLcaBxbl2HN6Hoq+DEVqEtw69y4Om
dmPRvSazfIG8Pb0CsvqGAWk8tfWhLA+AB6Va3RhXjgrWm7ZjsAeTw6BcymXygF9f/balgBaOBEpT
ULWAWJ5pZa6zLBZEI1FhqfJVRGGpjodG+uBisQ7zSJZsD19SE2oB82W3P1RIG9llQ9ckOMDoqcIu
Ol6+BrOfv+OA2BTxD5WIVFD88k8y/d8G/W02zxDWg2WdI9kMQuyyF39xyEPFczRBnONv7Ldy/Dx+
uAlFafDTqVSvU+u8exFjSdvPwTScQIk49TIsZpetKiacjYnjbK6PnR7uFh9JhCDRC6LcojsH4nd/
DHO9p0K9ASnEIO6HgNwsQCMWrSpp73ASWlv00YjrlKoSY2A60vbbMBX2hGQxSYvGr2IX8TRNFhwD
qkznyS+g2ItDdRx88m4tOnwUc2oM4BDQLiEm1KJ2xE1DNiep9GflVavY7tRuSb3z6be3OKKx98o8
F5sNegTpzbHPOLtHhEYVLx2/M/I8YuRkMurrvoyqkT9cbN3M19qn7yAinxEBrGVxogmF8sPX/7S3
qUga/Q8kJKZ76hdoSVdCGETSGcLSYoaFehuCJZ97hW0oFS6SjfER/XpqhcFNCFmxQtp/BeXy5A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x269636D7317A2E0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: sN/OOnppEtH7uRqcCMRzXA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 48539c1e-9999-4fca-b210-638f1d9dd7fc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-6e912ca6-b48f-e865-14e1-5ea77f0c226b/test-blob-481bc052-dc67-38c4-72c2-d0e2c4fc7f87

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Unmodified-Since: Fri, 13 Nov 2026 00:47:14 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-6e912ca6-b48f-e865-14e1-5ea77f0c226b/test-blob-8394c246-a2f3-07ff-0065-aa403329b08b
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x212B7DFFB7F7E40"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2a63d0be-ccdc-43b4-97e4-517fcb1c924d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-copy-id: e4db54ad-0ede-4655-b5b5-3735bd3f3c62
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 14: DELETE /devstoreaccount1/test-container-6e912ca6-b48f-e865-14e1-5ea77f0c226b?restype=container

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
x-ms-request-id: 2004529e-5f58-4d73-9242-0f34a7b5c2ab
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-d0e73036-6ef8-5b1e-7b63-855ca3c72588?restype=container

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
etag: "0x1D52DD0A117D4D0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9a3d5000-95ac-4c5e-a932-6078ae99e0ac
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-d0e73036-6ef8-5b1e-7b63-855ca3c72588/test-blob-7900a92f-11f1-9dd6-207e-40d7f703d7b2

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
kk8sRMqqfWr9XBEw0R1CA+UiCgNB4JLkor/MA1ZolaqcSE91zzu9jLN90pxd7YpeIYJ3gL0iRrK8
SKIK3XkTlcZmk4jNzDOqZX5QxA32h7U1buLU8BTtegGduIeZs646aT3V9lkBkFRPzRo+0oGlxsDs
1G+WP6SxeBiHMBSrEbLPFVvQIJBbM92NhSP6rqh/9/HHrN4/oyqYI35AemBAo7tob7wm1KYwkKCR
CLqBt8lwBzgi5GTTj3IxN/0SG7l9TeFnkT/sWSJLlxs9rppwF2u00HInHb9XlN9J9Z2oHXXnFLvY
GSaKg64V1kxIluHYwSCRXUtGVTAiEPxfomOFonmmVZnel/1FKkzEEUZyDv7+cTR8F8Aqob6Ltgkp
KuBKjzTTokBH+SkjTDL+gkPprwH9YTEvCYu4fLTbU+H0GwBseYESnmy+tngKWcuNKx57ogYHK8mv
G4aoGyWLbKVILzAykgjB1hGVP6q5JbDAK1CVX7Ha7PA2vF37aoNGM0rSwiqbWpkVucv1cewe9fbW
6O/V9QzzbUI//NWqxmyNTwtf5mKFJNC3gKbm5XoDGMdnJIGTcT0+3lTnW17EavNfaCLgvw6TUMMf
HnVmDYjIPOMOQ6Hq+d7OIQgOnsly8xWyhn1YIlm41NS9dFLI19HLHx56tSdRdG5EEp0GhLL6rStg
s4YLbxmKVm/NLIWLBUk2Qn+q9z3tYRIOExC7sU8iw8YnaCRKwK8F71+4hEfouAxUz0IyT7btclJ0
/FwIz6Qfq2m+Y50k7IHPpQfeNNzKJlsEZ+EN73QQOvXS1cRT/CC6mNjeKlVuL+PAY6quDz11qtYB
BGfCErz0rSmoUha9fKjmI5wE6/wFlTj+TIvKYiq3XCvuUve494Yc6nwrxtzMAuYBx+uhcb7Z+28v
xMUwKkv+8PXqzyqwLiwV5wF/2c5bMkmkyZo+FettFFaIiDPA678wLdXm4TO8UJm/i4m8WSGh05J8
i2GwwNoKfbrTKKX4VfxBT6z4dVAV6HgBfolisLo15rWhRF9ef2373GN56CfzxzaNewp0qF5BZqPo
r0FQqM3/nkHwVxGc488//ZnsnP9QDbdT1DWwwD5WX928ddArqjSWeUrmA28l8Zc6NavFVMmjmKKJ
/dOYT94Dmfgz323/E1NlViO1agpILuOddYqTkQoUGd0uoqxg/ipr4ml38REpOyFXYP2m7S2XQc/v
+tlTcAftH8WQ0XGnBFj4Soeg0TzSdDppOzEMbSyvlmDdcANQGHJiidJLmWmvsFulraOl93CSHYaf
6TTW4LGZ4DsRyZNUqDIVPkdqhtrRuovVZ8CICZ7wS1N9sS49i6khsbgtnubHUAVxkLkoJ5erzg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27123FC42BC73E0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: ikZuZ9hPdn7NpVzO1eRVIg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 924294b6-086c-4436-a349-a359f3d36675
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-d0e73036-6ef8-5b1e-7b63-855ca3c72588/test-blob-22d4499e-1ba3-0da4-16bb-1779e4c823bc

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
kk8sRMqqfWr9XBEw0R1CA+UiCgNB4JLkor/MA1ZolaqcSE91zzu9jLN90pxd7YpeIYJ3gL0iRrK8
SKIK3XkTlcZmk4jNzDOqZX5QxA32h7U1buLU8BTtegGduIeZs646aT3V9lkBkFRPzRo+0oGlxsDs
1G+WP6SxeBiHMBSrEbLPFVvQIJBbM92NhSP6rqh/9/HHrN4/oyqYI35AemBAo7tob7wm1KYwkKCR
CLqBt8lwBzgi5GTTj3IxN/0SG7l9TeFnkT/sWSJLlxs9rppwF2u00HInHb9XlN9J9Z2oHXXnFLvY
GSaKg64V1kxIluHYwSCRXUtGVTAiEPxfomOFonmmVZnel/1FKkzEEUZyDv7+cTR8F8Aqob6Ltgkp
KuBKjzTTokBH+SkjTDL+gkPprwH9YTEvCYu4fLTbU+H0GwBseYESnmy+tngKWcuNKx57ogYHK8mv
G4aoGyWLbKVILzAykgjB1hGVP6q5JbDAK1CVX7Ha7PA2vF37aoNGM0rSwiqbWpkVucv1cewe9fbW
6O/V9QzzbUI//NWqxmyNTwtf5mKFJNC3gKbm5XoDGMdnJIGTcT0+3lTnW17EavNfaCLgvw6TUMMf
HnVmDYjIPOMOQ6Hq+d7OIQgOnsly8xWyhn1YIlm41NS9dFLI19HLHx56tSdRdG5EEp0GhLL6rStg
s4YLbxmKVm/NLIWLBUk2Qn+q9z3tYRIOExC7sU8iw8YnaCRKwK8F71+4hEfouAxUz0IyT7btclJ0
/FwIz6Qfq2m+Y50k7IHPpQfeNNzKJlsEZ+EN73QQOvXS1cRT/CC6mNjeKlVuL+PAY6quDz11qtYB
BGfCErz0rSmoUha9fKjmI5wE6/wFlTj+TIvKYiq3XCvuUve494Yc6nwrxtzMAuYBx+uhcb7Z+28v
xMUwKkv+8PXqzyqwLiwV5wF/2c5bMkmkyZo+FettFFaIiDPA678wLdXm4TO8UJm/i4m8WSGh05J8
i2GwwNoKfbrTKKX4VfxBT6z4dVAV6HgBfolisLo15rWhRF9ef2373GN56CfzxzaNewp0qF5BZqPo
r0FQqM3/nkHwVxGc488//ZnsnP9QDbdT1DWwwD5WX928ddArqjSWeUrmA28l8Zc6NavFVMmjmKKJ
/dOYT94Dmfgz323/E1NlViO1agpILuOddYqTkQoUGd0uoqxg/ipr4ml38REpOyFXYP2m7S2XQc/v
+tlTcAftH8WQ0XGnBFj4Soeg0TzSdDppOzEMbSyvlmDdcANQGHJiidJLmWmvsFulraOl93CSHYaf
6TTW4LGZ4DsRyZNUqDIVPkdqhtrRuovVZ8CICZ7wS1N9sS49i6khsbgtnubHUAVxkLkoJ5erzg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21117B48FED75A0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: ikZuZ9hPdn7NpVzO1eRVIg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 06d4568c-cdde-4a0e-aefe-fa5b08dad063
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-d0e73036-6ef8-5b1e-7b63-855ca3c72588/test-blob-22d4499e-1ba3-0da4-16bb-1779e4c823bc

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
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21117B48FED75A0"
content-md5: ikZuZ9hPdn7NpVzO1eRVIg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 45c6b112-e2dc-4759-a545-958255c7eea2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:14 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-d0e73036-6ef8-5b1e-7b63-855ca3c72588/test-blob-22d4499e-1ba3-0da4-16bb-1779e4c823bc

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-Match: "0x21117B48FED75A0"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-d0e73036-6ef8-5b1e-7b63-855ca3c72588/test-blob-7900a92f-11f1-9dd6-207e-40d7f703d7b2
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D61A75DEEDB800"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 67ee0553-5ae7-4605-90a9-23a6e15ade0e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-copy-id: 901b85fa-225c-4b8d-af53-9b13f4925198
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 20: DELETE /devstoreaccount1/test-container-d0e73036-6ef8-5b1e-7b63-855ca3c72588?restype=container

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
x-ms-request-id: a3be34f9-b547-469f-ad46-387c7c141e26
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-94fee2d1-2f8a-a030-e190-7e6887790d6d?restype=container

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
etag: "0x25A3A711F9CE3C0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36aba155-d3df-403e-8ede-3f7f5d2e047b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-94fee2d1-2f8a-a030-e190-7e6887790d6d/test-blob-ac64e5a9-d69c-1e15-16d8-4a08bb4e6cfb

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
uQeJ3sKJKxMF8mI2+V24V1uEBRQFQyduGTNAEp07hp2tqsDdPkT5SLfqjpjN+qeE2CYNA3P4aHXf
G8WOSBh2yWzFiE+d2xkWir1dGrSPoR+MvDp3LoMptEJK/SN/av+edMQsCHFX5/wM9ni1m03BUHmm
Aoze/pvom9QNUt31lx++vqXvY5mtNNU9azgKdBj0iK2p2GhywHYpQ2ycSpQeF15Y9t2n0u3g+M23
oJNj3ia7GMowS7+3S/0vxSAsEOpBHlTZsX06TLa/yd+aux/jxmRF4THK7sufoargeAzNs+fjdoE/
iSypgcwTcILfHJDdS/+75i+4djCIOhDSWtOq8hX4t0WepDw4nGBltn1IwIQaAiwMEc24K/9Qtk8b
1ib4aH1s52VKP6fCg0rPUsCzP3mMuFenneFIP4xGTe3tHMU5bU7/3Ngfz8OESY6C6Ng+nXbVjx7O
UMucJKfYBPG61WeEluVys2OhbeiUIlRTxVe0B7B3F4ynahyCY7gxRsvRynMm/lLyzOkSNCI2Oi53
SV5PJPxBQ77a3CvJ71CrbyccwljgLMYFwTrGZONqcC/uCxpZ4SHOkIe1TCEmKd2YZ8T7GXjWlhyX
SmPCet7bcGv82uM2Uo0FTjLRKuCk35dcLv0eb1e3GHX9wZe+DBWo2tu2KU76YhU39ctGBWw88mrL
ZUzhvQEURMJuOJD1R0EcKFAE7rVJYczo5nmLcRMIwc8s8qfJxh3aoeWLjCmFQa6JKdwcNwO1ggOA
+daHiNOvZXfAyVSaUmEzKk3QvdWiY6XLAUc27InLd3CjSc1GUhkR3CexxHhZ79d66Q225cQu3ZYx
vIaLeXnt9VLj9gmT7Nc0vuGt8J4tchJwuwJ8FJGsdWw3FZaShmKtxM4ldfjN5vw1gifjgOz3BEl0
Gr12cOHAN4GcXNdAoTd+ACzQB/wZotQGRpFqyPR/QBBMHWulN1PtZT52MYol9eHvZIDAJ/xNWnfo
cClPVm6MHRzG84PL2cnY4qK+onFK4FGwemR0vxgT/8PzvMYpng7P6hRtXgFdI4u250Raj7cGno/Y
ntsKF10DsvTA1xwCrkST7rhd3IJQU1fYvtfUuXAL7R42Uf8zxdK2aqsNnUtvszkAx6D+qMENh0uE
MlmFL/mEtOr9zFxEYCnmpnHWQrULaAqe0/HPDURdKMmzrpJ4MDuyiehhcufcvGd3FwJPN0WWeclP
51sItKeln6SSkLGWbnY2I7nNqfUiwReKWPVCDfCEHTXJKEnfqdRBu9JDSSu14KiMGBOLyM/TLCVE
flyxY5GzDnN8zUYsVnnki+0j33jr1HdMtvTc+VRl9fskmyt4j1hBjzu4ORNiX8KZpj3hsEytWA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E21D382F505060"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: oxTDkHfg8woKc/UnRsVNOQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5c9560fa-8ecf-4ecb-8c3b-ff49e8fca369
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-94fee2d1-2f8a-a030-e190-7e6887790d6d/test-blob-3c50e295-9a33-ea63-5632-4252178444ae

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
uQeJ3sKJKxMF8mI2+V24V1uEBRQFQyduGTNAEp07hp2tqsDdPkT5SLfqjpjN+qeE2CYNA3P4aHXf
G8WOSBh2yWzFiE+d2xkWir1dGrSPoR+MvDp3LoMptEJK/SN/av+edMQsCHFX5/wM9ni1m03BUHmm
Aoze/pvom9QNUt31lx++vqXvY5mtNNU9azgKdBj0iK2p2GhywHYpQ2ycSpQeF15Y9t2n0u3g+M23
oJNj3ia7GMowS7+3S/0vxSAsEOpBHlTZsX06TLa/yd+aux/jxmRF4THK7sufoargeAzNs+fjdoE/
iSypgcwTcILfHJDdS/+75i+4djCIOhDSWtOq8hX4t0WepDw4nGBltn1IwIQaAiwMEc24K/9Qtk8b
1ib4aH1s52VKP6fCg0rPUsCzP3mMuFenneFIP4xGTe3tHMU5bU7/3Ngfz8OESY6C6Ng+nXbVjx7O
UMucJKfYBPG61WeEluVys2OhbeiUIlRTxVe0B7B3F4ynahyCY7gxRsvRynMm/lLyzOkSNCI2Oi53
SV5PJPxBQ77a3CvJ71CrbyccwljgLMYFwTrGZONqcC/uCxpZ4SHOkIe1TCEmKd2YZ8T7GXjWlhyX
SmPCet7bcGv82uM2Uo0FTjLRKuCk35dcLv0eb1e3GHX9wZe+DBWo2tu2KU76YhU39ctGBWw88mrL
ZUzhvQEURMJuOJD1R0EcKFAE7rVJYczo5nmLcRMIwc8s8qfJxh3aoeWLjCmFQa6JKdwcNwO1ggOA
+daHiNOvZXfAyVSaUmEzKk3QvdWiY6XLAUc27InLd3CjSc1GUhkR3CexxHhZ79d66Q225cQu3ZYx
vIaLeXnt9VLj9gmT7Nc0vuGt8J4tchJwuwJ8FJGsdWw3FZaShmKtxM4ldfjN5vw1gifjgOz3BEl0
Gr12cOHAN4GcXNdAoTd+ACzQB/wZotQGRpFqyPR/QBBMHWulN1PtZT52MYol9eHvZIDAJ/xNWnfo
cClPVm6MHRzG84PL2cnY4qK+onFK4FGwemR0vxgT/8PzvMYpng7P6hRtXgFdI4u250Raj7cGno/Y
ntsKF10DsvTA1xwCrkST7rhd3IJQU1fYvtfUuXAL7R42Uf8zxdK2aqsNnUtvszkAx6D+qMENh0uE
MlmFL/mEtOr9zFxEYCnmpnHWQrULaAqe0/HPDURdKMmzrpJ4MDuyiehhcufcvGd3FwJPN0WWeclP
51sItKeln6SSkLGWbnY2I7nNqfUiwReKWPVCDfCEHTXJKEnfqdRBu9JDSSu14KiMGBOLyM/TLCVE
flyxY5GzDnN8zUYsVnnki+0j33jr1HdMtvTc+VRl9fskmyt4j1hBjzu4ORNiX8KZpj3hsEytWA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x207DC83C57C63C0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: oxTDkHfg8woKc/UnRsVNOQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0ea058e-3a5a-4c51-bad3-8579979e0580
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-94fee2d1-2f8a-a030-e190-7e6887790d6d/test-blob-3c50e295-9a33-ea63-5632-4252178444ae

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
If-None-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-94fee2d1-2f8a-a030-e190-7e6887790d6d/test-blob-ac64e5a9-d69c-1e15-16d8-4a08bb4e6cfb
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2175234C7BB8A40"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: afb4ea0b-c970-4363-be9f-d08e9d59501d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-copy-id: 187dca81-e2a5-4fa3-a839-6b955366d6ad
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 25: DELETE /devstoreaccount1/test-container-94fee2d1-2f8a-a030-e190-7e6887790d6d?restype=container

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
x-ms-request-id: 9a3c068c-993e-4d00-a9a9-3afa5aa536bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 26: PUT /devstoreaccount1/test-container-92814277-ab2b-b8a4-2699-233b1757064b?restype=container

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
etag: "0x25879A1ABE6E320"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1eaf3129-66ca-4847-9f7f-a6cf4e0976a6
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 27: PUT /devstoreaccount1/test-container-92814277-ab2b-b8a4-2699-233b1757064b/test-blob-74eefe85-97b9-d4fa-566f-d5f216163b1f

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
OUFMzvxwJA+BelVpk8IHkpObkXnM2tDpPZcWmnYo0v8s9xjVN3WyBh1yEbBVOiVjkpGnfMWNf19x
YpBlWYqYWKhVPZyqMlod6YpbWckgkwNyswflgVY6n3e4Y9XkTK2S2bgIAPyIuWA2iZI7MSWWUc6N
86aCs9dRG54l8c6FOJzcyIAQGJMG6fqnr/fD/m1RIhIGV1kHECXgtuReY8eRsVH2XmmkhTk7hgms
2wTgjhww08+7fuBD1bhaMGGvqIUyFf2lzaADrZzYy9FPWzQh/yfHLZD41jJwsomxSVXXi92EecUG
OsB8LSUy4rMP83qDOTA653r1Oj/LNRoXUmNHAT/zy+JvG8VnSwBqxfN+YL8PLRAknaNjjj6GOgSl
ZdrC6+FzGyeXFB1r0px6i3VMTNRbCCRSI2SbkDyj6ODAweUlp9oRCkSXdxjyucoH6APJOe0wSly1
cMh92Ivq9Cs9qhG2VOOaO0GQw5ELX2mZlKc52a/ykHeJbzcSlDK5rILttQ65UJQgLv6sn4fLqRBe
40PjsRp8ShqZLeSsiKYP1hYOHqpb4EQTGauxRvDwvcUms7Hv1ftocWvzHyKvdKVXnMhwvYtmAwL/
0JhvygMqqXAehdT1IAEbpq0/Z8EhZKUFWaknfwA6wLCu7wRj+KZnyXWykO7RYnzHVRbdJptB3Wzz
aXFZAipv5MQjRjD9uK0H151Lb9O2NPYtYCrpXJkVbBKYb480DcdLQ6sqrRxMyp1o1k799m6YPDV7
LKIAhYcqDtkeZEge0srWACsni4ba4JaMgIZKF3aj/zJaueAlS70k/55CLmVVSgOEJ/ZCcLGuoUwM
cwQB3/diemQVxBnpsbVuA4zol7IwNzaCxu+AYI+BqxiUGNe4Ix+n4LMAP4bqm3ZA1GwlxgmZ2zvO
fhkH4hrVkxgAVJjdtuBsQLf/L/evlyp5P4wiXOUO+z2c6qQGoP6YK6xu6kbeYx6MuIVSmqtDHubv
jqKNsjYy8VlaQcs7ZaC5ZgRLQa3jm9xulaNfvGCRWMu+FxJbC3h1O/jtgyJSUVLlmTSn+N05C/PG
Hx2T0jX5yegAfU6OXVuL1gW09hi6HENQeiIr6mDuhAseletb4WnD9Lo5UdQEVzzZGyHXhRTbCwPZ
QlgSzd6IEvhCb8dvMPSc8QJdgMpuTCLmUs8+F//3Q4nogp8QsCbbsD/cweh0austOpMSfYs4avY2
LHoPSfr5Sys9hq1VjEHbgtCKkos5cejjEd1r5Mb+rxeo2oSrzGZE4nW9N+M9161SN/q6rddr/LqS
KzgdjWZkPtaWrLK8L7ZpRq8VezoEpjovGa3MRAI/Pd3KGaAuJlUOWfgMpyr7lQdEUWcnVYB/jg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E83BF9C6001E00"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: qCzRsmD5yaNSXNJlYoETzA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1a87f934-3ac7-45ae-a074-a02bb86e5f31
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 28: PUT /devstoreaccount1/test-container-92814277-ab2b-b8a4-2699-233b1757064b/test-blob-4222065a-fef7-340f-84a6-88f29a18e85c

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
OUFMzvxwJA+BelVpk8IHkpObkXnM2tDpPZcWmnYo0v8s9xjVN3WyBh1yEbBVOiVjkpGnfMWNf19x
YpBlWYqYWKhVPZyqMlod6YpbWckgkwNyswflgVY6n3e4Y9XkTK2S2bgIAPyIuWA2iZI7MSWWUc6N
86aCs9dRG54l8c6FOJzcyIAQGJMG6fqnr/fD/m1RIhIGV1kHECXgtuReY8eRsVH2XmmkhTk7hgms
2wTgjhww08+7fuBD1bhaMGGvqIUyFf2lzaADrZzYy9FPWzQh/yfHLZD41jJwsomxSVXXi92EecUG
OsB8LSUy4rMP83qDOTA653r1Oj/LNRoXUmNHAT/zy+JvG8VnSwBqxfN+YL8PLRAknaNjjj6GOgSl
ZdrC6+FzGyeXFB1r0px6i3VMTNRbCCRSI2SbkDyj6ODAweUlp9oRCkSXdxjyucoH6APJOe0wSly1
cMh92Ivq9Cs9qhG2VOOaO0GQw5ELX2mZlKc52a/ykHeJbzcSlDK5rILttQ65UJQgLv6sn4fLqRBe
40PjsRp8ShqZLeSsiKYP1hYOHqpb4EQTGauxRvDwvcUms7Hv1ftocWvzHyKvdKVXnMhwvYtmAwL/
0JhvygMqqXAehdT1IAEbpq0/Z8EhZKUFWaknfwA6wLCu7wRj+KZnyXWykO7RYnzHVRbdJptB3Wzz
aXFZAipv5MQjRjD9uK0H151Lb9O2NPYtYCrpXJkVbBKYb480DcdLQ6sqrRxMyp1o1k799m6YPDV7
LKIAhYcqDtkeZEge0srWACsni4ba4JaMgIZKF3aj/zJaueAlS70k/55CLmVVSgOEJ/ZCcLGuoUwM
cwQB3/diemQVxBnpsbVuA4zol7IwNzaCxu+AYI+BqxiUGNe4Ix+n4LMAP4bqm3ZA1GwlxgmZ2zvO
fhkH4hrVkxgAVJjdtuBsQLf/L/evlyp5P4wiXOUO+z2c6qQGoP6YK6xu6kbeYx6MuIVSmqtDHubv
jqKNsjYy8VlaQcs7ZaC5ZgRLQa3jm9xulaNfvGCRWMu+FxJbC3h1O/jtgyJSUVLlmTSn+N05C/PG
Hx2T0jX5yegAfU6OXVuL1gW09hi6HENQeiIr6mDuhAseletb4WnD9Lo5UdQEVzzZGyHXhRTbCwPZ
QlgSzd6IEvhCb8dvMPSc8QJdgMpuTCLmUs8+F//3Q4nogp8QsCbbsD/cweh0austOpMSfYs4avY2
LHoPSfr5Sys9hq1VjEHbgtCKkos5cejjEd1r5Mb+rxeo2oSrzGZE4nW9N+M9161SN/q6rddr/LqS
KzgdjWZkPtaWrLK8L7ZpRq8VezoEpjovGa3MRAI/Pd3KGaAuJlUOWfgMpyr7lQdEUWcnVYB/jg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x219A44495472300"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: qCzRsmD5yaNSXNJlYoETzA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6d1b423b-55ac-43cf-804b-fd5ae8be3232
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 29: PUT /devstoreaccount1/test-container-92814277-ab2b-b8a4-2699-233b1757064b/test-blob-4222065a-fef7-340f-84a6-88f29a18e85c?comp=lease

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_30
x-ms-lease-action: acquire
x-ms-lease-duration: -1
x-ms-proposed-lease-id: 301a8a4a-e138-c155-fd38-51bb26a2f12d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x219A44495472300"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-lease-id: 301a8a4a-e138-c155-fd38-51bb26a2f12d
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c048437d-4694-4954-a909-dcd1c5571681
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 30: PUT /devstoreaccount1/test-container-92814277-ab2b-b8a4-2699-233b1757064b/test-blob-4222065a-fef7-340f-84a6-88f29a18e85c

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_31
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-92814277-ab2b-b8a4-2699-233b1757064b/test-blob-74eefe85-97b9-d4fa-566f-d5f216163b1f
x-ms-lease-id: 301a8a4a-e138-c155-fd38-51bb26a2f12d
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27BB10200F163A0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc4501e4-3a66-44a5-9244-843d09dc20d8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-copy-id: 83154fe7-fe25-4d94-a86a-870ab8c43d7f
x-ms-copy-status: success
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 31: DELETE /devstoreaccount1/test-container-92814277-ab2b-b8a4-2699-233b1757064b?restype=container

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
x-ms-request-id: 0a8b7bbb-66b0-4f53-a8b4-05d56fd014a4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

