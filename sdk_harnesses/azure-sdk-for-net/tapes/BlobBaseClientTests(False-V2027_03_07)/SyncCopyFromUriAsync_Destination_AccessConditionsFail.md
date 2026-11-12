## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-c0996ba0-1206-2734-95b5-ff5df0879408?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).SyncCopyFromUriAsync_Destination_AccessConditionsFail
now: 2026-11-12T00:47:20.4568823+00:00

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
etag: "0x20CC1EB8D46AB20"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d222d784-10cd-4c92-bc35-cb344ffc13ed
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-c0996ba0-1206-2734-95b5-ff5df0879408/test-blob-a781b438-411f-9b17-5ead-dd455d1e09f0

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
EevrNssbR7u/f05zYkZMxV67Lu8xScsOWQ8AIuKq/Yg1XDmgtV4ZhSTeAYbDwMROaDr+NFml18gf
3dy7GiTZFILGPgYNrBAAoqnKU0hESphLsbmorMgvkIVxgNeBXWoABOwD/YK+Qbwq/ZKv24OA2pND
cGlqMWi6l62Bmys4f0U/yk5bQEwWjG/9fq41gLUB8KVEPewAldOESWXUPaWQ8X5NbxA1JJlGLeP5
bbO6hBf4gKuG9EJZPjR61/fmQU/KbIwv6BCky8sL/Q8IBiggysRO3Lz6Cv079DDcuk2iX+uULwAm
ipwHU7TfevcyUDcMWg0ymGWSz2GP9PTfyBB+aZ0kdNcn+T8oR4gIG5AFCKP40GBAcMeGAWCel5Wo
J4ujYRBaDtxg5GDNCVHcirTRietQ5viwPfnVnXN3iWKqgB/9ZLp/q/nHmOz/c2Z2qnaszQ2qV0CT
8yQXhHBp6Vr+I4kx3iX5Ud7xiU4MsMmTX/P8yrtU/yjfanGWZyeJXa6RAVDcRMtRsnsvuM7xh0Na
hCR9bB6fqSNhUnS0Y+q2aCugeq54thooqxhAJUda7eMuO+MCC/GP8lgtevJXnE6ReVCiUQyU4c0J
VMEGXoPcB2SQhScHs1w6EIhWSzwn0Q7Jr6z3t5zXmlkV+bYviZPUUXOOxhYmisXzZ0CDPZaR4YOz
PK/X5U/IuevO8bqmC4f1gvrImQr3oiXmA09bU1zDhBcyfE3k/GwjxQwrWJgLTVy5jrucyEh5u5mK
8OH/bGaPCm2jc445EIWOpdP9zEqM27bzosShJ7vOucGzWguLJFmmm04rZ9rOf341DSN0e+9P/RQq
DMqh7uOx1LnNhbZ5A4B6VzH7YHPcJSJGaxmYWT3SZFz2YBeOBK1repMgAPnHuwqi+iS9U52hTeeo
W4LJGXp7+yFag6Jp61KDkObgvCQofrAO9V8ZFBG/VRMw5qkqoWAYpAXYbThoOQ7SOsK2wJHDf9zS
uyMaYucPmi2OOAWoWe6FyBceTxF4pbxRR9pOCZWBbWfNWOY9/UIeydIK2QAJKeDTMPh5pC/KWRVn
yRsNwJGXDcud2wAISMrVAIY+bcy7Rx35e9idCMk3Av7R1TMnEAhAcsw1a03fy+ctpKOpi+xIrIL9
E0W5+gQBZtgCNnKWrvB+/vr/hdzQGa/wb2MmjnYSiCmxKfzCh3jHMwV03ZR1l/ayK43ySSalLfqW
yIuh29di765I5ITzu3aCN1HWWzsbe9dtc2PpID8DDPwCLL/sJlgtEu7mLLJxv28XbxHUztK+ekyz
M2h0ec9uRdiI8I63lRH5qUhNNE8l+7Pz0bAtLj0qQ7FyOPLvuJked+ba6c7hX9kA2iWJcUb9jg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21A253306859200"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: njQq+G1CjApPEBDZhj8Ziw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4d46da37-76ee-44b8-b059-96991775cdb8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-c0996ba0-1206-2734-95b5-ff5df0879408/test-blob-68bd2eaf-124a-12e5-72d6-2d5317a0d16b

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
EevrNssbR7u/f05zYkZMxV67Lu8xScsOWQ8AIuKq/Yg1XDmgtV4ZhSTeAYbDwMROaDr+NFml18gf
3dy7GiTZFILGPgYNrBAAoqnKU0hESphLsbmorMgvkIVxgNeBXWoABOwD/YK+Qbwq/ZKv24OA2pND
cGlqMWi6l62Bmys4f0U/yk5bQEwWjG/9fq41gLUB8KVEPewAldOESWXUPaWQ8X5NbxA1JJlGLeP5
bbO6hBf4gKuG9EJZPjR61/fmQU/KbIwv6BCky8sL/Q8IBiggysRO3Lz6Cv079DDcuk2iX+uULwAm
ipwHU7TfevcyUDcMWg0ymGWSz2GP9PTfyBB+aZ0kdNcn+T8oR4gIG5AFCKP40GBAcMeGAWCel5Wo
J4ujYRBaDtxg5GDNCVHcirTRietQ5viwPfnVnXN3iWKqgB/9ZLp/q/nHmOz/c2Z2qnaszQ2qV0CT
8yQXhHBp6Vr+I4kx3iX5Ud7xiU4MsMmTX/P8yrtU/yjfanGWZyeJXa6RAVDcRMtRsnsvuM7xh0Na
hCR9bB6fqSNhUnS0Y+q2aCugeq54thooqxhAJUda7eMuO+MCC/GP8lgtevJXnE6ReVCiUQyU4c0J
VMEGXoPcB2SQhScHs1w6EIhWSzwn0Q7Jr6z3t5zXmlkV+bYviZPUUXOOxhYmisXzZ0CDPZaR4YOz
PK/X5U/IuevO8bqmC4f1gvrImQr3oiXmA09bU1zDhBcyfE3k/GwjxQwrWJgLTVy5jrucyEh5u5mK
8OH/bGaPCm2jc445EIWOpdP9zEqM27bzosShJ7vOucGzWguLJFmmm04rZ9rOf341DSN0e+9P/RQq
DMqh7uOx1LnNhbZ5A4B6VzH7YHPcJSJGaxmYWT3SZFz2YBeOBK1repMgAPnHuwqi+iS9U52hTeeo
W4LJGXp7+yFag6Jp61KDkObgvCQofrAO9V8ZFBG/VRMw5qkqoWAYpAXYbThoOQ7SOsK2wJHDf9zS
uyMaYucPmi2OOAWoWe6FyBceTxF4pbxRR9pOCZWBbWfNWOY9/UIeydIK2QAJKeDTMPh5pC/KWRVn
yRsNwJGXDcud2wAISMrVAIY+bcy7Rx35e9idCMk3Av7R1TMnEAhAcsw1a03fy+ctpKOpi+xIrIL9
E0W5+gQBZtgCNnKWrvB+/vr/hdzQGa/wb2MmjnYSiCmxKfzCh3jHMwV03ZR1l/ayK43ySSalLfqW
yIuh29di765I5ITzu3aCN1HWWzsbe9dtc2PpID8DDPwCLL/sJlgtEu7mLLJxv28XbxHUztK+ekyz
M2h0ec9uRdiI8I63lRH5qUhNNE8l+7Pz0bAtLj0qQ7FyOPLvuJked+ba6c7hX9kA2iWJcUb9jg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1D96CC0A2566930"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: njQq+G1CjApPEBDZhj8Ziw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3672798f-0461-40f5-8ad2-203b17fe8803
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-c0996ba0-1206-2734-95b5-ff5df0879408/test-blob-68bd2eaf-124a-12e5-72d6-2d5317a0d16b

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_4
If-Modified-Since: Fri, 13 Nov 2026 00:47:20 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-c0996ba0-1206-2734-95b5-ff5df0879408/test-blob-a781b438-411f-9b17-5ead-dd455d1e09f0
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: b7f33cdc-3051-4952-9f7b-25acdbf8e107
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:20 GMT
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

## Interaction 4: DELETE /devstoreaccount1/test-container-c0996ba0-1206-2734-95b5-ff5df0879408?restype=container

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
x-ms-request-id: bf316664-7ba1-4d69-8a61-f08e0fc428dd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-3bbaa974-f237-36ff-cf3f-8b21041a7ce2?restype=container

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
etag: "0x1D42A524542EDC0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b6468825-b928-4e50-95cc-707d40882783
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-3bbaa974-f237-36ff-cf3f-8b21041a7ce2/test-blob-791a7eee-2aa7-8535-61ad-ceff577e935b

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
0TTaQoiURCbPbjRIE8ODvdtx0LNjzri8L4eZC4bDDlhZSoLixo/j32WTa8m9tyILu81FkknJfgJ8
HRMB+zifC2Dc7slAoPdMjvBN0GLv/nhkjVC5fnsOkMyAZqh74eQt9GBo4chZyxrW+QRYfK6fjB6b
nG3o5o3kzV78wDpO0KwMINsChh2vC8I14oR3thQe4NqJ4ER3RA7SgxNpXArghyhXTFvSnQUB65Gr
swMIbRZK3uBgxe9oldvNLwMJRq64VFpbH2q4S0LUiPWzzJEKyRb8H34pgMI477eABG0C96Xi8l6o
rE2skpKeiz36tMhKwmXsDSYwjtSYIzCzOEfU0ZBQ0dkyYh3IUI3si/SFPjruNkEIFep+sWOKEIkd
+VlLybqsquPvF2BIJLyZRAPfEuT1xQEFzLum0R91qFKTq1czoME62ZNX/h7hv/Et5W1fqv2kJzNY
Rv3+BtjDeW4OtXllZaNCpTlRncbjIwzKeeyyFv5U7oMj21rDPNK6lISw0gp4x4DJHQXDU4ptdCLw
M4zsEGNwucb2QopJfmhmlghCM1ACUbFr6Pj4kZr4tmY30ghGzoMhPxlDgoT2gJ6cXL2BK0HR7uHb
gCdqdygs/YwjEaxfIMeFIfM3v88tdWhaWzTcd4skZuQnak1btsfxFoX30m7yPTv2/ApOmi4Srgu/
EBzzT4YB/qvHOLV6KWorRqhKNaP5aB755nqB1su1FLxCnKar/cb/9tPDKgSFe9OfIlOGx3hnxaf9
+mkLgCjfESP5OIzEgEjhSz7PNT0Zc2qn4bN4L0xE2tf+rQNd9HWq5BngjENH2qILpHw5mI9p5If+
Y551Z+LWtV60xtJEhFfJJFEkOOYnYAcQbIrQCkFHlMl8XpDXNH03CtfkkhTQxiAlcHM+Raug1gOX
ZfpXBqocbTEIxyXG8e/T7S4PQ87yP6VqqpnOCU8e3IiNP8+D3wMsyCTjx/76Xn+Dalh8kZM0pCVU
7FsRTmTh6uudObEgUA0r4nupD3emcEwaSp72oUr0WJupLvOnG3nAAd0TXSXNYxpLUa4Yi5StrnwP
9wPF6kmgqOAWdiIag8cB6A6akxInTOaDq0+c3M0G/IB2mCN2+xaUcrREt+33MM7nF6KGExpp56oc
QT75BMsTD3qio+qji+33BiFe4pX5i3uBtMUqgOllDLB5WbnXmm3oMadzVYzjQ4y1jgz4CwQUIrbD
d08G6I+QPJc6KTE0IGuzdbHuhjbunnE5dfHcbAGrZTYDEyId4kgY4hn1qRlagW6hRZVTJpx/1dne
zXOdtM+WjsT7MAxIlpNp1qQc+PRX3/SDOydrWD+agz5JPhTVei1KXxpVXlBhWK4C6U/3Y9zkhw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x226BAD77E30E7A0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: flFu2kzU+0l6t6jjiHANhA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 22a22fde-2fed-4cf0-a73e-7039d6ddc05c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-3bbaa974-f237-36ff-cf3f-8b21041a7ce2/test-blob-da99d277-8002-21a4-e279-696eefa21f61

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
0TTaQoiURCbPbjRIE8ODvdtx0LNjzri8L4eZC4bDDlhZSoLixo/j32WTa8m9tyILu81FkknJfgJ8
HRMB+zifC2Dc7slAoPdMjvBN0GLv/nhkjVC5fnsOkMyAZqh74eQt9GBo4chZyxrW+QRYfK6fjB6b
nG3o5o3kzV78wDpO0KwMINsChh2vC8I14oR3thQe4NqJ4ER3RA7SgxNpXArghyhXTFvSnQUB65Gr
swMIbRZK3uBgxe9oldvNLwMJRq64VFpbH2q4S0LUiPWzzJEKyRb8H34pgMI477eABG0C96Xi8l6o
rE2skpKeiz36tMhKwmXsDSYwjtSYIzCzOEfU0ZBQ0dkyYh3IUI3si/SFPjruNkEIFep+sWOKEIkd
+VlLybqsquPvF2BIJLyZRAPfEuT1xQEFzLum0R91qFKTq1czoME62ZNX/h7hv/Et5W1fqv2kJzNY
Rv3+BtjDeW4OtXllZaNCpTlRncbjIwzKeeyyFv5U7oMj21rDPNK6lISw0gp4x4DJHQXDU4ptdCLw
M4zsEGNwucb2QopJfmhmlghCM1ACUbFr6Pj4kZr4tmY30ghGzoMhPxlDgoT2gJ6cXL2BK0HR7uHb
gCdqdygs/YwjEaxfIMeFIfM3v88tdWhaWzTcd4skZuQnak1btsfxFoX30m7yPTv2/ApOmi4Srgu/
EBzzT4YB/qvHOLV6KWorRqhKNaP5aB755nqB1su1FLxCnKar/cb/9tPDKgSFe9OfIlOGx3hnxaf9
+mkLgCjfESP5OIzEgEjhSz7PNT0Zc2qn4bN4L0xE2tf+rQNd9HWq5BngjENH2qILpHw5mI9p5If+
Y551Z+LWtV60xtJEhFfJJFEkOOYnYAcQbIrQCkFHlMl8XpDXNH03CtfkkhTQxiAlcHM+Raug1gOX
ZfpXBqocbTEIxyXG8e/T7S4PQ87yP6VqqpnOCU8e3IiNP8+D3wMsyCTjx/76Xn+Dalh8kZM0pCVU
7FsRTmTh6uudObEgUA0r4nupD3emcEwaSp72oUr0WJupLvOnG3nAAd0TXSXNYxpLUa4Yi5StrnwP
9wPF6kmgqOAWdiIag8cB6A6akxInTOaDq0+c3M0G/IB2mCN2+xaUcrREt+33MM7nF6KGExpp56oc
QT75BMsTD3qio+qji+33BiFe4pX5i3uBtMUqgOllDLB5WbnXmm3oMadzVYzjQ4y1jgz4CwQUIrbD
d08G6I+QPJc6KTE0IGuzdbHuhjbunnE5dfHcbAGrZTYDEyId4kgY4hn1qRlagW6hRZVTJpx/1dne
zXOdtM+WjsT7MAxIlpNp1qQc+PRX3/SDOydrWD+agz5JPhTVei1KXxpVXlBhWK4C6U/3Y9zkhw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2125795CDD494A0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: flFu2kzU+0l6t6jjiHANhA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 42358d53-16ac-40fb-9b3e-ef7a1160672b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-3bbaa974-f237-36ff-cf3f-8b21041a7ce2/test-blob-da99d277-8002-21a4-e279-696eefa21f61

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_9
If-Unmodified-Since: Wed, 11 Nov 2026 00:47:20 GMT
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-3bbaa974-f237-36ff-cf3f-8b21041a7ce2/test-blob-791a7eee-2aa7-8535-61ad-ceff577e935b
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: a98491c8-4b9b-42ec-b5f8-3ffc14db7c75
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:20 GMT
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

## Interaction 9: DELETE /devstoreaccount1/test-container-3bbaa974-f237-36ff-cf3f-8b21041a7ce2?restype=container

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
x-ms-request-id: 32ef88ae-1732-4ab5-b57b-7afe89023aef
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 10: PUT /devstoreaccount1/test-container-5626b764-b45f-34a2-e4d0-fca292585783?restype=container

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
etag: "0x23E23AF2B514280"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 61320694-af67-4443-96e2-22918b737ce3
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 11: PUT /devstoreaccount1/test-container-5626b764-b45f-34a2-e4d0-fca292585783/test-blob-ba6bd748-0b2b-0923-42db-9dc15f95d445

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
VvSAkUMKhW3a+JYuwceVvo1tmqBYPPzCL2T1MoMBj4oh5hj7Io4dWjK4fGYedHMdOj0UJb63Khn3
vWHfFVLq2GkMDNuvmpz/UEBtoMCVpLvx1/dF7WrLarv+A2UtPUXfzqP9EWiXbp+hFdV9SYpZYRim
7j1apOv/QKEgsJY20RL7jtEcmJJTWWlYpNiVTSExpKFNh08HhCm4/tHGd70Ia0PCgru4PMmFUpTT
AgASafKA7gz16UrC8wmnZJrBjOKsTziV0stleGfYxzS7NIEppZTeRoixE4H4AI+yENgvxMayJ7PH
fZcnGnakHSEWB7+Hfr4F4kZZ+ju3nNE7s2eOqANuCAzOYif8tysSDfZg4vnPKpIaKeF/WCx4EOHF
62YOFXQdqP6yuRyWCCoaR+1EVrrYa4nVdH4i7rDfVlFGN8zFA/iCQzn6HXF2gyC2ZBE/M7om7H/d
OaD1+7lO02LKUNFeVUP1whOA3k4XXvFda4menyKXH0pM58pXjEiArEkOqzNPWA7OSnCnpQ4wxdqv
l48vrzNAMzCHEm54nTbKADIECbO9DhN70FWy8Hk8GyHvqPS4UPwWzngCyEagVaw53KXbK7wn8Yl8
tN/djUK2SvZMifVCEq827jo6u0bN2nupeBTUYPBkyLZrO5wcOEA1S31PVMy398n2pT2C7DZCr9pk
NBUu4uoG58A+1tYTGbX5BW/JfYav8YBK3rqy4tyAKIzCuAQrBmmSSWwLeCHy4oyHiObGeTJTtEKU
5AQwUwXjvq1KUGCxzf4GNjMZo3lfV/stK1r1uq9ZbgPBlyJkYvZnKLlzp5Is1brnv0L+OhHINYwJ
Aieq7gT+8eJc8DbcotQ8snvA67BpAVWfDfptWjTy+GGVW2DPvDm1dbavz+WDCx1uwoeWCEncnwHR
C+AJkJauavfURkZ0bfZBC3b5uTFwGwLd/pisW/AYubte/bFZq+QfAGXursTW+lSRVf3S4uXPYe/e
LJH+AQ4HvI2KFXBE51+R2rjMgmw9BgRDGwbyRdfWj5vCen5SIf9W5vI3TOXkTG2dQQcsAt+CoCWN
uuUIFHe1tIXUgm3hPrm5dpt6BrofXs+ZVQTPqY28QNpYxWYZTtJ7gZhfEMn/vAJOc4tEB5prbVwV
br9y5gr4F0KTiHlSnyjJ/4Qhv04GmZkBgDYBeDg/7VcKBN8TCJuNZviGbDSJ/NNjewgVSq4OD9Qm
cGXU958KU5shSJtItvfplFhVfyxkeIRinfwwKqKp/PQK7Jc1uG9ZfBmZaLM4G8UQLLVVuZCowfjh
clqi2Sn4d0ymPclgtNvp+wISyxDQKYI3H/3sVENkYiufVEYVtqLwofBnkt38sHjaa72NlfXnEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x234D9CE28C86340"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: M2dTdncQzlqoIagAWXke0Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a01a0654-d3d4-4b9c-ae88-e63b4880639c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 12: PUT /devstoreaccount1/test-container-5626b764-b45f-34a2-e4d0-fca292585783/test-blob-202a225f-9769-3ba5-6e85-12e886d6cd36

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
VvSAkUMKhW3a+JYuwceVvo1tmqBYPPzCL2T1MoMBj4oh5hj7Io4dWjK4fGYedHMdOj0UJb63Khn3
vWHfFVLq2GkMDNuvmpz/UEBtoMCVpLvx1/dF7WrLarv+A2UtPUXfzqP9EWiXbp+hFdV9SYpZYRim
7j1apOv/QKEgsJY20RL7jtEcmJJTWWlYpNiVTSExpKFNh08HhCm4/tHGd70Ia0PCgru4PMmFUpTT
AgASafKA7gz16UrC8wmnZJrBjOKsTziV0stleGfYxzS7NIEppZTeRoixE4H4AI+yENgvxMayJ7PH
fZcnGnakHSEWB7+Hfr4F4kZZ+ju3nNE7s2eOqANuCAzOYif8tysSDfZg4vnPKpIaKeF/WCx4EOHF
62YOFXQdqP6yuRyWCCoaR+1EVrrYa4nVdH4i7rDfVlFGN8zFA/iCQzn6HXF2gyC2ZBE/M7om7H/d
OaD1+7lO02LKUNFeVUP1whOA3k4XXvFda4menyKXH0pM58pXjEiArEkOqzNPWA7OSnCnpQ4wxdqv
l48vrzNAMzCHEm54nTbKADIECbO9DhN70FWy8Hk8GyHvqPS4UPwWzngCyEagVaw53KXbK7wn8Yl8
tN/djUK2SvZMifVCEq827jo6u0bN2nupeBTUYPBkyLZrO5wcOEA1S31PVMy398n2pT2C7DZCr9pk
NBUu4uoG58A+1tYTGbX5BW/JfYav8YBK3rqy4tyAKIzCuAQrBmmSSWwLeCHy4oyHiObGeTJTtEKU
5AQwUwXjvq1KUGCxzf4GNjMZo3lfV/stK1r1uq9ZbgPBlyJkYvZnKLlzp5Is1brnv0L+OhHINYwJ
Aieq7gT+8eJc8DbcotQ8snvA67BpAVWfDfptWjTy+GGVW2DPvDm1dbavz+WDCx1uwoeWCEncnwHR
C+AJkJauavfURkZ0bfZBC3b5uTFwGwLd/pisW/AYubte/bFZq+QfAGXursTW+lSRVf3S4uXPYe/e
LJH+AQ4HvI2KFXBE51+R2rjMgmw9BgRDGwbyRdfWj5vCen5SIf9W5vI3TOXkTG2dQQcsAt+CoCWN
uuUIFHe1tIXUgm3hPrm5dpt6BrofXs+ZVQTPqY28QNpYxWYZTtJ7gZhfEMn/vAJOc4tEB5prbVwV
br9y5gr4F0KTiHlSnyjJ/4Qhv04GmZkBgDYBeDg/7VcKBN8TCJuNZviGbDSJ/NNjewgVSq4OD9Qm
cGXU958KU5shSJtItvfplFhVfyxkeIRinfwwKqKp/PQK7Jc1uG9ZfBmZaLM4G8UQLLVVuZCowfjh
clqi2Sn4d0ymPclgtNvp+wISyxDQKYI3H/3sVENkYiufVEYVtqLwofBnkt38sHjaa72NlfXnEA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2675E1277BDF5E0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: M2dTdncQzlqoIagAWXke0Q==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4fc00923-8da1-4c74-81b7-ba0774c6de0c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 13: PUT /devstoreaccount1/test-container-5626b764-b45f-34a2-e4d0-fca292585783/test-blob-202a225f-9769-3ba5-6e85-12e886d6cd36

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_14
If-Match: "garbage"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-5626b764-b45f-34a2-e4d0-fca292585783/test-blob-ba6bd748-0b2b-0923-42db-9dc15f95d445
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 7159aa09-9205-43cd-bcd6-6f0687d10d83
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:20 GMT
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

## Interaction 14: DELETE /devstoreaccount1/test-container-5626b764-b45f-34a2-e4d0-fca292585783?restype=container

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
x-ms-request-id: 7590e225-9926-466b-91f2-d571c2acee5c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 15: PUT /devstoreaccount1/test-container-3dfd43b7-e84a-95c4-cd5d-50015eef1845?restype=container

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
etag: "0x2327DF38CAE9620"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e89af5bd-719e-4be5-b91d-4fa8ccb91591
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 16: PUT /devstoreaccount1/test-container-3dfd43b7-e84a-95c4-cd5d-50015eef1845/test-blob-24a8c99e-1c6b-6d0d-e9d3-095072e6c419

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
l3cucsrHprEyL0ul+DqDaw5mCRuXlvp2XZRSDEej3H5tzVAOqFps8J1MCxudH52S2uTz+Ob8rQF8
txQ1dJpqj1PMNyvqdMKz+hl+S4vf2T73vzJir+SYcR9OkvFFNnsD4nzH0OdxqGUiP/7NfWJ2nN3W
PrRoB99vNMYMm+LQbsSde2kOFwlWhRfMP2/my/O82PUUbvfGmtqcWJwhZQyDUtE6LwL4Z4TTgLid
m8dwiWjTT8Psu//M1+COcr9tNB8KSe2dq5zwxHBxQO0/Kf8SK88zThZJlpbRblgiafXFZkyYklLa
0t3L4otSe3oSjK7gfEbvOeUJwLJXzD1Ezlp7q9qhppatOFnyZ2yL9xsbv+GqQe2u1ixmj9Kfggaf
hxQw18+gcOYXM0Ps/NF5fsmWPAxcmoxszdWuOhbEDbVTU+BXWiBMe076kg2qwdla7BEICUb5Qu2H
xAn68jbQUyaNmanxISOpSsG+Ygh+wgv7U00EuwNvWhDyz5YWUYkYKj7nHCgvacvuX76FOuDlCQL+
/p7oy5giHj+Z/lGNk/g3pjfJl6XjzOmCFlxF6h8vDcaUF1PqL1+mxP7olmt5YMvGTZSoG3JcGjK1
ZbQ73TQfafCL+XulTXbYI9Kn+jV+CbaQfpyLhvFTN/0gNMqqaufKySx67WdQIP8e0PigtSD8Nlv+
q16XlOP+N8F+hBisLbnr3DEJBBxOQF6cbLb5s4LdJP5urL+IMjVIe7Wm0pzmcqI/tdjv8jI/r2oA
+ictBYM+oGAaPYD5Yqn7wIlmqG7CtvoTuv6q7jHLL/1UhzgNG3UyZzE7yzQhRVIu8zGp2Ab8PkQs
GUuElLIuTw6Dpdpx7qUTNEE8hurG8nSse/sAIlb3V0nz4AEqrdJ+DXwmnp93vQSMlqTEv7haZifW
2Bm3Liy3jE6RfQ2j6Idvvnhtn1PUNL72c4yxMpeRmXnaVNS5xt9PbhFR5j/26K0dVQE/7MfTAaNa
wbqgBlq2/+OTyZOytfeZHjFCg05//4velNyWUa2yBlMxXgUkrmi3m+ZbYx8Za58Jpc6VkX5V28Ev
wnF+IK024cJAgVfydG/JiudnI5xrxCk8jKzfHHXU24JD9ez2OXo4JIJd2epIFzBezAaW7rclw/1I
QZQBVsRNbKXUr3+C0lFtLv8aDus/83V7gFBuPu3LHTHurvfmN86+D21Ec2ix3Pq1Kb+4C7USCU0f
htV03y23CZFOkyRZhvcwXP5++oAMyqRVuBQtEhJ73KSpx7H4SjA/jGrWYkjVW6PIh6+2kw7NErsx
HiYZifZ+0rZ/r79GOBLOP20VNWdcgFxxZYtixUmW3LX1xisKJQJzWJCRVqzkgk6d6FSht9xT1Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FCB95866062800"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: aYH1drHc46w35664FRH0lQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 09047738-e4c7-466d-a8d9-819d2f0b4e96
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 17: PUT /devstoreaccount1/test-container-3dfd43b7-e84a-95c4-cd5d-50015eef1845/test-blob-d7dda16a-29ca-8db0-e33c-c5ddf5f524d8

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
l3cucsrHprEyL0ul+DqDaw5mCRuXlvp2XZRSDEej3H5tzVAOqFps8J1MCxudH52S2uTz+Ob8rQF8
txQ1dJpqj1PMNyvqdMKz+hl+S4vf2T73vzJir+SYcR9OkvFFNnsD4nzH0OdxqGUiP/7NfWJ2nN3W
PrRoB99vNMYMm+LQbsSde2kOFwlWhRfMP2/my/O82PUUbvfGmtqcWJwhZQyDUtE6LwL4Z4TTgLid
m8dwiWjTT8Psu//M1+COcr9tNB8KSe2dq5zwxHBxQO0/Kf8SK88zThZJlpbRblgiafXFZkyYklLa
0t3L4otSe3oSjK7gfEbvOeUJwLJXzD1Ezlp7q9qhppatOFnyZ2yL9xsbv+GqQe2u1ixmj9Kfggaf
hxQw18+gcOYXM0Ps/NF5fsmWPAxcmoxszdWuOhbEDbVTU+BXWiBMe076kg2qwdla7BEICUb5Qu2H
xAn68jbQUyaNmanxISOpSsG+Ygh+wgv7U00EuwNvWhDyz5YWUYkYKj7nHCgvacvuX76FOuDlCQL+
/p7oy5giHj+Z/lGNk/g3pjfJl6XjzOmCFlxF6h8vDcaUF1PqL1+mxP7olmt5YMvGTZSoG3JcGjK1
ZbQ73TQfafCL+XulTXbYI9Kn+jV+CbaQfpyLhvFTN/0gNMqqaufKySx67WdQIP8e0PigtSD8Nlv+
q16XlOP+N8F+hBisLbnr3DEJBBxOQF6cbLb5s4LdJP5urL+IMjVIe7Wm0pzmcqI/tdjv8jI/r2oA
+ictBYM+oGAaPYD5Yqn7wIlmqG7CtvoTuv6q7jHLL/1UhzgNG3UyZzE7yzQhRVIu8zGp2Ab8PkQs
GUuElLIuTw6Dpdpx7qUTNEE8hurG8nSse/sAIlb3V0nz4AEqrdJ+DXwmnp93vQSMlqTEv7haZifW
2Bm3Liy3jE6RfQ2j6Idvvnhtn1PUNL72c4yxMpeRmXnaVNS5xt9PbhFR5j/26K0dVQE/7MfTAaNa
wbqgBlq2/+OTyZOytfeZHjFCg05//4velNyWUa2yBlMxXgUkrmi3m+ZbYx8Za58Jpc6VkX5V28Ev
wnF+IK024cJAgVfydG/JiudnI5xrxCk8jKzfHHXU24JD9ez2OXo4JIJd2epIFzBezAaW7rclw/1I
QZQBVsRNbKXUr3+C0lFtLv8aDus/83V7gFBuPu3LHTHurvfmN86+D21Ec2ix3Pq1Kb+4C7USCU0f
htV03y23CZFOkyRZhvcwXP5++oAMyqRVuBQtEhJ73KSpx7H4SjA/jGrWYkjVW6PIh6+2kw7NErsx
HiYZifZ+0rZ/r79GOBLOP20VNWdcgFxxZYtixUmW3LX1xisKJQJzWJCRVqzkgk6d6FSht9xT1Q==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x211FDD2B7B98A40"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: aYH1drHc46w35664FRH0lQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: cbdd4f20-74e9-43b1-bd08-4d3e2db53928
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 18: HEAD /devstoreaccount1/test-container-3dfd43b7-e84a-95c4-cd5d-50015eef1845/test-blob-d7dda16a-29ca-8db0-e33c-c5ddf5f524d8

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
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
content-length: 1024
content-type: application/octet-stream
etag: "0x211FDD2B7B98A40"
content-md5: aYH1drHc46w35664FRH0lQ==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 551fcbe3-b698-40b7-b1c9-0a9c26b5b95a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
accept-ranges: bytes
x-ms-server-encrypted: true
x-ms-access-tier: Hot
x-ms-access-tier-inferred: true
x-ms-access-tier-change-time: Thu, 12 Nov 2026 00:47:20 GMT
```
### Response body recorded for playback (200: application/octet-stream):

```
```

## Interaction 19: PUT /devstoreaccount1/test-container-3dfd43b7-e84a-95c4-cd5d-50015eef1845/test-blob-d7dda16a-29ca-8db0-e33c-c5ddf5f524d8

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_20
If-None-Match: "0x211FDD2B7B98A40"
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-3dfd43b7-e84a-95c4-cd5d-50015eef1845/test-blob-24a8c99e-1c6b-6d0d-e9d3-095072e6c419
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
x-ms-error-code: ConditionNotMet
x-ms-request-id: 5fe9049c-6f40-4772-94d3-189af731501f
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:20 GMT
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

## Interaction 20: DELETE /devstoreaccount1/test-container-3dfd43b7-e84a-95c4-cd5d-50015eef1845?restype=container

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
x-ms-request-id: b9757437-2dbc-4ef0-a0de-79749479e18a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

## Interaction 21: PUT /devstoreaccount1/test-container-408df1a1-de7d-3b08-8323-6dd8da31dcb7?restype=container

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
etag: "0x2681198A7562080"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 69438459-ac90-41dd-810a-0cbc6e5e5349
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:47:20 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 22: PUT /devstoreaccount1/test-container-408df1a1-de7d-3b08-8323-6dd8da31dcb7/test-blob-d92985a6-4413-2c22-fb1b-77cecbc75ee1

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
Izo2Ff58CnQYGkAuVi94868wr4BYg5yLmaJUprzYs7JfDbm6vg7aJOcZKGKe2uVTq3kpqYJcX6Ce
qnxcKGO3QGeOzkh2vTWgVoqYPls57b+8AftDrgkwA64ZHBSRfvyDYuj6Dwuc3O1EiFL3wyBEZLy9
nydoc5FeXsuaXaEgDtiNFNxzPt6zICQO/yW2OD+O1LhX1N7VG+5XnLFAAn9MI3l6aq5E0SXeCX4C
WXRrpyWLC4joyTr5uPjuHKIscx6kwdysPM6QSgKTecpg0sJ56/WLtPb3Y1o+gbK1VrWDsZZfXpeY
v2pX+sGFVVBwmeU2dDCsob4orV6Bbbsc2/NNEMc0AHQq4SyKM7o0cQ0KzufMfuGF1hDXN7A5FlKv
Ox/NOEWJPJlwDJMDIm0E8zxRd57TT1wSxzm2XMjE8Mra2/iaZznHgZFOW3JOgrSj0kN06J+z2+vD
u3AL0t/QrBzJKEZ0aYwCifYNhfTqxEWFEoqFUAgqJ/8N16vJvK6xfq5VhFltL2m3cV+oplb32fYq
hsBVS1wUngFHZ5HgOc1IWwZFlD/sGOIhzd6pgoGoFf61njXtXDNSQeZYJcjX1zeSYEpPsUS3Pm3e
NH19ahx/nlGTK5uXW//T81JZk/IaSfanFiE2WWO5/V/IDye11NbK2Id2Q6ub+gVLfL7yXqt6w+qG
1lP6SUXu2S07zkzXHR97jrtrpAVKCxwc6t2kx5+0TUs8Lv2Cz45BiGp+Xyy5c16fds/vDh/kPMo3
3l9oSRGNh4AAm+8h+L4sKhybzKvwYnZ+BVHQxD8rV/IzS/Ev2T5Z8NiruNhufX0Qw+QDSW8eR3vo
6UO/vcJB1ET87q3N/FDdQtzTRKqeD4fUvwFbKA2DFAN2R+/7mTIWauOUco/PQ8eTJgeSSwPQSdm7
6/7B5qw2edqqVrRh4aiqvNrGCp34BHw6xwIG8MgApf4WP600VIM2Xfi1JOwSMkRe6I8oCT47w+aC
hx6qMIkSqrC2SqL7dmdWj6ykQuCPKJW9pwc415u/2nvGsc1ljC1vono8W+ehY3In0XqSloAG8l+J
7ImB2dMU928nNMSa8QN/NaBlUsytHEOUEQUhLUT6v75u25+k7cmnJ2N4ei+ujeB2EmHgoaCS29BF
7MfN8sorLHQFKxVj2kjWvipoNaIT5oQlqhrjGR4e3P/PXgAB2TWZTE26qGHKEzgYCuJ1KaYuMQZD
p0evSBJV5k8WlHtH1OX1zuhUWD4jW5fiyg88qbJYoCz6vjHt6gQ6ZcERtH+80TX8f1q+2djIIEyw
zH4DGT2cvfNPTRWzCOTkGfN8EacYJvnZPylYmsZUMZ7lPB2FN0yEdfeLbIMfSXZ12sDlTA+llw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5AD876BB551F0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: EXpkzD9m2nuTSI0ksDIf9g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e6fac007-ccf9-4411-834a-008638d24d12
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 23: PUT /devstoreaccount1/test-container-408df1a1-de7d-3b08-8323-6dd8da31dcb7/test-blob-af9cf7a7-b98c-ba75-f6b3-e2bf066ee58f

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
Izo2Ff58CnQYGkAuVi94868wr4BYg5yLmaJUprzYs7JfDbm6vg7aJOcZKGKe2uVTq3kpqYJcX6Ce
qnxcKGO3QGeOzkh2vTWgVoqYPls57b+8AftDrgkwA64ZHBSRfvyDYuj6Dwuc3O1EiFL3wyBEZLy9
nydoc5FeXsuaXaEgDtiNFNxzPt6zICQO/yW2OD+O1LhX1N7VG+5XnLFAAn9MI3l6aq5E0SXeCX4C
WXRrpyWLC4joyTr5uPjuHKIscx6kwdysPM6QSgKTecpg0sJ56/WLtPb3Y1o+gbK1VrWDsZZfXpeY
v2pX+sGFVVBwmeU2dDCsob4orV6Bbbsc2/NNEMc0AHQq4SyKM7o0cQ0KzufMfuGF1hDXN7A5FlKv
Ox/NOEWJPJlwDJMDIm0E8zxRd57TT1wSxzm2XMjE8Mra2/iaZznHgZFOW3JOgrSj0kN06J+z2+vD
u3AL0t/QrBzJKEZ0aYwCifYNhfTqxEWFEoqFUAgqJ/8N16vJvK6xfq5VhFltL2m3cV+oplb32fYq
hsBVS1wUngFHZ5HgOc1IWwZFlD/sGOIhzd6pgoGoFf61njXtXDNSQeZYJcjX1zeSYEpPsUS3Pm3e
NH19ahx/nlGTK5uXW//T81JZk/IaSfanFiE2WWO5/V/IDye11NbK2Id2Q6ub+gVLfL7yXqt6w+qG
1lP6SUXu2S07zkzXHR97jrtrpAVKCxwc6t2kx5+0TUs8Lv2Cz45BiGp+Xyy5c16fds/vDh/kPMo3
3l9oSRGNh4AAm+8h+L4sKhybzKvwYnZ+BVHQxD8rV/IzS/Ev2T5Z8NiruNhufX0Qw+QDSW8eR3vo
6UO/vcJB1ET87q3N/FDdQtzTRKqeD4fUvwFbKA2DFAN2R+/7mTIWauOUco/PQ8eTJgeSSwPQSdm7
6/7B5qw2edqqVrRh4aiqvNrGCp34BHw6xwIG8MgApf4WP600VIM2Xfi1JOwSMkRe6I8oCT47w+aC
hx6qMIkSqrC2SqL7dmdWj6ykQuCPKJW9pwc415u/2nvGsc1ljC1vono8W+ehY3In0XqSloAG8l+J
7ImB2dMU928nNMSa8QN/NaBlUsytHEOUEQUhLUT6v75u25+k7cmnJ2N4ei+ujeB2EmHgoaCS29BF
7MfN8sorLHQFKxVj2kjWvipoNaIT5oQlqhrjGR4e3P/PXgAB2TWZTE26qGHKEzgYCuJ1KaYuMQZD
p0evSBJV5k8WlHtH1OX1zuhUWD4jW5fiyg88qbJYoCz6vjHt6gQ6ZcERtH+80TX8f1q+2djIIEyw
zH4DGT2cvfNPTRWzCOTkGfN8EacYJvnZPylYmsZUMZ7lPB2FN0yEdfeLbIMfSXZ12sDlTA+llw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27166E646CD4AE0"
last-modified: Thu, 12 Nov 2026 00:47:20 GMT
content-md5: EXpkzD9m2nuTSI0ksDIf9g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f8828b58-2b3f-4ce4-bda3-888738ea7a67
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:20 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 24: PUT /devstoreaccount1/test-container-408df1a1-de7d-3b08-8323-6dd8da31dcb7/test-blob-af9cf7a7-b98c-ba75-f6b3-e2bf066ee58f

### Request headers recorded for playback:

```
Authorization: SharedKey AUTHORIZATION_25
x-ms-copy-source: http://127.0.0.1:10170/devstoreaccount1/test-container-408df1a1-de7d-3b08-8323-6dd8da31dcb7/test-blob-d92985a6-4413-2c22-fb1b-77cecbc75ee1
x-ms-lease-id: 95378d20-e1d8-ed08-10ca-654b8ba094e4
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
x-ms-error-code: LeaseNotPresentWithBlobOperation
x-ms-request-id: 709db53c-6c9a-43b6-b873-b1506060bff9
content-type: application/xml
Date: Thu, 12 Nov 2026 00:47:21 GMT
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

## Interaction 25: DELETE /devstoreaccount1/test-container-408df1a1-de7d-3b08-8323-6dd8da31dcb7?restype=container

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
x-ms-request-id: a7454123-8f3a-4132-b486-38486df7ab42
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:47:21 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

