## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c1cbd90a-a45d-4f97-86f6-c32722fa89af?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(True,V2027_03_07).StartCopyFromUriAsync_Source_IfTagsFailed
now: 2026-11-12T00:48:31.6544596+00:00

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
etag: "0x1D11AF2AF1EAC40"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aa9e970e-8dcd-41dc-bbc7-4219fdfae18b
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c1cbd90a-a45d-4f97-86f6-c32722fa89af/test-blob-d94c5c3c-3968-9025-84ce-587d84c62c45

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
gXfRwhyV5Adqslo9mQ4iT2ewGngGlA7RtDo8j0saysDJfaarKMeSp3dFb7be5/d1qwkV1Ku0P+xo
AA7iWFW8UOeacxtodiagHnIAwSVX8sxDxuNCBPYUFT65Qii5sE4iiR7OQ3TcDTXidbU4s33HEQ1B
n5JxeUvxhl7drjP+5m4k3jgGia5YZ7muYI5A22HA8jEadxG8sA/T3b0V/14B445HFNVFwIdf6TfY
whm8sav8HLwC5G5caC0oM6vxQmdarXwA+MaMejGpuo7Z4+32FisRGeKi/v8g6qynHI3cbqbQfhWc
vLjkb6GKWCngg4Q/MhyA4CiFt6594A0a5F6kzUznCWTYWVlzLKpAGKbWP2cnaOpwW41+SsZmH9yq
yopD5Yrc+HofZ9jCDLN+RJ8IpqCm8nxzNHK+ab6dcTp9yGIf/DIc+UbsBwERrU7a/wUnXng8BNcN
0LEYHY+7gvWdRURRXkht661Zuet7YYYj5Gm5dhPCQcSKESyBA9y3MYUMdGgKiaG9unLL4krskm4q
9TklAgvh2wR/xkwb6+fRoYhmb+0eGFvI/Lyg9l55nn++Vw6ikS55KphjisJUoc6K+kHChSKAC9zd
XQZPQOSmBSjNXZTZLg9Z7EVVuo2Yc1rtFvwctxhcPUsxxDQoKemzvYSahkM6scwxaJndK1BPRemr
YiroiU0PcCBIp2nbMMNbof0I/uwWsmQw609/fhL74n9Kfca/yzQ2ihUj8gljVjjWgolTRkb9lLDF
uJ3+j/IOTMXpkbP8nNbI0XPW8r9bzZUXqfyIp5w5TegW+RKWOPojFaVEecSE2uayinTSJqHwausI
5+b1haUor0TK5aLDMpl5st0aFlPQks8W1RwnZiZGJo8njVEULpAAG8mAufRE7ljaWXPE1lOXOFQX
37CIAUkdhL8TnKRIZIRMGfqJT9ja0ubDTAyzgVA7j1X8/E7gdxqAYzU1MFK0kvTud7xZDul8PA3J
xbQ8aQJu1wxPTGc1bKLgCOuipaGUD7oXxAmT4oFsgMBBFrJmQ/kzxllGZUaNuQoZeAX92ZdsNbX5
JKX42vWL48un9FbwecTxb95HTqp0igv+eml7bqco1OH8bB9UO+tjuoJ65cS0Kf5BC2q4JOYLhJmZ
+WCLEHQkfh908w2lnTPy45Mo+qVHSlFqOmI8cLD78eeFukKL16oNVWakQDXxm242xkBT4or0Uq8P
IdUR5w5veQIlH+LxZwvpGqQ+ogkbeJ70Bqlvpw5dkWiSe7bU/G1YNcczzHuMRF40asjltbCl86g3
HeFkANHzx455XuxVFB435mxC6KsjZ8FLOj1Gd9y37YgNnd+L8zX1PwXtEuVy31Wprs5DYwr8FA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E957F4A2D4B3A0"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
content-md5: eZV5EvPvxTOhh8rZRpdr+Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f9fe8144-afde-408e-8832-303c2fa51b6f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c1cbd90a-a45d-4f97-86f6-c32722fa89af/test-blob-c51820b5-ad93-b24f-c171-6347763fabf3

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
N0yppjVV29la6JzJDXOJfRCJKmvab2KStTtQcw6Y3moD2wwXYVbeYEQ/aqsQhqRN6OY27RU/GMfq
FvH6BGfLwgkxxjFnchu6q8onmgW2gi+WAosnYfFVw8JFLUpl41vcdKei3r9z5nbKe0JLGH3CM5TC
ZAHco2EX3AJuIUXQVcduSiZdE6NvIhwVXOWvCqtEg/m2on5ZANBGigK9BMQw+SZ63M1XZB/wU0Hl
xkZ7aNFXKZ5LGrJJFElWFomhsR5X5GK/NS7d7R7ZxU88dDqJyyIwZdom5N9zMMiDAE2WT6EjjuHk
uzOjeTt/clVjDKAPzEtmcUtEMP+DTARlWu3RQ3auGeVYpRDvjOyep3KKDyQnczMCL95V317hYG4u
PR5Ori7ftfO6tyc7d+RfpYmN+TzfPua5zhOXWDmHdkShwE/NT/lEqloxbbwMxrj69jnUVGcyTv84
ld8bR1y5MkDimbaUkVWQSE7hrtAprAhanWIAsyLdb3FPlboZKGP+dzp8KiwBZWTkRAsYUKAuDujX
wKn6uX8dBSpFRfybdiDq4zaVrYLbWTj9G24WxB/RIIbSQmi5BL67XiUCvCBoSM7rLm1pmGFl/Gdx
/J0RB0ALdCR1yTO3Md532k5d2J0YlNOgKpaxZ4clbEYBSAghqlfk9kf783+aNP2O8b0SByPKWWfJ
cNyqWQycT1zstunWVjD3eeFVHKFTBfaZI3XJE2QjN+6gVzl6Op06X6MirX0Tt5uNGo5BdD3Fdmvm
EDaX0jz4yX/6Nv73fT5EGr3+MVd4hWvZPPjV4cKx2uHOlClno4xmKuT+GYGdlZ1P/FqAxkQTbYvK
vZVEIue8SVscKegV3XYwmAdzemzpPKdaheRnMBOduyeenOX2Igf8Qc8mgGy1Oh/jTy49n/Mf4IDu
6ZwCVRhHf27BdkCQOXYAdjicw7w7pUrFg+DlYBs0f7tlCDlq+uy23wD99MTeUxa4PCi6gh3DskNS
PdE3YR9SjPeEKzA8lXxL5eS8PbGG5jDKLSPzefyeoVX1GLwbfn3gq2fMWifle6erbpw5B3WRy1ag
bTT8XxL75oraR33AMGZn25JKuowJ5LJ7RwtfZJngZE1mexFI40tU0XOdCzQp6z420iviRhDKlomC
gBcHm4Lw+uIwWrVVHvdG9ukYbNl9UVzNKZFu/h08m+SHxWM0TDXxrRBR+ZGI4LMzm1AnsSqwBC67
OnLwgvzF877RzliUEqm0J7/ILFjLREjdOmLMFem518A0eBHCACsUjAbStxJanoinc4pr59jW7/Yp
EkeZ+N7VF/aYYJqX8SaUtJ9R+Iw2gpvZJaJeTe/oXYgbmO3jepQn/Z8bwj7uD4Fk1zM4hPdp8w==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x258F40A7C351440"
last-modified: Thu, 12 Nov 2026 00:48:31 GMT
content-md5: 5rAp/12HVSjPZcthzOtmDg==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: fcf64e6e-9691-4363-a4c9-f5e68a26d5d6
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-c1cbd90a-a45d-4f97-86f6-c32722fa89af/test-blob-c51820b5-ad93-b24f-c171-6347763fabf3

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-c1cbd90a-a45d-4f97-86f6-c32722fa89af/test-blob-d94c5c3c-3968-9025-84ce-587d84c62c45
x-ms-return-client-request-id: true
x-ms-source-if-tags: "coolTag" = 'true'
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
x-ms-error-code: ConditionNotMet
x-ms-request-id: 2dd68e74-b2ac-4b4e-a2f5-e42adb2a3174
content-type: application/xml
Date: Thu, 12 Nov 2026 00:48:31 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-c1cbd90a-a45d-4f97-86f6-c32722fa89af?restype=container

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
x-ms-request-id: 7afcb104-1dc1-48cc-bf72-cffe2c1ac36d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:48:31 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

