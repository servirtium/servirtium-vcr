## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-617c9627-0bc1-8a9d-cd4b-bfad9fda546f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobClientTests(True,V2027_03_07).UploadAsync_DoesNotOverwriteDefault_Path
now: 2026-11-12T00:49:12.2748331+00:00

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
etag: "0x226906AE55FD800"
last-modified: Thu, 12 Nov 2026 00:49:12 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 84799047-442a-485d-bc72-2a56c54341c0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:49:12 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-617c9627-0bc1-8a9d-cd4b-bfad9fda546f/test-blob-f129e51d-b13c-0e20-0461-1385126ef3b3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_2
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
c2bJSlcaJVkCBpSP44M/YKEfV9kgaPF2dW5dYPgXd19XCzk4EQkYA7/Q7jYckCuBIbPk8xYZkgt1
UtXpvcVh6o41N9dJBk6XB1MZUHm7WuVC2z5FM4NIPnguw740Lkb6bwSn5llTNxtkTOzD/0KSuvjv
p+GHHLcL7flfGkKQY9kNH+F1E3SL76Qi4OaXhT41nAnFRIdkclNMnPhg8x3Y0+gTtd9hHKaEY7c9
ZDvRdGi6KX45yh9RqK2OKHd7K/uGSQ39g89e1H9iQeDPJw0XeiiQpcqfnwjJwQwy0vQvCTi8thsu
0/CYW1T+14k/goGfdq1P6oYw56oENMLDLAGLMzioE3Hy6ac390p1oMd/ij+Lk1xG3x6xi85wKZ8t
1S9TcqNQlm8PrIwGF/I7u0fihKqDN5ilRVMZ9oeigr8HCiIbIi0jLvPPe+bPP8grds+HjaT1qp6W
rS1QN6DnbCrN/g3QIJgZv1a2s7uy1QWK7oC3G/QaEl+EhHT/0/dS6A+7AkG7W1Y2bc5OPvbi5Ngo
xUkgL1E1suytTJskGetfZMqs9tLEz5IqgK0mzNRooaCc1w2uMri9hlBVDQ+6ElTi79orNu0FZPW2
9q6jDuUXRKr6iELdsDES7nCCb8KCb25ZRNz6PGqzlnMX9zwKGndqPclkv4oRBD6oGUh8g/QzM4ZA
ScoJHQdAR/HOxbn1B9T5FzH5Hq/jRz+eUSMiNhN+5MS1ytCsYR/BJHiZQj6FshJ0gmvDOhXXXAGL
asvkHRDeUOH0QD0DTbYRN/o2SgUBGJ4QrrOou6qu3W7OIfZU3AZouvJdkHLVcDW0sQIaoBH8ilIt
029cNpU3RmLONSzAvVrzzo8So4csOz5+8wmnlDxd0ZakJwiXDIRcJUoPBjsJ9POnJ9KB6ebKAJgx
3kKLkLIlcWOVG5ZSXMIKtn49HDUCdP4V/2xq2+ew2SZwZS5C0JWY6ZTXdNhdVcoQdjNnjeNjLmlE
dpBFu5V75EJw4veTyOXppDOgKgAluKqiWWWzSUxCDDfE/loEUy7+XI+W7XPTfK1OfuiwwgNoHr7m
omEwx5v2LdXAz8qL5FAFos5xj8o2z924ZcpjkkozXN+cHrHMzpT0oMCeE63iw5qYqiA09o7zr9OE
eGLQk5qKjHLr7sWfOdQ6fe8KmLwv1aEwy+cq/mZQqG/dR1YxIwwlE4Y799TU+HFL+nmf6BYXVKLA
oMizYI4MmkVVwvF+CFri5YQ19N3NW9J13gTsscBZxvOzcYJEcbP4L12OfzaAzfEevAOR4WDE80T1
PYGJH+iF/Pv9ypfXnXPRPMWAPtyc9BATzfS9x+ST7n4+TzQxbg90CYM6ggJZRx+PwKSaRLRoWA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x212854A69F431E0"
last-modified: Thu, 12 Nov 2026 00:49:12 GMT
content-md5: adn0jltBm9ut2mt9TgOPsQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2aa52226-ca31-4449-97a8-5f7e41313b5d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:12 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-617c9627-0bc1-8a9d-cd4b-bfad9fda546f/test-blob-f129e51d-b13c-0e20-0461-1385126ef3b3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_3
Content-Type: application/octet-stream
If-None-Match: *
x-ms-blob-type: BlockBlob
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback (application/octet-stream base64 below):

```
c2bJSlcaJVkCBpSP44M/YKEfV9kgaPF2dW5dYPgXd19XCzk4EQkYA7/Q7jYckCuBIbPk8xYZkgt1
UtXpvcVh6o41N9dJBk6XB1MZUHm7WuVC2z5FM4NIPnguw740Lkb6bwSn5llTNxtkTOzD/0KSuvjv
p+GHHLcL7flfGkKQY9kNH+F1E3SL76Qi4OaXhT41nAnFRIdkclNMnPhg8x3Y0+gTtd9hHKaEY7c9
ZDvRdGi6KX45yh9RqK2OKHd7K/uGSQ39g89e1H9iQeDPJw0XeiiQpcqfnwjJwQwy0vQvCTi8thsu
0/CYW1T+14k/goGfdq1P6oYw56oENMLDLAGLMzioE3Hy6ac390p1oMd/ij+Lk1xG3x6xi85wKZ8t
1S9TcqNQlm8PrIwGF/I7u0fihKqDN5ilRVMZ9oeigr8HCiIbIi0jLvPPe+bPP8grds+HjaT1qp6W
rS1QN6DnbCrN/g3QIJgZv1a2s7uy1QWK7oC3G/QaEl+EhHT/0/dS6A+7AkG7W1Y2bc5OPvbi5Ngo
xUkgL1E1suytTJskGetfZMqs9tLEz5IqgK0mzNRooaCc1w2uMri9hlBVDQ+6ElTi79orNu0FZPW2
9q6jDuUXRKr6iELdsDES7nCCb8KCb25ZRNz6PGqzlnMX9zwKGndqPclkv4oRBD6oGUh8g/QzM4ZA
ScoJHQdAR/HOxbn1B9T5FzH5Hq/jRz+eUSMiNhN+5MS1ytCsYR/BJHiZQj6FshJ0gmvDOhXXXAGL
asvkHRDeUOH0QD0DTbYRN/o2SgUBGJ4QrrOou6qu3W7OIfZU3AZouvJdkHLVcDW0sQIaoBH8ilIt
029cNpU3RmLONSzAvVrzzo8So4csOz5+8wmnlDxd0ZakJwiXDIRcJUoPBjsJ9POnJ9KB6ebKAJgx
3kKLkLIlcWOVG5ZSXMIKtn49HDUCdP4V/2xq2+ew2SZwZS5C0JWY6ZTXdNhdVcoQdjNnjeNjLmlE
dpBFu5V75EJw4veTyOXppDOgKgAluKqiWWWzSUxCDDfE/loEUy7+XI+W7XPTfK1OfuiwwgNoHr7m
omEwx5v2LdXAz8qL5FAFos5xj8o2z924ZcpjkkozXN+cHrHMzpT0oMCeE63iw5qYqiA09o7zr9OE
eGLQk5qKjHLr7sWfOdQ6fe8KmLwv1aEwy+cq/mZQqG/dR1YxIwwlE4Y799TU+HFL+nmf6BYXVKLA
oMizYI4MmkVVwvF+CFri5YQ19N3NW9J13gTsscBZxvOzcYJEcbP4L12OfzaAzfEevAOR4WDE80T1
PYGJH+iF/Pv9ypfXnXPRPMWAPtyc9BATzfS9x+ST7n4+TzQxbg90CYM6ggJZRx+PwKSaRLRoWA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: BlobAlreadyExists
x-ms-request-id: b1812a8b-e9c4-4322-8565-b6f6ac046620
content-type: application/xml
Date: Thu, 12 Nov 2026 00:49:12 GMT
```
### Response body recorded for playback (409: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Error>
  <Code>BlobAlreadyExists</Code>
  <Message>The specified blob already exists.
RequestId:REQUEST-ID
Time:2000-01-01T00:00:00.0000000Z</Message>
</Error>
```

## Interaction 3: DELETE /devstoreaccount1/test-container-617c9627-0bc1-8a9d-cd4b-bfad9fda546f?restype=container

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
x-ms-request-id: 5036167e-31a8-42af-a583-2ae9100f2604
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:49:12 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

