## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-692ff9b1-51c9-bdee-743f-5621af7443ed?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).StartCopyFromUriAsync_Destination_AccessConditionsFail
now: 2026-11-12T00:47:14.9371020+00:00

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
etag: "0x1FDA2B9ECF3DDC0"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e679b980-aa4f-44bc-adf4-ed2326e04d33
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:14 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-692ff9b1-51c9-bdee-743f-5621af7443ed/test-blob-6afa284f-2a43-5eb7-3a4d-b324fbfe1212

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
TM6fHtS3vJB8s+QVL0QLxgfMfPHChREiMX5M+sgUb41HyO9TXZ+D+Tye7RZt2Y4wNI8Z4/dSK8e9
fexVasHIZ0RXzWZUt2loSIK0I5j7tFjwHMU4+4uV9J0oluCyLY561YXRFgsn230msJt1ngcuwciU
ZU78j2y4wdjJLCCItRr0OU4TKZ5MyUFIEkrwIFaW+tQXHshAfkYYGVQzXa9cnfuAgGS4GpgpR5sN
s30hx6GCMzJLcJdSs7sH+g9KGWuR63RPcJ/x3d887tYsM8rJ91GzsCp9ECxjLs2psSCI3y0we8cI
0lcBkFZTD4LAJX/wPgO9l2lBFNtH7EHSSCy+sw+p/LgCwCT6sSDTKQGqoghNuHIcy0jE7mbswOYW
L0cqlFtzFyjH7n3ew+VIberanUk4hJC5oujG5Q5RFgA+5IHZqZWlN4vghcr0PQdie4B8EiOd3au2
cPJzrDEadtd9oN9jb8RUNWW9WP/GxWThZGmO1QTcoAbWIjmjMopZxQ7ydp0n/gy7J9294IWs8KuN
kUjIjKHTof/ZjE2LsQLbY5Lw1E7HuWVd0q0nH8CBKjGNFaBCkTltH9WdTnG+MHXa4nzyuxxcxtji
a7rzq4I+V2Ib/ZtimNJZg7R5KWrznqE3TTxEjm8VMU7IXyV/eXNTXvcPozPaeEmqmThn451t780Y
vF5F+snzBctMmTis2QpBJctz4/puXdTymfU2rk6xWnBYZr0UDWMuHJ1njd4R/r8uJb3S+gvTql6K
UmHTvFd9mz/IVHJMLRhnRcdcBtD24Zs1CIiR32BkhbxeiroCWl9G6vGfSKpM4fikarVEdqOOk3HG
nrTO7LzfY8+27qJdZetnFRzeV5nx6CaP7HSqIA4Y0PZJPLurd/41v+TalvNWRwXJ3GCHsDzY1LaN
P/9HNEPAnR6sFCgvvJ0eqJe0FlIzOaRv4EStkSC5cWcFHTj+7ouhGvjVqjPcmiDCaQelI75jWgVa
11P/Egz98qPBKZ5lH7kLE/tZXo9xkkYj6ycYE02oocMzoxY4oQfr17eQG3CCXUlNmg/CCft26EUM
2yfl5d5VGIfbMnyj03H0bofX4XfVoY3dy3k95ZjHvLrRK8bgBvHYOgLopivNqsaezpt0ngfNNzqZ
BxplFzPvE3XB0airFGiV/6d07fpiECCznxf8Uh6zA/OLRv7XcyLP+JK1DNkd8roy3p5gWEo/N/f5
sXgc88FWDc20H81pvYuEpfRorANHlaxcynN/U6upTA4H3sGqswXRX/4LaNPsySET27NV14rzsRzM
vylN1roiC9O+Yd/J2vLulk0FOyzZcABSbHf3U3SEFCyl3vPchIhD6V3/LWdBSQHBZ0A97Xbv8g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FAD64300051120"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: uuBUcRdfhOfxf+/Qtu+e2Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7c36c514-4a72-4a00-973a-139e624c2016
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-692ff9b1-51c9-bdee-743f-5621af7443ed/test-blob-ce52c1c4-42d9-1199-2375-36ec334627b6

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
TM6fHtS3vJB8s+QVL0QLxgfMfPHChREiMX5M+sgUb41HyO9TXZ+D+Tye7RZt2Y4wNI8Z4/dSK8e9
fexVasHIZ0RXzWZUt2loSIK0I5j7tFjwHMU4+4uV9J0oluCyLY561YXRFgsn230msJt1ngcuwciU
ZU78j2y4wdjJLCCItRr0OU4TKZ5MyUFIEkrwIFaW+tQXHshAfkYYGVQzXa9cnfuAgGS4GpgpR5sN
s30hx6GCMzJLcJdSs7sH+g9KGWuR63RPcJ/x3d887tYsM8rJ91GzsCp9ECxjLs2psSCI3y0we8cI
0lcBkFZTD4LAJX/wPgO9l2lBFNtH7EHSSCy+sw+p/LgCwCT6sSDTKQGqoghNuHIcy0jE7mbswOYW
L0cqlFtzFyjH7n3ew+VIberanUk4hJC5oujG5Q5RFgA+5IHZqZWlN4vghcr0PQdie4B8EiOd3au2
cPJzrDEadtd9oN9jb8RUNWW9WP/GxWThZGmO1QTcoAbWIjmjMopZxQ7ydp0n/gy7J9294IWs8KuN
kUjIjKHTof/ZjE2LsQLbY5Lw1E7HuWVd0q0nH8CBKjGNFaBCkTltH9WdTnG+MHXa4nzyuxxcxtji
a7rzq4I+V2Ib/ZtimNJZg7R5KWrznqE3TTxEjm8VMU7IXyV/eXNTXvcPozPaeEmqmThn451t780Y
vF5F+snzBctMmTis2QpBJctz4/puXdTymfU2rk6xWnBYZr0UDWMuHJ1njd4R/r8uJb3S+gvTql6K
UmHTvFd9mz/IVHJMLRhnRcdcBtD24Zs1CIiR32BkhbxeiroCWl9G6vGfSKpM4fikarVEdqOOk3HG
nrTO7LzfY8+27qJdZetnFRzeV5nx6CaP7HSqIA4Y0PZJPLurd/41v+TalvNWRwXJ3GCHsDzY1LaN
P/9HNEPAnR6sFCgvvJ0eqJe0FlIzOaRv4EStkSC5cWcFHTj+7ouhGvjVqjPcmiDCaQelI75jWgVa
11P/Egz98qPBKZ5lH7kLE/tZXo9xkkYj6ycYE02oocMzoxY4oQfr17eQG3CCXUlNmg/CCft26EUM
2yfl5d5VGIfbMnyj03H0bofX4XfVoY3dy3k95ZjHvLrRK8bgBvHYOgLopivNqsaezpt0ngfNNzqZ
BxplFzPvE3XB0airFGiV/6d07fpiECCznxf8Uh6zA/OLRv7XcyLP+JK1DNkd8roy3p5gWEo/N/f5
sXgc88FWDc20H81pvYuEpfRorANHlaxcynN/U6upTA4H3sGqswXRX/4LaNPsySET27NV14rzsRzM
vylN1roiC9O+Yd/J2vLulk0FOyzZcABSbHf3U3SEFCyl3vPchIhD6V3/LWdBSQHBZ0A97Xbv8g==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x218C7F15D3B9800"
last-modified: Thu, 12 Nov 2026 00:47:14 GMT
content-md5: uuBUcRdfhOfxf+/Qtu+e2Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6681dda4-1a2d-470c-8eb5-bbd166e1c0eb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:14 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-692ff9b1-51c9-bdee-743f-5621af7443ed/test-blob-ce52c1c4-42d9-1199-2375-36ec334627b6

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:47:14 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-692ff9b1-51c9-bdee-743f-5621af7443ed/test-blob-6afa284f-2a43-5eb7-3a4d-b324fbfe1212
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
x-ms-request-id: 9ed25705-1eed-4772-bf94-d242935c3b4b
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:15 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-692ff9b1-51c9-bdee-743f-5621af7443ed?restype=container

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
x-ms-request-id: 175214de-8f1b-4a2c-9795-b6b60011ad97
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-b4a4ebb5-1e89-bf00-a6a1-f2198d2505c3?restype=container

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
etag: "0x244FADC39737240"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9940f711-0aab-45ce-b266-3043c3bd198b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-b4a4ebb5-1e89-bf00-a6a1-f2198d2505c3/test-blob-71e9b625-c8ff-b5a9-f5a3-d781e7f18a26

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
VC54KyMgGAyO6UfN88oq9Cb9bhBZXYimwZMoOE9/g/1vc5cFzfuSlNKXJaDXMsvbdv7zkLf1afel
0mqQ+OC8DmVJXYAyJSYqa9k9wTjoz47HTMJRjPNGegqgX/uQApzy2xc7jdVLqFHXyCXduKi+vQPb
yKwea4JxAuJ1ksUrmWk9SuYgrUG4fKNwesPOaMJi4aL3tTnv1G+Uyovy1RaLqy68oG3BnRDBIksI
rfG/opkgE7AjM+QvTXZ2jOK1xqeM5c6UEshVoEOSNpLt5id+1Sfy0sFmZ3dKjFP3ShEtC1ykfMci
K5DRy3Nskf1SQWZO+Le7w/TlJn5XSoV0XlUyZCo1SGpgXKmXIAZO+dZ590vtqFJacUhov1VJy+EK
XG0dOizTHfj77psNJKLtly2n3VI6h7UC1/PhzYkUFpDIjcSZML6ppdpS8bm2TE2leigooe6Oz9W3
GmI58VBv5tgLRJfeU2du/jd46Jb8TIulPFJh7HWiOr3v4hVcb7OK4grhqwi2xifBuqK2FeY+us7X
k7X9DvpiaArZ73BREo6D7gaMGqCD73YroDLS7CTXsCdGhNz+jNQPfkP93Ne2b6gUMifgsaAuVKQ/
0m7HkHzmAj5IC42yhWEyfJtdhRKedDCKvbn89v6HGDA4v7llR+7GF9qYbWQaYq3FrjUE0M6RoF49
PdLC6Qs/wfNcecanzDWtlm04BgbMb1sMNkjJg0dhpx5bJwobBC7PWKxwvujmHuEAVjpgWJlXcc13
tbLCdj2s+tKnTKQqkZI/aa5aW7FyJRhnySwMAU6EBLY8pE97DOJvxMMVP9E81cSoIO/r/RUcBI+Z
W6wQn/mEIkft7e1DxFzL65ftXOZGKvRoZOBemAehIJ+/4bE1XiXKkRyKTufXZFyTIBF9LqepUzC4
qDoZJYlATM1Ng+KqloxxI8rJvNsMkP+Dy3j1I/H4Fo6AfbXrsWyTSgIZieF56ImECwvc35dVqxc6
lVkQSijbVW1UKRnWhnFeNnLY8wYeCeLucBjmGzb3K9GdsRwTgv/aPjRzJb5wroSZfqglfLgRG4t2
ItkQ9To2Xf5HONVVS7Ry/rTSquQkfsKTTZyN0q4ZjJWQnGAmykn5PcfAKXWvQzP0sn4DPnCnUqMW
faedqItPLaxAxa5USzRr2W0cY1RN4wlomR8wFk4l6Uq8D02hW5Q8cPzJb36FoGZKmGUCiu5PyZme
NQ9rHxddG9xkmDznyX3Z3/NYhHSL4/m45n3pIl5bbUWzAiaE0FDla1OiIAgqYs7nKKr790QkE1EW
szmZc/h9CCv2M8dXVQ6ichgh6cPxjoOvAvm0X3UBj+/VbR0XTPdbJRfcMy8HkNObWYQrAymOJQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25E60E6026778C0"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
content-md5: 0y7zS8hLEvLsdl8hMtsraQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 585e6191-6010-48e6-961f-3879e82ef7ec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-b4a4ebb5-1e89-bf00-a6a1-f2198d2505c3/test-blob-abc4c520-5b14-a853-7125-1806f1d58cc5

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
VC54KyMgGAyO6UfN88oq9Cb9bhBZXYimwZMoOE9/g/1vc5cFzfuSlNKXJaDXMsvbdv7zkLf1afel
0mqQ+OC8DmVJXYAyJSYqa9k9wTjoz47HTMJRjPNGegqgX/uQApzy2xc7jdVLqFHXyCXduKi+vQPb
yKwea4JxAuJ1ksUrmWk9SuYgrUG4fKNwesPOaMJi4aL3tTnv1G+Uyovy1RaLqy68oG3BnRDBIksI
rfG/opkgE7AjM+QvTXZ2jOK1xqeM5c6UEshVoEOSNpLt5id+1Sfy0sFmZ3dKjFP3ShEtC1ykfMci
K5DRy3Nskf1SQWZO+Le7w/TlJn5XSoV0XlUyZCo1SGpgXKmXIAZO+dZ590vtqFJacUhov1VJy+EK
XG0dOizTHfj77psNJKLtly2n3VI6h7UC1/PhzYkUFpDIjcSZML6ppdpS8bm2TE2leigooe6Oz9W3
GmI58VBv5tgLRJfeU2du/jd46Jb8TIulPFJh7HWiOr3v4hVcb7OK4grhqwi2xifBuqK2FeY+us7X
k7X9DvpiaArZ73BREo6D7gaMGqCD73YroDLS7CTXsCdGhNz+jNQPfkP93Ne2b6gUMifgsaAuVKQ/
0m7HkHzmAj5IC42yhWEyfJtdhRKedDCKvbn89v6HGDA4v7llR+7GF9qYbWQaYq3FrjUE0M6RoF49
PdLC6Qs/wfNcecanzDWtlm04BgbMb1sMNkjJg0dhpx5bJwobBC7PWKxwvujmHuEAVjpgWJlXcc13
tbLCdj2s+tKnTKQqkZI/aa5aW7FyJRhnySwMAU6EBLY8pE97DOJvxMMVP9E81cSoIO/r/RUcBI+Z
W6wQn/mEIkft7e1DxFzL65ftXOZGKvRoZOBemAehIJ+/4bE1XiXKkRyKTufXZFyTIBF9LqepUzC4
qDoZJYlATM1Ng+KqloxxI8rJvNsMkP+Dy3j1I/H4Fo6AfbXrsWyTSgIZieF56ImECwvc35dVqxc6
lVkQSijbVW1UKRnWhnFeNnLY8wYeCeLucBjmGzb3K9GdsRwTgv/aPjRzJb5wroSZfqglfLgRG4t2
ItkQ9To2Xf5HONVVS7Ry/rTSquQkfsKTTZyN0q4ZjJWQnGAmykn5PcfAKXWvQzP0sn4DPnCnUqMW
faedqItPLaxAxa5USzRr2W0cY1RN4wlomR8wFk4l6Uq8D02hW5Q8cPzJb36FoGZKmGUCiu5PyZme
NQ9rHxddG9xkmDznyX3Z3/NYhHSL4/m45n3pIl5bbUWzAiaE0FDla1OiIAgqYs7nKKr790QkE1EW
szmZc/h9CCv2M8dXVQ6ichgh6cPxjoOvAvm0X3UBj+/VbR0XTPdbJRfcMy8HkNObWYQrAymOJQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25FC4AEC54E5700"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
content-md5: 0y7zS8hLEvLsdl8hMtsraQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ac8a098c-5b60-4b77-af52-368f42123024
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-b4a4ebb5-1e89-bf00-a6a1-f2198d2505c3/test-blob-abc4c520-5b14-a853-7125-1806f1d58cc5

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:14 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-b4a4ebb5-1e89-bf00-a6a1-f2198d2505c3/test-blob-71e9b625-c8ff-b5a9-f5a3-d781e7f18a26
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
x-ms-request-id: 25fae78e-e10e-4e7d-b024-18e2873e431e
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:15 GMT
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

## Interaction 9: DELETE /devstoreaccount1/test-container-b4a4ebb5-1e89-bf00-a6a1-f2198d2505c3?restype=container

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
x-ms-request-id: 6c13d805-92a2-4423-b803-4c5d35f0dd04
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-61f84847-8662-5c5b-6e27-3d8c2f0eecaa?restype=container

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
etag: "0x26253213C207800"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0fb7b323-fb0e-4700-a097-dc187d6803af
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-61f84847-8662-5c5b-6e27-3d8c2f0eecaa/test-blob-286c1f0c-c470-fd57-da0c-2400b8f6b4bd

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
zl4KPWXjEcpiQP/ZsKLDIBYROp75KcOaamc87B3HeGM5bjeTyk9fZDct/iGGgazLYxx1HtRNsKWa
cNL9piSsmsicoEFqMFbHsdZnyyqhE+i7cIgBUlqO672S+Fl8Yr0SgWRZ6uFqYTPFrmz95uV6+Fzq
QjWcqkhtDbWD2Df8Sk8YVErGSCkHUQ9VO6PukQTYFwD9kh+HdtYb69wr5on7yWQc5JGatLAz4/Em
Rm+kf3ywqsA3/7cvkN5zqlxM22qGWnI/0axzPWJQya8uYS9nd2xgejzIxMms7FSyJwpT5weHoOz8
Za7PPWxd5jYIAS+uCzPw62AtvZapkuRYwBZY/eGnp8FDaxK9kD3Pat2SpOskAxvWY/ymWeJWUtLJ
d31WBelUYFpta6AhMlojXlK4Fu35M7z6gZnlAU3f7Rg/9Bi/eGX0PkSRt5h7tTChgvqPnTzk0ETA
XINPb14Mjn6I4T5BZOXtxNipZ3wkfsxpRH5ST0/cWyPU/xzipM/mhCga89PyXx4VotljO2nInN22
5irfuT4urIYbbWXICh8JwuJTCYv4duVgPa12eCC6DGI/K72kBsvp7EdN1/G5TJe5WniGdJJSvXBF
f3uRtzNmYWECid5iZbwXah1Eq57zpvAVvR6nM5fP7W5NX4ZPVzQT5naQtsO5V/W7bgp0DRHRUdiL
fPoVvi3JMpxwFAU2xxLpMcUoY/AtXGYp7MWNW99cfA2txNs5/ShJxoMmSELvhaf4i9xMqO7oXR+U
7NJoPNe8FJf4iAI2rzOc35xsBhMjOWYdlc8CD9QexWe7pRFV4YqsajSr9vykwdupr8lSfFYMcLJr
SqcHuQTD2sObegkiR/0Rv5zfeENqedP0WV8Ky0gQrzVe6pbjpLAv5xw5CUbRhmjLQLy6LfhvAdHT
E2CluA56i8vUw11nLhvsr5AmMW+NItL2P4uMVYI87+nFEJBPii8Ovn57/cILZBKgzn1oSM9hRfGN
rniD7jVJl9R0oR6LnCVhGHLxEiUP69t464cE1KYZZMqewtu2is9IMWXul8LzFTFYBy9dbzPMfcOd
CgOtRMMuWj1T7NpJqo2jqOC/IVMYhNVWrM12vPSX0UQYGIDMm+yivzyFnyhWDlyiusZSDFxvhIUt
V5j1uJ5IvBqWMZEN1g3zHWIXkuWs/51x1AItRMTnqJT6n0NUrAedPeMOwNzKlOO5Xu/5V/KggFj6
hOOcGnhVroj9EzfJn3FbeVUBnj7BpkAedOXV7lGhWh/rWScjACJruBJUzYGs7799nt2dnuEZOd6j
fqWSf8A3W7kY3kVJN3gyluYsbdi+coUmV09zBLs90SBJf4J92DhRHHHHlBB6NGdkagf77cwF5A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21F299CD2871640"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
content-md5: ydWCfi/VssGwtYB3Mly2aA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 99606b09-24ce-436e-ae61-9094b8a3fe96
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-61f84847-8662-5c5b-6e27-3d8c2f0eecaa/test-blob-6750daad-ddf6-ab75-23e8-0e99b342e454

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
zl4KPWXjEcpiQP/ZsKLDIBYROp75KcOaamc87B3HeGM5bjeTyk9fZDct/iGGgazLYxx1HtRNsKWa
cNL9piSsmsicoEFqMFbHsdZnyyqhE+i7cIgBUlqO672S+Fl8Yr0SgWRZ6uFqYTPFrmz95uV6+Fzq
QjWcqkhtDbWD2Df8Sk8YVErGSCkHUQ9VO6PukQTYFwD9kh+HdtYb69wr5on7yWQc5JGatLAz4/Em
Rm+kf3ywqsA3/7cvkN5zqlxM22qGWnI/0axzPWJQya8uYS9nd2xgejzIxMms7FSyJwpT5weHoOz8
Za7PPWxd5jYIAS+uCzPw62AtvZapkuRYwBZY/eGnp8FDaxK9kD3Pat2SpOskAxvWY/ymWeJWUtLJ
d31WBelUYFpta6AhMlojXlK4Fu35M7z6gZnlAU3f7Rg/9Bi/eGX0PkSRt5h7tTChgvqPnTzk0ETA
XINPb14Mjn6I4T5BZOXtxNipZ3wkfsxpRH5ST0/cWyPU/xzipM/mhCga89PyXx4VotljO2nInN22
5irfuT4urIYbbWXICh8JwuJTCYv4duVgPa12eCC6DGI/K72kBsvp7EdN1/G5TJe5WniGdJJSvXBF
f3uRtzNmYWECid5iZbwXah1Eq57zpvAVvR6nM5fP7W5NX4ZPVzQT5naQtsO5V/W7bgp0DRHRUdiL
fPoVvi3JMpxwFAU2xxLpMcUoY/AtXGYp7MWNW99cfA2txNs5/ShJxoMmSELvhaf4i9xMqO7oXR+U
7NJoPNe8FJf4iAI2rzOc35xsBhMjOWYdlc8CD9QexWe7pRFV4YqsajSr9vykwdupr8lSfFYMcLJr
SqcHuQTD2sObegkiR/0Rv5zfeENqedP0WV8Ky0gQrzVe6pbjpLAv5xw5CUbRhmjLQLy6LfhvAdHT
E2CluA56i8vUw11nLhvsr5AmMW+NItL2P4uMVYI87+nFEJBPii8Ovn57/cILZBKgzn1oSM9hRfGN
rniD7jVJl9R0oR6LnCVhGHLxEiUP69t464cE1KYZZMqewtu2is9IMWXul8LzFTFYBy9dbzPMfcOd
CgOtRMMuWj1T7NpJqo2jqOC/IVMYhNVWrM12vPSX0UQYGIDMm+yivzyFnyhWDlyiusZSDFxvhIUt
V5j1uJ5IvBqWMZEN1g3zHWIXkuWs/51x1AItRMTnqJT6n0NUrAedPeMOwNzKlOO5Xu/5V/KggFj6
hOOcGnhVroj9EzfJn3FbeVUBnj7BpkAedOXV7lGhWh/rWScjACJruBJUzYGs7799nt2dnuEZOd6j
fqWSf8A3W7kY3kVJN3gyluYsbdi+coUmV09zBLs90SBJf4J92DhRHHHHlBB6NGdkagf77cwF5A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x240AEDDE9F92A80"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
content-md5: ydWCfi/VssGwtYB3Mly2aA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9d3f3129-0332-470c-8609-9f5bd2fc74ed
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-61f84847-8662-5c5b-6e27-3d8c2f0eecaa/test-blob-6750daad-ddf6-ab75-23e8-0e99b342e454

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-61f84847-8662-5c5b-6e27-3d8c2f0eecaa/test-blob-286c1f0c-c470-fd57-da0c-2400b8f6b4bd
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
x-ms-request-id: a769c837-60e8-44a5-b85e-5933c5a65e7a
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:15 GMT
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

## Interaction 14: DELETE /devstoreaccount1/test-container-61f84847-8662-5c5b-6e27-3d8c2f0eecaa?restype=container

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
x-ms-request-id: 7d320ec1-f617-4577-a928-bfa641938836
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-5d769a43-106c-58e0-1aca-b9035533ae6e?restype=container

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
etag: "0x22F8D94DFBEB720"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5853b807-1334-4b86-9139-9a919bd1ac22
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-5d769a43-106c-58e0-1aca-b9035533ae6e/test-blob-7c8ccec2-cba5-14c1-312f-76214aa200cd

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
tklNEnue7S6qwASItr1KmCjQvB1/VlGd+vhMLCNxVu85n+Np9NLYpaxHs6wLWKJcfyHbhXaR7l/4
sBiDUcEKOGkUTxbZ4KNV9xdwOKOkkaFW8KwCltB5p7CEcES6VVPrPHtC9wmLg599hY5fIba7VB52
LWEUCKGZm6dlVW9fm6HDhPsoYZmYymwNhBBCGYb6yBwlQyjy1zTZqVxhJi4vHursm5y7k/KE3mL0
BoSRVoEga4xSOVd50a3GTrg9NqQ+3mUlVn7qPjUqoGXF/dGvR1LaQbui3OSTcsnv9EQ6R6e+tige
awACNixWKJnxs9PbFwZlY/XonAGAkuO1+krw8Fm9B0epkNxS1wqOS7RLob/1E90+1OOy1Rkmndgc
TTziZjc/NKyMMoYqEovqWlFMNfEkv+Zssht1CzEugvIDNonOrOR8C20SaeFWE8JXx3vI2Wjn+I5V
dbQcySl7XrCTJtwCHK1s0CmEEVUFFZ5ZHkO1ZaiKHD37eTcwYEFElwsww+zlVavOXAk/Y+Y5T18W
wqvlxfgHCQqeBqN2O3DnQHpJ1FKxdMiX5wifSrlXwSnXGp2WXtESKbriRk4IVyCZVyJr73oNZU7j
Tt3vaL5RR0R5niHSUeGoN6uXzi15j4/oBfOW69KuyrVPsg/zI8D8kP8Jjrn/xwZBwrjPdZYhab9O
B2PKu1tyy9Nsgp7StBTrmz4tbwDW6D7sVSka31UeLUhQpRtdMdSkl8Llk0Robg2k49pX8/q+dx8k
3mYyV+t+TVVVgQ/4jmlpidg98VX6hOYbdvx7xzpOki78OFNucUDXZkXvEu3+q1Vw7moigIbJKlmA
F+DvA4YaBu/g/FYW+xeXZooPCnH4HMunCtjQLBGnMg357Vpf52K/1Az9Ha7+WfNSihn8uR/oh/oV
SPitStndOcpIHQ28N38nUDZl+/4cqLHlfaL4q3juEGZfSp5qEYoyIOTktjvmlVKa1Gjpgoz8+KBH
yMw35Y1RWgymXe3gvT+sM9oaOPF2/+hQXdcPBI7ZY1L+I0m9+jtWklwuPzhluRcpPU+x4r+u0cnk
54e2QVV+zPma4pr27jifw6WVR7+v66TA5sc/KICTT1J/2RO0oFEGsHI+ytd8M04WEh8ZGYkJNPzj
9luNPqR5B5NIdhQl6yNUjpZMcSDMQ7J4KRVheTXIdqUX0an1eXHOxcJDNL068Sf7xYrzvMPbFrKo
FBWPF45dgABuDRl5XhUkfqtdiQ71PjftZbSr1LniO7r2TWRcPq405rS9y+MNgmZ1zz4Xfo2kstbd
obHZsqtGjNJfghGwyD/9KKJaOHJU3+NNNQV7y70tUpqOfpz9WzMIdj8RrgBVxQb+GVXqSXpjiQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22A8445917E9D60"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
content-md5: LDY+eVY1L/F264pCPZ+a7g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e0c4c1a0-e700-4001-807a-87c04dd3c4c1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-5d769a43-106c-58e0-1aca-b9035533ae6e/test-blob-33c2516e-3143-f7e2-70fe-7cb16843091f

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
tklNEnue7S6qwASItr1KmCjQvB1/VlGd+vhMLCNxVu85n+Np9NLYpaxHs6wLWKJcfyHbhXaR7l/4
sBiDUcEKOGkUTxbZ4KNV9xdwOKOkkaFW8KwCltB5p7CEcES6VVPrPHtC9wmLg599hY5fIba7VB52
LWEUCKGZm6dlVW9fm6HDhPsoYZmYymwNhBBCGYb6yBwlQyjy1zTZqVxhJi4vHursm5y7k/KE3mL0
BoSRVoEga4xSOVd50a3GTrg9NqQ+3mUlVn7qPjUqoGXF/dGvR1LaQbui3OSTcsnv9EQ6R6e+tige
awACNixWKJnxs9PbFwZlY/XonAGAkuO1+krw8Fm9B0epkNxS1wqOS7RLob/1E90+1OOy1Rkmndgc
TTziZjc/NKyMMoYqEovqWlFMNfEkv+Zssht1CzEugvIDNonOrOR8C20SaeFWE8JXx3vI2Wjn+I5V
dbQcySl7XrCTJtwCHK1s0CmEEVUFFZ5ZHkO1ZaiKHD37eTcwYEFElwsww+zlVavOXAk/Y+Y5T18W
wqvlxfgHCQqeBqN2O3DnQHpJ1FKxdMiX5wifSrlXwSnXGp2WXtESKbriRk4IVyCZVyJr73oNZU7j
Tt3vaL5RR0R5niHSUeGoN6uXzi15j4/oBfOW69KuyrVPsg/zI8D8kP8Jjrn/xwZBwrjPdZYhab9O
B2PKu1tyy9Nsgp7StBTrmz4tbwDW6D7sVSka31UeLUhQpRtdMdSkl8Llk0Robg2k49pX8/q+dx8k
3mYyV+t+TVVVgQ/4jmlpidg98VX6hOYbdvx7xzpOki78OFNucUDXZkXvEu3+q1Vw7moigIbJKlmA
F+DvA4YaBu/g/FYW+xeXZooPCnH4HMunCtjQLBGnMg357Vpf52K/1Az9Ha7+WfNSihn8uR/oh/oV
SPitStndOcpIHQ28N38nUDZl+/4cqLHlfaL4q3juEGZfSp5qEYoyIOTktjvmlVKa1Gjpgoz8+KBH
yMw35Y1RWgymXe3gvT+sM9oaOPF2/+hQXdcPBI7ZY1L+I0m9+jtWklwuPzhluRcpPU+x4r+u0cnk
54e2QVV+zPma4pr27jifw6WVR7+v66TA5sc/KICTT1J/2RO0oFEGsHI+ytd8M04WEh8ZGYkJNPzj
9luNPqR5B5NIdhQl6yNUjpZMcSDMQ7J4KRVheTXIdqUX0an1eXHOxcJDNL068Sf7xYrzvMPbFrKo
FBWPF45dgABuDRl5XhUkfqtdiQ71PjftZbSr1LniO7r2TWRcPq405rS9y+MNgmZ1zz4Xfo2kstbd
obHZsqtGjNJfghGwyD/9KKJaOHJU3+NNNQV7y70tUpqOfpz9WzMIdj8RrgBVxQb+GVXqSXpjiQ==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21AE283EAA28920"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
content-md5: LDY+eVY1L/F264pCPZ+a7g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 11b3cb36-b008-4497-acc0-97d653491961
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-5d769a43-106c-58e0-1aca-b9035533ae6e/test-blob-33c2516e-3143-f7e2-70fe-7cb16843091f

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
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x21AE283EAA28920"
content-md5: LDY+eVY1L/F264pCPZ+a7g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1b2a575d-a732-48da-b523-28d4b8a07cd6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:15 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-5d769a43-106c-58e0-1aca-b9035533ae6e/test-blob-33c2516e-3143-f7e2-70fe-7cb16843091f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x21AE283EAA28920"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-5d769a43-106c-58e0-1aca-b9035533ae6e/test-blob-7c8ccec2-cba5-14c1-312f-76214aa200cd
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
x-ms-request-id: 04c04a81-acc2-42f0-900d-8eb09f02c6b8
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:15 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-5d769a43-106c-58e0-1aca-b9035533ae6e?restype=container

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
x-ms-request-id: 1020c2cc-5313-48dd-bb70-7c17c213e6e6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-2edaf42b-b7ce-aa63-7dfc-7dd0dea3bc5b?restype=container

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
etag: "0x25BA17D81327FE0"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: faa303a0-ca68-4f74-8763-05fb02dde820
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-2edaf42b-b7ce-aa63-7dfc-7dd0dea3bc5b/test-blob-c3c76085-1cb8-9d53-1f01-58b6fbe36f6e

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
GYd7+LgvRpDrlAunTw+s7iZW9VXI0f637hi2RrQSGc1CIZjgxxBn/K5JQzqrvFttT46qh61nk0eI
wwqgef/c2Hs+ZC13zCYV7vmnfo3EDDK8SPYlaJEf2o5QVwQGx4KubGq/bFct9oNolJm0wBS6xLfX
4zEIt3DpH4qfJ3QiDyd2+BEiBZ/bj1JzvNT4axp5lpNMLuRRpbX61U3Njc4ORoRxPccDl74X/FPf
lfqc8bNvJpHh1eBCJFNcKDBSDgGDZHZPhi5Tdf7UNTKRcg+6XeOZXWc8LXCjLxh0p26Oxe5RWzGE
TWuFG7CSDaCusbFDoctMuLCaRzYGq1YV386QRXBDPxfeNhB4FEG2qiDQ9X5mMAWiQgw+thT6fqEU
cDziAccwa3GaZWu61KRu5JwWNbbYrq7I7QNjBYkD47duY6QF1KhYn4kNzMuZ521oz9J35EjqPMGO
GRTDzGXnloG0THH/aQ/0vZUsyuHiLwWV+jW2jP9vgybidruUldMjJTVK5Zv8aWbDgiayvnHfq+kO
LdEwMQqBRMhKHPJUYCjCCKWsmElqmZHP8wnZvcW0A8vRhWcB8/MryKHTsUxzbiH977XMMxOfo5RA
YD4AqIYClhkngtrBwRWxgNColuhFXITo284Q6M+3MeHSwZO1Kh8a0BsyS+tGPC2gG7JC9w2s+gS5
GMy48q5Kb1H47gCB+1awjsXMExCYoZ+gb80cdDrUJsaO/BFSYd5t6NyaTU0tHh9bkmhH3+f0IHct
GILgLfoWJMc58v5EXSznXysz/lNRclCtweLSjUffmtyaJUhbjLrhhCmF9CsgFjQ7X3+8wCIj26Yy
M2wYRJaAWlgiqjjkjNNwUnkqzH4kjKquli3II9q5d0miKVhOyECSBZnT/mz7V9OrS22o+A8oDabB
aq1ptzZ+aDLvQWJ6IYk5l8bkUY49sj5ZHNdsEX45ehyyjF6SKU1jVZU5DBVwMSrkb2FIQ7sXhLdv
D5teEle0tcdGx5Qqp255gPz5A6Up6Oqth6Ed8TZgmwimIhmyBEM9hVdOKmmVucfzz8K/HYARRSew
sYq1lsSQ5SyMg4RUxny4u31O276BF87aKiFzoX2Hld3yAVK4h+6TvUQ8CTVDnghGBmEDw2poL5q7
22yiHUSvBO6nYsUpADSOux55RQ2Yl4wYLZobhNFyidK4/ayC8J8AjAVGmztDHAYtdAdM7+qMIkTg
iu+qlIAcNdnzcQKHDMt+ebgIUvtQ1BGU7RDKJZnoK9pnoWWwVviEKmZhUKoDpmc7znYxg9BJj7Xe
FadvUg8/CkUoH2pmzSPAgyeU74RmkEeojlYjtqcJHhKv0kBQFddWIUVk2ob81QFScQCptKAxdw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F99E8AE4A1AD70"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
content-md5: 2LjCRiRZwIAFKxJElWXLsQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 72e19a79-636f-4802-b8b7-34d10e2e51d7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-2edaf42b-b7ce-aa63-7dfc-7dd0dea3bc5b/test-blob-3ecd3e4f-b501-acc0-b855-d045a7606a71

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
GYd7+LgvRpDrlAunTw+s7iZW9VXI0f637hi2RrQSGc1CIZjgxxBn/K5JQzqrvFttT46qh61nk0eI
wwqgef/c2Hs+ZC13zCYV7vmnfo3EDDK8SPYlaJEf2o5QVwQGx4KubGq/bFct9oNolJm0wBS6xLfX
4zEIt3DpH4qfJ3QiDyd2+BEiBZ/bj1JzvNT4axp5lpNMLuRRpbX61U3Njc4ORoRxPccDl74X/FPf
lfqc8bNvJpHh1eBCJFNcKDBSDgGDZHZPhi5Tdf7UNTKRcg+6XeOZXWc8LXCjLxh0p26Oxe5RWzGE
TWuFG7CSDaCusbFDoctMuLCaRzYGq1YV386QRXBDPxfeNhB4FEG2qiDQ9X5mMAWiQgw+thT6fqEU
cDziAccwa3GaZWu61KRu5JwWNbbYrq7I7QNjBYkD47duY6QF1KhYn4kNzMuZ521oz9J35EjqPMGO
GRTDzGXnloG0THH/aQ/0vZUsyuHiLwWV+jW2jP9vgybidruUldMjJTVK5Zv8aWbDgiayvnHfq+kO
LdEwMQqBRMhKHPJUYCjCCKWsmElqmZHP8wnZvcW0A8vRhWcB8/MryKHTsUxzbiH977XMMxOfo5RA
YD4AqIYClhkngtrBwRWxgNColuhFXITo284Q6M+3MeHSwZO1Kh8a0BsyS+tGPC2gG7JC9w2s+gS5
GMy48q5Kb1H47gCB+1awjsXMExCYoZ+gb80cdDrUJsaO/BFSYd5t6NyaTU0tHh9bkmhH3+f0IHct
GILgLfoWJMc58v5EXSznXysz/lNRclCtweLSjUffmtyaJUhbjLrhhCmF9CsgFjQ7X3+8wCIj26Yy
M2wYRJaAWlgiqjjkjNNwUnkqzH4kjKquli3II9q5d0miKVhOyECSBZnT/mz7V9OrS22o+A8oDabB
aq1ptzZ+aDLvQWJ6IYk5l8bkUY49sj5ZHNdsEX45ehyyjF6SKU1jVZU5DBVwMSrkb2FIQ7sXhLdv
D5teEle0tcdGx5Qqp255gPz5A6Up6Oqth6Ed8TZgmwimIhmyBEM9hVdOKmmVucfzz8K/HYARRSew
sYq1lsSQ5SyMg4RUxny4u31O276BF87aKiFzoX2Hld3yAVK4h+6TvUQ8CTVDnghGBmEDw2poL5q7
22yiHUSvBO6nYsUpADSOux55RQ2Yl4wYLZobhNFyidK4/ayC8J8AjAVGmztDHAYtdAdM7+qMIkTg
iu+qlIAcNdnzcQKHDMt+ebgIUvtQ1BGU7RDKJZnoK9pnoWWwVviEKmZhUKoDpmc7znYxg9BJj7Xe
FadvUg8/CkUoH2pmzSPAgyeU74RmkEeojlYjtqcJHhKv0kBQFddWIUVk2ob81QFScQCptKAxdw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2488645F3B83140"
last-modified: Thu, 12 Nov 2026 00:47:15 GMT
content-md5: 2LjCRiRZwIAFKxJElWXLsQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7cdc8be3-72e8-40ab-809c-cd034d1a8743
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-2edaf42b-b7ce-aa63-7dfc-7dd0dea3bc5b/test-blob-3ecd3e4f-b501-acc0-b855-d045a7606a71

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-2edaf42b-b7ce-aa63-7dfc-7dd0dea3bc5b/test-blob-c3c76085-1cb8-9d53-1f01-58b6fbe36f6e
x-ms-lease-id: c13b1f73-1e3a-1f35-018b-b53c22fcbd57
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
x-ms-request-id: 5f74c0db-5a6e-479f-a938-470d021db166
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:15 GMT
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

## Interaction 25: DELETE /devstoreaccount1/test-container-2edaf42b-b7ce-aa63-7dfc-7dd0dea3bc5b?restype=container

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
x-ms-request-id: 7f20f3e8-e274-4539-9525-809ca989de8b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:15 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

