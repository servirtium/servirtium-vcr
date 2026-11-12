## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_Prefix
now: 2026-11-12T00:43:47.2726738+00:00

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
etag: "0x247F1BD8FCB4F20"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 92fe017a-4723-4a68-a42c-7b5b3e4287a3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:47 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3/foo

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
zl4YeUbgVFvCZ23ESjYvmITPF9ZPoj0GKiHKPN9fGON9GxE+z2PJAtY7N2FdA1466F/m7wI7oywh
EU8kFRh8Y06KRy8k8cghBRX/E2rbqSbDj1N/eCngQnflHb4Upey+v9MS07wvFveWxOntPI/BRWgo
YIXE/OolqQW3P9MKDWAoQFSWydVqlHlb6LQ/8wXoI9hW60Rm+sPp7Cm3d9YjjLeJxPs7KnySvcwM
aBM25rX/zxz7syEbwUaRrdyssx2jN1z8tS4KrfhcxC54WpGvsgZ0t6i6KNiWbgO1qn2f5QqvaDC3
OjGG9SEjn+/yo2a04frWN/t06Q+DZkcrVAN7vN4kyPJh+HjV7cKGlojoo8qcAciCya4OOn8gM9Tq
W6AeqOMRztp0U+mCAEo47lKHm8J8j1M6+PMwFY5yQMSk65IiZ+6l19TwKK7eAMhj1kwtmZgRbcxM
46/v4blMARIk3hW4FYZj4sPtjGalW/gqzD5CRacskn3F1oQ+tfYboyabuiGyq8DFybfUI+Flpoe3
xBR6Cbtr90uX8j4CJCzN0ug/CqHWeCF9fHzvWG6cYDD8h/DhoJprMMLWGrmBw6SKB1H4JZzm4Uzz
/I0/e5/c+5EOBZ086zFO1Nnf/11o+7jYZVAdozqUFqaj7qMMLLQi+h8nc70GThsfqlHCBuHviwHU
ZxZOv1hXeu/3mP2OQaglvAU9QIj70RY1/fjp0Q/Fs2KiOMWe0zvH0PjND7UekWmonUrbsUp42ZUA
GcFfbajgMeSa6wnjhunKdnCQLcFgF2yPQTTF6QIYKl4vnrp5Z2JP7d3Rg6ZfxRZhEDvZ6KzUnwJV
0CxzG0jigsGqtOgvUQ4OQD/jj5PGL3seZNnHPkGxWv63JJc23NKV7gHktBEtMr8sy6hs8A9vj6Cw
VbduG0N/+Vnpdyx312RtTqGS4Xpq8TIamnOZRWrvSJX3hYYbJ9O9Zbu3Q7qStfND/6Ju3K0mRWSF
VIDQ5bPu+i+Xf1HdUibN1Xy+sq13h+V/VUXIgGvn0EAildJS7H8IyUmL+zWhZqx7oAcxZ5K2Dc2a
UZBtJnnDr68RurxUe+n8tulj7Iuw3u6ZTOBktWmtbIgFt5vvmqLQx0yGj6zwJyUeNbGpUyBB6nOh
1NmZX/lGZE40TsNNDRxHkyU/Kk5CqSW6RoC3AxhnxM0oTcXINmhSQCpeu9lh0CeVYcD7Ar8kXiu0
3hh4jmA1zIn1Jb9Wfly97Ooj4+1MWXZZIqFYa8ENA+6ZE1hP2bHKKO9Pa6poPuNjPhXVAXs+aIWi
H2y+3GDI6CLQvWoDbhI4Wbv9/e3L8eS+9C2sNwJzW6vTrLlFC0uOh4OIl4F4YNADnae/QGuX1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26B658048B58D60"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
content-md5: 3VsUYxO8WitOzm6BBVg0hg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 05eae11f-9fe4-467c-89e9-5571619fe33e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3/bar

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
zl4YeUbgVFvCZ23ESjYvmITPF9ZPoj0GKiHKPN9fGON9GxE+z2PJAtY7N2FdA1466F/m7wI7oywh
EU8kFRh8Y06KRy8k8cghBRX/E2rbqSbDj1N/eCngQnflHb4Upey+v9MS07wvFveWxOntPI/BRWgo
YIXE/OolqQW3P9MKDWAoQFSWydVqlHlb6LQ/8wXoI9hW60Rm+sPp7Cm3d9YjjLeJxPs7KnySvcwM
aBM25rX/zxz7syEbwUaRrdyssx2jN1z8tS4KrfhcxC54WpGvsgZ0t6i6KNiWbgO1qn2f5QqvaDC3
OjGG9SEjn+/yo2a04frWN/t06Q+DZkcrVAN7vN4kyPJh+HjV7cKGlojoo8qcAciCya4OOn8gM9Tq
W6AeqOMRztp0U+mCAEo47lKHm8J8j1M6+PMwFY5yQMSk65IiZ+6l19TwKK7eAMhj1kwtmZgRbcxM
46/v4blMARIk3hW4FYZj4sPtjGalW/gqzD5CRacskn3F1oQ+tfYboyabuiGyq8DFybfUI+Flpoe3
xBR6Cbtr90uX8j4CJCzN0ug/CqHWeCF9fHzvWG6cYDD8h/DhoJprMMLWGrmBw6SKB1H4JZzm4Uzz
/I0/e5/c+5EOBZ086zFO1Nnf/11o+7jYZVAdozqUFqaj7qMMLLQi+h8nc70GThsfqlHCBuHviwHU
ZxZOv1hXeu/3mP2OQaglvAU9QIj70RY1/fjp0Q/Fs2KiOMWe0zvH0PjND7UekWmonUrbsUp42ZUA
GcFfbajgMeSa6wnjhunKdnCQLcFgF2yPQTTF6QIYKl4vnrp5Z2JP7d3Rg6ZfxRZhEDvZ6KzUnwJV
0CxzG0jigsGqtOgvUQ4OQD/jj5PGL3seZNnHPkGxWv63JJc23NKV7gHktBEtMr8sy6hs8A9vj6Cw
VbduG0N/+Vnpdyx312RtTqGS4Xpq8TIamnOZRWrvSJX3hYYbJ9O9Zbu3Q7qStfND/6Ju3K0mRWSF
VIDQ5bPu+i+Xf1HdUibN1Xy+sq13h+V/VUXIgGvn0EAildJS7H8IyUmL+zWhZqx7oAcxZ5K2Dc2a
UZBtJnnDr68RurxUe+n8tulj7Iuw3u6ZTOBktWmtbIgFt5vvmqLQx0yGj6zwJyUeNbGpUyBB6nOh
1NmZX/lGZE40TsNNDRxHkyU/Kk5CqSW6RoC3AxhnxM0oTcXINmhSQCpeu9lh0CeVYcD7Ar8kXiu0
3hh4jmA1zIn1Jb9Wfly97Ooj4+1MWXZZIqFYa8ENA+6ZE1hP2bHKKO9Pa6poPuNjPhXVAXs+aIWi
H2y+3GDI6CLQvWoDbhI4Wbv9/e3L8eS+9C2sNwJzW6vTrLlFC0uOh4OIl4F4YNADnae/QGuX1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x202F3D49971AE00"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
content-md5: 3VsUYxO8WitOzm6BBVg0hg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f0eb6289-332d-49bf-ac3a-6ab9a40f2deb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3/baz

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
zl4YeUbgVFvCZ23ESjYvmITPF9ZPoj0GKiHKPN9fGON9GxE+z2PJAtY7N2FdA1466F/m7wI7oywh
EU8kFRh8Y06KRy8k8cghBRX/E2rbqSbDj1N/eCngQnflHb4Upey+v9MS07wvFveWxOntPI/BRWgo
YIXE/OolqQW3P9MKDWAoQFSWydVqlHlb6LQ/8wXoI9hW60Rm+sPp7Cm3d9YjjLeJxPs7KnySvcwM
aBM25rX/zxz7syEbwUaRrdyssx2jN1z8tS4KrfhcxC54WpGvsgZ0t6i6KNiWbgO1qn2f5QqvaDC3
OjGG9SEjn+/yo2a04frWN/t06Q+DZkcrVAN7vN4kyPJh+HjV7cKGlojoo8qcAciCya4OOn8gM9Tq
W6AeqOMRztp0U+mCAEo47lKHm8J8j1M6+PMwFY5yQMSk65IiZ+6l19TwKK7eAMhj1kwtmZgRbcxM
46/v4blMARIk3hW4FYZj4sPtjGalW/gqzD5CRacskn3F1oQ+tfYboyabuiGyq8DFybfUI+Flpoe3
xBR6Cbtr90uX8j4CJCzN0ug/CqHWeCF9fHzvWG6cYDD8h/DhoJprMMLWGrmBw6SKB1H4JZzm4Uzz
/I0/e5/c+5EOBZ086zFO1Nnf/11o+7jYZVAdozqUFqaj7qMMLLQi+h8nc70GThsfqlHCBuHviwHU
ZxZOv1hXeu/3mP2OQaglvAU9QIj70RY1/fjp0Q/Fs2KiOMWe0zvH0PjND7UekWmonUrbsUp42ZUA
GcFfbajgMeSa6wnjhunKdnCQLcFgF2yPQTTF6QIYKl4vnrp5Z2JP7d3Rg6ZfxRZhEDvZ6KzUnwJV
0CxzG0jigsGqtOgvUQ4OQD/jj5PGL3seZNnHPkGxWv63JJc23NKV7gHktBEtMr8sy6hs8A9vj6Cw
VbduG0N/+Vnpdyx312RtTqGS4Xpq8TIamnOZRWrvSJX3hYYbJ9O9Zbu3Q7qStfND/6Ju3K0mRWSF
VIDQ5bPu+i+Xf1HdUibN1Xy+sq13h+V/VUXIgGvn0EAildJS7H8IyUmL+zWhZqx7oAcxZ5K2Dc2a
UZBtJnnDr68RurxUe+n8tulj7Iuw3u6ZTOBktWmtbIgFt5vvmqLQx0yGj6zwJyUeNbGpUyBB6nOh
1NmZX/lGZE40TsNNDRxHkyU/Kk5CqSW6RoC3AxhnxM0oTcXINmhSQCpeu9lh0CeVYcD7Ar8kXiu0
3hh4jmA1zIn1Jb9Wfly97Ooj4+1MWXZZIqFYa8ENA+6ZE1hP2bHKKO9Pa6poPuNjPhXVAXs+aIWi
H2y+3GDI6CLQvWoDbhI4Wbv9/e3L8eS+9C2sNwJzW6vTrLlFC0uOh4OIl4F4YNADnae/QGuX1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2709E23CCD9E180"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
content-md5: 3VsUYxO8WitOzm6BBVg0hg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 603f3560-ac71-4920-a537-a66ef2602d8c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3/foo/foo

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
zl4YeUbgVFvCZ23ESjYvmITPF9ZPoj0GKiHKPN9fGON9GxE+z2PJAtY7N2FdA1466F/m7wI7oywh
EU8kFRh8Y06KRy8k8cghBRX/E2rbqSbDj1N/eCngQnflHb4Upey+v9MS07wvFveWxOntPI/BRWgo
YIXE/OolqQW3P9MKDWAoQFSWydVqlHlb6LQ/8wXoI9hW60Rm+sPp7Cm3d9YjjLeJxPs7KnySvcwM
aBM25rX/zxz7syEbwUaRrdyssx2jN1z8tS4KrfhcxC54WpGvsgZ0t6i6KNiWbgO1qn2f5QqvaDC3
OjGG9SEjn+/yo2a04frWN/t06Q+DZkcrVAN7vN4kyPJh+HjV7cKGlojoo8qcAciCya4OOn8gM9Tq
W6AeqOMRztp0U+mCAEo47lKHm8J8j1M6+PMwFY5yQMSk65IiZ+6l19TwKK7eAMhj1kwtmZgRbcxM
46/v4blMARIk3hW4FYZj4sPtjGalW/gqzD5CRacskn3F1oQ+tfYboyabuiGyq8DFybfUI+Flpoe3
xBR6Cbtr90uX8j4CJCzN0ug/CqHWeCF9fHzvWG6cYDD8h/DhoJprMMLWGrmBw6SKB1H4JZzm4Uzz
/I0/e5/c+5EOBZ086zFO1Nnf/11o+7jYZVAdozqUFqaj7qMMLLQi+h8nc70GThsfqlHCBuHviwHU
ZxZOv1hXeu/3mP2OQaglvAU9QIj70RY1/fjp0Q/Fs2KiOMWe0zvH0PjND7UekWmonUrbsUp42ZUA
GcFfbajgMeSa6wnjhunKdnCQLcFgF2yPQTTF6QIYKl4vnrp5Z2JP7d3Rg6ZfxRZhEDvZ6KzUnwJV
0CxzG0jigsGqtOgvUQ4OQD/jj5PGL3seZNnHPkGxWv63JJc23NKV7gHktBEtMr8sy6hs8A9vj6Cw
VbduG0N/+Vnpdyx312RtTqGS4Xpq8TIamnOZRWrvSJX3hYYbJ9O9Zbu3Q7qStfND/6Ju3K0mRWSF
VIDQ5bPu+i+Xf1HdUibN1Xy+sq13h+V/VUXIgGvn0EAildJS7H8IyUmL+zWhZqx7oAcxZ5K2Dc2a
UZBtJnnDr68RurxUe+n8tulj7Iuw3u6ZTOBktWmtbIgFt5vvmqLQx0yGj6zwJyUeNbGpUyBB6nOh
1NmZX/lGZE40TsNNDRxHkyU/Kk5CqSW6RoC3AxhnxM0oTcXINmhSQCpeu9lh0CeVYcD7Ar8kXiu0
3hh4jmA1zIn1Jb9Wfly97Ooj4+1MWXZZIqFYa8ENA+6ZE1hP2bHKKO9Pa6poPuNjPhXVAXs+aIWi
H2y+3GDI6CLQvWoDbhI4Wbv9/e3L8eS+9C2sNwJzW6vTrLlFC0uOh4OIl4F4YNADnae/QGuX1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E1C856DA634B80"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
content-md5: 3VsUYxO8WitOzm6BBVg0hg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f3e54cd0-4877-4431-8d5d-90e70d7f6bde
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3/foo/bar

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
zl4YeUbgVFvCZ23ESjYvmITPF9ZPoj0GKiHKPN9fGON9GxE+z2PJAtY7N2FdA1466F/m7wI7oywh
EU8kFRh8Y06KRy8k8cghBRX/E2rbqSbDj1N/eCngQnflHb4Upey+v9MS07wvFveWxOntPI/BRWgo
YIXE/OolqQW3P9MKDWAoQFSWydVqlHlb6LQ/8wXoI9hW60Rm+sPp7Cm3d9YjjLeJxPs7KnySvcwM
aBM25rX/zxz7syEbwUaRrdyssx2jN1z8tS4KrfhcxC54WpGvsgZ0t6i6KNiWbgO1qn2f5QqvaDC3
OjGG9SEjn+/yo2a04frWN/t06Q+DZkcrVAN7vN4kyPJh+HjV7cKGlojoo8qcAciCya4OOn8gM9Tq
W6AeqOMRztp0U+mCAEo47lKHm8J8j1M6+PMwFY5yQMSk65IiZ+6l19TwKK7eAMhj1kwtmZgRbcxM
46/v4blMARIk3hW4FYZj4sPtjGalW/gqzD5CRacskn3F1oQ+tfYboyabuiGyq8DFybfUI+Flpoe3
xBR6Cbtr90uX8j4CJCzN0ug/CqHWeCF9fHzvWG6cYDD8h/DhoJprMMLWGrmBw6SKB1H4JZzm4Uzz
/I0/e5/c+5EOBZ086zFO1Nnf/11o+7jYZVAdozqUFqaj7qMMLLQi+h8nc70GThsfqlHCBuHviwHU
ZxZOv1hXeu/3mP2OQaglvAU9QIj70RY1/fjp0Q/Fs2KiOMWe0zvH0PjND7UekWmonUrbsUp42ZUA
GcFfbajgMeSa6wnjhunKdnCQLcFgF2yPQTTF6QIYKl4vnrp5Z2JP7d3Rg6ZfxRZhEDvZ6KzUnwJV
0CxzG0jigsGqtOgvUQ4OQD/jj5PGL3seZNnHPkGxWv63JJc23NKV7gHktBEtMr8sy6hs8A9vj6Cw
VbduG0N/+Vnpdyx312RtTqGS4Xpq8TIamnOZRWrvSJX3hYYbJ9O9Zbu3Q7qStfND/6Ju3K0mRWSF
VIDQ5bPu+i+Xf1HdUibN1Xy+sq13h+V/VUXIgGvn0EAildJS7H8IyUmL+zWhZqx7oAcxZ5K2Dc2a
UZBtJnnDr68RurxUe+n8tulj7Iuw3u6ZTOBktWmtbIgFt5vvmqLQx0yGj6zwJyUeNbGpUyBB6nOh
1NmZX/lGZE40TsNNDRxHkyU/Kk5CqSW6RoC3AxhnxM0oTcXINmhSQCpeu9lh0CeVYcD7Ar8kXiu0
3hh4jmA1zIn1Jb9Wfly97Ooj4+1MWXZZIqFYa8ENA+6ZE1hP2bHKKO9Pa6poPuNjPhXVAXs+aIWi
H2y+3GDI6CLQvWoDbhI4Wbv9/e3L8eS+9C2sNwJzW6vTrLlFC0uOh4OIl4F4YNADnae/QGuX1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D236E755F33E00"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
content-md5: 3VsUYxO8WitOzm6BBVg0hg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d156ad83-0264-43f4-b9e8-c10964772f01
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3/baz/foo

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
zl4YeUbgVFvCZ23ESjYvmITPF9ZPoj0GKiHKPN9fGON9GxE+z2PJAtY7N2FdA1466F/m7wI7oywh
EU8kFRh8Y06KRy8k8cghBRX/E2rbqSbDj1N/eCngQnflHb4Upey+v9MS07wvFveWxOntPI/BRWgo
YIXE/OolqQW3P9MKDWAoQFSWydVqlHlb6LQ/8wXoI9hW60Rm+sPp7Cm3d9YjjLeJxPs7KnySvcwM
aBM25rX/zxz7syEbwUaRrdyssx2jN1z8tS4KrfhcxC54WpGvsgZ0t6i6KNiWbgO1qn2f5QqvaDC3
OjGG9SEjn+/yo2a04frWN/t06Q+DZkcrVAN7vN4kyPJh+HjV7cKGlojoo8qcAciCya4OOn8gM9Tq
W6AeqOMRztp0U+mCAEo47lKHm8J8j1M6+PMwFY5yQMSk65IiZ+6l19TwKK7eAMhj1kwtmZgRbcxM
46/v4blMARIk3hW4FYZj4sPtjGalW/gqzD5CRacskn3F1oQ+tfYboyabuiGyq8DFybfUI+Flpoe3
xBR6Cbtr90uX8j4CJCzN0ug/CqHWeCF9fHzvWG6cYDD8h/DhoJprMMLWGrmBw6SKB1H4JZzm4Uzz
/I0/e5/c+5EOBZ086zFO1Nnf/11o+7jYZVAdozqUFqaj7qMMLLQi+h8nc70GThsfqlHCBuHviwHU
ZxZOv1hXeu/3mP2OQaglvAU9QIj70RY1/fjp0Q/Fs2KiOMWe0zvH0PjND7UekWmonUrbsUp42ZUA
GcFfbajgMeSa6wnjhunKdnCQLcFgF2yPQTTF6QIYKl4vnrp5Z2JP7d3Rg6ZfxRZhEDvZ6KzUnwJV
0CxzG0jigsGqtOgvUQ4OQD/jj5PGL3seZNnHPkGxWv63JJc23NKV7gHktBEtMr8sy6hs8A9vj6Cw
VbduG0N/+Vnpdyx312RtTqGS4Xpq8TIamnOZRWrvSJX3hYYbJ9O9Zbu3Q7qStfND/6Ju3K0mRWSF
VIDQ5bPu+i+Xf1HdUibN1Xy+sq13h+V/VUXIgGvn0EAildJS7H8IyUmL+zWhZqx7oAcxZ5K2Dc2a
UZBtJnnDr68RurxUe+n8tulj7Iuw3u6ZTOBktWmtbIgFt5vvmqLQx0yGj6zwJyUeNbGpUyBB6nOh
1NmZX/lGZE40TsNNDRxHkyU/Kk5CqSW6RoC3AxhnxM0oTcXINmhSQCpeu9lh0CeVYcD7Ar8kXiu0
3hh4jmA1zIn1Jb9Wfly97Ooj4+1MWXZZIqFYa8ENA+6ZE1hP2bHKKO9Pa6poPuNjPhXVAXs+aIWi
H2y+3GDI6CLQvWoDbhI4Wbv9/e3L8eS+9C2sNwJzW6vTrLlFC0uOh4OIl4F4YNADnae/QGuX1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20E81151C36BDC0"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
content-md5: 3VsUYxO8WitOzm6BBVg0hg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e1e8bd68-fd16-4fdf-958c-a6916b8c7670
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3/baz/foo/bar

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
zl4YeUbgVFvCZ23ESjYvmITPF9ZPoj0GKiHKPN9fGON9GxE+z2PJAtY7N2FdA1466F/m7wI7oywh
EU8kFRh8Y06KRy8k8cghBRX/E2rbqSbDj1N/eCngQnflHb4Upey+v9MS07wvFveWxOntPI/BRWgo
YIXE/OolqQW3P9MKDWAoQFSWydVqlHlb6LQ/8wXoI9hW60Rm+sPp7Cm3d9YjjLeJxPs7KnySvcwM
aBM25rX/zxz7syEbwUaRrdyssx2jN1z8tS4KrfhcxC54WpGvsgZ0t6i6KNiWbgO1qn2f5QqvaDC3
OjGG9SEjn+/yo2a04frWN/t06Q+DZkcrVAN7vN4kyPJh+HjV7cKGlojoo8qcAciCya4OOn8gM9Tq
W6AeqOMRztp0U+mCAEo47lKHm8J8j1M6+PMwFY5yQMSk65IiZ+6l19TwKK7eAMhj1kwtmZgRbcxM
46/v4blMARIk3hW4FYZj4sPtjGalW/gqzD5CRacskn3F1oQ+tfYboyabuiGyq8DFybfUI+Flpoe3
xBR6Cbtr90uX8j4CJCzN0ug/CqHWeCF9fHzvWG6cYDD8h/DhoJprMMLWGrmBw6SKB1H4JZzm4Uzz
/I0/e5/c+5EOBZ086zFO1Nnf/11o+7jYZVAdozqUFqaj7qMMLLQi+h8nc70GThsfqlHCBuHviwHU
ZxZOv1hXeu/3mP2OQaglvAU9QIj70RY1/fjp0Q/Fs2KiOMWe0zvH0PjND7UekWmonUrbsUp42ZUA
GcFfbajgMeSa6wnjhunKdnCQLcFgF2yPQTTF6QIYKl4vnrp5Z2JP7d3Rg6ZfxRZhEDvZ6KzUnwJV
0CxzG0jigsGqtOgvUQ4OQD/jj5PGL3seZNnHPkGxWv63JJc23NKV7gHktBEtMr8sy6hs8A9vj6Cw
VbduG0N/+Vnpdyx312RtTqGS4Xpq8TIamnOZRWrvSJX3hYYbJ9O9Zbu3Q7qStfND/6Ju3K0mRWSF
VIDQ5bPu+i+Xf1HdUibN1Xy+sq13h+V/VUXIgGvn0EAildJS7H8IyUmL+zWhZqx7oAcxZ5K2Dc2a
UZBtJnnDr68RurxUe+n8tulj7Iuw3u6ZTOBktWmtbIgFt5vvmqLQx0yGj6zwJyUeNbGpUyBB6nOh
1NmZX/lGZE40TsNNDRxHkyU/Kk5CqSW6RoC3AxhnxM0oTcXINmhSQCpeu9lh0CeVYcD7Ar8kXiu0
3hh4jmA1zIn1Jb9Wfly97Ooj4+1MWXZZIqFYa8ENA+6ZE1hP2bHKKO9Pa6poPuNjPhXVAXs+aIWi
H2y+3GDI6CLQvWoDbhI4Wbv9/e3L8eS+9C2sNwJzW6vTrLlFC0uOh4OIl4F4YNADnae/QGuX1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23F6D569FC334E0"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
content-md5: 3VsUYxO8WitOzm6BBVg0hg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d7220ee9-fb91-46d8-acf8-2b8d061b07b8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3/baz/bar/foo

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
zl4YeUbgVFvCZ23ESjYvmITPF9ZPoj0GKiHKPN9fGON9GxE+z2PJAtY7N2FdA1466F/m7wI7oywh
EU8kFRh8Y06KRy8k8cghBRX/E2rbqSbDj1N/eCngQnflHb4Upey+v9MS07wvFveWxOntPI/BRWgo
YIXE/OolqQW3P9MKDWAoQFSWydVqlHlb6LQ/8wXoI9hW60Rm+sPp7Cm3d9YjjLeJxPs7KnySvcwM
aBM25rX/zxz7syEbwUaRrdyssx2jN1z8tS4KrfhcxC54WpGvsgZ0t6i6KNiWbgO1qn2f5QqvaDC3
OjGG9SEjn+/yo2a04frWN/t06Q+DZkcrVAN7vN4kyPJh+HjV7cKGlojoo8qcAciCya4OOn8gM9Tq
W6AeqOMRztp0U+mCAEo47lKHm8J8j1M6+PMwFY5yQMSk65IiZ+6l19TwKK7eAMhj1kwtmZgRbcxM
46/v4blMARIk3hW4FYZj4sPtjGalW/gqzD5CRacskn3F1oQ+tfYboyabuiGyq8DFybfUI+Flpoe3
xBR6Cbtr90uX8j4CJCzN0ug/CqHWeCF9fHzvWG6cYDD8h/DhoJprMMLWGrmBw6SKB1H4JZzm4Uzz
/I0/e5/c+5EOBZ086zFO1Nnf/11o+7jYZVAdozqUFqaj7qMMLLQi+h8nc70GThsfqlHCBuHviwHU
ZxZOv1hXeu/3mP2OQaglvAU9QIj70RY1/fjp0Q/Fs2KiOMWe0zvH0PjND7UekWmonUrbsUp42ZUA
GcFfbajgMeSa6wnjhunKdnCQLcFgF2yPQTTF6QIYKl4vnrp5Z2JP7d3Rg6ZfxRZhEDvZ6KzUnwJV
0CxzG0jigsGqtOgvUQ4OQD/jj5PGL3seZNnHPkGxWv63JJc23NKV7gHktBEtMr8sy6hs8A9vj6Cw
VbduG0N/+Vnpdyx312RtTqGS4Xpq8TIamnOZRWrvSJX3hYYbJ9O9Zbu3Q7qStfND/6Ju3K0mRWSF
VIDQ5bPu+i+Xf1HdUibN1Xy+sq13h+V/VUXIgGvn0EAildJS7H8IyUmL+zWhZqx7oAcxZ5K2Dc2a
UZBtJnnDr68RurxUe+n8tulj7Iuw3u6ZTOBktWmtbIgFt5vvmqLQx0yGj6zwJyUeNbGpUyBB6nOh
1NmZX/lGZE40TsNNDRxHkyU/Kk5CqSW6RoC3AxhnxM0oTcXINmhSQCpeu9lh0CeVYcD7Ar8kXiu0
3hh4jmA1zIn1Jb9Wfly97Ooj4+1MWXZZIqFYa8ENA+6ZE1hP2bHKKO9Pa6poPuNjPhXVAXs+aIWi
H2y+3GDI6CLQvWoDbhI4Wbv9/e3L8eS+9C2sNwJzW6vTrLlFC0uOh4OIl4F4YNADnae/QGuX1g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x215535CD42E1BC0"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
content-md5: 3VsUYxO8WitOzm6BBVg0hg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 534d14f3-6708-400a-ab4b-8318a8cccf89
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3/foo/foo?comp=metadata

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
etag: "0x22D27EB3A395F80"
last-modified: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f2e7f23a-6727-4df1-8fbd-c5209b2e4abc
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3?restype=container&comp=list&prefix=foo

### Request headers recorded for playback:

```
Accept: application/xml
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
x-ms-request-id: d0e4e047-f3c5-4ed2-b3ce-21c6887d868b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3"><Prefix>foo</Prefix><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:47 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:47 GMT</Last-Modified><Etag>0x26B658048B58D60</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>3VsUYxO8WitOzm6BBVg0hg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:47 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:47 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:47 GMT</Last-Modified><Etag>0x1D236E755F33E00</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>3VsUYxO8WitOzm6BBVg0hg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:47 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:47 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:47 GMT</Last-Modified><Etag>0x22D27EB3A395F80</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>3VsUYxO8WitOzm6BBVg0hg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:47 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-fa972be3-cbc8-a8c8-7118-f86abe1a11f3?restype=container

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
x-ms-request-id: 7c08bd07-0fd5-41ad-bb3c-8987b6c9420b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:47 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

