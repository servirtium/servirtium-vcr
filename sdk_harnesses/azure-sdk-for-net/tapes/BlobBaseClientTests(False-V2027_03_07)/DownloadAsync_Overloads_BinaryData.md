## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-57e3d60b-6427-00a7-4246-8181caa4fd11?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.BlobBaseClientTests(False,V2027_03_07).DownloadAsync_Overloads_BinaryData
now: 2026-11-12T00:46:40.2434370+00:00

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
etag: "0x220AAC551506A80"
last-modified: Thu, 12 Nov 2026 00:46:40 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 46b32b88-8006-4ec7-a58a-4147cb63068a
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:46:40 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-57e3d60b-6427-00a7-4246-8181caa4fd11/test-blob-f288d229-0431-82bc-9f0e-4b355ac989ff

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
kq+lhV2dNPHewD+HwhmXPUzMcHGJ3+jtjDCm6wzVAFP8uRM5wrxEbaHxeWckHz0or0Q0/TOLiLLG
uPgt90nkCb/siwgFXnqPiAPPl2aByGzyfTzHoAIfcDFgcgrDFnZYDHCnN5Q0IlHKpXUwvPFMRe+M
OnkMHWi9zBvXpetvy3KNdor22ZDXvVvq/fuN77NAFC0aN9z9S+8H6mt5XX1mW9kDo0VmVWtetHwe
Ih9tL9xnl5C+VJSVkCqa7+8lXmDdhKIhikxt2b/BvIJf3inQmrqOEcXtpwZEbRMbzGZ8OVYbQJ59
S6WQ+r3R/ZgRNrEBylQ0lk2a79yb3R05Ug1YRIMsQ52LUk4U/hcIHKptMjZhGQERSKIJgFDB4W6I
VqeweLgV5fITdngFH5g1ktMyLarm1zgLR/zgI8JMynDgjKdvV6TyWE1DTqOJCygK0+59j7PEoX9v
pDC7NMEwxqwHJZPwxjsvP9VcooiVgTvU1VDUzzq8HOonALJzNiOME4j2guaVGQyyTk/eZ//22SL1
519wW/ZxSgmoyMaIvAmxz44Anv9VPrtDIYHr3rTrMCaQfU/EG7iRhTjc7FFGKpJGLJdw9jojn6ij
LTl1hWtUvZef+D657bTWbxjHeFJq/ffvpbEcejrrbN6mIO5+GwDMiC+5pjJUjD/jmYchWydWOC9C
huC6OEJds4tfE8zFWFMY+/AisVbEmxlxOOGyyRG3UOi/O5UgEU/tW/Kn9HlzHkE0CGA2M4fYfuvG
SP9hqul5qMLkBhy++OmgNVVkHaag/hqffsGxgBxg5r2pWclQjLAILUu2jxcldhB2lf4xdGBEJknl
wSwoyCelgx9eFJ8gUKmlW/Bb6W8CegiwOuoeLnJdZTJ/a8qE32QjEAv3xmFwVkVVjBlw6Tza4kcj
d408h1StAa9soOXeIHuLN9hjC7OmQOSlyaJZ7Hz2pIiDYGfW5om3ScWyA7Vfdmud5bFjd9eTfTep
l72yVBQzdvtcWsATtFBPrMHt9DwvRVI2uwfKki2x7+MwLU/MBfWxf425AxyrijBgFMsWpoj6elFr
e5kNaOTOqmrd44cBgqfMO3WvdUI2ijHWaX1im0laNbP+YYlbpBao61ixzqepX5EkSmoTSgUONfFo
Nv9maw4ggq3TAiEdcJdeB4nphLyKLQnrPlHfRuqu7yyY824XQn9KkEv51VxvBtnStUN7JbA03Qj1
ei28QTzCJRP1hXwpR8UJn/NxkFitfDh4DJGnMsp7YxVlIsdSjU8ON69JeoBcqW5+cYa9w02wSP71
RDWrG/JIeiJnwyX9txKkYlmoYwG4G2MjKMFEvqDItdrIXUgaYxy9AP9d9eVIgLl0GWD0B+T8PA==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CC7049FCE03880"
last-modified: Thu, 12 Nov 2026 00:46:40 GMT
content-md5: LI+A1FeYNL5lo/ZHvsiAvw==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b7559484-9a87-4049-8484-392686be5a97
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:40 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: GET /devstoreaccount1/test-container-57e3d60b-6427-00a7-4246-8181caa4fd11/test-blob-f288d229-0431-82bc-9f0e-4b355ac989ff

### Request headers recorded for playback:

```
Accept: application/octet-stream
Authorization: SharedKey AUTHORIZATION_3
x-ms-return-client-request-id: true
x-ms-version: 2027-03-07
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
last-modified: Thu, 12 Nov 2026 00:46:40 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:40 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1CC7049FCE03880"
content-md5: LI+A1FeYNL5lo/ZHvsiAvw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bf3af4d0-2e7d-42db-9612-af0c537d4130
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:40 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: LI+A1FeYNL5lo/ZHvsiAvw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
kq+lhV2dNPHewD+HwhmXPUzMcHGJ3+jtjDCm6wzVAFP8uRM5wrxEbaHxeWckHz0or0Q0/TOLiLLG
uPgt90nkCb/siwgFXnqPiAPPl2aByGzyfTzHoAIfcDFgcgrDFnZYDHCnN5Q0IlHKpXUwvPFMRe+M
OnkMHWi9zBvXpetvy3KNdor22ZDXvVvq/fuN77NAFC0aN9z9S+8H6mt5XX1mW9kDo0VmVWtetHwe
Ih9tL9xnl5C+VJSVkCqa7+8lXmDdhKIhikxt2b/BvIJf3inQmrqOEcXtpwZEbRMbzGZ8OVYbQJ59
S6WQ+r3R/ZgRNrEBylQ0lk2a79yb3R05Ug1YRIMsQ52LUk4U/hcIHKptMjZhGQERSKIJgFDB4W6I
VqeweLgV5fITdngFH5g1ktMyLarm1zgLR/zgI8JMynDgjKdvV6TyWE1DTqOJCygK0+59j7PEoX9v
pDC7NMEwxqwHJZPwxjsvP9VcooiVgTvU1VDUzzq8HOonALJzNiOME4j2guaVGQyyTk/eZ//22SL1
519wW/ZxSgmoyMaIvAmxz44Anv9VPrtDIYHr3rTrMCaQfU/EG7iRhTjc7FFGKpJGLJdw9jojn6ij
LTl1hWtUvZef+D657bTWbxjHeFJq/ffvpbEcejrrbN6mIO5+GwDMiC+5pjJUjD/jmYchWydWOC9C
huC6OEJds4tfE8zFWFMY+/AisVbEmxlxOOGyyRG3UOi/O5UgEU/tW/Kn9HlzHkE0CGA2M4fYfuvG
SP9hqul5qMLkBhy++OmgNVVkHaag/hqffsGxgBxg5r2pWclQjLAILUu2jxcldhB2lf4xdGBEJknl
wSwoyCelgx9eFJ8gUKmlW/Bb6W8CegiwOuoeLnJdZTJ/a8qE32QjEAv3xmFwVkVVjBlw6Tza4kcj
d408h1StAa9soOXeIHuLN9hjC7OmQOSlyaJZ7Hz2pIiDYGfW5om3ScWyA7Vfdmud5bFjd9eTfTep
l72yVBQzdvtcWsATtFBPrMHt9DwvRVI2uwfKki2x7+MwLU/MBfWxf425AxyrijBgFMsWpoj6elFr
e5kNaOTOqmrd44cBgqfMO3WvdUI2ijHWaX1im0laNbP+YYlbpBao61ixzqepX5EkSmoTSgUONfFo
Nv9maw4ggq3TAiEdcJdeB4nphLyKLQnrPlHfRuqu7yyY824XQn9KkEv51VxvBtnStUN7JbA03Qj1
ei28QTzCJRP1hXwpR8UJn/NxkFitfDh4DJGnMsp7YxVlIsdSjU8ON69JeoBcqW5+cYa9w02wSP71
RDWrG/JIeiJnwyX9txKkYlmoYwG4G2MjKMFEvqDItdrIXUgaYxy9AP9d9eVIgLl0GWD0B+T8PA==
```

## Interaction 3: GET /devstoreaccount1/test-container-57e3d60b-6427-00a7-4246-8181caa4fd11/test-blob-f288d229-0431-82bc-9f0e-4b355ac989ff

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:46:40 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:40 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1CC7049FCE03880"
content-md5: LI+A1FeYNL5lo/ZHvsiAvw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aa8a3e9e-4e13-41e1-b046-f3eade6e0a80
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:40 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: LI+A1FeYNL5lo/ZHvsiAvw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
kq+lhV2dNPHewD+HwhmXPUzMcHGJ3+jtjDCm6wzVAFP8uRM5wrxEbaHxeWckHz0or0Q0/TOLiLLG
uPgt90nkCb/siwgFXnqPiAPPl2aByGzyfTzHoAIfcDFgcgrDFnZYDHCnN5Q0IlHKpXUwvPFMRe+M
OnkMHWi9zBvXpetvy3KNdor22ZDXvVvq/fuN77NAFC0aN9z9S+8H6mt5XX1mW9kDo0VmVWtetHwe
Ih9tL9xnl5C+VJSVkCqa7+8lXmDdhKIhikxt2b/BvIJf3inQmrqOEcXtpwZEbRMbzGZ8OVYbQJ59
S6WQ+r3R/ZgRNrEBylQ0lk2a79yb3R05Ug1YRIMsQ52LUk4U/hcIHKptMjZhGQERSKIJgFDB4W6I
VqeweLgV5fITdngFH5g1ktMyLarm1zgLR/zgI8JMynDgjKdvV6TyWE1DTqOJCygK0+59j7PEoX9v
pDC7NMEwxqwHJZPwxjsvP9VcooiVgTvU1VDUzzq8HOonALJzNiOME4j2guaVGQyyTk/eZ//22SL1
519wW/ZxSgmoyMaIvAmxz44Anv9VPrtDIYHr3rTrMCaQfU/EG7iRhTjc7FFGKpJGLJdw9jojn6ij
LTl1hWtUvZef+D657bTWbxjHeFJq/ffvpbEcejrrbN6mIO5+GwDMiC+5pjJUjD/jmYchWydWOC9C
huC6OEJds4tfE8zFWFMY+/AisVbEmxlxOOGyyRG3UOi/O5UgEU/tW/Kn9HlzHkE0CGA2M4fYfuvG
SP9hqul5qMLkBhy++OmgNVVkHaag/hqffsGxgBxg5r2pWclQjLAILUu2jxcldhB2lf4xdGBEJknl
wSwoyCelgx9eFJ8gUKmlW/Bb6W8CegiwOuoeLnJdZTJ/a8qE32QjEAv3xmFwVkVVjBlw6Tza4kcj
d408h1StAa9soOXeIHuLN9hjC7OmQOSlyaJZ7Hz2pIiDYGfW5om3ScWyA7Vfdmud5bFjd9eTfTep
l72yVBQzdvtcWsATtFBPrMHt9DwvRVI2uwfKki2x7+MwLU/MBfWxf425AxyrijBgFMsWpoj6elFr
e5kNaOTOqmrd44cBgqfMO3WvdUI2ijHWaX1im0laNbP+YYlbpBao61ixzqepX5EkSmoTSgUONfFo
Nv9maw4ggq3TAiEdcJdeB4nphLyKLQnrPlHfRuqu7yyY824XQn9KkEv51VxvBtnStUN7JbA03Qj1
ei28QTzCJRP1hXwpR8UJn/NxkFitfDh4DJGnMsp7YxVlIsdSjU8ON69JeoBcqW5+cYa9w02wSP71
RDWrG/JIeiJnwyX9txKkYlmoYwG4G2MjKMFEvqDItdrIXUgaYxy9AP9d9eVIgLl0GWD0B+T8PA==
```

## Interaction 4: GET /devstoreaccount1/test-container-57e3d60b-6427-00a7-4246-8181caa4fd11/test-blob-f288d229-0431-82bc-9f0e-4b355ac989ff

### Request headers recorded for playback:

```
Accept: application/octet-stream
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
last-modified: Thu, 12 Nov 2026 00:46:40 GMT
x-ms-creation-time: Thu, 12 Nov 2026 00:46:40 GMT
content-length: 1024
content-type: application/octet-stream
etag: "0x1CC7049FCE03880"
content-md5: LI+A1FeYNL5lo/ZHvsiAvw==
x-ms-blob-type: BlockBlob
x-ms-lease-state: available
x-ms-lease-status: unlocked
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 382ba92f-4211-42d0-8efa-b8c88dbccd93
x-ms-version: 2026-06-06
accept-ranges: bytes
date: Thu, 12 Nov 2026 00:46:40 GMT
x-ms-server-encrypted: true
x-ms-blob-content-md5: LI+A1FeYNL5lo/ZHvsiAvw==
```
### Response body recorded for playback (200: application/octet-stream base64 below):

```
kq+lhV2dNPHewD+HwhmXPUzMcHGJ3+jtjDCm6wzVAFP8uRM5wrxEbaHxeWckHz0or0Q0/TOLiLLG
uPgt90nkCb/siwgFXnqPiAPPl2aByGzyfTzHoAIfcDFgcgrDFnZYDHCnN5Q0IlHKpXUwvPFMRe+M
OnkMHWi9zBvXpetvy3KNdor22ZDXvVvq/fuN77NAFC0aN9z9S+8H6mt5XX1mW9kDo0VmVWtetHwe
Ih9tL9xnl5C+VJSVkCqa7+8lXmDdhKIhikxt2b/BvIJf3inQmrqOEcXtpwZEbRMbzGZ8OVYbQJ59
S6WQ+r3R/ZgRNrEBylQ0lk2a79yb3R05Ug1YRIMsQ52LUk4U/hcIHKptMjZhGQERSKIJgFDB4W6I
VqeweLgV5fITdngFH5g1ktMyLarm1zgLR/zgI8JMynDgjKdvV6TyWE1DTqOJCygK0+59j7PEoX9v
pDC7NMEwxqwHJZPwxjsvP9VcooiVgTvU1VDUzzq8HOonALJzNiOME4j2guaVGQyyTk/eZ//22SL1
519wW/ZxSgmoyMaIvAmxz44Anv9VPrtDIYHr3rTrMCaQfU/EG7iRhTjc7FFGKpJGLJdw9jojn6ij
LTl1hWtUvZef+D657bTWbxjHeFJq/ffvpbEcejrrbN6mIO5+GwDMiC+5pjJUjD/jmYchWydWOC9C
huC6OEJds4tfE8zFWFMY+/AisVbEmxlxOOGyyRG3UOi/O5UgEU/tW/Kn9HlzHkE0CGA2M4fYfuvG
SP9hqul5qMLkBhy++OmgNVVkHaag/hqffsGxgBxg5r2pWclQjLAILUu2jxcldhB2lf4xdGBEJknl
wSwoyCelgx9eFJ8gUKmlW/Bb6W8CegiwOuoeLnJdZTJ/a8qE32QjEAv3xmFwVkVVjBlw6Tza4kcj
d408h1StAa9soOXeIHuLN9hjC7OmQOSlyaJZ7Hz2pIiDYGfW5om3ScWyA7Vfdmud5bFjd9eTfTep
l72yVBQzdvtcWsATtFBPrMHt9DwvRVI2uwfKki2x7+MwLU/MBfWxf425AxyrijBgFMsWpoj6elFr
e5kNaOTOqmrd44cBgqfMO3WvdUI2ijHWaX1im0laNbP+YYlbpBao61ixzqepX5EkSmoTSgUONfFo
Nv9maw4ggq3TAiEdcJdeB4nphLyKLQnrPlHfRuqu7yyY824XQn9KkEv51VxvBtnStUN7JbA03Qj1
ei28QTzCJRP1hXwpR8UJn/NxkFitfDh4DJGnMsp7YxVlIsdSjU8ON69JeoBcqW5+cYa9w02wSP71
RDWrG/JIeiJnwyX9txKkYlmoYwG4G2MjKMFEvqDItdrIXUgaYxy9AP9d9eVIgLl0GWD0B+T8PA==
```

## Interaction 5: DELETE /devstoreaccount1/test-container-57e3d60b-6427-00a7-4246-8181caa4fd11?restype=container

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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 8a3e4ac0-6b10-413e-ba74-cd1133e86928
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:46:40 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

