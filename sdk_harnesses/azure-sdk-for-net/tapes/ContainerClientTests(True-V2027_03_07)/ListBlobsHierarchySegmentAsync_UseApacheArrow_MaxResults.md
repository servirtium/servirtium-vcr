## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_MaxResults
now: 2026-11-12T00:45:03.5569452+00:00

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
etag: "0x2691EDED4A16860"
last-modified: Thu, 12 Nov 2026 00:45:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 481e1d79-f060-419d-aacc-0a0bedb02a94
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:45:03 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f/foo

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
sg4iGkfm0QBViZ8T414ujUm9iVTdBTH2mVb3gvXAuj33jfznVqKnL45hZf6WADVLQCyzICRjgazc
K4Dw7k4KlM5hHFZiRzanFVnFfKAzYJkgrEHJDZkZlAtPCishtkE/V9AvNOTf6fj1CwrKnQUMqcvn
0EENQYc0R4hKEj0LhV8YhiXQAyu1QMNI0wGOT/YGQ2FfOuYAMhVI++1clde76oWrshbgPKWfMo9+
xG6FpfiRQ87cq0t5GFQPhwg+WKvrjel7453gJga7wAhXgW2nw1X0ylEI3j46MpnC0LWcYdnjkjeE
CcJbsB3IIOtDIpbmZ8OzSo1Z466qQbEDHlVRHl4vc+82IrmSmBozQL5S9w8D22nx6RdLia6I2sgR
WJLIdgGNE66nsEQKILFzJaPwV0mhAEPsXzVH5OlArUjwgUCHa8m8xeNgWyok58hm12MLmIJ/b1dP
3BfMRi/FZwP7GZ9w7LraM5JlQKQYx3ds4AyFNBTGcRHoN4+x73+0m/QnKc0p9eqpMWTvGS+zNhSf
X2UiQDLuNaiNiLQqKEQSsaWw8Z6qQ+si2wOv1ljiNQF7EpAakVvBOPMlnGw2fgkg3WeJAkV29Rx5
AGQvPl5QqlOzrxW0+CBK77mqhKZ+61z5j/nwWTK8BBxzoJD3kvmV1PIZgs/zbOVHPxOMy3B1+hQH
Na9lX1Eg9qr5QFePU1y/FLC0ZWiNBiIUqRkfMDms/aV871xJMHWg+Ywk+iuNt+y2zLbAwZWreS6M
ULY3AcZxTEOxE2P/deQ6E2zcaAz3hvItaGOC7DwQ0HYuvN++affFs63o3KOItlbSha0pzhAilcrE
CZhi72AGoUPt0bgEfKl0F7VeDqlOpLIMr2aO5gFlCycU+mBfYsNN4jtfm+WezQkDtbdaw4chdWTm
Vj/5d7tBh8WR74FJFbXxESxu7gnMbuJdizBKCkig84X7eAyEU2qAHhQfDN2IuaABaLJasoZbGedd
nOyK93x98fv7Tpyobb3C7tD0rWEE1dGQSKGVRUH/n18kJ7d+9iaXoRvhjGsDWPv1mMO1Z2uFWMYa
+a7a56u6/K49g0UFRPiqXAtFIkhljO+moK19STjzn8/wY/x4vbpwJ5C9xtS171TLCwpgPzV+tGy+
NEf9PbJ1SuR2FOD7MZ9R1fu3qMYa8LBZsT4ukl+Zcq6QuYhyc+reR3zwP9tzz9lqDmo5xgulpEOW
o4tzR7eE3KIya3gW32ER2WFKKrHV5uJkxIT1X6yi6hVF289eagDFa2I5QWRgUy8IKOyqW3mSwb2p
DoMyj332j4Bj0QOSsm5hhL5PnKV9A3BV7Te/+I6bshoStVt9ktzlQ7Hk/YIsdXV9SNa6QyQYKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22D7986DA7A2B60"
last-modified: Thu, 12 Nov 2026 00:45:03 GMT
content-md5: FwGtlivGpvJf/LIfb5re1g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: e3eedd8d-9155-485f-b5e2-86f903b608c3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f/bar

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
sg4iGkfm0QBViZ8T414ujUm9iVTdBTH2mVb3gvXAuj33jfznVqKnL45hZf6WADVLQCyzICRjgazc
K4Dw7k4KlM5hHFZiRzanFVnFfKAzYJkgrEHJDZkZlAtPCishtkE/V9AvNOTf6fj1CwrKnQUMqcvn
0EENQYc0R4hKEj0LhV8YhiXQAyu1QMNI0wGOT/YGQ2FfOuYAMhVI++1clde76oWrshbgPKWfMo9+
xG6FpfiRQ87cq0t5GFQPhwg+WKvrjel7453gJga7wAhXgW2nw1X0ylEI3j46MpnC0LWcYdnjkjeE
CcJbsB3IIOtDIpbmZ8OzSo1Z466qQbEDHlVRHl4vc+82IrmSmBozQL5S9w8D22nx6RdLia6I2sgR
WJLIdgGNE66nsEQKILFzJaPwV0mhAEPsXzVH5OlArUjwgUCHa8m8xeNgWyok58hm12MLmIJ/b1dP
3BfMRi/FZwP7GZ9w7LraM5JlQKQYx3ds4AyFNBTGcRHoN4+x73+0m/QnKc0p9eqpMWTvGS+zNhSf
X2UiQDLuNaiNiLQqKEQSsaWw8Z6qQ+si2wOv1ljiNQF7EpAakVvBOPMlnGw2fgkg3WeJAkV29Rx5
AGQvPl5QqlOzrxW0+CBK77mqhKZ+61z5j/nwWTK8BBxzoJD3kvmV1PIZgs/zbOVHPxOMy3B1+hQH
Na9lX1Eg9qr5QFePU1y/FLC0ZWiNBiIUqRkfMDms/aV871xJMHWg+Ywk+iuNt+y2zLbAwZWreS6M
ULY3AcZxTEOxE2P/deQ6E2zcaAz3hvItaGOC7DwQ0HYuvN++affFs63o3KOItlbSha0pzhAilcrE
CZhi72AGoUPt0bgEfKl0F7VeDqlOpLIMr2aO5gFlCycU+mBfYsNN4jtfm+WezQkDtbdaw4chdWTm
Vj/5d7tBh8WR74FJFbXxESxu7gnMbuJdizBKCkig84X7eAyEU2qAHhQfDN2IuaABaLJasoZbGedd
nOyK93x98fv7Tpyobb3C7tD0rWEE1dGQSKGVRUH/n18kJ7d+9iaXoRvhjGsDWPv1mMO1Z2uFWMYa
+a7a56u6/K49g0UFRPiqXAtFIkhljO+moK19STjzn8/wY/x4vbpwJ5C9xtS171TLCwpgPzV+tGy+
NEf9PbJ1SuR2FOD7MZ9R1fu3qMYa8LBZsT4ukl+Zcq6QuYhyc+reR3zwP9tzz9lqDmo5xgulpEOW
o4tzR7eE3KIya3gW32ER2WFKKrHV5uJkxIT1X6yi6hVF289eagDFa2I5QWRgUy8IKOyqW3mSwb2p
DoMyj332j4Bj0QOSsm5hhL5PnKV9A3BV7Te/+I6bshoStVt9ktzlQ7Hk/YIsdXV9SNa6QyQYKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1FC4BFD23FF75E0"
last-modified: Thu, 12 Nov 2026 00:45:03 GMT
content-md5: FwGtlivGpvJf/LIfb5re1g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 79ce6081-1139-457d-a757-b179ca03847f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f/baz

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
sg4iGkfm0QBViZ8T414ujUm9iVTdBTH2mVb3gvXAuj33jfznVqKnL45hZf6WADVLQCyzICRjgazc
K4Dw7k4KlM5hHFZiRzanFVnFfKAzYJkgrEHJDZkZlAtPCishtkE/V9AvNOTf6fj1CwrKnQUMqcvn
0EENQYc0R4hKEj0LhV8YhiXQAyu1QMNI0wGOT/YGQ2FfOuYAMhVI++1clde76oWrshbgPKWfMo9+
xG6FpfiRQ87cq0t5GFQPhwg+WKvrjel7453gJga7wAhXgW2nw1X0ylEI3j46MpnC0LWcYdnjkjeE
CcJbsB3IIOtDIpbmZ8OzSo1Z466qQbEDHlVRHl4vc+82IrmSmBozQL5S9w8D22nx6RdLia6I2sgR
WJLIdgGNE66nsEQKILFzJaPwV0mhAEPsXzVH5OlArUjwgUCHa8m8xeNgWyok58hm12MLmIJ/b1dP
3BfMRi/FZwP7GZ9w7LraM5JlQKQYx3ds4AyFNBTGcRHoN4+x73+0m/QnKc0p9eqpMWTvGS+zNhSf
X2UiQDLuNaiNiLQqKEQSsaWw8Z6qQ+si2wOv1ljiNQF7EpAakVvBOPMlnGw2fgkg3WeJAkV29Rx5
AGQvPl5QqlOzrxW0+CBK77mqhKZ+61z5j/nwWTK8BBxzoJD3kvmV1PIZgs/zbOVHPxOMy3B1+hQH
Na9lX1Eg9qr5QFePU1y/FLC0ZWiNBiIUqRkfMDms/aV871xJMHWg+Ywk+iuNt+y2zLbAwZWreS6M
ULY3AcZxTEOxE2P/deQ6E2zcaAz3hvItaGOC7DwQ0HYuvN++affFs63o3KOItlbSha0pzhAilcrE
CZhi72AGoUPt0bgEfKl0F7VeDqlOpLIMr2aO5gFlCycU+mBfYsNN4jtfm+WezQkDtbdaw4chdWTm
Vj/5d7tBh8WR74FJFbXxESxu7gnMbuJdizBKCkig84X7eAyEU2qAHhQfDN2IuaABaLJasoZbGedd
nOyK93x98fv7Tpyobb3C7tD0rWEE1dGQSKGVRUH/n18kJ7d+9iaXoRvhjGsDWPv1mMO1Z2uFWMYa
+a7a56u6/K49g0UFRPiqXAtFIkhljO+moK19STjzn8/wY/x4vbpwJ5C9xtS171TLCwpgPzV+tGy+
NEf9PbJ1SuR2FOD7MZ9R1fu3qMYa8LBZsT4ukl+Zcq6QuYhyc+reR3zwP9tzz9lqDmo5xgulpEOW
o4tzR7eE3KIya3gW32ER2WFKKrHV5uJkxIT1X6yi6hVF289eagDFa2I5QWRgUy8IKOyqW3mSwb2p
DoMyj332j4Bj0QOSsm5hhL5PnKV9A3BV7Te/+I6bshoStVt9ktzlQ7Hk/YIsdXV9SNa6QyQYKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2495729BEFC4780"
last-modified: Thu, 12 Nov 2026 00:45:03 GMT
content-md5: FwGtlivGpvJf/LIfb5re1g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: db41dd1e-d4dd-4a54-a2a1-1646f860bb47
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f/foo/foo

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
sg4iGkfm0QBViZ8T414ujUm9iVTdBTH2mVb3gvXAuj33jfznVqKnL45hZf6WADVLQCyzICRjgazc
K4Dw7k4KlM5hHFZiRzanFVnFfKAzYJkgrEHJDZkZlAtPCishtkE/V9AvNOTf6fj1CwrKnQUMqcvn
0EENQYc0R4hKEj0LhV8YhiXQAyu1QMNI0wGOT/YGQ2FfOuYAMhVI++1clde76oWrshbgPKWfMo9+
xG6FpfiRQ87cq0t5GFQPhwg+WKvrjel7453gJga7wAhXgW2nw1X0ylEI3j46MpnC0LWcYdnjkjeE
CcJbsB3IIOtDIpbmZ8OzSo1Z466qQbEDHlVRHl4vc+82IrmSmBozQL5S9w8D22nx6RdLia6I2sgR
WJLIdgGNE66nsEQKILFzJaPwV0mhAEPsXzVH5OlArUjwgUCHa8m8xeNgWyok58hm12MLmIJ/b1dP
3BfMRi/FZwP7GZ9w7LraM5JlQKQYx3ds4AyFNBTGcRHoN4+x73+0m/QnKc0p9eqpMWTvGS+zNhSf
X2UiQDLuNaiNiLQqKEQSsaWw8Z6qQ+si2wOv1ljiNQF7EpAakVvBOPMlnGw2fgkg3WeJAkV29Rx5
AGQvPl5QqlOzrxW0+CBK77mqhKZ+61z5j/nwWTK8BBxzoJD3kvmV1PIZgs/zbOVHPxOMy3B1+hQH
Na9lX1Eg9qr5QFePU1y/FLC0ZWiNBiIUqRkfMDms/aV871xJMHWg+Ywk+iuNt+y2zLbAwZWreS6M
ULY3AcZxTEOxE2P/deQ6E2zcaAz3hvItaGOC7DwQ0HYuvN++affFs63o3KOItlbSha0pzhAilcrE
CZhi72AGoUPt0bgEfKl0F7VeDqlOpLIMr2aO5gFlCycU+mBfYsNN4jtfm+WezQkDtbdaw4chdWTm
Vj/5d7tBh8WR74FJFbXxESxu7gnMbuJdizBKCkig84X7eAyEU2qAHhQfDN2IuaABaLJasoZbGedd
nOyK93x98fv7Tpyobb3C7tD0rWEE1dGQSKGVRUH/n18kJ7d+9iaXoRvhjGsDWPv1mMO1Z2uFWMYa
+a7a56u6/K49g0UFRPiqXAtFIkhljO+moK19STjzn8/wY/x4vbpwJ5C9xtS171TLCwpgPzV+tGy+
NEf9PbJ1SuR2FOD7MZ9R1fu3qMYa8LBZsT4ukl+Zcq6QuYhyc+reR3zwP9tzz9lqDmo5xgulpEOW
o4tzR7eE3KIya3gW32ER2WFKKrHV5uJkxIT1X6yi6hVF289eagDFa2I5QWRgUy8IKOyqW3mSwb2p
DoMyj332j4Bj0QOSsm5hhL5PnKV9A3BV7Te/+I6bshoStVt9ktzlQ7Hk/YIsdXV9SNa6QyQYKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1CB9DBFF4776B60"
last-modified: Thu, 12 Nov 2026 00:45:03 GMT
content-md5: FwGtlivGpvJf/LIfb5re1g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 24014a64-884f-495a-aa08-f349ff65ab90
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f/foo/bar

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
sg4iGkfm0QBViZ8T414ujUm9iVTdBTH2mVb3gvXAuj33jfznVqKnL45hZf6WADVLQCyzICRjgazc
K4Dw7k4KlM5hHFZiRzanFVnFfKAzYJkgrEHJDZkZlAtPCishtkE/V9AvNOTf6fj1CwrKnQUMqcvn
0EENQYc0R4hKEj0LhV8YhiXQAyu1QMNI0wGOT/YGQ2FfOuYAMhVI++1clde76oWrshbgPKWfMo9+
xG6FpfiRQ87cq0t5GFQPhwg+WKvrjel7453gJga7wAhXgW2nw1X0ylEI3j46MpnC0LWcYdnjkjeE
CcJbsB3IIOtDIpbmZ8OzSo1Z466qQbEDHlVRHl4vc+82IrmSmBozQL5S9w8D22nx6RdLia6I2sgR
WJLIdgGNE66nsEQKILFzJaPwV0mhAEPsXzVH5OlArUjwgUCHa8m8xeNgWyok58hm12MLmIJ/b1dP
3BfMRi/FZwP7GZ9w7LraM5JlQKQYx3ds4AyFNBTGcRHoN4+x73+0m/QnKc0p9eqpMWTvGS+zNhSf
X2UiQDLuNaiNiLQqKEQSsaWw8Z6qQ+si2wOv1ljiNQF7EpAakVvBOPMlnGw2fgkg3WeJAkV29Rx5
AGQvPl5QqlOzrxW0+CBK77mqhKZ+61z5j/nwWTK8BBxzoJD3kvmV1PIZgs/zbOVHPxOMy3B1+hQH
Na9lX1Eg9qr5QFePU1y/FLC0ZWiNBiIUqRkfMDms/aV871xJMHWg+Ywk+iuNt+y2zLbAwZWreS6M
ULY3AcZxTEOxE2P/deQ6E2zcaAz3hvItaGOC7DwQ0HYuvN++affFs63o3KOItlbSha0pzhAilcrE
CZhi72AGoUPt0bgEfKl0F7VeDqlOpLIMr2aO5gFlCycU+mBfYsNN4jtfm+WezQkDtbdaw4chdWTm
Vj/5d7tBh8WR74FJFbXxESxu7gnMbuJdizBKCkig84X7eAyEU2qAHhQfDN2IuaABaLJasoZbGedd
nOyK93x98fv7Tpyobb3C7tD0rWEE1dGQSKGVRUH/n18kJ7d+9iaXoRvhjGsDWPv1mMO1Z2uFWMYa
+a7a56u6/K49g0UFRPiqXAtFIkhljO+moK19STjzn8/wY/x4vbpwJ5C9xtS171TLCwpgPzV+tGy+
NEf9PbJ1SuR2FOD7MZ9R1fu3qMYa8LBZsT4ukl+Zcq6QuYhyc+reR3zwP9tzz9lqDmo5xgulpEOW
o4tzR7eE3KIya3gW32ER2WFKKrHV5uJkxIT1X6yi6hVF289eagDFa2I5QWRgUy8IKOyqW3mSwb2p
DoMyj332j4Bj0QOSsm5hhL5PnKV9A3BV7Te/+I6bshoStVt9ktzlQ7Hk/YIsdXV9SNa6QyQYKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DC4CCACD1959D0"
last-modified: Thu, 12 Nov 2026 00:45:03 GMT
content-md5: FwGtlivGpvJf/LIfb5re1g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 37d609dd-7c84-4b19-91b3-ae75673c5430
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f/baz/foo

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
sg4iGkfm0QBViZ8T414ujUm9iVTdBTH2mVb3gvXAuj33jfznVqKnL45hZf6WADVLQCyzICRjgazc
K4Dw7k4KlM5hHFZiRzanFVnFfKAzYJkgrEHJDZkZlAtPCishtkE/V9AvNOTf6fj1CwrKnQUMqcvn
0EENQYc0R4hKEj0LhV8YhiXQAyu1QMNI0wGOT/YGQ2FfOuYAMhVI++1clde76oWrshbgPKWfMo9+
xG6FpfiRQ87cq0t5GFQPhwg+WKvrjel7453gJga7wAhXgW2nw1X0ylEI3j46MpnC0LWcYdnjkjeE
CcJbsB3IIOtDIpbmZ8OzSo1Z466qQbEDHlVRHl4vc+82IrmSmBozQL5S9w8D22nx6RdLia6I2sgR
WJLIdgGNE66nsEQKILFzJaPwV0mhAEPsXzVH5OlArUjwgUCHa8m8xeNgWyok58hm12MLmIJ/b1dP
3BfMRi/FZwP7GZ9w7LraM5JlQKQYx3ds4AyFNBTGcRHoN4+x73+0m/QnKc0p9eqpMWTvGS+zNhSf
X2UiQDLuNaiNiLQqKEQSsaWw8Z6qQ+si2wOv1ljiNQF7EpAakVvBOPMlnGw2fgkg3WeJAkV29Rx5
AGQvPl5QqlOzrxW0+CBK77mqhKZ+61z5j/nwWTK8BBxzoJD3kvmV1PIZgs/zbOVHPxOMy3B1+hQH
Na9lX1Eg9qr5QFePU1y/FLC0ZWiNBiIUqRkfMDms/aV871xJMHWg+Ywk+iuNt+y2zLbAwZWreS6M
ULY3AcZxTEOxE2P/deQ6E2zcaAz3hvItaGOC7DwQ0HYuvN++affFs63o3KOItlbSha0pzhAilcrE
CZhi72AGoUPt0bgEfKl0F7VeDqlOpLIMr2aO5gFlCycU+mBfYsNN4jtfm+WezQkDtbdaw4chdWTm
Vj/5d7tBh8WR74FJFbXxESxu7gnMbuJdizBKCkig84X7eAyEU2qAHhQfDN2IuaABaLJasoZbGedd
nOyK93x98fv7Tpyobb3C7tD0rWEE1dGQSKGVRUH/n18kJ7d+9iaXoRvhjGsDWPv1mMO1Z2uFWMYa
+a7a56u6/K49g0UFRPiqXAtFIkhljO+moK19STjzn8/wY/x4vbpwJ5C9xtS171TLCwpgPzV+tGy+
NEf9PbJ1SuR2FOD7MZ9R1fu3qMYa8LBZsT4ukl+Zcq6QuYhyc+reR3zwP9tzz9lqDmo5xgulpEOW
o4tzR7eE3KIya3gW32ER2WFKKrHV5uJkxIT1X6yi6hVF289eagDFa2I5QWRgUy8IKOyqW3mSwb2p
DoMyj332j4Bj0QOSsm5hhL5PnKV9A3BV7Te/+I6bshoStVt9ktzlQ7Hk/YIsdXV9SNa6QyQYKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x222E2B65D190A00"
last-modified: Thu, 12 Nov 2026 00:45:03 GMT
content-md5: FwGtlivGpvJf/LIfb5re1g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e16142e-e356-4199-9b33-7884b5460ec1
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f/baz/foo/bar

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
sg4iGkfm0QBViZ8T414ujUm9iVTdBTH2mVb3gvXAuj33jfznVqKnL45hZf6WADVLQCyzICRjgazc
K4Dw7k4KlM5hHFZiRzanFVnFfKAzYJkgrEHJDZkZlAtPCishtkE/V9AvNOTf6fj1CwrKnQUMqcvn
0EENQYc0R4hKEj0LhV8YhiXQAyu1QMNI0wGOT/YGQ2FfOuYAMhVI++1clde76oWrshbgPKWfMo9+
xG6FpfiRQ87cq0t5GFQPhwg+WKvrjel7453gJga7wAhXgW2nw1X0ylEI3j46MpnC0LWcYdnjkjeE
CcJbsB3IIOtDIpbmZ8OzSo1Z466qQbEDHlVRHl4vc+82IrmSmBozQL5S9w8D22nx6RdLia6I2sgR
WJLIdgGNE66nsEQKILFzJaPwV0mhAEPsXzVH5OlArUjwgUCHa8m8xeNgWyok58hm12MLmIJ/b1dP
3BfMRi/FZwP7GZ9w7LraM5JlQKQYx3ds4AyFNBTGcRHoN4+x73+0m/QnKc0p9eqpMWTvGS+zNhSf
X2UiQDLuNaiNiLQqKEQSsaWw8Z6qQ+si2wOv1ljiNQF7EpAakVvBOPMlnGw2fgkg3WeJAkV29Rx5
AGQvPl5QqlOzrxW0+CBK77mqhKZ+61z5j/nwWTK8BBxzoJD3kvmV1PIZgs/zbOVHPxOMy3B1+hQH
Na9lX1Eg9qr5QFePU1y/FLC0ZWiNBiIUqRkfMDms/aV871xJMHWg+Ywk+iuNt+y2zLbAwZWreS6M
ULY3AcZxTEOxE2P/deQ6E2zcaAz3hvItaGOC7DwQ0HYuvN++affFs63o3KOItlbSha0pzhAilcrE
CZhi72AGoUPt0bgEfKl0F7VeDqlOpLIMr2aO5gFlCycU+mBfYsNN4jtfm+WezQkDtbdaw4chdWTm
Vj/5d7tBh8WR74FJFbXxESxu7gnMbuJdizBKCkig84X7eAyEU2qAHhQfDN2IuaABaLJasoZbGedd
nOyK93x98fv7Tpyobb3C7tD0rWEE1dGQSKGVRUH/n18kJ7d+9iaXoRvhjGsDWPv1mMO1Z2uFWMYa
+a7a56u6/K49g0UFRPiqXAtFIkhljO+moK19STjzn8/wY/x4vbpwJ5C9xtS171TLCwpgPzV+tGy+
NEf9PbJ1SuR2FOD7MZ9R1fu3qMYa8LBZsT4ukl+Zcq6QuYhyc+reR3zwP9tzz9lqDmo5xgulpEOW
o4tzR7eE3KIya3gW32ER2WFKKrHV5uJkxIT1X6yi6hVF289eagDFa2I5QWRgUy8IKOyqW3mSwb2p
DoMyj332j4Bj0QOSsm5hhL5PnKV9A3BV7Te/+I6bshoStVt9ktzlQ7Hk/YIsdXV9SNa6QyQYKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E12524092557C0"
last-modified: Thu, 12 Nov 2026 00:45:03 GMT
content-md5: FwGtlivGpvJf/LIfb5re1g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1905c97a-966d-4b41-af4a-aa85286bfb41
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f/baz/bar/foo

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
sg4iGkfm0QBViZ8T414ujUm9iVTdBTH2mVb3gvXAuj33jfznVqKnL45hZf6WADVLQCyzICRjgazc
K4Dw7k4KlM5hHFZiRzanFVnFfKAzYJkgrEHJDZkZlAtPCishtkE/V9AvNOTf6fj1CwrKnQUMqcvn
0EENQYc0R4hKEj0LhV8YhiXQAyu1QMNI0wGOT/YGQ2FfOuYAMhVI++1clde76oWrshbgPKWfMo9+
xG6FpfiRQ87cq0t5GFQPhwg+WKvrjel7453gJga7wAhXgW2nw1X0ylEI3j46MpnC0LWcYdnjkjeE
CcJbsB3IIOtDIpbmZ8OzSo1Z466qQbEDHlVRHl4vc+82IrmSmBozQL5S9w8D22nx6RdLia6I2sgR
WJLIdgGNE66nsEQKILFzJaPwV0mhAEPsXzVH5OlArUjwgUCHa8m8xeNgWyok58hm12MLmIJ/b1dP
3BfMRi/FZwP7GZ9w7LraM5JlQKQYx3ds4AyFNBTGcRHoN4+x73+0m/QnKc0p9eqpMWTvGS+zNhSf
X2UiQDLuNaiNiLQqKEQSsaWw8Z6qQ+si2wOv1ljiNQF7EpAakVvBOPMlnGw2fgkg3WeJAkV29Rx5
AGQvPl5QqlOzrxW0+CBK77mqhKZ+61z5j/nwWTK8BBxzoJD3kvmV1PIZgs/zbOVHPxOMy3B1+hQH
Na9lX1Eg9qr5QFePU1y/FLC0ZWiNBiIUqRkfMDms/aV871xJMHWg+Ywk+iuNt+y2zLbAwZWreS6M
ULY3AcZxTEOxE2P/deQ6E2zcaAz3hvItaGOC7DwQ0HYuvN++affFs63o3KOItlbSha0pzhAilcrE
CZhi72AGoUPt0bgEfKl0F7VeDqlOpLIMr2aO5gFlCycU+mBfYsNN4jtfm+WezQkDtbdaw4chdWTm
Vj/5d7tBh8WR74FJFbXxESxu7gnMbuJdizBKCkig84X7eAyEU2qAHhQfDN2IuaABaLJasoZbGedd
nOyK93x98fv7Tpyobb3C7tD0rWEE1dGQSKGVRUH/n18kJ7d+9iaXoRvhjGsDWPv1mMO1Z2uFWMYa
+a7a56u6/K49g0UFRPiqXAtFIkhljO+moK19STjzn8/wY/x4vbpwJ5C9xtS171TLCwpgPzV+tGy+
NEf9PbJ1SuR2FOD7MZ9R1fu3qMYa8LBZsT4ukl+Zcq6QuYhyc+reR3zwP9tzz9lqDmo5xgulpEOW
o4tzR7eE3KIya3gW32ER2WFKKrHV5uJkxIT1X6yi6hVF289eagDFa2I5QWRgUy8IKOyqW3mSwb2p
DoMyj332j4Bj0QOSsm5hhL5PnKV9A3BV7Te/+I6bshoStVt9ktzlQ7Hk/YIsdXV9SNa6QyQYKw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x255B06B7E4EDFC0"
last-modified: Thu, 12 Nov 2026 00:45:03 GMT
content-md5: FwGtlivGpvJf/LIfb5re1g==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 36e79e13-fc3c-4564-ba2d-8d8a3ff17781
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f/foo/foo?comp=metadata

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
etag: "0x25760E8ECA075E0"
last-modified: Thu, 12 Nov 2026 00:45:03 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9e965453-6b19-4e75-9139-e786ce29d200
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f?restype=container&comp=list&delimiter=%2F&maxresults=2

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
x-ms-request-id: 9ce42e96-8a92-4e77-b47b-a08821a26bd5
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-ba615f15-3587-1913-aa6f-bafcddadb75f"><Prefix/><Marker/><MaxResults>2</MaxResults><Delimiter>/</Delimiter><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:03 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:03 GMT</Last-Modified><Etag>0x1FC4BFD23FF75E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>FwGtlivGpvJf/LIfb5re1g==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:03 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:03 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:03 GMT</Last-Modified><Etag>0x2495729BEFC4780</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>FwGtlivGpvJf/LIfb5re1g==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:03 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker>baz</NextMarker></EnumerationResults>
```

## Interaction 11: GET /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f?restype=container&comp=list&delimiter=%2F&marker=baz&maxresults=2

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
x-ms-request-id: eb96dfd2-e9a6-483f-b9b5-af0df28def10
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-ba615f15-3587-1913-aa6f-bafcddadb75f"><Prefix/><Marker>baz</Marker><MaxResults>2</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>baz/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:45:03 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:45:03 GMT</Last-Modified><Etag>0x22D7986DA7A2B60</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>FwGtlivGpvJf/LIfb5re1g==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:45:03 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker>foo</NextMarker></EnumerationResults>
```

## Interaction 12: GET /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f?restype=container&comp=list&delimiter=%2F&marker=foo&maxresults=2

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
x-ms-request-id: 20b19346-cb22-4b03-90f9-6823fc863397
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-ba615f15-3587-1913-aa6f-bafcddadb75f"><Prefix/><Marker>foo</Marker><MaxResults>2</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 13: DELETE /devstoreaccount1/test-container-ba615f15-3587-1913-aa6f-bafcddadb75f?restype=container

### Request headers recorded for playback:

```
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
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 477fd9ba-58e8-4c3d-832b-769fe428706d
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:45:03 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

