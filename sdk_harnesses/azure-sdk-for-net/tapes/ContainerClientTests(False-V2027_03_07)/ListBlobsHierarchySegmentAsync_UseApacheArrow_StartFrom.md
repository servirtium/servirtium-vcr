## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsHierarchySegmentAsync_UseApacheArrow_StartFrom
now: 2026-11-12T00:44:00.8185914+00:00

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
etag: "0x25ECAF6CFF62D20"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 3451ae78-e492-4174-8730-0a9e6c7150d5
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:00 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75/foo

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
ABm/Plr4c5lOfjOdy9y0ndddszr8mKhkRE+tOaVj6QYZrsVwxRPQ72U98E8snz7MGaQ+ro6FeGhx
W/oLSzrz65UtgxwXQ9fEjMTUv6dYN6QQ4B8AJTp3kzVc/2kZxaQrSQW6/hwhtNXMeiLKsbnAGSRV
+moa8sVatu/nukRuqscgqHWhnTiH7ytKM6sYreJ8nOZEw8o5EVdAYEgsOfqRXs9aqQhDH3vrzQs+
0L4aQQkMax5eKef95pYeYTzwW7UxuNXbvgPaOHxqWfW++0GYJR8+H87bMzTnXcJxJL0/+nJWDBfo
PoMGMjKi89DxPutVhTwdsjvmVoWh82BAaBS/K16DZ+8psOacOO2cOT9k9h/XG5+BIkg2cLWSR0oi
xcke4shxbtb7LNVVgHlOSh1FPf1BaUx1PQgWTPc5l2ibeXMjfVZ38odI2+/JLKHP6CWYTApM4Vx9
qaW/WyLfwpRtuQcGK8zHzkp2+Y1cqxFnRmPSoUpeT5gWptSwt5ZkaRlaXHKZyL1Y0X2/1ufPIP2U
VxS+DCBKDmpv74X4Fhe0EZBzAk+ezX6medDMn3iwR4XXHF+Cplz5EE0IKtg3YLpmC8RXXB6t9YmW
F5NQfW/xvqj/Ifm3MmszefEClaOlbxkVZpOzWOtnKSbV647IqZPdFmswOD/ArtlZI+Isq1/m8ah6
OhbbPma8l/jT4Ubca9BeJH83dDbaVLe6WTQJO33G7/rmTm58AdgFdKBG7cySfLgRzofgr3xxoOVf
IeQxs1x6DPJL9hxi4SKnMQCWk2fqKN1792z15kB+dK6IHeDz1MBDzOHaRoabr+xkOX172wx+dPkH
tbvvhCWyzYJu2cRCs10/UseFEOFX4EiAka3CApmhCqjn7B4FU0e8J3gDLdUnIoYgPIhF+WMXr9Vy
b/N48MvpzM8bW8Y+Ov6AyeloU7JzWG4mocYQWxBFzzxJkuRTQzetGmAGDMfA4QGJxTB6r1wj/xeF
UU4F2XC+1ouJ9agaLIWxujlRbEynZsDEhpbgyh/gJpPMzvLoqEHwSDU7NutZb5iqyPQj0ZLK3eqN
QFLa3QtsqM8UTV6SyRL3YSQWbC/Uaxf9NQIrvVQAAfAHW2juFWopz40cRCE6GP/hK29ts3G6udQ7
3KcJQet6FExti22qCUu67Z2iuCb2wx0CSZHkkk1/TKGTsznCH42ioTDVzYyRNyIjs8bUGACtRRmK
B/dZloH+7T7MFlUS980P/xf2IfWRcBFvwN6HqzSg5W4fOBiWSAuv1t9OxSDMEbz5xRnptyMj+Zbm
6dWidkIKKzHn8r+0eLYLR0oWQqvxo68ijuYbti5K+z6CsF82DF+cQ5nv5B78RExi3nDZDbbq9A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x235B47B739667E0"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: 0f5Zi42bXVLx4k6+Xqg+ag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: a0519808-cd22-4ded-a2b4-2fdc45701ca3
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75/bar

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
ABm/Plr4c5lOfjOdy9y0ndddszr8mKhkRE+tOaVj6QYZrsVwxRPQ72U98E8snz7MGaQ+ro6FeGhx
W/oLSzrz65UtgxwXQ9fEjMTUv6dYN6QQ4B8AJTp3kzVc/2kZxaQrSQW6/hwhtNXMeiLKsbnAGSRV
+moa8sVatu/nukRuqscgqHWhnTiH7ytKM6sYreJ8nOZEw8o5EVdAYEgsOfqRXs9aqQhDH3vrzQs+
0L4aQQkMax5eKef95pYeYTzwW7UxuNXbvgPaOHxqWfW++0GYJR8+H87bMzTnXcJxJL0/+nJWDBfo
PoMGMjKi89DxPutVhTwdsjvmVoWh82BAaBS/K16DZ+8psOacOO2cOT9k9h/XG5+BIkg2cLWSR0oi
xcke4shxbtb7LNVVgHlOSh1FPf1BaUx1PQgWTPc5l2ibeXMjfVZ38odI2+/JLKHP6CWYTApM4Vx9
qaW/WyLfwpRtuQcGK8zHzkp2+Y1cqxFnRmPSoUpeT5gWptSwt5ZkaRlaXHKZyL1Y0X2/1ufPIP2U
VxS+DCBKDmpv74X4Fhe0EZBzAk+ezX6medDMn3iwR4XXHF+Cplz5EE0IKtg3YLpmC8RXXB6t9YmW
F5NQfW/xvqj/Ifm3MmszefEClaOlbxkVZpOzWOtnKSbV647IqZPdFmswOD/ArtlZI+Isq1/m8ah6
OhbbPma8l/jT4Ubca9BeJH83dDbaVLe6WTQJO33G7/rmTm58AdgFdKBG7cySfLgRzofgr3xxoOVf
IeQxs1x6DPJL9hxi4SKnMQCWk2fqKN1792z15kB+dK6IHeDz1MBDzOHaRoabr+xkOX172wx+dPkH
tbvvhCWyzYJu2cRCs10/UseFEOFX4EiAka3CApmhCqjn7B4FU0e8J3gDLdUnIoYgPIhF+WMXr9Vy
b/N48MvpzM8bW8Y+Ov6AyeloU7JzWG4mocYQWxBFzzxJkuRTQzetGmAGDMfA4QGJxTB6r1wj/xeF
UU4F2XC+1ouJ9agaLIWxujlRbEynZsDEhpbgyh/gJpPMzvLoqEHwSDU7NutZb5iqyPQj0ZLK3eqN
QFLa3QtsqM8UTV6SyRL3YSQWbC/Uaxf9NQIrvVQAAfAHW2juFWopz40cRCE6GP/hK29ts3G6udQ7
3KcJQet6FExti22qCUu67Z2iuCb2wx0CSZHkkk1/TKGTsznCH42ioTDVzYyRNyIjs8bUGACtRRmK
B/dZloH+7T7MFlUS980P/xf2IfWRcBFvwN6HqzSg5W4fOBiWSAuv1t9OxSDMEbz5xRnptyMj+Zbm
6dWidkIKKzHn8r+0eLYLR0oWQqvxo68ijuYbti5K+z6CsF82DF+cQ5nv5B78RExi3nDZDbbq9A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2711062388E6500"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: 0f5Zi42bXVLx4k6+Xqg+ag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b95bd560-7bca-4610-8784-49ec33bb7731
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75/baz

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
ABm/Plr4c5lOfjOdy9y0ndddszr8mKhkRE+tOaVj6QYZrsVwxRPQ72U98E8snz7MGaQ+ro6FeGhx
W/oLSzrz65UtgxwXQ9fEjMTUv6dYN6QQ4B8AJTp3kzVc/2kZxaQrSQW6/hwhtNXMeiLKsbnAGSRV
+moa8sVatu/nukRuqscgqHWhnTiH7ytKM6sYreJ8nOZEw8o5EVdAYEgsOfqRXs9aqQhDH3vrzQs+
0L4aQQkMax5eKef95pYeYTzwW7UxuNXbvgPaOHxqWfW++0GYJR8+H87bMzTnXcJxJL0/+nJWDBfo
PoMGMjKi89DxPutVhTwdsjvmVoWh82BAaBS/K16DZ+8psOacOO2cOT9k9h/XG5+BIkg2cLWSR0oi
xcke4shxbtb7LNVVgHlOSh1FPf1BaUx1PQgWTPc5l2ibeXMjfVZ38odI2+/JLKHP6CWYTApM4Vx9
qaW/WyLfwpRtuQcGK8zHzkp2+Y1cqxFnRmPSoUpeT5gWptSwt5ZkaRlaXHKZyL1Y0X2/1ufPIP2U
VxS+DCBKDmpv74X4Fhe0EZBzAk+ezX6medDMn3iwR4XXHF+Cplz5EE0IKtg3YLpmC8RXXB6t9YmW
F5NQfW/xvqj/Ifm3MmszefEClaOlbxkVZpOzWOtnKSbV647IqZPdFmswOD/ArtlZI+Isq1/m8ah6
OhbbPma8l/jT4Ubca9BeJH83dDbaVLe6WTQJO33G7/rmTm58AdgFdKBG7cySfLgRzofgr3xxoOVf
IeQxs1x6DPJL9hxi4SKnMQCWk2fqKN1792z15kB+dK6IHeDz1MBDzOHaRoabr+xkOX172wx+dPkH
tbvvhCWyzYJu2cRCs10/UseFEOFX4EiAka3CApmhCqjn7B4FU0e8J3gDLdUnIoYgPIhF+WMXr9Vy
b/N48MvpzM8bW8Y+Ov6AyeloU7JzWG4mocYQWxBFzzxJkuRTQzetGmAGDMfA4QGJxTB6r1wj/xeF
UU4F2XC+1ouJ9agaLIWxujlRbEynZsDEhpbgyh/gJpPMzvLoqEHwSDU7NutZb5iqyPQj0ZLK3eqN
QFLa3QtsqM8UTV6SyRL3YSQWbC/Uaxf9NQIrvVQAAfAHW2juFWopz40cRCE6GP/hK29ts3G6udQ7
3KcJQet6FExti22qCUu67Z2iuCb2wx0CSZHkkk1/TKGTsznCH42ioTDVzYyRNyIjs8bUGACtRRmK
B/dZloH+7T7MFlUS980P/xf2IfWRcBFvwN6HqzSg5W4fOBiWSAuv1t9OxSDMEbz5xRnptyMj+Zbm
6dWidkIKKzHn8r+0eLYLR0oWQqvxo68ijuYbti5K+z6CsF82DF+cQ5nv5B78RExi3nDZDbbq9A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x261A7BFBC825740"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: 0f5Zi42bXVLx4k6+Xqg+ag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 41ccfbbd-3148-4a41-8d2e-116fcd84b027
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75/foo/foo

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
ABm/Plr4c5lOfjOdy9y0ndddszr8mKhkRE+tOaVj6QYZrsVwxRPQ72U98E8snz7MGaQ+ro6FeGhx
W/oLSzrz65UtgxwXQ9fEjMTUv6dYN6QQ4B8AJTp3kzVc/2kZxaQrSQW6/hwhtNXMeiLKsbnAGSRV
+moa8sVatu/nukRuqscgqHWhnTiH7ytKM6sYreJ8nOZEw8o5EVdAYEgsOfqRXs9aqQhDH3vrzQs+
0L4aQQkMax5eKef95pYeYTzwW7UxuNXbvgPaOHxqWfW++0GYJR8+H87bMzTnXcJxJL0/+nJWDBfo
PoMGMjKi89DxPutVhTwdsjvmVoWh82BAaBS/K16DZ+8psOacOO2cOT9k9h/XG5+BIkg2cLWSR0oi
xcke4shxbtb7LNVVgHlOSh1FPf1BaUx1PQgWTPc5l2ibeXMjfVZ38odI2+/JLKHP6CWYTApM4Vx9
qaW/WyLfwpRtuQcGK8zHzkp2+Y1cqxFnRmPSoUpeT5gWptSwt5ZkaRlaXHKZyL1Y0X2/1ufPIP2U
VxS+DCBKDmpv74X4Fhe0EZBzAk+ezX6medDMn3iwR4XXHF+Cplz5EE0IKtg3YLpmC8RXXB6t9YmW
F5NQfW/xvqj/Ifm3MmszefEClaOlbxkVZpOzWOtnKSbV647IqZPdFmswOD/ArtlZI+Isq1/m8ah6
OhbbPma8l/jT4Ubca9BeJH83dDbaVLe6WTQJO33G7/rmTm58AdgFdKBG7cySfLgRzofgr3xxoOVf
IeQxs1x6DPJL9hxi4SKnMQCWk2fqKN1792z15kB+dK6IHeDz1MBDzOHaRoabr+xkOX172wx+dPkH
tbvvhCWyzYJu2cRCs10/UseFEOFX4EiAka3CApmhCqjn7B4FU0e8J3gDLdUnIoYgPIhF+WMXr9Vy
b/N48MvpzM8bW8Y+Ov6AyeloU7JzWG4mocYQWxBFzzxJkuRTQzetGmAGDMfA4QGJxTB6r1wj/xeF
UU4F2XC+1ouJ9agaLIWxujlRbEynZsDEhpbgyh/gJpPMzvLoqEHwSDU7NutZb5iqyPQj0ZLK3eqN
QFLa3QtsqM8UTV6SyRL3YSQWbC/Uaxf9NQIrvVQAAfAHW2juFWopz40cRCE6GP/hK29ts3G6udQ7
3KcJQet6FExti22qCUu67Z2iuCb2wx0CSZHkkk1/TKGTsznCH42ioTDVzYyRNyIjs8bUGACtRRmK
B/dZloH+7T7MFlUS980P/xf2IfWRcBFvwN6HqzSg5W4fOBiWSAuv1t9OxSDMEbz5xRnptyMj+Zbm
6dWidkIKKzHn8r+0eLYLR0oWQqvxo68ijuYbti5K+z6CsF82DF+cQ5nv5B78RExi3nDZDbbq9A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C5CA103B85D600"
last-modified: Thu, 12 Nov 2026 00:44:00 GMT
content-md5: 0f5Zi42bXVLx4k6+Xqg+ag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 50e79c61-b864-4b29-a157-6faf22047800
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:00 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75/foo/bar

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
ABm/Plr4c5lOfjOdy9y0ndddszr8mKhkRE+tOaVj6QYZrsVwxRPQ72U98E8snz7MGaQ+ro6FeGhx
W/oLSzrz65UtgxwXQ9fEjMTUv6dYN6QQ4B8AJTp3kzVc/2kZxaQrSQW6/hwhtNXMeiLKsbnAGSRV
+moa8sVatu/nukRuqscgqHWhnTiH7ytKM6sYreJ8nOZEw8o5EVdAYEgsOfqRXs9aqQhDH3vrzQs+
0L4aQQkMax5eKef95pYeYTzwW7UxuNXbvgPaOHxqWfW++0GYJR8+H87bMzTnXcJxJL0/+nJWDBfo
PoMGMjKi89DxPutVhTwdsjvmVoWh82BAaBS/K16DZ+8psOacOO2cOT9k9h/XG5+BIkg2cLWSR0oi
xcke4shxbtb7LNVVgHlOSh1FPf1BaUx1PQgWTPc5l2ibeXMjfVZ38odI2+/JLKHP6CWYTApM4Vx9
qaW/WyLfwpRtuQcGK8zHzkp2+Y1cqxFnRmPSoUpeT5gWptSwt5ZkaRlaXHKZyL1Y0X2/1ufPIP2U
VxS+DCBKDmpv74X4Fhe0EZBzAk+ezX6medDMn3iwR4XXHF+Cplz5EE0IKtg3YLpmC8RXXB6t9YmW
F5NQfW/xvqj/Ifm3MmszefEClaOlbxkVZpOzWOtnKSbV647IqZPdFmswOD/ArtlZI+Isq1/m8ah6
OhbbPma8l/jT4Ubca9BeJH83dDbaVLe6WTQJO33G7/rmTm58AdgFdKBG7cySfLgRzofgr3xxoOVf
IeQxs1x6DPJL9hxi4SKnMQCWk2fqKN1792z15kB+dK6IHeDz1MBDzOHaRoabr+xkOX172wx+dPkH
tbvvhCWyzYJu2cRCs10/UseFEOFX4EiAka3CApmhCqjn7B4FU0e8J3gDLdUnIoYgPIhF+WMXr9Vy
b/N48MvpzM8bW8Y+Ov6AyeloU7JzWG4mocYQWxBFzzxJkuRTQzetGmAGDMfA4QGJxTB6r1wj/xeF
UU4F2XC+1ouJ9agaLIWxujlRbEynZsDEhpbgyh/gJpPMzvLoqEHwSDU7NutZb5iqyPQj0ZLK3eqN
QFLa3QtsqM8UTV6SyRL3YSQWbC/Uaxf9NQIrvVQAAfAHW2juFWopz40cRCE6GP/hK29ts3G6udQ7
3KcJQet6FExti22qCUu67Z2iuCb2wx0CSZHkkk1/TKGTsznCH42ioTDVzYyRNyIjs8bUGACtRRmK
B/dZloH+7T7MFlUS980P/xf2IfWRcBFvwN6HqzSg5W4fOBiWSAuv1t9OxSDMEbz5xRnptyMj+Zbm
6dWidkIKKzHn8r+0eLYLR0oWQqvxo68ijuYbti5K+z6CsF82DF+cQ5nv5B78RExi3nDZDbbq9A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x226420E28F90900"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 0f5Zi42bXVLx4k6+Xqg+ag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 579320f4-bbbb-4afb-bc4b-286df2672c74
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75/baz/foo

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
ABm/Plr4c5lOfjOdy9y0ndddszr8mKhkRE+tOaVj6QYZrsVwxRPQ72U98E8snz7MGaQ+ro6FeGhx
W/oLSzrz65UtgxwXQ9fEjMTUv6dYN6QQ4B8AJTp3kzVc/2kZxaQrSQW6/hwhtNXMeiLKsbnAGSRV
+moa8sVatu/nukRuqscgqHWhnTiH7ytKM6sYreJ8nOZEw8o5EVdAYEgsOfqRXs9aqQhDH3vrzQs+
0L4aQQkMax5eKef95pYeYTzwW7UxuNXbvgPaOHxqWfW++0GYJR8+H87bMzTnXcJxJL0/+nJWDBfo
PoMGMjKi89DxPutVhTwdsjvmVoWh82BAaBS/K16DZ+8psOacOO2cOT9k9h/XG5+BIkg2cLWSR0oi
xcke4shxbtb7LNVVgHlOSh1FPf1BaUx1PQgWTPc5l2ibeXMjfVZ38odI2+/JLKHP6CWYTApM4Vx9
qaW/WyLfwpRtuQcGK8zHzkp2+Y1cqxFnRmPSoUpeT5gWptSwt5ZkaRlaXHKZyL1Y0X2/1ufPIP2U
VxS+DCBKDmpv74X4Fhe0EZBzAk+ezX6medDMn3iwR4XXHF+Cplz5EE0IKtg3YLpmC8RXXB6t9YmW
F5NQfW/xvqj/Ifm3MmszefEClaOlbxkVZpOzWOtnKSbV647IqZPdFmswOD/ArtlZI+Isq1/m8ah6
OhbbPma8l/jT4Ubca9BeJH83dDbaVLe6WTQJO33G7/rmTm58AdgFdKBG7cySfLgRzofgr3xxoOVf
IeQxs1x6DPJL9hxi4SKnMQCWk2fqKN1792z15kB+dK6IHeDz1MBDzOHaRoabr+xkOX172wx+dPkH
tbvvhCWyzYJu2cRCs10/UseFEOFX4EiAka3CApmhCqjn7B4FU0e8J3gDLdUnIoYgPIhF+WMXr9Vy
b/N48MvpzM8bW8Y+Ov6AyeloU7JzWG4mocYQWxBFzzxJkuRTQzetGmAGDMfA4QGJxTB6r1wj/xeF
UU4F2XC+1ouJ9agaLIWxujlRbEynZsDEhpbgyh/gJpPMzvLoqEHwSDU7NutZb5iqyPQj0ZLK3eqN
QFLa3QtsqM8UTV6SyRL3YSQWbC/Uaxf9NQIrvVQAAfAHW2juFWopz40cRCE6GP/hK29ts3G6udQ7
3KcJQet6FExti22qCUu67Z2iuCb2wx0CSZHkkk1/TKGTsznCH42ioTDVzYyRNyIjs8bUGACtRRmK
B/dZloH+7T7MFlUS980P/xf2IfWRcBFvwN6HqzSg5W4fOBiWSAuv1t9OxSDMEbz5xRnptyMj+Zbm
6dWidkIKKzHn8r+0eLYLR0oWQqvxo68ijuYbti5K+z6CsF82DF+cQ5nv5B78RExi3nDZDbbq9A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F091090577B4C0"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 0f5Zi42bXVLx4k6+Xqg+ag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 9bd8746c-4fe4-40c0-802d-e0ebc553e327
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75/baz/foo/bar

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
ABm/Plr4c5lOfjOdy9y0ndddszr8mKhkRE+tOaVj6QYZrsVwxRPQ72U98E8snz7MGaQ+ro6FeGhx
W/oLSzrz65UtgxwXQ9fEjMTUv6dYN6QQ4B8AJTp3kzVc/2kZxaQrSQW6/hwhtNXMeiLKsbnAGSRV
+moa8sVatu/nukRuqscgqHWhnTiH7ytKM6sYreJ8nOZEw8o5EVdAYEgsOfqRXs9aqQhDH3vrzQs+
0L4aQQkMax5eKef95pYeYTzwW7UxuNXbvgPaOHxqWfW++0GYJR8+H87bMzTnXcJxJL0/+nJWDBfo
PoMGMjKi89DxPutVhTwdsjvmVoWh82BAaBS/K16DZ+8psOacOO2cOT9k9h/XG5+BIkg2cLWSR0oi
xcke4shxbtb7LNVVgHlOSh1FPf1BaUx1PQgWTPc5l2ibeXMjfVZ38odI2+/JLKHP6CWYTApM4Vx9
qaW/WyLfwpRtuQcGK8zHzkp2+Y1cqxFnRmPSoUpeT5gWptSwt5ZkaRlaXHKZyL1Y0X2/1ufPIP2U
VxS+DCBKDmpv74X4Fhe0EZBzAk+ezX6medDMn3iwR4XXHF+Cplz5EE0IKtg3YLpmC8RXXB6t9YmW
F5NQfW/xvqj/Ifm3MmszefEClaOlbxkVZpOzWOtnKSbV647IqZPdFmswOD/ArtlZI+Isq1/m8ah6
OhbbPma8l/jT4Ubca9BeJH83dDbaVLe6WTQJO33G7/rmTm58AdgFdKBG7cySfLgRzofgr3xxoOVf
IeQxs1x6DPJL9hxi4SKnMQCWk2fqKN1792z15kB+dK6IHeDz1MBDzOHaRoabr+xkOX172wx+dPkH
tbvvhCWyzYJu2cRCs10/UseFEOFX4EiAka3CApmhCqjn7B4FU0e8J3gDLdUnIoYgPIhF+WMXr9Vy
b/N48MvpzM8bW8Y+Ov6AyeloU7JzWG4mocYQWxBFzzxJkuRTQzetGmAGDMfA4QGJxTB6r1wj/xeF
UU4F2XC+1ouJ9agaLIWxujlRbEynZsDEhpbgyh/gJpPMzvLoqEHwSDU7NutZb5iqyPQj0ZLK3eqN
QFLa3QtsqM8UTV6SyRL3YSQWbC/Uaxf9NQIrvVQAAfAHW2juFWopz40cRCE6GP/hK29ts3G6udQ7
3KcJQet6FExti22qCUu67Z2iuCb2wx0CSZHkkk1/TKGTsznCH42ioTDVzYyRNyIjs8bUGACtRRmK
B/dZloH+7T7MFlUS980P/xf2IfWRcBFvwN6HqzSg5W4fOBiWSAuv1t9OxSDMEbz5xRnptyMj+Zbm
6dWidkIKKzHn8r+0eLYLR0oWQqvxo68ijuYbti5K+z6CsF82DF+cQ5nv5B78RExi3nDZDbbq9A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1C193495F4440C0"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 0f5Zi42bXVLx4k6+Xqg+ag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f905be48-41ee-4790-8efb-7763e9a0725f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75/baz/bar/foo

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
ABm/Plr4c5lOfjOdy9y0ndddszr8mKhkRE+tOaVj6QYZrsVwxRPQ72U98E8snz7MGaQ+ro6FeGhx
W/oLSzrz65UtgxwXQ9fEjMTUv6dYN6QQ4B8AJTp3kzVc/2kZxaQrSQW6/hwhtNXMeiLKsbnAGSRV
+moa8sVatu/nukRuqscgqHWhnTiH7ytKM6sYreJ8nOZEw8o5EVdAYEgsOfqRXs9aqQhDH3vrzQs+
0L4aQQkMax5eKef95pYeYTzwW7UxuNXbvgPaOHxqWfW++0GYJR8+H87bMzTnXcJxJL0/+nJWDBfo
PoMGMjKi89DxPutVhTwdsjvmVoWh82BAaBS/K16DZ+8psOacOO2cOT9k9h/XG5+BIkg2cLWSR0oi
xcke4shxbtb7LNVVgHlOSh1FPf1BaUx1PQgWTPc5l2ibeXMjfVZ38odI2+/JLKHP6CWYTApM4Vx9
qaW/WyLfwpRtuQcGK8zHzkp2+Y1cqxFnRmPSoUpeT5gWptSwt5ZkaRlaXHKZyL1Y0X2/1ufPIP2U
VxS+DCBKDmpv74X4Fhe0EZBzAk+ezX6medDMn3iwR4XXHF+Cplz5EE0IKtg3YLpmC8RXXB6t9YmW
F5NQfW/xvqj/Ifm3MmszefEClaOlbxkVZpOzWOtnKSbV647IqZPdFmswOD/ArtlZI+Isq1/m8ah6
OhbbPma8l/jT4Ubca9BeJH83dDbaVLe6WTQJO33G7/rmTm58AdgFdKBG7cySfLgRzofgr3xxoOVf
IeQxs1x6DPJL9hxi4SKnMQCWk2fqKN1792z15kB+dK6IHeDz1MBDzOHaRoabr+xkOX172wx+dPkH
tbvvhCWyzYJu2cRCs10/UseFEOFX4EiAka3CApmhCqjn7B4FU0e8J3gDLdUnIoYgPIhF+WMXr9Vy
b/N48MvpzM8bW8Y+Ov6AyeloU7JzWG4mocYQWxBFzzxJkuRTQzetGmAGDMfA4QGJxTB6r1wj/xeF
UU4F2XC+1ouJ9agaLIWxujlRbEynZsDEhpbgyh/gJpPMzvLoqEHwSDU7NutZb5iqyPQj0ZLK3eqN
QFLa3QtsqM8UTV6SyRL3YSQWbC/Uaxf9NQIrvVQAAfAHW2juFWopz40cRCE6GP/hK29ts3G6udQ7
3KcJQet6FExti22qCUu67Z2iuCb2wx0CSZHkkk1/TKGTsznCH42ioTDVzYyRNyIjs8bUGACtRRmK
B/dZloH+7T7MFlUS980P/xf2IfWRcBFvwN6HqzSg5W4fOBiWSAuv1t9OxSDMEbz5xRnptyMj+Zbm
6dWidkIKKzHn8r+0eLYLR0oWQqvxo68ijuYbti5K+z6CsF82DF+cQ5nv5B78RExi3nDZDbbq9A==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E354ECE2B05810"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
content-md5: 0f5Zi42bXVLx4k6+Xqg+ag==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1b3e255e-6bc5-485f-b27b-cd4c6db63f4c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75/foo/foo?comp=metadata

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
etag: "0x266574BEC9563A0"
last-modified: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 20bb518c-5913-434b-baf4-52f22bc41f2e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75?restype=container&comp=list&delimiter=%2F&startFrom=foo

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
x-ms-request-id: e66c121b-a678-413d-8707-370e11be9f17
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75"><Prefix/><Marker/><MaxResults>5000</MaxResults><Delimiter>/</Delimiter><Blobs><BlobPrefix><Name>foo/</Name></BlobPrefix><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:00 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:00 GMT</Last-Modified><Etag>0x235B47B739667E0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>0f5Zi42bXVLx4k6+Xqg+ag==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:00 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-3fd6d9e7-60ce-093d-a9cd-42150b42bf75?restype=container

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
x-ms-request-id: 11de3972-589a-41ea-8591-f6e95fe26fc8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:01 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

