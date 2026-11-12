## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_StartFrom
now: 2026-11-12T00:44:58.1590826+00:00

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
etag: "0x245DA702452E2A0"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec8869bd-878e-4cbb-b7f6-8809acdedc75
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:58 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac/foo

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
VLtwti9GSQ21bkCGY9i74zoLLctBcGH3ZhMbCgwP4PcSWhJdhvXUTp+P26WXFnho4h1dTrLqa+NZ
eVAcKj4Bpo1JcwjFXVxENt4rsZW7X1CbsyjusZFEKO8vBA2luCRhjTUYTqJvooTBGBjTvrlOnRn/
gHYVE/X7BEsZlllPn365yiNgoxGtLBGjLJh5cWk24WbzpTeuS3o/HElWVgwrcnmZGfSV7voHUlRl
ceZcgZPi4rXyW/lHC3+pIIbIV9UFd7of4Fd1oPJs61PiSNmT45u2dHNXORZ/Ug107M5zP/p/YPks
PaE7bULChW+mZMKlFTzrEeNhrj6kn45JALQk+axYY+jfZ6X6egcxlLSm2e1Lz9aRhy0XHbK7iJ4S
8myNnYvDTQHZxa2W8ZfcMBmJ/cWg/jHdk3F+QUY2JN8H54iao/co4ozscQko+paWO+yYMYrYcvM7
rwoaRQu7o6HOjwkOQYwhYRo4tI0ntZja6AVZnfJVLnWUXvPtDZ2BMc1nWmuMh/lgd9BvoL1mE/px
P10FYQWveWCUeuOYNFN9t4O/wFstTWAM+SYh5Y63Lkr5fM5Ae8/It+AL+A0Wx0N88ek6p1OfQ/L8
+WjejZPS3UuYn7iFPTuz9gh6IlVT9THjpfOlfIf2WTjbQ4Jm6SpMOBrBfSeK97SthrBLJSGcqQM3
++igLWHEoUV/qfm5TQ3eLek6kngJWK0/9/XXqzQXPpp+L+5BrAu5/NziC0268zmjbfc3YRaLLaI6
YDVr7fYRaGpfOx4enIHdgZWcJ01ghAS8Mz49392D8wFLBkvWTQ7m0KLiWrgbhNB1WuCB7gZV2tsx
r7m31ImN20cc05Y1BzOGtlaqfSpLoK9tx4T8AgT79StvpZ5VLvwZVX5w/7E6P1Os+jivq12x5Q4K
SgwEkNlDIN1qxmGVMYdakCer26H+M4cxUAfLTErNvb+PS+TwFcSlLd7T0HnxF8mxVBs2BgptCxeE
0kDSd9SSnAihBuajanpjBq3DKmIOQDk+Gvcvl7a1Ij/Na0OD0rUKQTNwUBDiDuqg0wBcquG0dpIH
lF3cYwVR7OSm1f833zP3uekvnfAoWwwNjsS2WHdeGfSwfD1YLd0tHmQsPDjraPPMZfD3hNii3zlR
z9RBm5NsSLwKh2P1nosLAn6M+x/TISXQ6fOGZpQbDp0EB14I7IPQwPN74OGQ1sZl7IJZFuMafa2v
cLKg5eEn7njF8ZctAhX7uzsrV0FEQBIsIXoSwfe56omwWXvRMNsRVPFoyuUuN+lsXlqo7iVsajCf
c8NnFS2ADAcOfKmZKotgGQNP23Us/eqRpWOdEftjRO5LMbwXqj/E6L7eILpA0zPPSNQiHI+6cg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2755438D02EF760"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
content-md5: RKb+w/ui3L7pgKv++jg6Cw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 47130451-80db-4df5-a9fe-ef55c1add54b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac/bar

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
VLtwti9GSQ21bkCGY9i74zoLLctBcGH3ZhMbCgwP4PcSWhJdhvXUTp+P26WXFnho4h1dTrLqa+NZ
eVAcKj4Bpo1JcwjFXVxENt4rsZW7X1CbsyjusZFEKO8vBA2luCRhjTUYTqJvooTBGBjTvrlOnRn/
gHYVE/X7BEsZlllPn365yiNgoxGtLBGjLJh5cWk24WbzpTeuS3o/HElWVgwrcnmZGfSV7voHUlRl
ceZcgZPi4rXyW/lHC3+pIIbIV9UFd7of4Fd1oPJs61PiSNmT45u2dHNXORZ/Ug107M5zP/p/YPks
PaE7bULChW+mZMKlFTzrEeNhrj6kn45JALQk+axYY+jfZ6X6egcxlLSm2e1Lz9aRhy0XHbK7iJ4S
8myNnYvDTQHZxa2W8ZfcMBmJ/cWg/jHdk3F+QUY2JN8H54iao/co4ozscQko+paWO+yYMYrYcvM7
rwoaRQu7o6HOjwkOQYwhYRo4tI0ntZja6AVZnfJVLnWUXvPtDZ2BMc1nWmuMh/lgd9BvoL1mE/px
P10FYQWveWCUeuOYNFN9t4O/wFstTWAM+SYh5Y63Lkr5fM5Ae8/It+AL+A0Wx0N88ek6p1OfQ/L8
+WjejZPS3UuYn7iFPTuz9gh6IlVT9THjpfOlfIf2WTjbQ4Jm6SpMOBrBfSeK97SthrBLJSGcqQM3
++igLWHEoUV/qfm5TQ3eLek6kngJWK0/9/XXqzQXPpp+L+5BrAu5/NziC0268zmjbfc3YRaLLaI6
YDVr7fYRaGpfOx4enIHdgZWcJ01ghAS8Mz49392D8wFLBkvWTQ7m0KLiWrgbhNB1WuCB7gZV2tsx
r7m31ImN20cc05Y1BzOGtlaqfSpLoK9tx4T8AgT79StvpZ5VLvwZVX5w/7E6P1Os+jivq12x5Q4K
SgwEkNlDIN1qxmGVMYdakCer26H+M4cxUAfLTErNvb+PS+TwFcSlLd7T0HnxF8mxVBs2BgptCxeE
0kDSd9SSnAihBuajanpjBq3DKmIOQDk+Gvcvl7a1Ij/Na0OD0rUKQTNwUBDiDuqg0wBcquG0dpIH
lF3cYwVR7OSm1f833zP3uekvnfAoWwwNjsS2WHdeGfSwfD1YLd0tHmQsPDjraPPMZfD3hNii3zlR
z9RBm5NsSLwKh2P1nosLAn6M+x/TISXQ6fOGZpQbDp0EB14I7IPQwPN74OGQ1sZl7IJZFuMafa2v
cLKg5eEn7njF8ZctAhX7uzsrV0FEQBIsIXoSwfe56omwWXvRMNsRVPFoyuUuN+lsXlqo7iVsajCf
c8NnFS2ADAcOfKmZKotgGQNP23Us/eqRpWOdEftjRO5LMbwXqj/E6L7eILpA0zPPSNQiHI+6cg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26128747C4E4C40"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
content-md5: RKb+w/ui3L7pgKv++jg6Cw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c5d16b58-9574-4d91-b2a8-53050578ad1f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac/baz

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
VLtwti9GSQ21bkCGY9i74zoLLctBcGH3ZhMbCgwP4PcSWhJdhvXUTp+P26WXFnho4h1dTrLqa+NZ
eVAcKj4Bpo1JcwjFXVxENt4rsZW7X1CbsyjusZFEKO8vBA2luCRhjTUYTqJvooTBGBjTvrlOnRn/
gHYVE/X7BEsZlllPn365yiNgoxGtLBGjLJh5cWk24WbzpTeuS3o/HElWVgwrcnmZGfSV7voHUlRl
ceZcgZPi4rXyW/lHC3+pIIbIV9UFd7of4Fd1oPJs61PiSNmT45u2dHNXORZ/Ug107M5zP/p/YPks
PaE7bULChW+mZMKlFTzrEeNhrj6kn45JALQk+axYY+jfZ6X6egcxlLSm2e1Lz9aRhy0XHbK7iJ4S
8myNnYvDTQHZxa2W8ZfcMBmJ/cWg/jHdk3F+QUY2JN8H54iao/co4ozscQko+paWO+yYMYrYcvM7
rwoaRQu7o6HOjwkOQYwhYRo4tI0ntZja6AVZnfJVLnWUXvPtDZ2BMc1nWmuMh/lgd9BvoL1mE/px
P10FYQWveWCUeuOYNFN9t4O/wFstTWAM+SYh5Y63Lkr5fM5Ae8/It+AL+A0Wx0N88ek6p1OfQ/L8
+WjejZPS3UuYn7iFPTuz9gh6IlVT9THjpfOlfIf2WTjbQ4Jm6SpMOBrBfSeK97SthrBLJSGcqQM3
++igLWHEoUV/qfm5TQ3eLek6kngJWK0/9/XXqzQXPpp+L+5BrAu5/NziC0268zmjbfc3YRaLLaI6
YDVr7fYRaGpfOx4enIHdgZWcJ01ghAS8Mz49392D8wFLBkvWTQ7m0KLiWrgbhNB1WuCB7gZV2tsx
r7m31ImN20cc05Y1BzOGtlaqfSpLoK9tx4T8AgT79StvpZ5VLvwZVX5w/7E6P1Os+jivq12x5Q4K
SgwEkNlDIN1qxmGVMYdakCer26H+M4cxUAfLTErNvb+PS+TwFcSlLd7T0HnxF8mxVBs2BgptCxeE
0kDSd9SSnAihBuajanpjBq3DKmIOQDk+Gvcvl7a1Ij/Na0OD0rUKQTNwUBDiDuqg0wBcquG0dpIH
lF3cYwVR7OSm1f833zP3uekvnfAoWwwNjsS2WHdeGfSwfD1YLd0tHmQsPDjraPPMZfD3hNii3zlR
z9RBm5NsSLwKh2P1nosLAn6M+x/TISXQ6fOGZpQbDp0EB14I7IPQwPN74OGQ1sZl7IJZFuMafa2v
cLKg5eEn7njF8ZctAhX7uzsrV0FEQBIsIXoSwfe56omwWXvRMNsRVPFoyuUuN+lsXlqo7iVsajCf
c8NnFS2ADAcOfKmZKotgGQNP23Us/eqRpWOdEftjRO5LMbwXqj/E6L7eILpA0zPPSNQiHI+6cg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x238A4DB2F732780"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
content-md5: RKb+w/ui3L7pgKv++jg6Cw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1eba8b67-0f6f-42dd-bc71-7f828ad60d1f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac/foo/foo

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
VLtwti9GSQ21bkCGY9i74zoLLctBcGH3ZhMbCgwP4PcSWhJdhvXUTp+P26WXFnho4h1dTrLqa+NZ
eVAcKj4Bpo1JcwjFXVxENt4rsZW7X1CbsyjusZFEKO8vBA2luCRhjTUYTqJvooTBGBjTvrlOnRn/
gHYVE/X7BEsZlllPn365yiNgoxGtLBGjLJh5cWk24WbzpTeuS3o/HElWVgwrcnmZGfSV7voHUlRl
ceZcgZPi4rXyW/lHC3+pIIbIV9UFd7of4Fd1oPJs61PiSNmT45u2dHNXORZ/Ug107M5zP/p/YPks
PaE7bULChW+mZMKlFTzrEeNhrj6kn45JALQk+axYY+jfZ6X6egcxlLSm2e1Lz9aRhy0XHbK7iJ4S
8myNnYvDTQHZxa2W8ZfcMBmJ/cWg/jHdk3F+QUY2JN8H54iao/co4ozscQko+paWO+yYMYrYcvM7
rwoaRQu7o6HOjwkOQYwhYRo4tI0ntZja6AVZnfJVLnWUXvPtDZ2BMc1nWmuMh/lgd9BvoL1mE/px
P10FYQWveWCUeuOYNFN9t4O/wFstTWAM+SYh5Y63Lkr5fM5Ae8/It+AL+A0Wx0N88ek6p1OfQ/L8
+WjejZPS3UuYn7iFPTuz9gh6IlVT9THjpfOlfIf2WTjbQ4Jm6SpMOBrBfSeK97SthrBLJSGcqQM3
++igLWHEoUV/qfm5TQ3eLek6kngJWK0/9/XXqzQXPpp+L+5BrAu5/NziC0268zmjbfc3YRaLLaI6
YDVr7fYRaGpfOx4enIHdgZWcJ01ghAS8Mz49392D8wFLBkvWTQ7m0KLiWrgbhNB1WuCB7gZV2tsx
r7m31ImN20cc05Y1BzOGtlaqfSpLoK9tx4T8AgT79StvpZ5VLvwZVX5w/7E6P1Os+jivq12x5Q4K
SgwEkNlDIN1qxmGVMYdakCer26H+M4cxUAfLTErNvb+PS+TwFcSlLd7T0HnxF8mxVBs2BgptCxeE
0kDSd9SSnAihBuajanpjBq3DKmIOQDk+Gvcvl7a1Ij/Na0OD0rUKQTNwUBDiDuqg0wBcquG0dpIH
lF3cYwVR7OSm1f833zP3uekvnfAoWwwNjsS2WHdeGfSwfD1YLd0tHmQsPDjraPPMZfD3hNii3zlR
z9RBm5NsSLwKh2P1nosLAn6M+x/TISXQ6fOGZpQbDp0EB14I7IPQwPN74OGQ1sZl7IJZFuMafa2v
cLKg5eEn7njF8ZctAhX7uzsrV0FEQBIsIXoSwfe56omwWXvRMNsRVPFoyuUuN+lsXlqo7iVsajCf
c8NnFS2ADAcOfKmZKotgGQNP23Us/eqRpWOdEftjRO5LMbwXqj/E6L7eILpA0zPPSNQiHI+6cg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DC66E78844C9A0"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
content-md5: RKb+w/ui3L7pgKv++jg6Cw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f401b7c4-7d88-4295-ac98-c5ea4e1d8b81
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac/foo/bar

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
VLtwti9GSQ21bkCGY9i74zoLLctBcGH3ZhMbCgwP4PcSWhJdhvXUTp+P26WXFnho4h1dTrLqa+NZ
eVAcKj4Bpo1JcwjFXVxENt4rsZW7X1CbsyjusZFEKO8vBA2luCRhjTUYTqJvooTBGBjTvrlOnRn/
gHYVE/X7BEsZlllPn365yiNgoxGtLBGjLJh5cWk24WbzpTeuS3o/HElWVgwrcnmZGfSV7voHUlRl
ceZcgZPi4rXyW/lHC3+pIIbIV9UFd7of4Fd1oPJs61PiSNmT45u2dHNXORZ/Ug107M5zP/p/YPks
PaE7bULChW+mZMKlFTzrEeNhrj6kn45JALQk+axYY+jfZ6X6egcxlLSm2e1Lz9aRhy0XHbK7iJ4S
8myNnYvDTQHZxa2W8ZfcMBmJ/cWg/jHdk3F+QUY2JN8H54iao/co4ozscQko+paWO+yYMYrYcvM7
rwoaRQu7o6HOjwkOQYwhYRo4tI0ntZja6AVZnfJVLnWUXvPtDZ2BMc1nWmuMh/lgd9BvoL1mE/px
P10FYQWveWCUeuOYNFN9t4O/wFstTWAM+SYh5Y63Lkr5fM5Ae8/It+AL+A0Wx0N88ek6p1OfQ/L8
+WjejZPS3UuYn7iFPTuz9gh6IlVT9THjpfOlfIf2WTjbQ4Jm6SpMOBrBfSeK97SthrBLJSGcqQM3
++igLWHEoUV/qfm5TQ3eLek6kngJWK0/9/XXqzQXPpp+L+5BrAu5/NziC0268zmjbfc3YRaLLaI6
YDVr7fYRaGpfOx4enIHdgZWcJ01ghAS8Mz49392D8wFLBkvWTQ7m0KLiWrgbhNB1WuCB7gZV2tsx
r7m31ImN20cc05Y1BzOGtlaqfSpLoK9tx4T8AgT79StvpZ5VLvwZVX5w/7E6P1Os+jivq12x5Q4K
SgwEkNlDIN1qxmGVMYdakCer26H+M4cxUAfLTErNvb+PS+TwFcSlLd7T0HnxF8mxVBs2BgptCxeE
0kDSd9SSnAihBuajanpjBq3DKmIOQDk+Gvcvl7a1Ij/Na0OD0rUKQTNwUBDiDuqg0wBcquG0dpIH
lF3cYwVR7OSm1f833zP3uekvnfAoWwwNjsS2WHdeGfSwfD1YLd0tHmQsPDjraPPMZfD3hNii3zlR
z9RBm5NsSLwKh2P1nosLAn6M+x/TISXQ6fOGZpQbDp0EB14I7IPQwPN74OGQ1sZl7IJZFuMafa2v
cLKg5eEn7njF8ZctAhX7uzsrV0FEQBIsIXoSwfe56omwWXvRMNsRVPFoyuUuN+lsXlqo7iVsajCf
c8NnFS2ADAcOfKmZKotgGQNP23Us/eqRpWOdEftjRO5LMbwXqj/E6L7eILpA0zPPSNQiHI+6cg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E5B5ADE657BAB0"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
content-md5: RKb+w/ui3L7pgKv++jg6Cw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 4a0b1d69-6ba7-4a0d-bcb7-a74d18224a64
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac/baz/foo

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
VLtwti9GSQ21bkCGY9i74zoLLctBcGH3ZhMbCgwP4PcSWhJdhvXUTp+P26WXFnho4h1dTrLqa+NZ
eVAcKj4Bpo1JcwjFXVxENt4rsZW7X1CbsyjusZFEKO8vBA2luCRhjTUYTqJvooTBGBjTvrlOnRn/
gHYVE/X7BEsZlllPn365yiNgoxGtLBGjLJh5cWk24WbzpTeuS3o/HElWVgwrcnmZGfSV7voHUlRl
ceZcgZPi4rXyW/lHC3+pIIbIV9UFd7of4Fd1oPJs61PiSNmT45u2dHNXORZ/Ug107M5zP/p/YPks
PaE7bULChW+mZMKlFTzrEeNhrj6kn45JALQk+axYY+jfZ6X6egcxlLSm2e1Lz9aRhy0XHbK7iJ4S
8myNnYvDTQHZxa2W8ZfcMBmJ/cWg/jHdk3F+QUY2JN8H54iao/co4ozscQko+paWO+yYMYrYcvM7
rwoaRQu7o6HOjwkOQYwhYRo4tI0ntZja6AVZnfJVLnWUXvPtDZ2BMc1nWmuMh/lgd9BvoL1mE/px
P10FYQWveWCUeuOYNFN9t4O/wFstTWAM+SYh5Y63Lkr5fM5Ae8/It+AL+A0Wx0N88ek6p1OfQ/L8
+WjejZPS3UuYn7iFPTuz9gh6IlVT9THjpfOlfIf2WTjbQ4Jm6SpMOBrBfSeK97SthrBLJSGcqQM3
++igLWHEoUV/qfm5TQ3eLek6kngJWK0/9/XXqzQXPpp+L+5BrAu5/NziC0268zmjbfc3YRaLLaI6
YDVr7fYRaGpfOx4enIHdgZWcJ01ghAS8Mz49392D8wFLBkvWTQ7m0KLiWrgbhNB1WuCB7gZV2tsx
r7m31ImN20cc05Y1BzOGtlaqfSpLoK9tx4T8AgT79StvpZ5VLvwZVX5w/7E6P1Os+jivq12x5Q4K
SgwEkNlDIN1qxmGVMYdakCer26H+M4cxUAfLTErNvb+PS+TwFcSlLd7T0HnxF8mxVBs2BgptCxeE
0kDSd9SSnAihBuajanpjBq3DKmIOQDk+Gvcvl7a1Ij/Na0OD0rUKQTNwUBDiDuqg0wBcquG0dpIH
lF3cYwVR7OSm1f833zP3uekvnfAoWwwNjsS2WHdeGfSwfD1YLd0tHmQsPDjraPPMZfD3hNii3zlR
z9RBm5NsSLwKh2P1nosLAn6M+x/TISXQ6fOGZpQbDp0EB14I7IPQwPN74OGQ1sZl7IJZFuMafa2v
cLKg5eEn7njF8ZctAhX7uzsrV0FEQBIsIXoSwfe56omwWXvRMNsRVPFoyuUuN+lsXlqo7iVsajCf
c8NnFS2ADAcOfKmZKotgGQNP23Us/eqRpWOdEftjRO5LMbwXqj/E6L7eILpA0zPPSNQiHI+6cg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x20D3AAE262F3F80"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
content-md5: RKb+w/ui3L7pgKv++jg6Cw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a4cb903c-dae8-445e-9cc3-e0839798be81
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac/baz/foo/bar

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
VLtwti9GSQ21bkCGY9i74zoLLctBcGH3ZhMbCgwP4PcSWhJdhvXUTp+P26WXFnho4h1dTrLqa+NZ
eVAcKj4Bpo1JcwjFXVxENt4rsZW7X1CbsyjusZFEKO8vBA2luCRhjTUYTqJvooTBGBjTvrlOnRn/
gHYVE/X7BEsZlllPn365yiNgoxGtLBGjLJh5cWk24WbzpTeuS3o/HElWVgwrcnmZGfSV7voHUlRl
ceZcgZPi4rXyW/lHC3+pIIbIV9UFd7of4Fd1oPJs61PiSNmT45u2dHNXORZ/Ug107M5zP/p/YPks
PaE7bULChW+mZMKlFTzrEeNhrj6kn45JALQk+axYY+jfZ6X6egcxlLSm2e1Lz9aRhy0XHbK7iJ4S
8myNnYvDTQHZxa2W8ZfcMBmJ/cWg/jHdk3F+QUY2JN8H54iao/co4ozscQko+paWO+yYMYrYcvM7
rwoaRQu7o6HOjwkOQYwhYRo4tI0ntZja6AVZnfJVLnWUXvPtDZ2BMc1nWmuMh/lgd9BvoL1mE/px
P10FYQWveWCUeuOYNFN9t4O/wFstTWAM+SYh5Y63Lkr5fM5Ae8/It+AL+A0Wx0N88ek6p1OfQ/L8
+WjejZPS3UuYn7iFPTuz9gh6IlVT9THjpfOlfIf2WTjbQ4Jm6SpMOBrBfSeK97SthrBLJSGcqQM3
++igLWHEoUV/qfm5TQ3eLek6kngJWK0/9/XXqzQXPpp+L+5BrAu5/NziC0268zmjbfc3YRaLLaI6
YDVr7fYRaGpfOx4enIHdgZWcJ01ghAS8Mz49392D8wFLBkvWTQ7m0KLiWrgbhNB1WuCB7gZV2tsx
r7m31ImN20cc05Y1BzOGtlaqfSpLoK9tx4T8AgT79StvpZ5VLvwZVX5w/7E6P1Os+jivq12x5Q4K
SgwEkNlDIN1qxmGVMYdakCer26H+M4cxUAfLTErNvb+PS+TwFcSlLd7T0HnxF8mxVBs2BgptCxeE
0kDSd9SSnAihBuajanpjBq3DKmIOQDk+Gvcvl7a1Ij/Na0OD0rUKQTNwUBDiDuqg0wBcquG0dpIH
lF3cYwVR7OSm1f833zP3uekvnfAoWwwNjsS2WHdeGfSwfD1YLd0tHmQsPDjraPPMZfD3hNii3zlR
z9RBm5NsSLwKh2P1nosLAn6M+x/TISXQ6fOGZpQbDp0EB14I7IPQwPN74OGQ1sZl7IJZFuMafa2v
cLKg5eEn7njF8ZctAhX7uzsrV0FEQBIsIXoSwfe56omwWXvRMNsRVPFoyuUuN+lsXlqo7iVsajCf
c8NnFS2ADAcOfKmZKotgGQNP23Us/eqRpWOdEftjRO5LMbwXqj/E6L7eILpA0zPPSNQiHI+6cg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26D883D6FDF1500"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
content-md5: RKb+w/ui3L7pgKv++jg6Cw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d0e51957-8e27-4ece-8176-a7a0a2201a57
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac/baz/bar/foo

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
VLtwti9GSQ21bkCGY9i74zoLLctBcGH3ZhMbCgwP4PcSWhJdhvXUTp+P26WXFnho4h1dTrLqa+NZ
eVAcKj4Bpo1JcwjFXVxENt4rsZW7X1CbsyjusZFEKO8vBA2luCRhjTUYTqJvooTBGBjTvrlOnRn/
gHYVE/X7BEsZlllPn365yiNgoxGtLBGjLJh5cWk24WbzpTeuS3o/HElWVgwrcnmZGfSV7voHUlRl
ceZcgZPi4rXyW/lHC3+pIIbIV9UFd7of4Fd1oPJs61PiSNmT45u2dHNXORZ/Ug107M5zP/p/YPks
PaE7bULChW+mZMKlFTzrEeNhrj6kn45JALQk+axYY+jfZ6X6egcxlLSm2e1Lz9aRhy0XHbK7iJ4S
8myNnYvDTQHZxa2W8ZfcMBmJ/cWg/jHdk3F+QUY2JN8H54iao/co4ozscQko+paWO+yYMYrYcvM7
rwoaRQu7o6HOjwkOQYwhYRo4tI0ntZja6AVZnfJVLnWUXvPtDZ2BMc1nWmuMh/lgd9BvoL1mE/px
P10FYQWveWCUeuOYNFN9t4O/wFstTWAM+SYh5Y63Lkr5fM5Ae8/It+AL+A0Wx0N88ek6p1OfQ/L8
+WjejZPS3UuYn7iFPTuz9gh6IlVT9THjpfOlfIf2WTjbQ4Jm6SpMOBrBfSeK97SthrBLJSGcqQM3
++igLWHEoUV/qfm5TQ3eLek6kngJWK0/9/XXqzQXPpp+L+5BrAu5/NziC0268zmjbfc3YRaLLaI6
YDVr7fYRaGpfOx4enIHdgZWcJ01ghAS8Mz49392D8wFLBkvWTQ7m0KLiWrgbhNB1WuCB7gZV2tsx
r7m31ImN20cc05Y1BzOGtlaqfSpLoK9tx4T8AgT79StvpZ5VLvwZVX5w/7E6P1Os+jivq12x5Q4K
SgwEkNlDIN1qxmGVMYdakCer26H+M4cxUAfLTErNvb+PS+TwFcSlLd7T0HnxF8mxVBs2BgptCxeE
0kDSd9SSnAihBuajanpjBq3DKmIOQDk+Gvcvl7a1Ij/Na0OD0rUKQTNwUBDiDuqg0wBcquG0dpIH
lF3cYwVR7OSm1f833zP3uekvnfAoWwwNjsS2WHdeGfSwfD1YLd0tHmQsPDjraPPMZfD3hNii3zlR
z9RBm5NsSLwKh2P1nosLAn6M+x/TISXQ6fOGZpQbDp0EB14I7IPQwPN74OGQ1sZl7IJZFuMafa2v
cLKg5eEn7njF8ZctAhX7uzsrV0FEQBIsIXoSwfe56omwWXvRMNsRVPFoyuUuN+lsXlqo7iVsajCf
c8NnFS2ADAcOfKmZKotgGQNP23Us/eqRpWOdEftjRO5LMbwXqj/E6L7eILpA0zPPSNQiHI+6cg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FCE56665DAE960"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
content-md5: RKb+w/ui3L7pgKv++jg6Cw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bb62d0e4-d3ff-4b6c-ab32-e90c4c0a1137
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac/foo/foo?comp=metadata

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
etag: "0x26410AA0827BD60"
last-modified: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f5d2cbf9-a79d-473d-9063-35faac17cdba
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac?restype=container&comp=list&startFrom=foo

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
x-ms-request-id: a3ca423e-d2ca-418b-aeca-20ccb711bb55
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-919de894-d713-db9d-409d-009859dfb5ac"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:58 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:58 GMT</Last-Modified><Etag>0x2755438D02EF760</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>RKb+w/ui3L7pgKv++jg6Cw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:58 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:58 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:58 GMT</Last-Modified><Etag>0x1E5B5ADE657BAB0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>RKb+w/ui3L7pgKv++jg6Cw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:58 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:58 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:58 GMT</Last-Modified><Etag>0x26410AA0827BD60</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>RKb+w/ui3L7pgKv++jg6Cw==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:58 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-919de894-d713-db9d-409d-009859dfb5ac?restype=container

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
x-ms-request-id: 5246dcfe-180a-4736-8fcb-884d3176ba75
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:58 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

