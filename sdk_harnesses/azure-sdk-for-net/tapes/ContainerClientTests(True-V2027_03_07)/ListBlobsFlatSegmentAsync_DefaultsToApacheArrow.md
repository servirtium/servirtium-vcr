## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_DefaultsToApacheArrow
now: 2026-11-12T00:44:50.4342077+00:00

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
etag: "0x211112A9239B540"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 524a025b-0c55-4430-90c0-27846e862f01
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:50 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a/foo

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
eyI9/4el7hM5bQyO7BVI8RtyB3gv79sc6ROJvivtQu3vWjnuu7d9tsoWgO+pe+r/6+IBOdHO6oxH
IRZ0GzDoTCsen5LbWTVk9FCtGW/scm4oitJI6wgcIG+tp5qgCZuaLTPEi9xXJJKsnUSAIdEcW66o
S5Fen2EiAn8iLrGbw+u1E+s7J+eR0GVAnE3Em/+ekEzr+L0JPI7SoohdNfXgENpZyw3l4TPHFnor
HQMTXWeAg55lr8ouq9ddaYVfNJtwYIxzas/xuK4ZJOJC3R6LvkQh3LFWemAPKyA2iHetZ+Hfu713
oPOXjsvvS4vo68240qtBPlfpGeUrYz+vujA3a7wAYyJhFB5QiU7mZy/VJz9SfrbMbCmJ9aHYSzy0
6NSbuODO54irV76M8LQJA7K2Vjz/XTt5a/6Td22AiMjinKF5S69OBj+3pyb4P3x1f/HvIfX/tIuZ
IUzhO28aKs71qlMSkLgDZ0/8SLYVgCuBHfh7kWbS4ucW4ClibcvPnHxYApUpYu457LqmA2zUhKAh
Xx13n5lnIshr/LCOofmELKs5vH2WWLsJQqWsLN97QVyIQA2tWP3j8N/MvWU9qkrAItbBm8ciigdi
bV30u/bo8LtUBmDs1tSuVsyeyZpVy5da6woIuaaUZbYFSuqg7jTp5M2q6aTq1EsBE0T6hMBsDaLF
mtDr3zYVv6Cp54vpDWeXtOXNquLybxe/B6ZhmuD1mD1I2lRk/gSXlSkEQOy/GAXcYtDbn2K/0yq4
LNiPsyW/tE5OoTMTMrbhNhS47i4q/++hhDcQGvjaiAYpq9ErB+IERIyecXbRyTAa+WlOBuX8jizp
7i/tr5pVcxgs6obkti4ytKqhi454z7oH9SCPjIIhLR2lQRmyFpTySP1dpd+pNUM7G1E6WgKdcR50
5rl5xueWCrxpP3QVgJ4Wr0ORGirbXsDcU3Aw59IaB9D6PTDaeIIWx5siP/XPJZuzJKu/DFb0mYj5
nXJ2ZSPqTjikGkJtOzbAe1OPuR7KDC7VfMInW/p5BqSn4dsPn2F3N/G9KwtYRuh1/pEDZeBqLpBE
oelgw/I9KhSexVpasdvxF4EsDeEjfDbaslxpdqDEPbJLy/53F3T+gAH2uoCNGk21EU5ePSGuISWy
hRGW07Nz2oioD+Xdef8MLo3gLMG2TZcPs2VSZQCRnKrZxZJjaKxOgt/35Qtn2JdPUg+TzvRj/Dh5
hh9NIXWHF3I7A7RtqcXgkqnivmeMp9vOAxPx/c61dshZ6uGMAGFqcM2ZK9Xi4qhJszxKgD3Q7d5E
fx1hlhmjho3sE77kU5FId06Z83wG6yFqqEqSa/WKiP0DSIFDCNm09aVH9s7qZF+qAgnvNvliPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x267C68264B32C80"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: NNraAQJLA51l/ja/svegcw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e9b7a1f8-2bd6-435c-8b78-651db719257e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a/bar

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
eyI9/4el7hM5bQyO7BVI8RtyB3gv79sc6ROJvivtQu3vWjnuu7d9tsoWgO+pe+r/6+IBOdHO6oxH
IRZ0GzDoTCsen5LbWTVk9FCtGW/scm4oitJI6wgcIG+tp5qgCZuaLTPEi9xXJJKsnUSAIdEcW66o
S5Fen2EiAn8iLrGbw+u1E+s7J+eR0GVAnE3Em/+ekEzr+L0JPI7SoohdNfXgENpZyw3l4TPHFnor
HQMTXWeAg55lr8ouq9ddaYVfNJtwYIxzas/xuK4ZJOJC3R6LvkQh3LFWemAPKyA2iHetZ+Hfu713
oPOXjsvvS4vo68240qtBPlfpGeUrYz+vujA3a7wAYyJhFB5QiU7mZy/VJz9SfrbMbCmJ9aHYSzy0
6NSbuODO54irV76M8LQJA7K2Vjz/XTt5a/6Td22AiMjinKF5S69OBj+3pyb4P3x1f/HvIfX/tIuZ
IUzhO28aKs71qlMSkLgDZ0/8SLYVgCuBHfh7kWbS4ucW4ClibcvPnHxYApUpYu457LqmA2zUhKAh
Xx13n5lnIshr/LCOofmELKs5vH2WWLsJQqWsLN97QVyIQA2tWP3j8N/MvWU9qkrAItbBm8ciigdi
bV30u/bo8LtUBmDs1tSuVsyeyZpVy5da6woIuaaUZbYFSuqg7jTp5M2q6aTq1EsBE0T6hMBsDaLF
mtDr3zYVv6Cp54vpDWeXtOXNquLybxe/B6ZhmuD1mD1I2lRk/gSXlSkEQOy/GAXcYtDbn2K/0yq4
LNiPsyW/tE5OoTMTMrbhNhS47i4q/++hhDcQGvjaiAYpq9ErB+IERIyecXbRyTAa+WlOBuX8jizp
7i/tr5pVcxgs6obkti4ytKqhi454z7oH9SCPjIIhLR2lQRmyFpTySP1dpd+pNUM7G1E6WgKdcR50
5rl5xueWCrxpP3QVgJ4Wr0ORGirbXsDcU3Aw59IaB9D6PTDaeIIWx5siP/XPJZuzJKu/DFb0mYj5
nXJ2ZSPqTjikGkJtOzbAe1OPuR7KDC7VfMInW/p5BqSn4dsPn2F3N/G9KwtYRuh1/pEDZeBqLpBE
oelgw/I9KhSexVpasdvxF4EsDeEjfDbaslxpdqDEPbJLy/53F3T+gAH2uoCNGk21EU5ePSGuISWy
hRGW07Nz2oioD+Xdef8MLo3gLMG2TZcPs2VSZQCRnKrZxZJjaKxOgt/35Qtn2JdPUg+TzvRj/Dh5
hh9NIXWHF3I7A7RtqcXgkqnivmeMp9vOAxPx/c61dshZ6uGMAGFqcM2ZK9Xi4qhJszxKgD3Q7d5E
fx1hlhmjho3sE77kU5FId06Z83wG6yFqqEqSa/WKiP0DSIFDCNm09aVH9s7qZF+qAgnvNvliPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x201D63A810BF4E0"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: NNraAQJLA51l/ja/svegcw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 5a1a84f7-b58f-4911-b632-9c329526bce0
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a/baz

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
eyI9/4el7hM5bQyO7BVI8RtyB3gv79sc6ROJvivtQu3vWjnuu7d9tsoWgO+pe+r/6+IBOdHO6oxH
IRZ0GzDoTCsen5LbWTVk9FCtGW/scm4oitJI6wgcIG+tp5qgCZuaLTPEi9xXJJKsnUSAIdEcW66o
S5Fen2EiAn8iLrGbw+u1E+s7J+eR0GVAnE3Em/+ekEzr+L0JPI7SoohdNfXgENpZyw3l4TPHFnor
HQMTXWeAg55lr8ouq9ddaYVfNJtwYIxzas/xuK4ZJOJC3R6LvkQh3LFWemAPKyA2iHetZ+Hfu713
oPOXjsvvS4vo68240qtBPlfpGeUrYz+vujA3a7wAYyJhFB5QiU7mZy/VJz9SfrbMbCmJ9aHYSzy0
6NSbuODO54irV76M8LQJA7K2Vjz/XTt5a/6Td22AiMjinKF5S69OBj+3pyb4P3x1f/HvIfX/tIuZ
IUzhO28aKs71qlMSkLgDZ0/8SLYVgCuBHfh7kWbS4ucW4ClibcvPnHxYApUpYu457LqmA2zUhKAh
Xx13n5lnIshr/LCOofmELKs5vH2WWLsJQqWsLN97QVyIQA2tWP3j8N/MvWU9qkrAItbBm8ciigdi
bV30u/bo8LtUBmDs1tSuVsyeyZpVy5da6woIuaaUZbYFSuqg7jTp5M2q6aTq1EsBE0T6hMBsDaLF
mtDr3zYVv6Cp54vpDWeXtOXNquLybxe/B6ZhmuD1mD1I2lRk/gSXlSkEQOy/GAXcYtDbn2K/0yq4
LNiPsyW/tE5OoTMTMrbhNhS47i4q/++hhDcQGvjaiAYpq9ErB+IERIyecXbRyTAa+WlOBuX8jizp
7i/tr5pVcxgs6obkti4ytKqhi454z7oH9SCPjIIhLR2lQRmyFpTySP1dpd+pNUM7G1E6WgKdcR50
5rl5xueWCrxpP3QVgJ4Wr0ORGirbXsDcU3Aw59IaB9D6PTDaeIIWx5siP/XPJZuzJKu/DFb0mYj5
nXJ2ZSPqTjikGkJtOzbAe1OPuR7KDC7VfMInW/p5BqSn4dsPn2F3N/G9KwtYRuh1/pEDZeBqLpBE
oelgw/I9KhSexVpasdvxF4EsDeEjfDbaslxpdqDEPbJLy/53F3T+gAH2uoCNGk21EU5ePSGuISWy
hRGW07Nz2oioD+Xdef8MLo3gLMG2TZcPs2VSZQCRnKrZxZJjaKxOgt/35Qtn2JdPUg+TzvRj/Dh5
hh9NIXWHF3I7A7RtqcXgkqnivmeMp9vOAxPx/c61dshZ6uGMAGFqcM2ZK9Xi4qhJszxKgD3Q7d5E
fx1hlhmjho3sE77kU5FId06Z83wG6yFqqEqSa/WKiP0DSIFDCNm09aVH9s7qZF+qAgnvNvliPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FFFCF0090F86F0"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: NNraAQJLA51l/ja/svegcw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 14587278-788d-43bb-80cc-14b51169366f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a/foo/foo

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
eyI9/4el7hM5bQyO7BVI8RtyB3gv79sc6ROJvivtQu3vWjnuu7d9tsoWgO+pe+r/6+IBOdHO6oxH
IRZ0GzDoTCsen5LbWTVk9FCtGW/scm4oitJI6wgcIG+tp5qgCZuaLTPEi9xXJJKsnUSAIdEcW66o
S5Fen2EiAn8iLrGbw+u1E+s7J+eR0GVAnE3Em/+ekEzr+L0JPI7SoohdNfXgENpZyw3l4TPHFnor
HQMTXWeAg55lr8ouq9ddaYVfNJtwYIxzas/xuK4ZJOJC3R6LvkQh3LFWemAPKyA2iHetZ+Hfu713
oPOXjsvvS4vo68240qtBPlfpGeUrYz+vujA3a7wAYyJhFB5QiU7mZy/VJz9SfrbMbCmJ9aHYSzy0
6NSbuODO54irV76M8LQJA7K2Vjz/XTt5a/6Td22AiMjinKF5S69OBj+3pyb4P3x1f/HvIfX/tIuZ
IUzhO28aKs71qlMSkLgDZ0/8SLYVgCuBHfh7kWbS4ucW4ClibcvPnHxYApUpYu457LqmA2zUhKAh
Xx13n5lnIshr/LCOofmELKs5vH2WWLsJQqWsLN97QVyIQA2tWP3j8N/MvWU9qkrAItbBm8ciigdi
bV30u/bo8LtUBmDs1tSuVsyeyZpVy5da6woIuaaUZbYFSuqg7jTp5M2q6aTq1EsBE0T6hMBsDaLF
mtDr3zYVv6Cp54vpDWeXtOXNquLybxe/B6ZhmuD1mD1I2lRk/gSXlSkEQOy/GAXcYtDbn2K/0yq4
LNiPsyW/tE5OoTMTMrbhNhS47i4q/++hhDcQGvjaiAYpq9ErB+IERIyecXbRyTAa+WlOBuX8jizp
7i/tr5pVcxgs6obkti4ytKqhi454z7oH9SCPjIIhLR2lQRmyFpTySP1dpd+pNUM7G1E6WgKdcR50
5rl5xueWCrxpP3QVgJ4Wr0ORGirbXsDcU3Aw59IaB9D6PTDaeIIWx5siP/XPJZuzJKu/DFb0mYj5
nXJ2ZSPqTjikGkJtOzbAe1OPuR7KDC7VfMInW/p5BqSn4dsPn2F3N/G9KwtYRuh1/pEDZeBqLpBE
oelgw/I9KhSexVpasdvxF4EsDeEjfDbaslxpdqDEPbJLy/53F3T+gAH2uoCNGk21EU5ePSGuISWy
hRGW07Nz2oioD+Xdef8MLo3gLMG2TZcPs2VSZQCRnKrZxZJjaKxOgt/35Qtn2JdPUg+TzvRj/Dh5
hh9NIXWHF3I7A7RtqcXgkqnivmeMp9vOAxPx/c61dshZ6uGMAGFqcM2ZK9Xi4qhJszxKgD3Q7d5E
fx1hlhmjho3sE77kU5FId06Z83wG6yFqqEqSa/WKiP0DSIFDCNm09aVH9s7qZF+qAgnvNvliPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C4A5EE909FAF30"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: NNraAQJLA51l/ja/svegcw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 31b845f7-876f-456b-81b6-f912efd0dddd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a/foo/bar

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
eyI9/4el7hM5bQyO7BVI8RtyB3gv79sc6ROJvivtQu3vWjnuu7d9tsoWgO+pe+r/6+IBOdHO6oxH
IRZ0GzDoTCsen5LbWTVk9FCtGW/scm4oitJI6wgcIG+tp5qgCZuaLTPEi9xXJJKsnUSAIdEcW66o
S5Fen2EiAn8iLrGbw+u1E+s7J+eR0GVAnE3Em/+ekEzr+L0JPI7SoohdNfXgENpZyw3l4TPHFnor
HQMTXWeAg55lr8ouq9ddaYVfNJtwYIxzas/xuK4ZJOJC3R6LvkQh3LFWemAPKyA2iHetZ+Hfu713
oPOXjsvvS4vo68240qtBPlfpGeUrYz+vujA3a7wAYyJhFB5QiU7mZy/VJz9SfrbMbCmJ9aHYSzy0
6NSbuODO54irV76M8LQJA7K2Vjz/XTt5a/6Td22AiMjinKF5S69OBj+3pyb4P3x1f/HvIfX/tIuZ
IUzhO28aKs71qlMSkLgDZ0/8SLYVgCuBHfh7kWbS4ucW4ClibcvPnHxYApUpYu457LqmA2zUhKAh
Xx13n5lnIshr/LCOofmELKs5vH2WWLsJQqWsLN97QVyIQA2tWP3j8N/MvWU9qkrAItbBm8ciigdi
bV30u/bo8LtUBmDs1tSuVsyeyZpVy5da6woIuaaUZbYFSuqg7jTp5M2q6aTq1EsBE0T6hMBsDaLF
mtDr3zYVv6Cp54vpDWeXtOXNquLybxe/B6ZhmuD1mD1I2lRk/gSXlSkEQOy/GAXcYtDbn2K/0yq4
LNiPsyW/tE5OoTMTMrbhNhS47i4q/++hhDcQGvjaiAYpq9ErB+IERIyecXbRyTAa+WlOBuX8jizp
7i/tr5pVcxgs6obkti4ytKqhi454z7oH9SCPjIIhLR2lQRmyFpTySP1dpd+pNUM7G1E6WgKdcR50
5rl5xueWCrxpP3QVgJ4Wr0ORGirbXsDcU3Aw59IaB9D6PTDaeIIWx5siP/XPJZuzJKu/DFb0mYj5
nXJ2ZSPqTjikGkJtOzbAe1OPuR7KDC7VfMInW/p5BqSn4dsPn2F3N/G9KwtYRuh1/pEDZeBqLpBE
oelgw/I9KhSexVpasdvxF4EsDeEjfDbaslxpdqDEPbJLy/53F3T+gAH2uoCNGk21EU5ePSGuISWy
hRGW07Nz2oioD+Xdef8MLo3gLMG2TZcPs2VSZQCRnKrZxZJjaKxOgt/35Qtn2JdPUg+TzvRj/Dh5
hh9NIXWHF3I7A7RtqcXgkqnivmeMp9vOAxPx/c61dshZ6uGMAGFqcM2ZK9Xi4qhJszxKgD3Q7d5E
fx1hlhmjho3sE77kU5FId06Z83wG6yFqqEqSa/WKiP0DSIFDCNm09aVH9s7qZF+qAgnvNvliPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25D4003EC9AD420"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: NNraAQJLA51l/ja/svegcw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: da9782e2-f173-4718-8d1f-71a9cfb714b3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a/baz/foo

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
eyI9/4el7hM5bQyO7BVI8RtyB3gv79sc6ROJvivtQu3vWjnuu7d9tsoWgO+pe+r/6+IBOdHO6oxH
IRZ0GzDoTCsen5LbWTVk9FCtGW/scm4oitJI6wgcIG+tp5qgCZuaLTPEi9xXJJKsnUSAIdEcW66o
S5Fen2EiAn8iLrGbw+u1E+s7J+eR0GVAnE3Em/+ekEzr+L0JPI7SoohdNfXgENpZyw3l4TPHFnor
HQMTXWeAg55lr8ouq9ddaYVfNJtwYIxzas/xuK4ZJOJC3R6LvkQh3LFWemAPKyA2iHetZ+Hfu713
oPOXjsvvS4vo68240qtBPlfpGeUrYz+vujA3a7wAYyJhFB5QiU7mZy/VJz9SfrbMbCmJ9aHYSzy0
6NSbuODO54irV76M8LQJA7K2Vjz/XTt5a/6Td22AiMjinKF5S69OBj+3pyb4P3x1f/HvIfX/tIuZ
IUzhO28aKs71qlMSkLgDZ0/8SLYVgCuBHfh7kWbS4ucW4ClibcvPnHxYApUpYu457LqmA2zUhKAh
Xx13n5lnIshr/LCOofmELKs5vH2WWLsJQqWsLN97QVyIQA2tWP3j8N/MvWU9qkrAItbBm8ciigdi
bV30u/bo8LtUBmDs1tSuVsyeyZpVy5da6woIuaaUZbYFSuqg7jTp5M2q6aTq1EsBE0T6hMBsDaLF
mtDr3zYVv6Cp54vpDWeXtOXNquLybxe/B6ZhmuD1mD1I2lRk/gSXlSkEQOy/GAXcYtDbn2K/0yq4
LNiPsyW/tE5OoTMTMrbhNhS47i4q/++hhDcQGvjaiAYpq9ErB+IERIyecXbRyTAa+WlOBuX8jizp
7i/tr5pVcxgs6obkti4ytKqhi454z7oH9SCPjIIhLR2lQRmyFpTySP1dpd+pNUM7G1E6WgKdcR50
5rl5xueWCrxpP3QVgJ4Wr0ORGirbXsDcU3Aw59IaB9D6PTDaeIIWx5siP/XPJZuzJKu/DFb0mYj5
nXJ2ZSPqTjikGkJtOzbAe1OPuR7KDC7VfMInW/p5BqSn4dsPn2F3N/G9KwtYRuh1/pEDZeBqLpBE
oelgw/I9KhSexVpasdvxF4EsDeEjfDbaslxpdqDEPbJLy/53F3T+gAH2uoCNGk21EU5ePSGuISWy
hRGW07Nz2oioD+Xdef8MLo3gLMG2TZcPs2VSZQCRnKrZxZJjaKxOgt/35Qtn2JdPUg+TzvRj/Dh5
hh9NIXWHF3I7A7RtqcXgkqnivmeMp9vOAxPx/c61dshZ6uGMAGFqcM2ZK9Xi4qhJszxKgD3Q7d5E
fx1hlhmjho3sE77kU5FId06Z83wG6yFqqEqSa/WKiP0DSIFDCNm09aVH9s7qZF+qAgnvNvliPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C67A53A1920C40"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: NNraAQJLA51l/ja/svegcw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dc127879-b8b8-4aaf-b482-9efd4c807273
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a/baz/foo/bar

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
eyI9/4el7hM5bQyO7BVI8RtyB3gv79sc6ROJvivtQu3vWjnuu7d9tsoWgO+pe+r/6+IBOdHO6oxH
IRZ0GzDoTCsen5LbWTVk9FCtGW/scm4oitJI6wgcIG+tp5qgCZuaLTPEi9xXJJKsnUSAIdEcW66o
S5Fen2EiAn8iLrGbw+u1E+s7J+eR0GVAnE3Em/+ekEzr+L0JPI7SoohdNfXgENpZyw3l4TPHFnor
HQMTXWeAg55lr8ouq9ddaYVfNJtwYIxzas/xuK4ZJOJC3R6LvkQh3LFWemAPKyA2iHetZ+Hfu713
oPOXjsvvS4vo68240qtBPlfpGeUrYz+vujA3a7wAYyJhFB5QiU7mZy/VJz9SfrbMbCmJ9aHYSzy0
6NSbuODO54irV76M8LQJA7K2Vjz/XTt5a/6Td22AiMjinKF5S69OBj+3pyb4P3x1f/HvIfX/tIuZ
IUzhO28aKs71qlMSkLgDZ0/8SLYVgCuBHfh7kWbS4ucW4ClibcvPnHxYApUpYu457LqmA2zUhKAh
Xx13n5lnIshr/LCOofmELKs5vH2WWLsJQqWsLN97QVyIQA2tWP3j8N/MvWU9qkrAItbBm8ciigdi
bV30u/bo8LtUBmDs1tSuVsyeyZpVy5da6woIuaaUZbYFSuqg7jTp5M2q6aTq1EsBE0T6hMBsDaLF
mtDr3zYVv6Cp54vpDWeXtOXNquLybxe/B6ZhmuD1mD1I2lRk/gSXlSkEQOy/GAXcYtDbn2K/0yq4
LNiPsyW/tE5OoTMTMrbhNhS47i4q/++hhDcQGvjaiAYpq9ErB+IERIyecXbRyTAa+WlOBuX8jizp
7i/tr5pVcxgs6obkti4ytKqhi454z7oH9SCPjIIhLR2lQRmyFpTySP1dpd+pNUM7G1E6WgKdcR50
5rl5xueWCrxpP3QVgJ4Wr0ORGirbXsDcU3Aw59IaB9D6PTDaeIIWx5siP/XPJZuzJKu/DFb0mYj5
nXJ2ZSPqTjikGkJtOzbAe1OPuR7KDC7VfMInW/p5BqSn4dsPn2F3N/G9KwtYRuh1/pEDZeBqLpBE
oelgw/I9KhSexVpasdvxF4EsDeEjfDbaslxpdqDEPbJLy/53F3T+gAH2uoCNGk21EU5ePSGuISWy
hRGW07Nz2oioD+Xdef8MLo3gLMG2TZcPs2VSZQCRnKrZxZJjaKxOgt/35Qtn2JdPUg+TzvRj/Dh5
hh9NIXWHF3I7A7RtqcXgkqnivmeMp9vOAxPx/c61dshZ6uGMAGFqcM2ZK9Xi4qhJszxKgD3Q7d5E
fx1hlhmjho3sE77kU5FId06Z83wG6yFqqEqSa/WKiP0DSIFDCNm09aVH9s7qZF+qAgnvNvliPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1EEB61DA698FDE0"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: NNraAQJLA51l/ja/svegcw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f1fe53f0-74f9-450a-8c20-215b4a6e6bf3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a/baz/bar/foo

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
eyI9/4el7hM5bQyO7BVI8RtyB3gv79sc6ROJvivtQu3vWjnuu7d9tsoWgO+pe+r/6+IBOdHO6oxH
IRZ0GzDoTCsen5LbWTVk9FCtGW/scm4oitJI6wgcIG+tp5qgCZuaLTPEi9xXJJKsnUSAIdEcW66o
S5Fen2EiAn8iLrGbw+u1E+s7J+eR0GVAnE3Em/+ekEzr+L0JPI7SoohdNfXgENpZyw3l4TPHFnor
HQMTXWeAg55lr8ouq9ddaYVfNJtwYIxzas/xuK4ZJOJC3R6LvkQh3LFWemAPKyA2iHetZ+Hfu713
oPOXjsvvS4vo68240qtBPlfpGeUrYz+vujA3a7wAYyJhFB5QiU7mZy/VJz9SfrbMbCmJ9aHYSzy0
6NSbuODO54irV76M8LQJA7K2Vjz/XTt5a/6Td22AiMjinKF5S69OBj+3pyb4P3x1f/HvIfX/tIuZ
IUzhO28aKs71qlMSkLgDZ0/8SLYVgCuBHfh7kWbS4ucW4ClibcvPnHxYApUpYu457LqmA2zUhKAh
Xx13n5lnIshr/LCOofmELKs5vH2WWLsJQqWsLN97QVyIQA2tWP3j8N/MvWU9qkrAItbBm8ciigdi
bV30u/bo8LtUBmDs1tSuVsyeyZpVy5da6woIuaaUZbYFSuqg7jTp5M2q6aTq1EsBE0T6hMBsDaLF
mtDr3zYVv6Cp54vpDWeXtOXNquLybxe/B6ZhmuD1mD1I2lRk/gSXlSkEQOy/GAXcYtDbn2K/0yq4
LNiPsyW/tE5OoTMTMrbhNhS47i4q/++hhDcQGvjaiAYpq9ErB+IERIyecXbRyTAa+WlOBuX8jizp
7i/tr5pVcxgs6obkti4ytKqhi454z7oH9SCPjIIhLR2lQRmyFpTySP1dpd+pNUM7G1E6WgKdcR50
5rl5xueWCrxpP3QVgJ4Wr0ORGirbXsDcU3Aw59IaB9D6PTDaeIIWx5siP/XPJZuzJKu/DFb0mYj5
nXJ2ZSPqTjikGkJtOzbAe1OPuR7KDC7VfMInW/p5BqSn4dsPn2F3N/G9KwtYRuh1/pEDZeBqLpBE
oelgw/I9KhSexVpasdvxF4EsDeEjfDbaslxpdqDEPbJLy/53F3T+gAH2uoCNGk21EU5ePSGuISWy
hRGW07Nz2oioD+Xdef8MLo3gLMG2TZcPs2VSZQCRnKrZxZJjaKxOgt/35Qtn2JdPUg+TzvRj/Dh5
hh9NIXWHF3I7A7RtqcXgkqnivmeMp9vOAxPx/c61dshZ6uGMAGFqcM2ZK9Xi4qhJszxKgD3Q7d5E
fx1hlhmjho3sE77kU5FId06Z83wG6yFqqEqSa/WKiP0DSIFDCNm09aVH9s7qZF+qAgnvNvliPg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25E2B075C46D600"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
content-md5: NNraAQJLA51l/ja/svegcw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b37f7b2b-b033-47ae-be12-9e7d275906c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a/foo/foo?comp=metadata

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
etag: "0x2460D07D5FEB9E0"
last-modified: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b139939c-661c-475e-8f6f-2af5de2a40b9
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a?restype=container&comp=list

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
x-ms-request-id: 8543d96f-4a8b-4d50-b516-46c5ef389371
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-b92ab95c-b65c-d609-1434-d31cabd8471a"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x201D63A810BF4E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>NNraAQJLA51l/ja/svegcw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x1FFFCF0090F86F0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>NNraAQJLA51l/ja/svegcw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x25E2B075C46D600</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>NNraAQJLA51l/ja/svegcw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x1C67A53A1920C40</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>NNraAQJLA51l/ja/svegcw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x1EEB61DA698FDE0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>NNraAQJLA51l/ja/svegcw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x267C68264B32C80</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>NNraAQJLA51l/ja/svegcw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x25D4003EC9AD420</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>NNraAQJLA51l/ja/svegcw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:50 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:50 GMT</Last-Modified><Etag>0x2460D07D5FEB9E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>NNraAQJLA51l/ja/svegcw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:50 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-b92ab95c-b65c-d609-1434-d31cabd8471a?restype=container

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
x-ms-request-id: 0acc0f56-38e2-4d88-8a16-36039f56fa4a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:50 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

