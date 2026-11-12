## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_MaxResults
now: 2026-11-12T00:44:56.3820848+00:00

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
etag: "0x27972849E7D3A80"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0899c306-69a6-436e-9569-f1a275cee2bd
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:56 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061/foo

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
/LmFUhCob1F2QfyH60g/K/VDefU2WEL4ZkPBMfGhduvqKalZ5rwU13j/q+Ak9uagUwGc19z6KqN3
jezM5z1f1MsRnMGe5kU5LqF9N61i1HBcId7wBJ8O7/8G4VnQR/A7n9YUElklAW27Y6g6ffP2Fbh7
cMVfb88sAq3CmATsaeewQpfWTcEXNyBwNKH21HILD8ygVNcr3DAG6BCsYmhoz/rBiTpcH8f2ZDil
7jsuNS06t4g4SxQPhWZmz2SwatW3CGSmNUs3ru8EqvCfhu302LLjcavfL4TmsQPU9VBjRflj7eXX
hwDhAwiYNKEkcP94cveyzfkq2NjgwINHYrmfoWT3PJkHHVCyAW6iRvviwUEEXINYsHj/OBUN9sd8
mqBO+ZM8LTNlcFWm/8uKh5Hd/f5CQgY2RvDs9wOE+iaJNWfOU01oppQNnustsbGsdbGDL/nIOlea
GLKiTzUw4XUuHclkvDNDdVZpNKMaCJQ+QIJRAMsswPsPMzuaxVZe3b11/pTnR7h+P7qiXgWzfw8d
Yw+z3uGqAlzOVYj3qK8AC1fmpAkAV/jJ08AQiWL1W7QrfGFHqv7cy/w3GfIvhpYKolOuzNoGHQwW
6gogmXj62PnUzCtOuGBYCtkMyT0Fmk0pBucPR47ZJV9UMMDzuzGEPED5WrlqvOnzVcIB+VPPEE+9
9pOR65Fq+qfM+YifZU+niIz8DD+Tvkn9G/HM2CsLhR9wNsSd8lGvjmASnsNhU/BzWXHH0gQQKThK
lM+fniJ8wHNoLi6KCpU7TX3fgR+Fm8gBWX66RLMbYAyMUl6BD/A9lt5Q+CXB6E/bi4WGMagYxPgH
nkSkwXu/Tc4i/rc2uT2NoutBNaKiP3Av3rkulS5kc45menGsmNRjkKtWn+qXpNJH+Y+8149VZF7T
dOLCkbifvoop0D/L4QkW3qX2TKCGlzrm5pufp5z+EBYS2CPxoP7zt+FfbtSTfBeFpvjqXhi+TNyo
26sc/xbtKr8ouAjlJD2mA5S/JillU2qDGgGkFLH9VItGScVT17jKckMUasMPn4G7RFuD/yazQodA
mOUVSRUNKmR9n9t4Uizc9LTlUOmndHp/6NBWelRlkwY9Ez/TtSktBj9ekQClQ/EvpwpxzfGemSNq
lWBFt7APFwvUOj/tCT+Kt0mpSeJ62aXeJ9NJ88YUn3obaB/J6E+PTnr00QmyQp3L5xWn9FBA77u6
ZpDdxSNFv5rF0aAfwc/6GvpohgicLOU1fgywbKoq2nljDoK/sYlWrhFu7XD9rCVGrdlV2GmyHjmr
qEcXlFPvmvYnu7JMO2lxEtf3Lj90N9Lnar/Q1AIPsfBIFAlBPxm+flJ51fBy+XJw5MaSuu/6Ng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2736DDFE3B4DC20"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: KC1zBP+82NBQocg0QzSkJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0baee75-2d1e-45d4-8b79-8eda8c62efc3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061/bar

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
/LmFUhCob1F2QfyH60g/K/VDefU2WEL4ZkPBMfGhduvqKalZ5rwU13j/q+Ak9uagUwGc19z6KqN3
jezM5z1f1MsRnMGe5kU5LqF9N61i1HBcId7wBJ8O7/8G4VnQR/A7n9YUElklAW27Y6g6ffP2Fbh7
cMVfb88sAq3CmATsaeewQpfWTcEXNyBwNKH21HILD8ygVNcr3DAG6BCsYmhoz/rBiTpcH8f2ZDil
7jsuNS06t4g4SxQPhWZmz2SwatW3CGSmNUs3ru8EqvCfhu302LLjcavfL4TmsQPU9VBjRflj7eXX
hwDhAwiYNKEkcP94cveyzfkq2NjgwINHYrmfoWT3PJkHHVCyAW6iRvviwUEEXINYsHj/OBUN9sd8
mqBO+ZM8LTNlcFWm/8uKh5Hd/f5CQgY2RvDs9wOE+iaJNWfOU01oppQNnustsbGsdbGDL/nIOlea
GLKiTzUw4XUuHclkvDNDdVZpNKMaCJQ+QIJRAMsswPsPMzuaxVZe3b11/pTnR7h+P7qiXgWzfw8d
Yw+z3uGqAlzOVYj3qK8AC1fmpAkAV/jJ08AQiWL1W7QrfGFHqv7cy/w3GfIvhpYKolOuzNoGHQwW
6gogmXj62PnUzCtOuGBYCtkMyT0Fmk0pBucPR47ZJV9UMMDzuzGEPED5WrlqvOnzVcIB+VPPEE+9
9pOR65Fq+qfM+YifZU+niIz8DD+Tvkn9G/HM2CsLhR9wNsSd8lGvjmASnsNhU/BzWXHH0gQQKThK
lM+fniJ8wHNoLi6KCpU7TX3fgR+Fm8gBWX66RLMbYAyMUl6BD/A9lt5Q+CXB6E/bi4WGMagYxPgH
nkSkwXu/Tc4i/rc2uT2NoutBNaKiP3Av3rkulS5kc45menGsmNRjkKtWn+qXpNJH+Y+8149VZF7T
dOLCkbifvoop0D/L4QkW3qX2TKCGlzrm5pufp5z+EBYS2CPxoP7zt+FfbtSTfBeFpvjqXhi+TNyo
26sc/xbtKr8ouAjlJD2mA5S/JillU2qDGgGkFLH9VItGScVT17jKckMUasMPn4G7RFuD/yazQodA
mOUVSRUNKmR9n9t4Uizc9LTlUOmndHp/6NBWelRlkwY9Ez/TtSktBj9ekQClQ/EvpwpxzfGemSNq
lWBFt7APFwvUOj/tCT+Kt0mpSeJ62aXeJ9NJ88YUn3obaB/J6E+PTnr00QmyQp3L5xWn9FBA77u6
ZpDdxSNFv5rF0aAfwc/6GvpohgicLOU1fgywbKoq2nljDoK/sYlWrhFu7XD9rCVGrdlV2GmyHjmr
qEcXlFPvmvYnu7JMO2lxEtf3Lj90N9Lnar/Q1AIPsfBIFAlBPxm+flJ51fBy+XJw5MaSuu/6Ng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E0E0983CCE58B0"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: KC1zBP+82NBQocg0QzSkJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0071ba7-d487-412f-a93c-54dad370c978
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061/baz

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
/LmFUhCob1F2QfyH60g/K/VDefU2WEL4ZkPBMfGhduvqKalZ5rwU13j/q+Ak9uagUwGc19z6KqN3
jezM5z1f1MsRnMGe5kU5LqF9N61i1HBcId7wBJ8O7/8G4VnQR/A7n9YUElklAW27Y6g6ffP2Fbh7
cMVfb88sAq3CmATsaeewQpfWTcEXNyBwNKH21HILD8ygVNcr3DAG6BCsYmhoz/rBiTpcH8f2ZDil
7jsuNS06t4g4SxQPhWZmz2SwatW3CGSmNUs3ru8EqvCfhu302LLjcavfL4TmsQPU9VBjRflj7eXX
hwDhAwiYNKEkcP94cveyzfkq2NjgwINHYrmfoWT3PJkHHVCyAW6iRvviwUEEXINYsHj/OBUN9sd8
mqBO+ZM8LTNlcFWm/8uKh5Hd/f5CQgY2RvDs9wOE+iaJNWfOU01oppQNnustsbGsdbGDL/nIOlea
GLKiTzUw4XUuHclkvDNDdVZpNKMaCJQ+QIJRAMsswPsPMzuaxVZe3b11/pTnR7h+P7qiXgWzfw8d
Yw+z3uGqAlzOVYj3qK8AC1fmpAkAV/jJ08AQiWL1W7QrfGFHqv7cy/w3GfIvhpYKolOuzNoGHQwW
6gogmXj62PnUzCtOuGBYCtkMyT0Fmk0pBucPR47ZJV9UMMDzuzGEPED5WrlqvOnzVcIB+VPPEE+9
9pOR65Fq+qfM+YifZU+niIz8DD+Tvkn9G/HM2CsLhR9wNsSd8lGvjmASnsNhU/BzWXHH0gQQKThK
lM+fniJ8wHNoLi6KCpU7TX3fgR+Fm8gBWX66RLMbYAyMUl6BD/A9lt5Q+CXB6E/bi4WGMagYxPgH
nkSkwXu/Tc4i/rc2uT2NoutBNaKiP3Av3rkulS5kc45menGsmNRjkKtWn+qXpNJH+Y+8149VZF7T
dOLCkbifvoop0D/L4QkW3qX2TKCGlzrm5pufp5z+EBYS2CPxoP7zt+FfbtSTfBeFpvjqXhi+TNyo
26sc/xbtKr8ouAjlJD2mA5S/JillU2qDGgGkFLH9VItGScVT17jKckMUasMPn4G7RFuD/yazQodA
mOUVSRUNKmR9n9t4Uizc9LTlUOmndHp/6NBWelRlkwY9Ez/TtSktBj9ekQClQ/EvpwpxzfGemSNq
lWBFt7APFwvUOj/tCT+Kt0mpSeJ62aXeJ9NJ88YUn3obaB/J6E+PTnr00QmyQp3L5xWn9FBA77u6
ZpDdxSNFv5rF0aAfwc/6GvpohgicLOU1fgywbKoq2nljDoK/sYlWrhFu7XD9rCVGrdlV2GmyHjmr
qEcXlFPvmvYnu7JMO2lxEtf3Lj90N9Lnar/Q1AIPsfBIFAlBPxm+flJ51fBy+XJw5MaSuu/6Ng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x247241C089BB8A0"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: KC1zBP+82NBQocg0QzSkJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bc3137d9-0765-48be-b4d3-9cbc112bf56e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061/foo/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_5
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
/LmFUhCob1F2QfyH60g/K/VDefU2WEL4ZkPBMfGhduvqKalZ5rwU13j/q+Ak9uagUwGc19z6KqN3
jezM5z1f1MsRnMGe5kU5LqF9N61i1HBcId7wBJ8O7/8G4VnQR/A7n9YUElklAW27Y6g6ffP2Fbh7
cMVfb88sAq3CmATsaeewQpfWTcEXNyBwNKH21HILD8ygVNcr3DAG6BCsYmhoz/rBiTpcH8f2ZDil
7jsuNS06t4g4SxQPhWZmz2SwatW3CGSmNUs3ru8EqvCfhu302LLjcavfL4TmsQPU9VBjRflj7eXX
hwDhAwiYNKEkcP94cveyzfkq2NjgwINHYrmfoWT3PJkHHVCyAW6iRvviwUEEXINYsHj/OBUN9sd8
mqBO+ZM8LTNlcFWm/8uKh5Hd/f5CQgY2RvDs9wOE+iaJNWfOU01oppQNnustsbGsdbGDL/nIOlea
GLKiTzUw4XUuHclkvDNDdVZpNKMaCJQ+QIJRAMsswPsPMzuaxVZe3b11/pTnR7h+P7qiXgWzfw8d
Yw+z3uGqAlzOVYj3qK8AC1fmpAkAV/jJ08AQiWL1W7QrfGFHqv7cy/w3GfIvhpYKolOuzNoGHQwW
6gogmXj62PnUzCtOuGBYCtkMyT0Fmk0pBucPR47ZJV9UMMDzuzGEPED5WrlqvOnzVcIB+VPPEE+9
9pOR65Fq+qfM+YifZU+niIz8DD+Tvkn9G/HM2CsLhR9wNsSd8lGvjmASnsNhU/BzWXHH0gQQKThK
lM+fniJ8wHNoLi6KCpU7TX3fgR+Fm8gBWX66RLMbYAyMUl6BD/A9lt5Q+CXB6E/bi4WGMagYxPgH
nkSkwXu/Tc4i/rc2uT2NoutBNaKiP3Av3rkulS5kc45menGsmNRjkKtWn+qXpNJH+Y+8149VZF7T
dOLCkbifvoop0D/L4QkW3qX2TKCGlzrm5pufp5z+EBYS2CPxoP7zt+FfbtSTfBeFpvjqXhi+TNyo
26sc/xbtKr8ouAjlJD2mA5S/JillU2qDGgGkFLH9VItGScVT17jKckMUasMPn4G7RFuD/yazQodA
mOUVSRUNKmR9n9t4Uizc9LTlUOmndHp/6NBWelRlkwY9Ez/TtSktBj9ekQClQ/EvpwpxzfGemSNq
lWBFt7APFwvUOj/tCT+Kt0mpSeJ62aXeJ9NJ88YUn3obaB/J6E+PTnr00QmyQp3L5xWn9FBA77u6
ZpDdxSNFv5rF0aAfwc/6GvpohgicLOU1fgywbKoq2nljDoK/sYlWrhFu7XD9rCVGrdlV2GmyHjmr
qEcXlFPvmvYnu7JMO2lxEtf3Lj90N9Lnar/Q1AIPsfBIFAlBPxm+flJ51fBy+XJw5MaSuu/6Ng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F0DC1CE6E278C0"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: KC1zBP+82NBQocg0QzSkJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0553c0b4-296e-4067-99f0-0f63f8a4a1e7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061/foo/bar

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
/LmFUhCob1F2QfyH60g/K/VDefU2WEL4ZkPBMfGhduvqKalZ5rwU13j/q+Ak9uagUwGc19z6KqN3
jezM5z1f1MsRnMGe5kU5LqF9N61i1HBcId7wBJ8O7/8G4VnQR/A7n9YUElklAW27Y6g6ffP2Fbh7
cMVfb88sAq3CmATsaeewQpfWTcEXNyBwNKH21HILD8ygVNcr3DAG6BCsYmhoz/rBiTpcH8f2ZDil
7jsuNS06t4g4SxQPhWZmz2SwatW3CGSmNUs3ru8EqvCfhu302LLjcavfL4TmsQPU9VBjRflj7eXX
hwDhAwiYNKEkcP94cveyzfkq2NjgwINHYrmfoWT3PJkHHVCyAW6iRvviwUEEXINYsHj/OBUN9sd8
mqBO+ZM8LTNlcFWm/8uKh5Hd/f5CQgY2RvDs9wOE+iaJNWfOU01oppQNnustsbGsdbGDL/nIOlea
GLKiTzUw4XUuHclkvDNDdVZpNKMaCJQ+QIJRAMsswPsPMzuaxVZe3b11/pTnR7h+P7qiXgWzfw8d
Yw+z3uGqAlzOVYj3qK8AC1fmpAkAV/jJ08AQiWL1W7QrfGFHqv7cy/w3GfIvhpYKolOuzNoGHQwW
6gogmXj62PnUzCtOuGBYCtkMyT0Fmk0pBucPR47ZJV9UMMDzuzGEPED5WrlqvOnzVcIB+VPPEE+9
9pOR65Fq+qfM+YifZU+niIz8DD+Tvkn9G/HM2CsLhR9wNsSd8lGvjmASnsNhU/BzWXHH0gQQKThK
lM+fniJ8wHNoLi6KCpU7TX3fgR+Fm8gBWX66RLMbYAyMUl6BD/A9lt5Q+CXB6E/bi4WGMagYxPgH
nkSkwXu/Tc4i/rc2uT2NoutBNaKiP3Av3rkulS5kc45menGsmNRjkKtWn+qXpNJH+Y+8149VZF7T
dOLCkbifvoop0D/L4QkW3qX2TKCGlzrm5pufp5z+EBYS2CPxoP7zt+FfbtSTfBeFpvjqXhi+TNyo
26sc/xbtKr8ouAjlJD2mA5S/JillU2qDGgGkFLH9VItGScVT17jKckMUasMPn4G7RFuD/yazQodA
mOUVSRUNKmR9n9t4Uizc9LTlUOmndHp/6NBWelRlkwY9Ez/TtSktBj9ekQClQ/EvpwpxzfGemSNq
lWBFt7APFwvUOj/tCT+Kt0mpSeJ62aXeJ9NJ88YUn3obaB/J6E+PTnr00QmyQp3L5xWn9FBA77u6
ZpDdxSNFv5rF0aAfwc/6GvpohgicLOU1fgywbKoq2nljDoK/sYlWrhFu7XD9rCVGrdlV2GmyHjmr
qEcXlFPvmvYnu7JMO2lxEtf3Lj90N9Lnar/Q1AIPsfBIFAlBPxm+flJ51fBy+XJw5MaSuu/6Ng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x277650080706700"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: KC1zBP+82NBQocg0QzSkJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57205c01-3611-4d4a-8d9f-92b389c7b616
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061/baz/foo

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
/LmFUhCob1F2QfyH60g/K/VDefU2WEL4ZkPBMfGhduvqKalZ5rwU13j/q+Ak9uagUwGc19z6KqN3
jezM5z1f1MsRnMGe5kU5LqF9N61i1HBcId7wBJ8O7/8G4VnQR/A7n9YUElklAW27Y6g6ffP2Fbh7
cMVfb88sAq3CmATsaeewQpfWTcEXNyBwNKH21HILD8ygVNcr3DAG6BCsYmhoz/rBiTpcH8f2ZDil
7jsuNS06t4g4SxQPhWZmz2SwatW3CGSmNUs3ru8EqvCfhu302LLjcavfL4TmsQPU9VBjRflj7eXX
hwDhAwiYNKEkcP94cveyzfkq2NjgwINHYrmfoWT3PJkHHVCyAW6iRvviwUEEXINYsHj/OBUN9sd8
mqBO+ZM8LTNlcFWm/8uKh5Hd/f5CQgY2RvDs9wOE+iaJNWfOU01oppQNnustsbGsdbGDL/nIOlea
GLKiTzUw4XUuHclkvDNDdVZpNKMaCJQ+QIJRAMsswPsPMzuaxVZe3b11/pTnR7h+P7qiXgWzfw8d
Yw+z3uGqAlzOVYj3qK8AC1fmpAkAV/jJ08AQiWL1W7QrfGFHqv7cy/w3GfIvhpYKolOuzNoGHQwW
6gogmXj62PnUzCtOuGBYCtkMyT0Fmk0pBucPR47ZJV9UMMDzuzGEPED5WrlqvOnzVcIB+VPPEE+9
9pOR65Fq+qfM+YifZU+niIz8DD+Tvkn9G/HM2CsLhR9wNsSd8lGvjmASnsNhU/BzWXHH0gQQKThK
lM+fniJ8wHNoLi6KCpU7TX3fgR+Fm8gBWX66RLMbYAyMUl6BD/A9lt5Q+CXB6E/bi4WGMagYxPgH
nkSkwXu/Tc4i/rc2uT2NoutBNaKiP3Av3rkulS5kc45menGsmNRjkKtWn+qXpNJH+Y+8149VZF7T
dOLCkbifvoop0D/L4QkW3qX2TKCGlzrm5pufp5z+EBYS2CPxoP7zt+FfbtSTfBeFpvjqXhi+TNyo
26sc/xbtKr8ouAjlJD2mA5S/JillU2qDGgGkFLH9VItGScVT17jKckMUasMPn4G7RFuD/yazQodA
mOUVSRUNKmR9n9t4Uizc9LTlUOmndHp/6NBWelRlkwY9Ez/TtSktBj9ekQClQ/EvpwpxzfGemSNq
lWBFt7APFwvUOj/tCT+Kt0mpSeJ62aXeJ9NJ88YUn3obaB/J6E+PTnr00QmyQp3L5xWn9FBA77u6
ZpDdxSNFv5rF0aAfwc/6GvpohgicLOU1fgywbKoq2nljDoK/sYlWrhFu7XD9rCVGrdlV2GmyHjmr
qEcXlFPvmvYnu7JMO2lxEtf3Lj90N9Lnar/Q1AIPsfBIFAlBPxm+flJ51fBy+XJw5MaSuu/6Ng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2174523AAE725C0"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: KC1zBP+82NBQocg0QzSkJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cb8d30c4-e07c-4bad-aee7-2ff344a1ddc9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061/baz/foo/bar

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
/LmFUhCob1F2QfyH60g/K/VDefU2WEL4ZkPBMfGhduvqKalZ5rwU13j/q+Ak9uagUwGc19z6KqN3
jezM5z1f1MsRnMGe5kU5LqF9N61i1HBcId7wBJ8O7/8G4VnQR/A7n9YUElklAW27Y6g6ffP2Fbh7
cMVfb88sAq3CmATsaeewQpfWTcEXNyBwNKH21HILD8ygVNcr3DAG6BCsYmhoz/rBiTpcH8f2ZDil
7jsuNS06t4g4SxQPhWZmz2SwatW3CGSmNUs3ru8EqvCfhu302LLjcavfL4TmsQPU9VBjRflj7eXX
hwDhAwiYNKEkcP94cveyzfkq2NjgwINHYrmfoWT3PJkHHVCyAW6iRvviwUEEXINYsHj/OBUN9sd8
mqBO+ZM8LTNlcFWm/8uKh5Hd/f5CQgY2RvDs9wOE+iaJNWfOU01oppQNnustsbGsdbGDL/nIOlea
GLKiTzUw4XUuHclkvDNDdVZpNKMaCJQ+QIJRAMsswPsPMzuaxVZe3b11/pTnR7h+P7qiXgWzfw8d
Yw+z3uGqAlzOVYj3qK8AC1fmpAkAV/jJ08AQiWL1W7QrfGFHqv7cy/w3GfIvhpYKolOuzNoGHQwW
6gogmXj62PnUzCtOuGBYCtkMyT0Fmk0pBucPR47ZJV9UMMDzuzGEPED5WrlqvOnzVcIB+VPPEE+9
9pOR65Fq+qfM+YifZU+niIz8DD+Tvkn9G/HM2CsLhR9wNsSd8lGvjmASnsNhU/BzWXHH0gQQKThK
lM+fniJ8wHNoLi6KCpU7TX3fgR+Fm8gBWX66RLMbYAyMUl6BD/A9lt5Q+CXB6E/bi4WGMagYxPgH
nkSkwXu/Tc4i/rc2uT2NoutBNaKiP3Av3rkulS5kc45menGsmNRjkKtWn+qXpNJH+Y+8149VZF7T
dOLCkbifvoop0D/L4QkW3qX2TKCGlzrm5pufp5z+EBYS2CPxoP7zt+FfbtSTfBeFpvjqXhi+TNyo
26sc/xbtKr8ouAjlJD2mA5S/JillU2qDGgGkFLH9VItGScVT17jKckMUasMPn4G7RFuD/yazQodA
mOUVSRUNKmR9n9t4Uizc9LTlUOmndHp/6NBWelRlkwY9Ez/TtSktBj9ekQClQ/EvpwpxzfGemSNq
lWBFt7APFwvUOj/tCT+Kt0mpSeJ62aXeJ9NJ88YUn3obaB/J6E+PTnr00QmyQp3L5xWn9FBA77u6
ZpDdxSNFv5rF0aAfwc/6GvpohgicLOU1fgywbKoq2nljDoK/sYlWrhFu7XD9rCVGrdlV2GmyHjmr
qEcXlFPvmvYnu7JMO2lxEtf3Lj90N9Lnar/Q1AIPsfBIFAlBPxm+flJ51fBy+XJw5MaSuu/6Ng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x262DDD74914BB20"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: KC1zBP+82NBQocg0QzSkJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7f6d5737-0d84-4486-9fae-6327a408d15f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061/baz/bar/foo

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
Content-Type: application/octet-stream
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
/LmFUhCob1F2QfyH60g/K/VDefU2WEL4ZkPBMfGhduvqKalZ5rwU13j/q+Ak9uagUwGc19z6KqN3
jezM5z1f1MsRnMGe5kU5LqF9N61i1HBcId7wBJ8O7/8G4VnQR/A7n9YUElklAW27Y6g6ffP2Fbh7
cMVfb88sAq3CmATsaeewQpfWTcEXNyBwNKH21HILD8ygVNcr3DAG6BCsYmhoz/rBiTpcH8f2ZDil
7jsuNS06t4g4SxQPhWZmz2SwatW3CGSmNUs3ru8EqvCfhu302LLjcavfL4TmsQPU9VBjRflj7eXX
hwDhAwiYNKEkcP94cveyzfkq2NjgwINHYrmfoWT3PJkHHVCyAW6iRvviwUEEXINYsHj/OBUN9sd8
mqBO+ZM8LTNlcFWm/8uKh5Hd/f5CQgY2RvDs9wOE+iaJNWfOU01oppQNnustsbGsdbGDL/nIOlea
GLKiTzUw4XUuHclkvDNDdVZpNKMaCJQ+QIJRAMsswPsPMzuaxVZe3b11/pTnR7h+P7qiXgWzfw8d
Yw+z3uGqAlzOVYj3qK8AC1fmpAkAV/jJ08AQiWL1W7QrfGFHqv7cy/w3GfIvhpYKolOuzNoGHQwW
6gogmXj62PnUzCtOuGBYCtkMyT0Fmk0pBucPR47ZJV9UMMDzuzGEPED5WrlqvOnzVcIB+VPPEE+9
9pOR65Fq+qfM+YifZU+niIz8DD+Tvkn9G/HM2CsLhR9wNsSd8lGvjmASnsNhU/BzWXHH0gQQKThK
lM+fniJ8wHNoLi6KCpU7TX3fgR+Fm8gBWX66RLMbYAyMUl6BD/A9lt5Q+CXB6E/bi4WGMagYxPgH
nkSkwXu/Tc4i/rc2uT2NoutBNaKiP3Av3rkulS5kc45menGsmNRjkKtWn+qXpNJH+Y+8149VZF7T
dOLCkbifvoop0D/L4QkW3qX2TKCGlzrm5pufp5z+EBYS2CPxoP7zt+FfbtSTfBeFpvjqXhi+TNyo
26sc/xbtKr8ouAjlJD2mA5S/JillU2qDGgGkFLH9VItGScVT17jKckMUasMPn4G7RFuD/yazQodA
mOUVSRUNKmR9n9t4Uizc9LTlUOmndHp/6NBWelRlkwY9Ez/TtSktBj9ekQClQ/EvpwpxzfGemSNq
lWBFt7APFwvUOj/tCT+Kt0mpSeJ62aXeJ9NJ88YUn3obaB/J6E+PTnr00QmyQp3L5xWn9FBA77u6
ZpDdxSNFv5rF0aAfwc/6GvpohgicLOU1fgywbKoq2nljDoK/sYlWrhFu7XD9rCVGrdlV2GmyHjmr
qEcXlFPvmvYnu7JMO2lxEtf3Lj90N9Lnar/Q1AIPsfBIFAlBPxm+flJ51fBy+XJw5MaSuu/6Ng==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25DE1966B529660"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: KC1zBP+82NBQocg0QzSkJA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 245e3a6f-4747-42b9-a37f-eec73e8ce835
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061/foo/foo?comp=metadata

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_10
x-ms-meta-Capital: letter
x-ms-meta-foo: bar
x-ms-meta-meta: data
x-ms-meta-UPPER: case
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2784153B988A7C0"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0e782f9-72be-4c1b-8642-7d2a7ddefc11
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061?restype=container&comp=list&maxresults=2

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cc818fdb-957f-4ca0-aae4-95d8cad575cc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-2251e780-2022-d27d-e893-2c921b55f061"><Prefix/><Marker/><MaxResults>2</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x1E0E0983CCE58B0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>KC1zBP+82NBQocg0QzSkJA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x247241C089BB8A0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>KC1zBP+82NBQocg0QzSkJA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker>baz</NextMarker></EnumerationResults>
```

## Interaction 11: GET /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061?restype=container&comp=list&marker=baz&maxresults=2

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b092fc51-208f-4224-ae9c-30a6e1105a9b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-2251e780-2022-d27d-e893-2c921b55f061"><Prefix/><Marker>baz</Marker><MaxResults>2</MaxResults><Blobs><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x25DE1966B529660</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>KC1zBP+82NBQocg0QzSkJA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x2174523AAE725C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>KC1zBP+82NBQocg0QzSkJA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker>baz/foo</NextMarker></EnumerationResults>
```

## Interaction 12: GET /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061?restype=container&comp=list&marker=baz%2Ffoo&maxresults=2

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
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
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84c595fd-2609-4abd-a875-48dab5944a2f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-2251e780-2022-d27d-e893-2c921b55f061"><Prefix/><Marker>baz/foo</Marker><MaxResults>2</MaxResults><Blobs><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x262DDD74914BB20</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>KC1zBP+82NBQocg0QzSkJA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x2736DDFE3B4DC20</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>KC1zBP+82NBQocg0QzSkJA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker>foo</NextMarker></EnumerationResults>
```

## Interaction 13: GET /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061?restype=container&comp=list&marker=foo&maxresults=2

### Request headers recorded for playback:

```
Accept: application/vnd.apache.arrow.stream,application/xml
Authorization: SharedKey AUTHORIZATION_14
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
content-type: application/xml
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 07fb5dab-ddaf-43cb-a214-284631833cfc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-2251e780-2022-d27d-e893-2c921b55f061"><Prefix/><Marker>foo</Marker><MaxResults>2</MaxResults><Blobs><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x277650080706700</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>KC1zBP+82NBQocg0QzSkJA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x2784153B988A7C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>KC1zBP+82NBQocg0QzSkJA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 14: DELETE /devstoreaccount1/test-container-2251e780-2022-d27d-e893-2c921b55f061?restype=container

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
x-ms-request-id: 838ea520-cb76-4f60-9f3d-c46cae0f6dc7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

