## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(True,V2027_03_07).ListBlobsFlatSegmentAsync_UseApacheArrow_LastAccessed
now: 2026-11-12T00:44:55.8767238+00:00

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
etag: "0x2718928CBE35B80"
last-modified: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 7b84083e-b1cb-47de-ba11-790808ed0b67
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:44:55 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941/foo

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
/LhwPKvXC7pUDBv1oWOWM0EtcWk4j5wraBFUB7RhnZKST72x+yOMl92g+GYlmWAMN9J2bvBfCWwc
RdSZggMG82+IYlKm5DceodmMmJc1Bs6xSNDh6y6iM0ZQlbZP8xTZmgT3nDcNZVKaV80W0nDV5j4F
5zozJAhA5i4MVk6Bzq3Fs/2SPWmXpOJ9RpNgi2HVeq93SQvapnX8trYIAA8EGYggUR9yQqjVbUNX
td104FrNN9ufCoSh6w2Iloezj6PTeS0KPzpCYjgGotzIgvCXh9VbOskzZQ4DfmUR6qwhId6fhDuw
aqAgi9SjmGio2Ggc8A6xWFTanxQeBsHUMHiM5YD+Kf615x01Oq/0kMymW6X99fmdcMmJxOUnkmPf
S1tcF7Poqq9qZgnxfB2l5g5Hd6sb1zp+7nW2dGQZjlS5Ve5Ul3kZvrD2ko7wq/Ss5N7W3xq4w3Qg
3ig+MTZKUdi0OCYuUE6ULrn6JEWrjUOBCo+FQq86AJF6M7hR24x6rEG2PHPNfZOQQbBhvp8vdVHl
vSenxA4peTeUtB2VQ1Msf3gE9VHPs4379QD+2ULyS71nax5l0+cyjMI7Och2+v1cNT4mK4D/FQma
q84OKqD1oWlgLdc1x6yQ0miPk3nEhfsCoaMDzCA9aFYUyigYI2IhRpdfFcwmJ26SlVkYb4GQ1SXT
C4n98dVIIsWBIfyEeK4FbkzhZG8u3Ho1cTbHJPjUg/QCRBjZJFXCFvIGpAZxDR2rEgE0rnG2pS4O
x3+fgf7MrJ0HgjOVLEr3H058Jzhzw2MYHBL3oNWDTJ/qylzWI5T0OvdoaovqFeW2PY8iOX31mwMc
hmXr1QzIgzWTq2LtIfy5h+1AC1nXLgYsQGJFYBIi9C9ZupwuCWTroOdVVmqCyRySabGPtY+qRFdf
vpWpgiIjcLYzlGdfin6JVWpxgdicqnZGs/dhkz6fr3VFz0rPQR3EMuWzTjW1M98yBmAlOMJ/wxQe
Y88rwt13lOTxGrs0uRNMrE/y6FtBkX8YLozeeXazxQw1sd5OmXAIO7pQwxgk/kxM2Itzjdu53NFP
E5RQmRpuPlSu/wg1/hPe6ayg8M1n9DBAkaHrPzgwe9QM/4bct6Kf4oXDdf5DF9p4lKMuGOsD6B9k
EAh5g/4cfoM0KP+MAjIJAQ5Io38x/XnHcqqUAWLoCBZneKeaJl+Gp/Z7Du/b65FwJRfdukSgMhOO
shBUh3wgTB/oJYqLb9uuwvuIte6K7IcYI9xLCk3Sx0WTC3NOMR96WsLP88UH5bY7LvhIF3wlBMaJ
O2Of1UHRFV5F92NnX5DbDVsruvjBET4mD9tVia/Ibgetxfa824WB/d1nwe5S1M5nbQoh+knNxw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x216814B7575E0C0"
last-modified: Thu, 12 Nov 2026 00:44:55 GMT
content-md5: ZhFDNK8CPfNYjfX4XJW4uA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: aa1f028f-5738-4f03-8fef-b6958eb18b54
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941/bar

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
/LhwPKvXC7pUDBv1oWOWM0EtcWk4j5wraBFUB7RhnZKST72x+yOMl92g+GYlmWAMN9J2bvBfCWwc
RdSZggMG82+IYlKm5DceodmMmJc1Bs6xSNDh6y6iM0ZQlbZP8xTZmgT3nDcNZVKaV80W0nDV5j4F
5zozJAhA5i4MVk6Bzq3Fs/2SPWmXpOJ9RpNgi2HVeq93SQvapnX8trYIAA8EGYggUR9yQqjVbUNX
td104FrNN9ufCoSh6w2Iloezj6PTeS0KPzpCYjgGotzIgvCXh9VbOskzZQ4DfmUR6qwhId6fhDuw
aqAgi9SjmGio2Ggc8A6xWFTanxQeBsHUMHiM5YD+Kf615x01Oq/0kMymW6X99fmdcMmJxOUnkmPf
S1tcF7Poqq9qZgnxfB2l5g5Hd6sb1zp+7nW2dGQZjlS5Ve5Ul3kZvrD2ko7wq/Ss5N7W3xq4w3Qg
3ig+MTZKUdi0OCYuUE6ULrn6JEWrjUOBCo+FQq86AJF6M7hR24x6rEG2PHPNfZOQQbBhvp8vdVHl
vSenxA4peTeUtB2VQ1Msf3gE9VHPs4379QD+2ULyS71nax5l0+cyjMI7Och2+v1cNT4mK4D/FQma
q84OKqD1oWlgLdc1x6yQ0miPk3nEhfsCoaMDzCA9aFYUyigYI2IhRpdfFcwmJ26SlVkYb4GQ1SXT
C4n98dVIIsWBIfyEeK4FbkzhZG8u3Ho1cTbHJPjUg/QCRBjZJFXCFvIGpAZxDR2rEgE0rnG2pS4O
x3+fgf7MrJ0HgjOVLEr3H058Jzhzw2MYHBL3oNWDTJ/qylzWI5T0OvdoaovqFeW2PY8iOX31mwMc
hmXr1QzIgzWTq2LtIfy5h+1AC1nXLgYsQGJFYBIi9C9ZupwuCWTroOdVVmqCyRySabGPtY+qRFdf
vpWpgiIjcLYzlGdfin6JVWpxgdicqnZGs/dhkz6fr3VFz0rPQR3EMuWzTjW1M98yBmAlOMJ/wxQe
Y88rwt13lOTxGrs0uRNMrE/y6FtBkX8YLozeeXazxQw1sd5OmXAIO7pQwxgk/kxM2Itzjdu53NFP
E5RQmRpuPlSu/wg1/hPe6ayg8M1n9DBAkaHrPzgwe9QM/4bct6Kf4oXDdf5DF9p4lKMuGOsD6B9k
EAh5g/4cfoM0KP+MAjIJAQ5Io38x/XnHcqqUAWLoCBZneKeaJl+Gp/Z7Du/b65FwJRfdukSgMhOO
shBUh3wgTB/oJYqLb9uuwvuIte6K7IcYI9xLCk3Sx0WTC3NOMR96WsLP88UH5bY7LvhIF3wlBMaJ
O2Of1UHRFV5F92NnX5DbDVsruvjBET4mD9tVia/Ibgetxfa824WB/d1nwe5S1M5nbQoh+knNxw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25E951C948ED8C0"
last-modified: Thu, 12 Nov 2026 00:44:55 GMT
content-md5: ZhFDNK8CPfNYjfX4XJW4uA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: bfdf66cd-0209-479b-a79d-5491d1bb1646
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941/baz

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
/LhwPKvXC7pUDBv1oWOWM0EtcWk4j5wraBFUB7RhnZKST72x+yOMl92g+GYlmWAMN9J2bvBfCWwc
RdSZggMG82+IYlKm5DceodmMmJc1Bs6xSNDh6y6iM0ZQlbZP8xTZmgT3nDcNZVKaV80W0nDV5j4F
5zozJAhA5i4MVk6Bzq3Fs/2SPWmXpOJ9RpNgi2HVeq93SQvapnX8trYIAA8EGYggUR9yQqjVbUNX
td104FrNN9ufCoSh6w2Iloezj6PTeS0KPzpCYjgGotzIgvCXh9VbOskzZQ4DfmUR6qwhId6fhDuw
aqAgi9SjmGio2Ggc8A6xWFTanxQeBsHUMHiM5YD+Kf615x01Oq/0kMymW6X99fmdcMmJxOUnkmPf
S1tcF7Poqq9qZgnxfB2l5g5Hd6sb1zp+7nW2dGQZjlS5Ve5Ul3kZvrD2ko7wq/Ss5N7W3xq4w3Qg
3ig+MTZKUdi0OCYuUE6ULrn6JEWrjUOBCo+FQq86AJF6M7hR24x6rEG2PHPNfZOQQbBhvp8vdVHl
vSenxA4peTeUtB2VQ1Msf3gE9VHPs4379QD+2ULyS71nax5l0+cyjMI7Och2+v1cNT4mK4D/FQma
q84OKqD1oWlgLdc1x6yQ0miPk3nEhfsCoaMDzCA9aFYUyigYI2IhRpdfFcwmJ26SlVkYb4GQ1SXT
C4n98dVIIsWBIfyEeK4FbkzhZG8u3Ho1cTbHJPjUg/QCRBjZJFXCFvIGpAZxDR2rEgE0rnG2pS4O
x3+fgf7MrJ0HgjOVLEr3H058Jzhzw2MYHBL3oNWDTJ/qylzWI5T0OvdoaovqFeW2PY8iOX31mwMc
hmXr1QzIgzWTq2LtIfy5h+1AC1nXLgYsQGJFYBIi9C9ZupwuCWTroOdVVmqCyRySabGPtY+qRFdf
vpWpgiIjcLYzlGdfin6JVWpxgdicqnZGs/dhkz6fr3VFz0rPQR3EMuWzTjW1M98yBmAlOMJ/wxQe
Y88rwt13lOTxGrs0uRNMrE/y6FtBkX8YLozeeXazxQw1sd5OmXAIO7pQwxgk/kxM2Itzjdu53NFP
E5RQmRpuPlSu/wg1/hPe6ayg8M1n9DBAkaHrPzgwe9QM/4bct6Kf4oXDdf5DF9p4lKMuGOsD6B9k
EAh5g/4cfoM0KP+MAjIJAQ5Io38x/XnHcqqUAWLoCBZneKeaJl+Gp/Z7Du/b65FwJRfdukSgMhOO
shBUh3wgTB/oJYqLb9uuwvuIte6K7IcYI9xLCk3Sx0WTC3NOMR96WsLP88UH5bY7LvhIF3wlBMaJ
O2Of1UHRFV5F92NnX5DbDVsruvjBET4mD9tVia/Ibgetxfa824WB/d1nwe5S1M5nbQoh+knNxw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x25174BF0B7DC180"
last-modified: Thu, 12 Nov 2026 00:44:55 GMT
content-md5: ZhFDNK8CPfNYjfX4XJW4uA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: d795ca5f-9baa-4fa5-aa5f-fc0d0b026ebd
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:55 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941/foo/foo

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
/LhwPKvXC7pUDBv1oWOWM0EtcWk4j5wraBFUB7RhnZKST72x+yOMl92g+GYlmWAMN9J2bvBfCWwc
RdSZggMG82+IYlKm5DceodmMmJc1Bs6xSNDh6y6iM0ZQlbZP8xTZmgT3nDcNZVKaV80W0nDV5j4F
5zozJAhA5i4MVk6Bzq3Fs/2SPWmXpOJ9RpNgi2HVeq93SQvapnX8trYIAA8EGYggUR9yQqjVbUNX
td104FrNN9ufCoSh6w2Iloezj6PTeS0KPzpCYjgGotzIgvCXh9VbOskzZQ4DfmUR6qwhId6fhDuw
aqAgi9SjmGio2Ggc8A6xWFTanxQeBsHUMHiM5YD+Kf615x01Oq/0kMymW6X99fmdcMmJxOUnkmPf
S1tcF7Poqq9qZgnxfB2l5g5Hd6sb1zp+7nW2dGQZjlS5Ve5Ul3kZvrD2ko7wq/Ss5N7W3xq4w3Qg
3ig+MTZKUdi0OCYuUE6ULrn6JEWrjUOBCo+FQq86AJF6M7hR24x6rEG2PHPNfZOQQbBhvp8vdVHl
vSenxA4peTeUtB2VQ1Msf3gE9VHPs4379QD+2ULyS71nax5l0+cyjMI7Och2+v1cNT4mK4D/FQma
q84OKqD1oWlgLdc1x6yQ0miPk3nEhfsCoaMDzCA9aFYUyigYI2IhRpdfFcwmJ26SlVkYb4GQ1SXT
C4n98dVIIsWBIfyEeK4FbkzhZG8u3Ho1cTbHJPjUg/QCRBjZJFXCFvIGpAZxDR2rEgE0rnG2pS4O
x3+fgf7MrJ0HgjOVLEr3H058Jzhzw2MYHBL3oNWDTJ/qylzWI5T0OvdoaovqFeW2PY8iOX31mwMc
hmXr1QzIgzWTq2LtIfy5h+1AC1nXLgYsQGJFYBIi9C9ZupwuCWTroOdVVmqCyRySabGPtY+qRFdf
vpWpgiIjcLYzlGdfin6JVWpxgdicqnZGs/dhkz6fr3VFz0rPQR3EMuWzTjW1M98yBmAlOMJ/wxQe
Y88rwt13lOTxGrs0uRNMrE/y6FtBkX8YLozeeXazxQw1sd5OmXAIO7pQwxgk/kxM2Itzjdu53NFP
E5RQmRpuPlSu/wg1/hPe6ayg8M1n9DBAkaHrPzgwe9QM/4bct6Kf4oXDdf5DF9p4lKMuGOsD6B9k
EAh5g/4cfoM0KP+MAjIJAQ5Io38x/XnHcqqUAWLoCBZneKeaJl+Gp/Z7Du/b65FwJRfdukSgMhOO
shBUh3wgTB/oJYqLb9uuwvuIte6K7IcYI9xLCk3Sx0WTC3NOMR96WsLP88UH5bY7LvhIF3wlBMaJ
O2Of1UHRFV5F92NnX5DbDVsruvjBET4mD9tVia/Ibgetxfa824WB/d1nwe5S1M5nbQoh+knNxw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24082CA56B742A0"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: ZhFDNK8CPfNYjfX4XJW4uA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 443c434a-f4c3-40a2-8c61-f33f051653ec
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941/foo/bar

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
/LhwPKvXC7pUDBv1oWOWM0EtcWk4j5wraBFUB7RhnZKST72x+yOMl92g+GYlmWAMN9J2bvBfCWwc
RdSZggMG82+IYlKm5DceodmMmJc1Bs6xSNDh6y6iM0ZQlbZP8xTZmgT3nDcNZVKaV80W0nDV5j4F
5zozJAhA5i4MVk6Bzq3Fs/2SPWmXpOJ9RpNgi2HVeq93SQvapnX8trYIAA8EGYggUR9yQqjVbUNX
td104FrNN9ufCoSh6w2Iloezj6PTeS0KPzpCYjgGotzIgvCXh9VbOskzZQ4DfmUR6qwhId6fhDuw
aqAgi9SjmGio2Ggc8A6xWFTanxQeBsHUMHiM5YD+Kf615x01Oq/0kMymW6X99fmdcMmJxOUnkmPf
S1tcF7Poqq9qZgnxfB2l5g5Hd6sb1zp+7nW2dGQZjlS5Ve5Ul3kZvrD2ko7wq/Ss5N7W3xq4w3Qg
3ig+MTZKUdi0OCYuUE6ULrn6JEWrjUOBCo+FQq86AJF6M7hR24x6rEG2PHPNfZOQQbBhvp8vdVHl
vSenxA4peTeUtB2VQ1Msf3gE9VHPs4379QD+2ULyS71nax5l0+cyjMI7Och2+v1cNT4mK4D/FQma
q84OKqD1oWlgLdc1x6yQ0miPk3nEhfsCoaMDzCA9aFYUyigYI2IhRpdfFcwmJ26SlVkYb4GQ1SXT
C4n98dVIIsWBIfyEeK4FbkzhZG8u3Ho1cTbHJPjUg/QCRBjZJFXCFvIGpAZxDR2rEgE0rnG2pS4O
x3+fgf7MrJ0HgjOVLEr3H058Jzhzw2MYHBL3oNWDTJ/qylzWI5T0OvdoaovqFeW2PY8iOX31mwMc
hmXr1QzIgzWTq2LtIfy5h+1AC1nXLgYsQGJFYBIi9C9ZupwuCWTroOdVVmqCyRySabGPtY+qRFdf
vpWpgiIjcLYzlGdfin6JVWpxgdicqnZGs/dhkz6fr3VFz0rPQR3EMuWzTjW1M98yBmAlOMJ/wxQe
Y88rwt13lOTxGrs0uRNMrE/y6FtBkX8YLozeeXazxQw1sd5OmXAIO7pQwxgk/kxM2Itzjdu53NFP
E5RQmRpuPlSu/wg1/hPe6ayg8M1n9DBAkaHrPzgwe9QM/4bct6Kf4oXDdf5DF9p4lKMuGOsD6B9k
EAh5g/4cfoM0KP+MAjIJAQ5Io38x/XnHcqqUAWLoCBZneKeaJl+Gp/Z7Du/b65FwJRfdukSgMhOO
shBUh3wgTB/oJYqLb9uuwvuIte6K7IcYI9xLCk3Sx0WTC3NOMR96WsLP88UH5bY7LvhIF3wlBMaJ
O2Of1UHRFV5F92NnX5DbDVsruvjBET4mD9tVia/Ibgetxfa824WB/d1nwe5S1M5nbQoh+knNxw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x23816DE6629DEE0"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: ZhFDNK8CPfNYjfX4XJW4uA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 61482904-69f2-4a4f-8ef5-83e78afe333b
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941/baz/foo

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
/LhwPKvXC7pUDBv1oWOWM0EtcWk4j5wraBFUB7RhnZKST72x+yOMl92g+GYlmWAMN9J2bvBfCWwc
RdSZggMG82+IYlKm5DceodmMmJc1Bs6xSNDh6y6iM0ZQlbZP8xTZmgT3nDcNZVKaV80W0nDV5j4F
5zozJAhA5i4MVk6Bzq3Fs/2SPWmXpOJ9RpNgi2HVeq93SQvapnX8trYIAA8EGYggUR9yQqjVbUNX
td104FrNN9ufCoSh6w2Iloezj6PTeS0KPzpCYjgGotzIgvCXh9VbOskzZQ4DfmUR6qwhId6fhDuw
aqAgi9SjmGio2Ggc8A6xWFTanxQeBsHUMHiM5YD+Kf615x01Oq/0kMymW6X99fmdcMmJxOUnkmPf
S1tcF7Poqq9qZgnxfB2l5g5Hd6sb1zp+7nW2dGQZjlS5Ve5Ul3kZvrD2ko7wq/Ss5N7W3xq4w3Qg
3ig+MTZKUdi0OCYuUE6ULrn6JEWrjUOBCo+FQq86AJF6M7hR24x6rEG2PHPNfZOQQbBhvp8vdVHl
vSenxA4peTeUtB2VQ1Msf3gE9VHPs4379QD+2ULyS71nax5l0+cyjMI7Och2+v1cNT4mK4D/FQma
q84OKqD1oWlgLdc1x6yQ0miPk3nEhfsCoaMDzCA9aFYUyigYI2IhRpdfFcwmJ26SlVkYb4GQ1SXT
C4n98dVIIsWBIfyEeK4FbkzhZG8u3Ho1cTbHJPjUg/QCRBjZJFXCFvIGpAZxDR2rEgE0rnG2pS4O
x3+fgf7MrJ0HgjOVLEr3H058Jzhzw2MYHBL3oNWDTJ/qylzWI5T0OvdoaovqFeW2PY8iOX31mwMc
hmXr1QzIgzWTq2LtIfy5h+1AC1nXLgYsQGJFYBIi9C9ZupwuCWTroOdVVmqCyRySabGPtY+qRFdf
vpWpgiIjcLYzlGdfin6JVWpxgdicqnZGs/dhkz6fr3VFz0rPQR3EMuWzTjW1M98yBmAlOMJ/wxQe
Y88rwt13lOTxGrs0uRNMrE/y6FtBkX8YLozeeXazxQw1sd5OmXAIO7pQwxgk/kxM2Itzjdu53NFP
E5RQmRpuPlSu/wg1/hPe6ayg8M1n9DBAkaHrPzgwe9QM/4bct6Kf4oXDdf5DF9p4lKMuGOsD6B9k
EAh5g/4cfoM0KP+MAjIJAQ5Io38x/XnHcqqUAWLoCBZneKeaJl+Gp/Z7Du/b65FwJRfdukSgMhOO
shBUh3wgTB/oJYqLb9uuwvuIte6K7IcYI9xLCk3Sx0WTC3NOMR96WsLP88UH5bY7LvhIF3wlBMaJ
O2Of1UHRFV5F92NnX5DbDVsruvjBET4mD9tVia/Ibgetxfa824WB/d1nwe5S1M5nbQoh+knNxw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1DC70B24DDD9440"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: ZhFDNK8CPfNYjfX4XJW4uA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2e97bee2-3894-49d9-a8a7-a8494a562467
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941/baz/foo/bar

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
/LhwPKvXC7pUDBv1oWOWM0EtcWk4j5wraBFUB7RhnZKST72x+yOMl92g+GYlmWAMN9J2bvBfCWwc
RdSZggMG82+IYlKm5DceodmMmJc1Bs6xSNDh6y6iM0ZQlbZP8xTZmgT3nDcNZVKaV80W0nDV5j4F
5zozJAhA5i4MVk6Bzq3Fs/2SPWmXpOJ9RpNgi2HVeq93SQvapnX8trYIAA8EGYggUR9yQqjVbUNX
td104FrNN9ufCoSh6w2Iloezj6PTeS0KPzpCYjgGotzIgvCXh9VbOskzZQ4DfmUR6qwhId6fhDuw
aqAgi9SjmGio2Ggc8A6xWFTanxQeBsHUMHiM5YD+Kf615x01Oq/0kMymW6X99fmdcMmJxOUnkmPf
S1tcF7Poqq9qZgnxfB2l5g5Hd6sb1zp+7nW2dGQZjlS5Ve5Ul3kZvrD2ko7wq/Ss5N7W3xq4w3Qg
3ig+MTZKUdi0OCYuUE6ULrn6JEWrjUOBCo+FQq86AJF6M7hR24x6rEG2PHPNfZOQQbBhvp8vdVHl
vSenxA4peTeUtB2VQ1Msf3gE9VHPs4379QD+2ULyS71nax5l0+cyjMI7Och2+v1cNT4mK4D/FQma
q84OKqD1oWlgLdc1x6yQ0miPk3nEhfsCoaMDzCA9aFYUyigYI2IhRpdfFcwmJ26SlVkYb4GQ1SXT
C4n98dVIIsWBIfyEeK4FbkzhZG8u3Ho1cTbHJPjUg/QCRBjZJFXCFvIGpAZxDR2rEgE0rnG2pS4O
x3+fgf7MrJ0HgjOVLEr3H058Jzhzw2MYHBL3oNWDTJ/qylzWI5T0OvdoaovqFeW2PY8iOX31mwMc
hmXr1QzIgzWTq2LtIfy5h+1AC1nXLgYsQGJFYBIi9C9ZupwuCWTroOdVVmqCyRySabGPtY+qRFdf
vpWpgiIjcLYzlGdfin6JVWpxgdicqnZGs/dhkz6fr3VFz0rPQR3EMuWzTjW1M98yBmAlOMJ/wxQe
Y88rwt13lOTxGrs0uRNMrE/y6FtBkX8YLozeeXazxQw1sd5OmXAIO7pQwxgk/kxM2Itzjdu53NFP
E5RQmRpuPlSu/wg1/hPe6ayg8M1n9DBAkaHrPzgwe9QM/4bct6Kf4oXDdf5DF9p4lKMuGOsD6B9k
EAh5g/4cfoM0KP+MAjIJAQ5Io38x/XnHcqqUAWLoCBZneKeaJl+Gp/Z7Du/b65FwJRfdukSgMhOO
shBUh3wgTB/oJYqLb9uuwvuIte6K7IcYI9xLCk3Sx0WTC3NOMR96WsLP88UH5bY7LvhIF3wlBMaJ
O2Of1UHRFV5F92NnX5DbDVsruvjBET4mD9tVia/Ibgetxfa824WB/d1nwe5S1M5nbQoh+knNxw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22DF24C05D3A200"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: ZhFDNK8CPfNYjfX4XJW4uA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: f788b880-591c-44e1-8047-15e6bb65f34f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941/baz/bar/foo

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
/LhwPKvXC7pUDBv1oWOWM0EtcWk4j5wraBFUB7RhnZKST72x+yOMl92g+GYlmWAMN9J2bvBfCWwc
RdSZggMG82+IYlKm5DceodmMmJc1Bs6xSNDh6y6iM0ZQlbZP8xTZmgT3nDcNZVKaV80W0nDV5j4F
5zozJAhA5i4MVk6Bzq3Fs/2SPWmXpOJ9RpNgi2HVeq93SQvapnX8trYIAA8EGYggUR9yQqjVbUNX
td104FrNN9ufCoSh6w2Iloezj6PTeS0KPzpCYjgGotzIgvCXh9VbOskzZQ4DfmUR6qwhId6fhDuw
aqAgi9SjmGio2Ggc8A6xWFTanxQeBsHUMHiM5YD+Kf615x01Oq/0kMymW6X99fmdcMmJxOUnkmPf
S1tcF7Poqq9qZgnxfB2l5g5Hd6sb1zp+7nW2dGQZjlS5Ve5Ul3kZvrD2ko7wq/Ss5N7W3xq4w3Qg
3ig+MTZKUdi0OCYuUE6ULrn6JEWrjUOBCo+FQq86AJF6M7hR24x6rEG2PHPNfZOQQbBhvp8vdVHl
vSenxA4peTeUtB2VQ1Msf3gE9VHPs4379QD+2ULyS71nax5l0+cyjMI7Och2+v1cNT4mK4D/FQma
q84OKqD1oWlgLdc1x6yQ0miPk3nEhfsCoaMDzCA9aFYUyigYI2IhRpdfFcwmJ26SlVkYb4GQ1SXT
C4n98dVIIsWBIfyEeK4FbkzhZG8u3Ho1cTbHJPjUg/QCRBjZJFXCFvIGpAZxDR2rEgE0rnG2pS4O
x3+fgf7MrJ0HgjOVLEr3H058Jzhzw2MYHBL3oNWDTJ/qylzWI5T0OvdoaovqFeW2PY8iOX31mwMc
hmXr1QzIgzWTq2LtIfy5h+1AC1nXLgYsQGJFYBIi9C9ZupwuCWTroOdVVmqCyRySabGPtY+qRFdf
vpWpgiIjcLYzlGdfin6JVWpxgdicqnZGs/dhkz6fr3VFz0rPQR3EMuWzTjW1M98yBmAlOMJ/wxQe
Y88rwt13lOTxGrs0uRNMrE/y6FtBkX8YLozeeXazxQw1sd5OmXAIO7pQwxgk/kxM2Itzjdu53NFP
E5RQmRpuPlSu/wg1/hPe6ayg8M1n9DBAkaHrPzgwe9QM/4bct6Kf4oXDdf5DF9p4lKMuGOsD6B9k
EAh5g/4cfoM0KP+MAjIJAQ5Io38x/XnHcqqUAWLoCBZneKeaJl+Gp/Z7Du/b65FwJRfdukSgMhOO
shBUh3wgTB/oJYqLb9uuwvuIte6K7IcYI9xLCk3Sx0WTC3NOMR96WsLP88UH5bY7LvhIF3wlBMaJ
O2Of1UHRFV5F92NnX5DbDVsruvjBET4mD9tVia/Ibgetxfa824WB/d1nwe5S1M5nbQoh+knNxw==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x2447B8CC08E75C0"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
content-md5: ZhFDNK8CPfNYjfX4XJW4uA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 0d471452-a218-4c29-89e0-46fb9408b934
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941/foo/foo?comp=metadata

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
etag: "0x1D6419EBC13CB00"
last-modified: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 1dbe76ba-0517-4013-8dae-27c9d7f9501f
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941?restype=container&comp=list

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
x-ms-request-id: 925b01e4-b42b-452e-b470-4c2d5f8a66bb
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:55 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:55 GMT</Last-Modified><Etag>0x25E951C948ED8C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ZhFDNK8CPfNYjfX4XJW4uA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:55 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:55 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:55 GMT</Last-Modified><Etag>0x25174BF0B7DC180</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ZhFDNK8CPfNYjfX4XJW4uA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:55 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x2447B8CC08E75C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ZhFDNK8CPfNYjfX4XJW4uA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x1DC70B24DDD9440</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ZhFDNK8CPfNYjfX4XJW4uA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x22DF24C05D3A200</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ZhFDNK8CPfNYjfX4XJW4uA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:55 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:55 GMT</Last-Modified><Etag>0x216814B7575E0C0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ZhFDNK8CPfNYjfX4XJW4uA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:55 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x23816DE6629DEE0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ZhFDNK8CPfNYjfX4XJW4uA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:44:56 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:44:56 GMT</Last-Modified><Etag>0x1D6419EBC13CB00</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>ZhFDNK8CPfNYjfX4XJW4uA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:44:56 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-4d5ae96e-4172-018e-6fcd-05b79c61c941?restype=container

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
x-ms-request-id: 53b2218a-55b6-4157-8ab9-caf2aaaa0dd8
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:44:56 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

