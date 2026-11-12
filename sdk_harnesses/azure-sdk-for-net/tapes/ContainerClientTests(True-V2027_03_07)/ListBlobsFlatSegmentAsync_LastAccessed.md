## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_LastAccessed
now: 2026-11-12T00:44:51.6597641+00:00

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
etag: "0x21B9AECABFC63C0"
last-modified: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c6a61c01-fa65-4af1-a17b-b8038ff37d00
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:51 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253/foo

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
J3yo/Em54VBtHTnJPHYaH/ERRBOON9N2cEIFyKKVW0Kgccdaxd6kh0ZRWImSoavwewdsR26vxO+p
MosHsxit2ML3Kcuuv1kSbL3MPN9K486WFU2aKRTU8azYsZNTndMto3/Gm3jgQbuuWdqx4ocQX069
cJ3LE6+uIjcf1Q3Gv87pnphfg0dWttOR7M85Ig8kx1JFlSw2YpDPGHhAwWut6JoMx0PusNsGZ7rJ
OSbgdAAo+g67gCmiszwHkGrPFfRo4wQ0LFrLNRd2Pi5xbChq76N4GMZd8mdxaRQH5iBxN1HGYVUi
rEilXcX2REL6MEcTnaDGVv0tCvGcw8JFxE73BQfcqwrTR0Nb0roBZ64ldjnN80l/q+BUmFdkhemF
X5h2/z87HoU8QFZdaoRCLKNCd0yJeNAFeFkmhxKzbsFa1nMiimhu6lezkbPzIUBcEmu0IQ6c++fI
cYflFJZyidGUA5MQIKE61I301ecdEVYZynWn/k2zvduLWRnhidXBQQfhXx6sS/LKeU2ApyUAql8w
zEohy4qE4EW4hcaIWUu3M5TfO7I4bH6C3IX/MhW2i665sLyLn3V9XX7Y9MYsQR8CyXSQIG+s+GDL
n+4EhK4wAvkXzqmOLJQeYd00YHe4Vppm/WmhJWo/DLhcwACHeNnPp/LMFHN2c53gcr6ReJfoE0hT
noZFjt2O2MHxMmuTl+kEZLiF60En8InMwbOsrZQgc6y3M9lSihkVPjyxhEExTNrVjRPfYycGLK79
ecwp4ios0b+/22QPsdqecKwFdWtIm3XY1iCBQA+FsAcqVRFN61wRhbOCcnB2xds4QfN6AbZDtN5X
UQsKqpGvOSpc5FzIUYRQ8/C4xSgEYhFESf8cCq9Q56Az9ZlRB9oi0jhFGeB+b+9uKg7Fi++1U+/5
xWGRky97C/28lVzr/+wWlvLwvkgwxdkPrd+hi1yxfqKqV0F4kD8Iyg7jwtqTgyoir/T8xJSmyP+I
geVP2oChCxe5QKiqngWz6PQ6TQP/fCq1f9xntbkNBI5B7w5auO+NQbfD2UOCdxDvSNygbHv8iQW7
mlqkOVVdrDsaaK72WS8ErAtLO6LmMgfLeGzdbZgTRWYJnh6U6QhhZS0HaA9i+O+tm79vsE1i1GhT
2MDpfz+jBiJH7boQb8MD6tZ138n4aYB9MNHYo5UZp8q1QRBHeObuY2HsGgs0nCz8a8Z37PSeW29A
bE9ty2ONLkXvWi2yu3Lvh3toC051SJSl3DjOobrVF+ahBwuXgJj+X+vFRUH+Sa9Uh2V5NVAgyiS6
yO4qvo2KGkNHEbRmWAbiaaxjsANSp5KIehpVXOGWgDzn3Liq06BeOir+tjj77S5elsyjvRohaA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x252AAD5424EB080"
last-modified: Thu, 12 Nov 2026 00:44:51 GMT
content-md5: onqvDU41sOI4r2E46ysPrg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 57df589b-4b99-432c-858a-59bae514103f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253/bar

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
J3yo/Em54VBtHTnJPHYaH/ERRBOON9N2cEIFyKKVW0Kgccdaxd6kh0ZRWImSoavwewdsR26vxO+p
MosHsxit2ML3Kcuuv1kSbL3MPN9K486WFU2aKRTU8azYsZNTndMto3/Gm3jgQbuuWdqx4ocQX069
cJ3LE6+uIjcf1Q3Gv87pnphfg0dWttOR7M85Ig8kx1JFlSw2YpDPGHhAwWut6JoMx0PusNsGZ7rJ
OSbgdAAo+g67gCmiszwHkGrPFfRo4wQ0LFrLNRd2Pi5xbChq76N4GMZd8mdxaRQH5iBxN1HGYVUi
rEilXcX2REL6MEcTnaDGVv0tCvGcw8JFxE73BQfcqwrTR0Nb0roBZ64ldjnN80l/q+BUmFdkhemF
X5h2/z87HoU8QFZdaoRCLKNCd0yJeNAFeFkmhxKzbsFa1nMiimhu6lezkbPzIUBcEmu0IQ6c++fI
cYflFJZyidGUA5MQIKE61I301ecdEVYZynWn/k2zvduLWRnhidXBQQfhXx6sS/LKeU2ApyUAql8w
zEohy4qE4EW4hcaIWUu3M5TfO7I4bH6C3IX/MhW2i665sLyLn3V9XX7Y9MYsQR8CyXSQIG+s+GDL
n+4EhK4wAvkXzqmOLJQeYd00YHe4Vppm/WmhJWo/DLhcwACHeNnPp/LMFHN2c53gcr6ReJfoE0hT
noZFjt2O2MHxMmuTl+kEZLiF60En8InMwbOsrZQgc6y3M9lSihkVPjyxhEExTNrVjRPfYycGLK79
ecwp4ios0b+/22QPsdqecKwFdWtIm3XY1iCBQA+FsAcqVRFN61wRhbOCcnB2xds4QfN6AbZDtN5X
UQsKqpGvOSpc5FzIUYRQ8/C4xSgEYhFESf8cCq9Q56Az9ZlRB9oi0jhFGeB+b+9uKg7Fi++1U+/5
xWGRky97C/28lVzr/+wWlvLwvkgwxdkPrd+hi1yxfqKqV0F4kD8Iyg7jwtqTgyoir/T8xJSmyP+I
geVP2oChCxe5QKiqngWz6PQ6TQP/fCq1f9xntbkNBI5B7w5auO+NQbfD2UOCdxDvSNygbHv8iQW7
mlqkOVVdrDsaaK72WS8ErAtLO6LmMgfLeGzdbZgTRWYJnh6U6QhhZS0HaA9i+O+tm79vsE1i1GhT
2MDpfz+jBiJH7boQb8MD6tZ138n4aYB9MNHYo5UZp8q1QRBHeObuY2HsGgs0nCz8a8Z37PSeW29A
bE9ty2ONLkXvWi2yu3Lvh3toC051SJSl3DjOobrVF+ahBwuXgJj+X+vFRUH+Sa9Uh2V5NVAgyiS6
yO4qvo2KGkNHEbRmWAbiaaxjsANSp5KIehpVXOGWgDzn3Liq06BeOir+tjj77S5elsyjvRohaA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D7C469A3F0C240"
last-modified: Thu, 12 Nov 2026 00:44:51 GMT
content-md5: onqvDU41sOI4r2E46ysPrg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d2d97849-7fed-4893-aa7f-93165e714b52
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253/baz

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
J3yo/Em54VBtHTnJPHYaH/ERRBOON9N2cEIFyKKVW0Kgccdaxd6kh0ZRWImSoavwewdsR26vxO+p
MosHsxit2ML3Kcuuv1kSbL3MPN9K486WFU2aKRTU8azYsZNTndMto3/Gm3jgQbuuWdqx4ocQX069
cJ3LE6+uIjcf1Q3Gv87pnphfg0dWttOR7M85Ig8kx1JFlSw2YpDPGHhAwWut6JoMx0PusNsGZ7rJ
OSbgdAAo+g67gCmiszwHkGrPFfRo4wQ0LFrLNRd2Pi5xbChq76N4GMZd8mdxaRQH5iBxN1HGYVUi
rEilXcX2REL6MEcTnaDGVv0tCvGcw8JFxE73BQfcqwrTR0Nb0roBZ64ldjnN80l/q+BUmFdkhemF
X5h2/z87HoU8QFZdaoRCLKNCd0yJeNAFeFkmhxKzbsFa1nMiimhu6lezkbPzIUBcEmu0IQ6c++fI
cYflFJZyidGUA5MQIKE61I301ecdEVYZynWn/k2zvduLWRnhidXBQQfhXx6sS/LKeU2ApyUAql8w
zEohy4qE4EW4hcaIWUu3M5TfO7I4bH6C3IX/MhW2i665sLyLn3V9XX7Y9MYsQR8CyXSQIG+s+GDL
n+4EhK4wAvkXzqmOLJQeYd00YHe4Vppm/WmhJWo/DLhcwACHeNnPp/LMFHN2c53gcr6ReJfoE0hT
noZFjt2O2MHxMmuTl+kEZLiF60En8InMwbOsrZQgc6y3M9lSihkVPjyxhEExTNrVjRPfYycGLK79
ecwp4ios0b+/22QPsdqecKwFdWtIm3XY1iCBQA+FsAcqVRFN61wRhbOCcnB2xds4QfN6AbZDtN5X
UQsKqpGvOSpc5FzIUYRQ8/C4xSgEYhFESf8cCq9Q56Az9ZlRB9oi0jhFGeB+b+9uKg7Fi++1U+/5
xWGRky97C/28lVzr/+wWlvLwvkgwxdkPrd+hi1yxfqKqV0F4kD8Iyg7jwtqTgyoir/T8xJSmyP+I
geVP2oChCxe5QKiqngWz6PQ6TQP/fCq1f9xntbkNBI5B7w5auO+NQbfD2UOCdxDvSNygbHv8iQW7
mlqkOVVdrDsaaK72WS8ErAtLO6LmMgfLeGzdbZgTRWYJnh6U6QhhZS0HaA9i+O+tm79vsE1i1GhT
2MDpfz+jBiJH7boQb8MD6tZ138n4aYB9MNHYo5UZp8q1QRBHeObuY2HsGgs0nCz8a8Z37PSeW29A
bE9ty2ONLkXvWi2yu3Lvh3toC051SJSl3DjOobrVF+ahBwuXgJj+X+vFRUH+Sa9Uh2V5NVAgyiS6
yO4qvo2KGkNHEbRmWAbiaaxjsANSp5KIehpVXOGWgDzn3Liq06BeOir+tjj77S5elsyjvRohaA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27A008140C43080"
last-modified: Thu, 12 Nov 2026 00:44:51 GMT
content-md5: onqvDU41sOI4r2E46ysPrg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2fd894ae-4726-4cd6-856a-33570f3ff9d5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253/foo/foo

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
J3yo/Em54VBtHTnJPHYaH/ERRBOON9N2cEIFyKKVW0Kgccdaxd6kh0ZRWImSoavwewdsR26vxO+p
MosHsxit2ML3Kcuuv1kSbL3MPN9K486WFU2aKRTU8azYsZNTndMto3/Gm3jgQbuuWdqx4ocQX069
cJ3LE6+uIjcf1Q3Gv87pnphfg0dWttOR7M85Ig8kx1JFlSw2YpDPGHhAwWut6JoMx0PusNsGZ7rJ
OSbgdAAo+g67gCmiszwHkGrPFfRo4wQ0LFrLNRd2Pi5xbChq76N4GMZd8mdxaRQH5iBxN1HGYVUi
rEilXcX2REL6MEcTnaDGVv0tCvGcw8JFxE73BQfcqwrTR0Nb0roBZ64ldjnN80l/q+BUmFdkhemF
X5h2/z87HoU8QFZdaoRCLKNCd0yJeNAFeFkmhxKzbsFa1nMiimhu6lezkbPzIUBcEmu0IQ6c++fI
cYflFJZyidGUA5MQIKE61I301ecdEVYZynWn/k2zvduLWRnhidXBQQfhXx6sS/LKeU2ApyUAql8w
zEohy4qE4EW4hcaIWUu3M5TfO7I4bH6C3IX/MhW2i665sLyLn3V9XX7Y9MYsQR8CyXSQIG+s+GDL
n+4EhK4wAvkXzqmOLJQeYd00YHe4Vppm/WmhJWo/DLhcwACHeNnPp/LMFHN2c53gcr6ReJfoE0hT
noZFjt2O2MHxMmuTl+kEZLiF60En8InMwbOsrZQgc6y3M9lSihkVPjyxhEExTNrVjRPfYycGLK79
ecwp4ios0b+/22QPsdqecKwFdWtIm3XY1iCBQA+FsAcqVRFN61wRhbOCcnB2xds4QfN6AbZDtN5X
UQsKqpGvOSpc5FzIUYRQ8/C4xSgEYhFESf8cCq9Q56Az9ZlRB9oi0jhFGeB+b+9uKg7Fi++1U+/5
xWGRky97C/28lVzr/+wWlvLwvkgwxdkPrd+hi1yxfqKqV0F4kD8Iyg7jwtqTgyoir/T8xJSmyP+I
geVP2oChCxe5QKiqngWz6PQ6TQP/fCq1f9xntbkNBI5B7w5auO+NQbfD2UOCdxDvSNygbHv8iQW7
mlqkOVVdrDsaaK72WS8ErAtLO6LmMgfLeGzdbZgTRWYJnh6U6QhhZS0HaA9i+O+tm79vsE1i1GhT
2MDpfz+jBiJH7boQb8MD6tZ138n4aYB9MNHYo5UZp8q1QRBHeObuY2HsGgs0nCz8a8Z37PSeW29A
bE9ty2ONLkXvWi2yu3Lvh3toC051SJSl3DjOobrVF+ahBwuXgJj+X+vFRUH+Sa9Uh2V5NVAgyiS6
yO4qvo2KGkNHEbRmWAbiaaxjsANSp5KIehpVXOGWgDzn3Liq06BeOir+tjj77S5elsyjvRohaA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F4C7D0CFE9B0E0"
last-modified: Thu, 12 Nov 2026 00:44:51 GMT
content-md5: onqvDU41sOI4r2E46ysPrg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7a5d5d98-5357-43a9-9d2a-f3bf4778a684
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253/foo/bar

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
J3yo/Em54VBtHTnJPHYaH/ERRBOON9N2cEIFyKKVW0Kgccdaxd6kh0ZRWImSoavwewdsR26vxO+p
MosHsxit2ML3Kcuuv1kSbL3MPN9K486WFU2aKRTU8azYsZNTndMto3/Gm3jgQbuuWdqx4ocQX069
cJ3LE6+uIjcf1Q3Gv87pnphfg0dWttOR7M85Ig8kx1JFlSw2YpDPGHhAwWut6JoMx0PusNsGZ7rJ
OSbgdAAo+g67gCmiszwHkGrPFfRo4wQ0LFrLNRd2Pi5xbChq76N4GMZd8mdxaRQH5iBxN1HGYVUi
rEilXcX2REL6MEcTnaDGVv0tCvGcw8JFxE73BQfcqwrTR0Nb0roBZ64ldjnN80l/q+BUmFdkhemF
X5h2/z87HoU8QFZdaoRCLKNCd0yJeNAFeFkmhxKzbsFa1nMiimhu6lezkbPzIUBcEmu0IQ6c++fI
cYflFJZyidGUA5MQIKE61I301ecdEVYZynWn/k2zvduLWRnhidXBQQfhXx6sS/LKeU2ApyUAql8w
zEohy4qE4EW4hcaIWUu3M5TfO7I4bH6C3IX/MhW2i665sLyLn3V9XX7Y9MYsQR8CyXSQIG+s+GDL
n+4EhK4wAvkXzqmOLJQeYd00YHe4Vppm/WmhJWo/DLhcwACHeNnPp/LMFHN2c53gcr6ReJfoE0hT
noZFjt2O2MHxMmuTl+kEZLiF60En8InMwbOsrZQgc6y3M9lSihkVPjyxhEExTNrVjRPfYycGLK79
ecwp4ios0b+/22QPsdqecKwFdWtIm3XY1iCBQA+FsAcqVRFN61wRhbOCcnB2xds4QfN6AbZDtN5X
UQsKqpGvOSpc5FzIUYRQ8/C4xSgEYhFESf8cCq9Q56Az9ZlRB9oi0jhFGeB+b+9uKg7Fi++1U+/5
xWGRky97C/28lVzr/+wWlvLwvkgwxdkPrd+hi1yxfqKqV0F4kD8Iyg7jwtqTgyoir/T8xJSmyP+I
geVP2oChCxe5QKiqngWz6PQ6TQP/fCq1f9xntbkNBI5B7w5auO+NQbfD2UOCdxDvSNygbHv8iQW7
mlqkOVVdrDsaaK72WS8ErAtLO6LmMgfLeGzdbZgTRWYJnh6U6QhhZS0HaA9i+O+tm79vsE1i1GhT
2MDpfz+jBiJH7boQb8MD6tZ138n4aYB9MNHYo5UZp8q1QRBHeObuY2HsGgs0nCz8a8Z37PSeW29A
bE9ty2ONLkXvWi2yu3Lvh3toC051SJSl3DjOobrVF+ahBwuXgJj+X+vFRUH+Sa9Uh2V5NVAgyiS6
yO4qvo2KGkNHEbRmWAbiaaxjsANSp5KIehpVXOGWgDzn3Liq06BeOir+tjj77S5elsyjvRohaA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24CE91A668F41C0"
last-modified: Thu, 12 Nov 2026 00:44:51 GMT
content-md5: onqvDU41sOI4r2E46ysPrg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3b7570fb-b0e6-4d50-a38c-d6ccd049f1d2
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253/baz/foo

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
J3yo/Em54VBtHTnJPHYaH/ERRBOON9N2cEIFyKKVW0Kgccdaxd6kh0ZRWImSoavwewdsR26vxO+p
MosHsxit2ML3Kcuuv1kSbL3MPN9K486WFU2aKRTU8azYsZNTndMto3/Gm3jgQbuuWdqx4ocQX069
cJ3LE6+uIjcf1Q3Gv87pnphfg0dWttOR7M85Ig8kx1JFlSw2YpDPGHhAwWut6JoMx0PusNsGZ7rJ
OSbgdAAo+g67gCmiszwHkGrPFfRo4wQ0LFrLNRd2Pi5xbChq76N4GMZd8mdxaRQH5iBxN1HGYVUi
rEilXcX2REL6MEcTnaDGVv0tCvGcw8JFxE73BQfcqwrTR0Nb0roBZ64ldjnN80l/q+BUmFdkhemF
X5h2/z87HoU8QFZdaoRCLKNCd0yJeNAFeFkmhxKzbsFa1nMiimhu6lezkbPzIUBcEmu0IQ6c++fI
cYflFJZyidGUA5MQIKE61I301ecdEVYZynWn/k2zvduLWRnhidXBQQfhXx6sS/LKeU2ApyUAql8w
zEohy4qE4EW4hcaIWUu3M5TfO7I4bH6C3IX/MhW2i665sLyLn3V9XX7Y9MYsQR8CyXSQIG+s+GDL
n+4EhK4wAvkXzqmOLJQeYd00YHe4Vppm/WmhJWo/DLhcwACHeNnPp/LMFHN2c53gcr6ReJfoE0hT
noZFjt2O2MHxMmuTl+kEZLiF60En8InMwbOsrZQgc6y3M9lSihkVPjyxhEExTNrVjRPfYycGLK79
ecwp4ios0b+/22QPsdqecKwFdWtIm3XY1iCBQA+FsAcqVRFN61wRhbOCcnB2xds4QfN6AbZDtN5X
UQsKqpGvOSpc5FzIUYRQ8/C4xSgEYhFESf8cCq9Q56Az9ZlRB9oi0jhFGeB+b+9uKg7Fi++1U+/5
xWGRky97C/28lVzr/+wWlvLwvkgwxdkPrd+hi1yxfqKqV0F4kD8Iyg7jwtqTgyoir/T8xJSmyP+I
geVP2oChCxe5QKiqngWz6PQ6TQP/fCq1f9xntbkNBI5B7w5auO+NQbfD2UOCdxDvSNygbHv8iQW7
mlqkOVVdrDsaaK72WS8ErAtLO6LmMgfLeGzdbZgTRWYJnh6U6QhhZS0HaA9i+O+tm79vsE1i1GhT
2MDpfz+jBiJH7boQb8MD6tZ138n4aYB9MNHYo5UZp8q1QRBHeObuY2HsGgs0nCz8a8Z37PSeW29A
bE9ty2ONLkXvWi2yu3Lvh3toC051SJSl3DjOobrVF+ahBwuXgJj+X+vFRUH+Sa9Uh2V5NVAgyiS6
yO4qvo2KGkNHEbRmWAbiaaxjsANSp5KIehpVXOGWgDzn3Liq06BeOir+tjj77S5elsyjvRohaA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E238F44CAF9AA0"
last-modified: Thu, 12 Nov 2026 00:44:51 GMT
content-md5: onqvDU41sOI4r2E46ysPrg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 6defe0cd-ad20-499f-9623-f4cac4fb12eb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253/baz/foo/bar

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
J3yo/Em54VBtHTnJPHYaH/ERRBOON9N2cEIFyKKVW0Kgccdaxd6kh0ZRWImSoavwewdsR26vxO+p
MosHsxit2ML3Kcuuv1kSbL3MPN9K486WFU2aKRTU8azYsZNTndMto3/Gm3jgQbuuWdqx4ocQX069
cJ3LE6+uIjcf1Q3Gv87pnphfg0dWttOR7M85Ig8kx1JFlSw2YpDPGHhAwWut6JoMx0PusNsGZ7rJ
OSbgdAAo+g67gCmiszwHkGrPFfRo4wQ0LFrLNRd2Pi5xbChq76N4GMZd8mdxaRQH5iBxN1HGYVUi
rEilXcX2REL6MEcTnaDGVv0tCvGcw8JFxE73BQfcqwrTR0Nb0roBZ64ldjnN80l/q+BUmFdkhemF
X5h2/z87HoU8QFZdaoRCLKNCd0yJeNAFeFkmhxKzbsFa1nMiimhu6lezkbPzIUBcEmu0IQ6c++fI
cYflFJZyidGUA5MQIKE61I301ecdEVYZynWn/k2zvduLWRnhidXBQQfhXx6sS/LKeU2ApyUAql8w
zEohy4qE4EW4hcaIWUu3M5TfO7I4bH6C3IX/MhW2i665sLyLn3V9XX7Y9MYsQR8CyXSQIG+s+GDL
n+4EhK4wAvkXzqmOLJQeYd00YHe4Vppm/WmhJWo/DLhcwACHeNnPp/LMFHN2c53gcr6ReJfoE0hT
noZFjt2O2MHxMmuTl+kEZLiF60En8InMwbOsrZQgc6y3M9lSihkVPjyxhEExTNrVjRPfYycGLK79
ecwp4ios0b+/22QPsdqecKwFdWtIm3XY1iCBQA+FsAcqVRFN61wRhbOCcnB2xds4QfN6AbZDtN5X
UQsKqpGvOSpc5FzIUYRQ8/C4xSgEYhFESf8cCq9Q56Az9ZlRB9oi0jhFGeB+b+9uKg7Fi++1U+/5
xWGRky97C/28lVzr/+wWlvLwvkgwxdkPrd+hi1yxfqKqV0F4kD8Iyg7jwtqTgyoir/T8xJSmyP+I
geVP2oChCxe5QKiqngWz6PQ6TQP/fCq1f9xntbkNBI5B7w5auO+NQbfD2UOCdxDvSNygbHv8iQW7
mlqkOVVdrDsaaK72WS8ErAtLO6LmMgfLeGzdbZgTRWYJnh6U6QhhZS0HaA9i+O+tm79vsE1i1GhT
2MDpfz+jBiJH7boQb8MD6tZ138n4aYB9MNHYo5UZp8q1QRBHeObuY2HsGgs0nCz8a8Z37PSeW29A
bE9ty2ONLkXvWi2yu3Lvh3toC051SJSl3DjOobrVF+ahBwuXgJj+X+vFRUH+Sa9Uh2V5NVAgyiS6
yO4qvo2KGkNHEbRmWAbiaaxjsANSp5KIehpVXOGWgDzn3Liq06BeOir+tjj77S5elsyjvRohaA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F6A600B07059B0"
last-modified: Thu, 12 Nov 2026 00:44:51 GMT
content-md5: onqvDU41sOI4r2E46ysPrg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0f137e2-bebb-4385-baa8-084f4696ae3e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253/baz/bar/foo

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
J3yo/Em54VBtHTnJPHYaH/ERRBOON9N2cEIFyKKVW0Kgccdaxd6kh0ZRWImSoavwewdsR26vxO+p
MosHsxit2ML3Kcuuv1kSbL3MPN9K486WFU2aKRTU8azYsZNTndMto3/Gm3jgQbuuWdqx4ocQX069
cJ3LE6+uIjcf1Q3Gv87pnphfg0dWttOR7M85Ig8kx1JFlSw2YpDPGHhAwWut6JoMx0PusNsGZ7rJ
OSbgdAAo+g67gCmiszwHkGrPFfRo4wQ0LFrLNRd2Pi5xbChq76N4GMZd8mdxaRQH5iBxN1HGYVUi
rEilXcX2REL6MEcTnaDGVv0tCvGcw8JFxE73BQfcqwrTR0Nb0roBZ64ldjnN80l/q+BUmFdkhemF
X5h2/z87HoU8QFZdaoRCLKNCd0yJeNAFeFkmhxKzbsFa1nMiimhu6lezkbPzIUBcEmu0IQ6c++fI
cYflFJZyidGUA5MQIKE61I301ecdEVYZynWn/k2zvduLWRnhidXBQQfhXx6sS/LKeU2ApyUAql8w
zEohy4qE4EW4hcaIWUu3M5TfO7I4bH6C3IX/MhW2i665sLyLn3V9XX7Y9MYsQR8CyXSQIG+s+GDL
n+4EhK4wAvkXzqmOLJQeYd00YHe4Vppm/WmhJWo/DLhcwACHeNnPp/LMFHN2c53gcr6ReJfoE0hT
noZFjt2O2MHxMmuTl+kEZLiF60En8InMwbOsrZQgc6y3M9lSihkVPjyxhEExTNrVjRPfYycGLK79
ecwp4ios0b+/22QPsdqecKwFdWtIm3XY1iCBQA+FsAcqVRFN61wRhbOCcnB2xds4QfN6AbZDtN5X
UQsKqpGvOSpc5FzIUYRQ8/C4xSgEYhFESf8cCq9Q56Az9ZlRB9oi0jhFGeB+b+9uKg7Fi++1U+/5
xWGRky97C/28lVzr/+wWlvLwvkgwxdkPrd+hi1yxfqKqV0F4kD8Iyg7jwtqTgyoir/T8xJSmyP+I
geVP2oChCxe5QKiqngWz6PQ6TQP/fCq1f9xntbkNBI5B7w5auO+NQbfD2UOCdxDvSNygbHv8iQW7
mlqkOVVdrDsaaK72WS8ErAtLO6LmMgfLeGzdbZgTRWYJnh6U6QhhZS0HaA9i+O+tm79vsE1i1GhT
2MDpfz+jBiJH7boQb8MD6tZ138n4aYB9MNHYo5UZp8q1QRBHeObuY2HsGgs0nCz8a8Z37PSeW29A
bE9ty2ONLkXvWi2yu3Lvh3toC051SJSl3DjOobrVF+ahBwuXgJj+X+vFRUH+Sa9Uh2V5NVAgyiS6
yO4qvo2KGkNHEbRmWAbiaaxjsANSp5KIehpVXOGWgDzn3Liq06BeOir+tjj77S5elsyjvRohaA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26F1B5A4A681380"
last-modified: Thu, 12 Nov 2026 00:44:51 GMT
content-md5: onqvDU41sOI4r2E46ysPrg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 714c1178-6c6c-4284-a7db-cfd2ddc8b7c1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:51 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253/foo/foo?comp=metadata

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
etag: "0x1FFC8B6695FB3F0"
last-modified: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 58e01b97-a41c-4580-9e46-cf02bfe2af51
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253?restype=container&comp=list

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
x-ms-request-id: 8d75769f-cfaf-40e2-af2b-35722a051821
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-c6a12840-cca6-e86b-6695-275d58b3c253"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:51 GMT</Last-Modified><Etag>0x1D7C469A3F0C240</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>onqvDU41sOI4r2E46ysPrg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:51 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:51 GMT</Last-Modified><Etag>0x27A008140C43080</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>onqvDU41sOI4r2E46ysPrg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:51 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:51 GMT</Last-Modified><Etag>0x26F1B5A4A681380</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>onqvDU41sOI4r2E46ysPrg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:51 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:51 GMT</Last-Modified><Etag>0x1E238F44CAF9AA0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>onqvDU41sOI4r2E46ysPrg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:51 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:51 GMT</Last-Modified><Etag>0x1F6A600B07059B0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>onqvDU41sOI4r2E46ysPrg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:51 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:51 GMT</Last-Modified><Etag>0x252AAD5424EB080</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>onqvDU41sOI4r2E46ysPrg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:51 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:51 GMT</Last-Modified><Etag>0x24CE91A668F41C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>onqvDU41sOI4r2E46ysPrg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:51 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:51 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:52 GMT</Last-Modified><Etag>0x1FFC8B6695FB3F0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>onqvDU41sOI4r2E46ysPrg==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:51 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-c6a12840-cca6-e86b-6695-275d58b3c253?restype=container

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
x-ms-request-id: 4b7103ae-07dd-4629-809e-f731f5223e00
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:52 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

