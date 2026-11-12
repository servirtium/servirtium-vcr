## LICENSE NOTICE

Recorded by servirtium-vcr's sdk_harnesses/azure-sdk-for-net harness: the test named in the note below,
from Azure/azure-sdk-for-net at 5084eb7e2bdcafe0aa70308b114e336096553c74 (MIT licence),
run unchanged in Live mode against Azurite (mcr.microsoft.com/azure-storage/azurite:3.37.0, MIT licence), Microsoft's Azure Storage emulator,
not against Azure. Azure.Storage.Blobs built from that same commit.
Account devstoreaccount1 is Azurite's published development account; its key is not a secret.

## Interaction 0: PUT /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d?restype=container

## [Note] Azure SDK test:

test: Azure.Storage.Blobs.Test.ContainerClientTests(False,V2027_03_07).ListBlobsFlatSegmentAsync_LastAccessed
now: 2026-11-12T00:43:46.4436362+00:00

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
etag: "0x1EC794420608760"
last-modified: Thu, 12 Nov 2026 00:43:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 52e9fa2f-55a9-4972-8e91-2c10c379d0c0
x-ms-version: 2026-06-06
Date: Thu, 12 Nov 2026 00:43:46 GMT
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 1: PUT /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d/foo

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
fQeCVB2AzjkD95ND6OF/hOqmtzjQBPyOQNHH+qEN04Rmnbj5/hY79bWm6JRbhakHsqA9a3MJXXgL
8xNMudOX9SQO3UophoXTa8GCKhxnM7snwEgB0GgRXEBA7goD7zzhDvJwTKdf3Swaav+xhjNbo8BY
JPiLlSW8/YAK6Jd60HyFoRsq9+YTyOIc52VoX9YN5UtKqspDVXjMtE4mVfSUn5qDLOQXMazZRFwW
bq2/U52q/ANMMCWxQUuiXUKX7XLtiEjL5DPx9bOfcGVuLefKDWCxe1jwSG500uqZdNNpQlfpKOZl
9G9quQdQrcC/QhRk10/i5nEa/EDaVxJIV4DfNS4OhQQAZRnxRsJRoJqttI/WNJ2Eh1vmzyumi5xc
ImGGcHeSsb0PY3I28KCuyVulLKKDcSLjW67SKLbZWdp8lCNhyjAjGwPRx9EqTZa6NwXPAV/52bE+
oxTIv4gHNgmXult9Tf4rgRCfsapRuA4YGPCwCVh7grtyIiccWlx6ypHHkpI6PeoHpH9OWicH7OoF
sKeYViyxHDegCyrXDyezJecZiiV73doGqWXYLCiUajY9Fqm14nNkFXZbmjK/MJRYmjQ/7mHEitPM
ka3H2PAODKD0mvl9/kJ0tHWvIEOoR3nQgJHzVHzUeIzW6FDFnD2GTI6Ry5Wb25zxyjnsFGqQJEo0
91deG7ckHyFtphXyrxg3KdO0FnzjNKT1AYpC6GMhRsQGkKTlKDHXbat0LjSG/xsgtOuW2w3NUcOy
aBkt4Te9S2BR6x50UgGi3ajQbgVwbwFuIjN4i2q2OD7hMr8YqYxztuPUNRT8rGLp9P5l/eK9QvgX
vr8ERb/1mrLgkx9BijMcXLgimzrtcnXQjpZsUTtbI+/HAOvNb3Ej35tiHBlCqGrKSKAqm6e+KkxJ
M7YoiEh2hG8weolITuxG/rueilZcjuYsogmbMIdHCNafhDy6+lZT7JipEi7ggvmz5J3sIJ/27KXQ
/OY+2lPo6HGzqcqwiwNkS569s3u3SyAP6EzqW+g2qJeX6v5wFBFEwSm8LdguA1iZh9QBODkpGLHG
L/IG/oyJfAAzGKEF9DeMefJR+x1H4OTzUNQTNXBebtJNquQePcKdM7HX++q3lJKddL5H1xyTfk8N
E624dUeQ1arOuEpSbTsvtMhsb+T6O7tCdsCxFpa1uSuVESoV5b1pRyY/6NxISgaDFyJUJg5qE9fx
df6H3r4UGf4evFwQGs8KAye+u1Lf+Su5Lf5zYJIdK/5TI2++4mlnK8/dKo6qcv1TSSPmq1iEEnzT
zbC/oLhrAZBevfdgTCC+V4+DAs+dD7sBIBdvNoCmzhDy6xS4p4sWcin9S7QG8v0DKFTIABCsNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x21173156E648440"
last-modified: Thu, 12 Nov 2026 00:43:46 GMT
content-md5: UnMufS6oW713drRJBkI6iA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 2350be55-ced0-413b-b694-753f41b5e896
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 2: PUT /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d/bar

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
fQeCVB2AzjkD95ND6OF/hOqmtzjQBPyOQNHH+qEN04Rmnbj5/hY79bWm6JRbhakHsqA9a3MJXXgL
8xNMudOX9SQO3UophoXTa8GCKhxnM7snwEgB0GgRXEBA7goD7zzhDvJwTKdf3Swaav+xhjNbo8BY
JPiLlSW8/YAK6Jd60HyFoRsq9+YTyOIc52VoX9YN5UtKqspDVXjMtE4mVfSUn5qDLOQXMazZRFwW
bq2/U52q/ANMMCWxQUuiXUKX7XLtiEjL5DPx9bOfcGVuLefKDWCxe1jwSG500uqZdNNpQlfpKOZl
9G9quQdQrcC/QhRk10/i5nEa/EDaVxJIV4DfNS4OhQQAZRnxRsJRoJqttI/WNJ2Eh1vmzyumi5xc
ImGGcHeSsb0PY3I28KCuyVulLKKDcSLjW67SKLbZWdp8lCNhyjAjGwPRx9EqTZa6NwXPAV/52bE+
oxTIv4gHNgmXult9Tf4rgRCfsapRuA4YGPCwCVh7grtyIiccWlx6ypHHkpI6PeoHpH9OWicH7OoF
sKeYViyxHDegCyrXDyezJecZiiV73doGqWXYLCiUajY9Fqm14nNkFXZbmjK/MJRYmjQ/7mHEitPM
ka3H2PAODKD0mvl9/kJ0tHWvIEOoR3nQgJHzVHzUeIzW6FDFnD2GTI6Ry5Wb25zxyjnsFGqQJEo0
91deG7ckHyFtphXyrxg3KdO0FnzjNKT1AYpC6GMhRsQGkKTlKDHXbat0LjSG/xsgtOuW2w3NUcOy
aBkt4Te9S2BR6x50UgGi3ajQbgVwbwFuIjN4i2q2OD7hMr8YqYxztuPUNRT8rGLp9P5l/eK9QvgX
vr8ERb/1mrLgkx9BijMcXLgimzrtcnXQjpZsUTtbI+/HAOvNb3Ej35tiHBlCqGrKSKAqm6e+KkxJ
M7YoiEh2hG8weolITuxG/rueilZcjuYsogmbMIdHCNafhDy6+lZT7JipEi7ggvmz5J3sIJ/27KXQ
/OY+2lPo6HGzqcqwiwNkS569s3u3SyAP6EzqW+g2qJeX6v5wFBFEwSm8LdguA1iZh9QBODkpGLHG
L/IG/oyJfAAzGKEF9DeMefJR+x1H4OTzUNQTNXBebtJNquQePcKdM7HX++q3lJKddL5H1xyTfk8N
E624dUeQ1arOuEpSbTsvtMhsb+T6O7tCdsCxFpa1uSuVESoV5b1pRyY/6NxISgaDFyJUJg5qE9fx
df6H3r4UGf4evFwQGs8KAye+u1Lf+Su5Lf5zYJIdK/5TI2++4mlnK8/dKo6qcv1TSSPmq1iEEnzT
zbC/oLhrAZBevfdgTCC+V4+DAs+dD7sBIBdvNoCmzhDy6xS4p4sWcin9S7QG8v0DKFTIABCsNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24E41752230ACA0"
last-modified: Thu, 12 Nov 2026 00:43:46 GMT
content-md5: UnMufS6oW713drRJBkI6iA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: ec5435dc-e473-4f0a-8368-896af68ec89c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 3: PUT /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d/baz

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
fQeCVB2AzjkD95ND6OF/hOqmtzjQBPyOQNHH+qEN04Rmnbj5/hY79bWm6JRbhakHsqA9a3MJXXgL
8xNMudOX9SQO3UophoXTa8GCKhxnM7snwEgB0GgRXEBA7goD7zzhDvJwTKdf3Swaav+xhjNbo8BY
JPiLlSW8/YAK6Jd60HyFoRsq9+YTyOIc52VoX9YN5UtKqspDVXjMtE4mVfSUn5qDLOQXMazZRFwW
bq2/U52q/ANMMCWxQUuiXUKX7XLtiEjL5DPx9bOfcGVuLefKDWCxe1jwSG500uqZdNNpQlfpKOZl
9G9quQdQrcC/QhRk10/i5nEa/EDaVxJIV4DfNS4OhQQAZRnxRsJRoJqttI/WNJ2Eh1vmzyumi5xc
ImGGcHeSsb0PY3I28KCuyVulLKKDcSLjW67SKLbZWdp8lCNhyjAjGwPRx9EqTZa6NwXPAV/52bE+
oxTIv4gHNgmXult9Tf4rgRCfsapRuA4YGPCwCVh7grtyIiccWlx6ypHHkpI6PeoHpH9OWicH7OoF
sKeYViyxHDegCyrXDyezJecZiiV73doGqWXYLCiUajY9Fqm14nNkFXZbmjK/MJRYmjQ/7mHEitPM
ka3H2PAODKD0mvl9/kJ0tHWvIEOoR3nQgJHzVHzUeIzW6FDFnD2GTI6Ry5Wb25zxyjnsFGqQJEo0
91deG7ckHyFtphXyrxg3KdO0FnzjNKT1AYpC6GMhRsQGkKTlKDHXbat0LjSG/xsgtOuW2w3NUcOy
aBkt4Te9S2BR6x50UgGi3ajQbgVwbwFuIjN4i2q2OD7hMr8YqYxztuPUNRT8rGLp9P5l/eK9QvgX
vr8ERb/1mrLgkx9BijMcXLgimzrtcnXQjpZsUTtbI+/HAOvNb3Ej35tiHBlCqGrKSKAqm6e+KkxJ
M7YoiEh2hG8weolITuxG/rueilZcjuYsogmbMIdHCNafhDy6+lZT7JipEi7ggvmz5J3sIJ/27KXQ
/OY+2lPo6HGzqcqwiwNkS569s3u3SyAP6EzqW+g2qJeX6v5wFBFEwSm8LdguA1iZh9QBODkpGLHG
L/IG/oyJfAAzGKEF9DeMefJR+x1H4OTzUNQTNXBebtJNquQePcKdM7HX++q3lJKddL5H1xyTfk8N
E624dUeQ1arOuEpSbTsvtMhsb+T6O7tCdsCxFpa1uSuVESoV5b1pRyY/6NxISgaDFyJUJg5qE9fx
df6H3r4UGf4evFwQGs8KAye+u1Lf+Su5Lf5zYJIdK/5TI2++4mlnK8/dKo6qcv1TSSPmq1iEEnzT
zbC/oLhrAZBevfdgTCC+V4+DAs+dD7sBIBdvNoCmzhDy6xS4p4sWcin9S7QG8v0DKFTIABCsNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x27579C09A9F4780"
last-modified: Thu, 12 Nov 2026 00:43:46 GMT
content-md5: UnMufS6oW713drRJBkI6iA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c01f3f2e-10cc-4d05-b2a6-4102ff95287e
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 4: PUT /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d/foo/foo

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
fQeCVB2AzjkD95ND6OF/hOqmtzjQBPyOQNHH+qEN04Rmnbj5/hY79bWm6JRbhakHsqA9a3MJXXgL
8xNMudOX9SQO3UophoXTa8GCKhxnM7snwEgB0GgRXEBA7goD7zzhDvJwTKdf3Swaav+xhjNbo8BY
JPiLlSW8/YAK6Jd60HyFoRsq9+YTyOIc52VoX9YN5UtKqspDVXjMtE4mVfSUn5qDLOQXMazZRFwW
bq2/U52q/ANMMCWxQUuiXUKX7XLtiEjL5DPx9bOfcGVuLefKDWCxe1jwSG500uqZdNNpQlfpKOZl
9G9quQdQrcC/QhRk10/i5nEa/EDaVxJIV4DfNS4OhQQAZRnxRsJRoJqttI/WNJ2Eh1vmzyumi5xc
ImGGcHeSsb0PY3I28KCuyVulLKKDcSLjW67SKLbZWdp8lCNhyjAjGwPRx9EqTZa6NwXPAV/52bE+
oxTIv4gHNgmXult9Tf4rgRCfsapRuA4YGPCwCVh7grtyIiccWlx6ypHHkpI6PeoHpH9OWicH7OoF
sKeYViyxHDegCyrXDyezJecZiiV73doGqWXYLCiUajY9Fqm14nNkFXZbmjK/MJRYmjQ/7mHEitPM
ka3H2PAODKD0mvl9/kJ0tHWvIEOoR3nQgJHzVHzUeIzW6FDFnD2GTI6Ry5Wb25zxyjnsFGqQJEo0
91deG7ckHyFtphXyrxg3KdO0FnzjNKT1AYpC6GMhRsQGkKTlKDHXbat0LjSG/xsgtOuW2w3NUcOy
aBkt4Te9S2BR6x50UgGi3ajQbgVwbwFuIjN4i2q2OD7hMr8YqYxztuPUNRT8rGLp9P5l/eK9QvgX
vr8ERb/1mrLgkx9BijMcXLgimzrtcnXQjpZsUTtbI+/HAOvNb3Ej35tiHBlCqGrKSKAqm6e+KkxJ
M7YoiEh2hG8weolITuxG/rueilZcjuYsogmbMIdHCNafhDy6+lZT7JipEi7ggvmz5J3sIJ/27KXQ
/OY+2lPo6HGzqcqwiwNkS569s3u3SyAP6EzqW+g2qJeX6v5wFBFEwSm8LdguA1iZh9QBODkpGLHG
L/IG/oyJfAAzGKEF9DeMefJR+x1H4OTzUNQTNXBebtJNquQePcKdM7HX++q3lJKddL5H1xyTfk8N
E624dUeQ1arOuEpSbTsvtMhsb+T6O7tCdsCxFpa1uSuVESoV5b1pRyY/6NxISgaDFyJUJg5qE9fx
df6H3r4UGf4evFwQGs8KAye+u1Lf+Su5Lf5zYJIdK/5TI2++4mlnK8/dKo6qcv1TSSPmq1iEEnzT
zbC/oLhrAZBevfdgTCC+V4+DAs+dD7sBIBdvNoCmzhDy6xS4p4sWcin9S7QG8v0DKFTIABCsNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1F71EC4CEE823A0"
last-modified: Thu, 12 Nov 2026 00:43:46 GMT
content-md5: UnMufS6oW713drRJBkI6iA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c7b7c199-5f92-488c-8902-6b715bc4542c
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 5: PUT /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d/foo/bar

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
fQeCVB2AzjkD95ND6OF/hOqmtzjQBPyOQNHH+qEN04Rmnbj5/hY79bWm6JRbhakHsqA9a3MJXXgL
8xNMudOX9SQO3UophoXTa8GCKhxnM7snwEgB0GgRXEBA7goD7zzhDvJwTKdf3Swaav+xhjNbo8BY
JPiLlSW8/YAK6Jd60HyFoRsq9+YTyOIc52VoX9YN5UtKqspDVXjMtE4mVfSUn5qDLOQXMazZRFwW
bq2/U52q/ANMMCWxQUuiXUKX7XLtiEjL5DPx9bOfcGVuLefKDWCxe1jwSG500uqZdNNpQlfpKOZl
9G9quQdQrcC/QhRk10/i5nEa/EDaVxJIV4DfNS4OhQQAZRnxRsJRoJqttI/WNJ2Eh1vmzyumi5xc
ImGGcHeSsb0PY3I28KCuyVulLKKDcSLjW67SKLbZWdp8lCNhyjAjGwPRx9EqTZa6NwXPAV/52bE+
oxTIv4gHNgmXult9Tf4rgRCfsapRuA4YGPCwCVh7grtyIiccWlx6ypHHkpI6PeoHpH9OWicH7OoF
sKeYViyxHDegCyrXDyezJecZiiV73doGqWXYLCiUajY9Fqm14nNkFXZbmjK/MJRYmjQ/7mHEitPM
ka3H2PAODKD0mvl9/kJ0tHWvIEOoR3nQgJHzVHzUeIzW6FDFnD2GTI6Ry5Wb25zxyjnsFGqQJEo0
91deG7ckHyFtphXyrxg3KdO0FnzjNKT1AYpC6GMhRsQGkKTlKDHXbat0LjSG/xsgtOuW2w3NUcOy
aBkt4Te9S2BR6x50UgGi3ajQbgVwbwFuIjN4i2q2OD7hMr8YqYxztuPUNRT8rGLp9P5l/eK9QvgX
vr8ERb/1mrLgkx9BijMcXLgimzrtcnXQjpZsUTtbI+/HAOvNb3Ej35tiHBlCqGrKSKAqm6e+KkxJ
M7YoiEh2hG8weolITuxG/rueilZcjuYsogmbMIdHCNafhDy6+lZT7JipEi7ggvmz5J3sIJ/27KXQ
/OY+2lPo6HGzqcqwiwNkS569s3u3SyAP6EzqW+g2qJeX6v5wFBFEwSm8LdguA1iZh9QBODkpGLHG
L/IG/oyJfAAzGKEF9DeMefJR+x1H4OTzUNQTNXBebtJNquQePcKdM7HX++q3lJKddL5H1xyTfk8N
E624dUeQ1arOuEpSbTsvtMhsb+T6O7tCdsCxFpa1uSuVESoV5b1pRyY/6NxISgaDFyJUJg5qE9fx
df6H3r4UGf4evFwQGs8KAye+u1Lf+Su5Lf5zYJIdK/5TI2++4mlnK8/dKo6qcv1TSSPmq1iEEnzT
zbC/oLhrAZBevfdgTCC+V4+DAs+dD7sBIBdvNoCmzhDy6xS4p4sWcin9S7QG8v0DKFTIABCsNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x1E86CEC1C768010"
last-modified: Thu, 12 Nov 2026 00:43:46 GMT
content-md5: UnMufS6oW713drRJBkI6iA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 255cef2f-5a8b-4231-a9fe-4356086029ca
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 6: PUT /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d/baz/foo

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
fQeCVB2AzjkD95ND6OF/hOqmtzjQBPyOQNHH+qEN04Rmnbj5/hY79bWm6JRbhakHsqA9a3MJXXgL
8xNMudOX9SQO3UophoXTa8GCKhxnM7snwEgB0GgRXEBA7goD7zzhDvJwTKdf3Swaav+xhjNbo8BY
JPiLlSW8/YAK6Jd60HyFoRsq9+YTyOIc52VoX9YN5UtKqspDVXjMtE4mVfSUn5qDLOQXMazZRFwW
bq2/U52q/ANMMCWxQUuiXUKX7XLtiEjL5DPx9bOfcGVuLefKDWCxe1jwSG500uqZdNNpQlfpKOZl
9G9quQdQrcC/QhRk10/i5nEa/EDaVxJIV4DfNS4OhQQAZRnxRsJRoJqttI/WNJ2Eh1vmzyumi5xc
ImGGcHeSsb0PY3I28KCuyVulLKKDcSLjW67SKLbZWdp8lCNhyjAjGwPRx9EqTZa6NwXPAV/52bE+
oxTIv4gHNgmXult9Tf4rgRCfsapRuA4YGPCwCVh7grtyIiccWlx6ypHHkpI6PeoHpH9OWicH7OoF
sKeYViyxHDegCyrXDyezJecZiiV73doGqWXYLCiUajY9Fqm14nNkFXZbmjK/MJRYmjQ/7mHEitPM
ka3H2PAODKD0mvl9/kJ0tHWvIEOoR3nQgJHzVHzUeIzW6FDFnD2GTI6Ry5Wb25zxyjnsFGqQJEo0
91deG7ckHyFtphXyrxg3KdO0FnzjNKT1AYpC6GMhRsQGkKTlKDHXbat0LjSG/xsgtOuW2w3NUcOy
aBkt4Te9S2BR6x50UgGi3ajQbgVwbwFuIjN4i2q2OD7hMr8YqYxztuPUNRT8rGLp9P5l/eK9QvgX
vr8ERb/1mrLgkx9BijMcXLgimzrtcnXQjpZsUTtbI+/HAOvNb3Ej35tiHBlCqGrKSKAqm6e+KkxJ
M7YoiEh2hG8weolITuxG/rueilZcjuYsogmbMIdHCNafhDy6+lZT7JipEi7ggvmz5J3sIJ/27KXQ
/OY+2lPo6HGzqcqwiwNkS569s3u3SyAP6EzqW+g2qJeX6v5wFBFEwSm8LdguA1iZh9QBODkpGLHG
L/IG/oyJfAAzGKEF9DeMefJR+x1H4OTzUNQTNXBebtJNquQePcKdM7HX++q3lJKddL5H1xyTfk8N
E624dUeQ1arOuEpSbTsvtMhsb+T6O7tCdsCxFpa1uSuVESoV5b1pRyY/6NxISgaDFyJUJg5qE9fx
df6H3r4UGf4evFwQGs8KAye+u1Lf+Su5Lf5zYJIdK/5TI2++4mlnK8/dKo6qcv1TSSPmq1iEEnzT
zbC/oLhrAZBevfdgTCC+V4+DAs+dD7sBIBdvNoCmzhDy6xS4p4sWcin9S7QG8v0DKFTIABCsNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x24CF14201CD13A0"
last-modified: Thu, 12 Nov 2026 00:43:46 GMT
content-md5: UnMufS6oW713drRJBkI6iA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: 28b1ce5e-7ea6-4d57-9092-2d28cb38dbd7
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 7: PUT /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d/baz/foo/bar

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
fQeCVB2AzjkD95ND6OF/hOqmtzjQBPyOQNHH+qEN04Rmnbj5/hY79bWm6JRbhakHsqA9a3MJXXgL
8xNMudOX9SQO3UophoXTa8GCKhxnM7snwEgB0GgRXEBA7goD7zzhDvJwTKdf3Swaav+xhjNbo8BY
JPiLlSW8/YAK6Jd60HyFoRsq9+YTyOIc52VoX9YN5UtKqspDVXjMtE4mVfSUn5qDLOQXMazZRFwW
bq2/U52q/ANMMCWxQUuiXUKX7XLtiEjL5DPx9bOfcGVuLefKDWCxe1jwSG500uqZdNNpQlfpKOZl
9G9quQdQrcC/QhRk10/i5nEa/EDaVxJIV4DfNS4OhQQAZRnxRsJRoJqttI/WNJ2Eh1vmzyumi5xc
ImGGcHeSsb0PY3I28KCuyVulLKKDcSLjW67SKLbZWdp8lCNhyjAjGwPRx9EqTZa6NwXPAV/52bE+
oxTIv4gHNgmXult9Tf4rgRCfsapRuA4YGPCwCVh7grtyIiccWlx6ypHHkpI6PeoHpH9OWicH7OoF
sKeYViyxHDegCyrXDyezJecZiiV73doGqWXYLCiUajY9Fqm14nNkFXZbmjK/MJRYmjQ/7mHEitPM
ka3H2PAODKD0mvl9/kJ0tHWvIEOoR3nQgJHzVHzUeIzW6FDFnD2GTI6Ry5Wb25zxyjnsFGqQJEo0
91deG7ckHyFtphXyrxg3KdO0FnzjNKT1AYpC6GMhRsQGkKTlKDHXbat0LjSG/xsgtOuW2w3NUcOy
aBkt4Te9S2BR6x50UgGi3ajQbgVwbwFuIjN4i2q2OD7hMr8YqYxztuPUNRT8rGLp9P5l/eK9QvgX
vr8ERb/1mrLgkx9BijMcXLgimzrtcnXQjpZsUTtbI+/HAOvNb3Ej35tiHBlCqGrKSKAqm6e+KkxJ
M7YoiEh2hG8weolITuxG/rueilZcjuYsogmbMIdHCNafhDy6+lZT7JipEi7ggvmz5J3sIJ/27KXQ
/OY+2lPo6HGzqcqwiwNkS569s3u3SyAP6EzqW+g2qJeX6v5wFBFEwSm8LdguA1iZh9QBODkpGLHG
L/IG/oyJfAAzGKEF9DeMefJR+x1H4OTzUNQTNXBebtJNquQePcKdM7HX++q3lJKddL5H1xyTfk8N
E624dUeQ1arOuEpSbTsvtMhsb+T6O7tCdsCxFpa1uSuVESoV5b1pRyY/6NxISgaDFyJUJg5qE9fx
df6H3r4UGf4evFwQGs8KAye+u1Lf+Su5Lf5zYJIdK/5TI2++4mlnK8/dKo6qcv1TSSPmq1iEEnzT
zbC/oLhrAZBevfdgTCC+V4+DAs+dD7sBIBdvNoCmzhDy6xS4p4sWcin9S7QG8v0DKFTIABCsNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x26E2346F630C880"
last-modified: Thu, 12 Nov 2026 00:43:46 GMT
content-md5: UnMufS6oW713drRJBkI6iA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: dddbdf0b-4545-4e15-a5fb-bcc8c08bb5f4
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 8: PUT /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d/baz/bar/foo

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
fQeCVB2AzjkD95ND6OF/hOqmtzjQBPyOQNHH+qEN04Rmnbj5/hY79bWm6JRbhakHsqA9a3MJXXgL
8xNMudOX9SQO3UophoXTa8GCKhxnM7snwEgB0GgRXEBA7goD7zzhDvJwTKdf3Swaav+xhjNbo8BY
JPiLlSW8/YAK6Jd60HyFoRsq9+YTyOIc52VoX9YN5UtKqspDVXjMtE4mVfSUn5qDLOQXMazZRFwW
bq2/U52q/ANMMCWxQUuiXUKX7XLtiEjL5DPx9bOfcGVuLefKDWCxe1jwSG500uqZdNNpQlfpKOZl
9G9quQdQrcC/QhRk10/i5nEa/EDaVxJIV4DfNS4OhQQAZRnxRsJRoJqttI/WNJ2Eh1vmzyumi5xc
ImGGcHeSsb0PY3I28KCuyVulLKKDcSLjW67SKLbZWdp8lCNhyjAjGwPRx9EqTZa6NwXPAV/52bE+
oxTIv4gHNgmXult9Tf4rgRCfsapRuA4YGPCwCVh7grtyIiccWlx6ypHHkpI6PeoHpH9OWicH7OoF
sKeYViyxHDegCyrXDyezJecZiiV73doGqWXYLCiUajY9Fqm14nNkFXZbmjK/MJRYmjQ/7mHEitPM
ka3H2PAODKD0mvl9/kJ0tHWvIEOoR3nQgJHzVHzUeIzW6FDFnD2GTI6Ry5Wb25zxyjnsFGqQJEo0
91deG7ckHyFtphXyrxg3KdO0FnzjNKT1AYpC6GMhRsQGkKTlKDHXbat0LjSG/xsgtOuW2w3NUcOy
aBkt4Te9S2BR6x50UgGi3ajQbgVwbwFuIjN4i2q2OD7hMr8YqYxztuPUNRT8rGLp9P5l/eK9QvgX
vr8ERb/1mrLgkx9BijMcXLgimzrtcnXQjpZsUTtbI+/HAOvNb3Ej35tiHBlCqGrKSKAqm6e+KkxJ
M7YoiEh2hG8weolITuxG/rueilZcjuYsogmbMIdHCNafhDy6+lZT7JipEi7ggvmz5J3sIJ/27KXQ
/OY+2lPo6HGzqcqwiwNkS569s3u3SyAP6EzqW+g2qJeX6v5wFBFEwSm8LdguA1iZh9QBODkpGLHG
L/IG/oyJfAAzGKEF9DeMefJR+x1H4OTzUNQTNXBebtJNquQePcKdM7HX++q3lJKddL5H1xyTfk8N
E624dUeQ1arOuEpSbTsvtMhsb+T6O7tCdsCxFpa1uSuVESoV5b1pRyY/6NxISgaDFyJUJg5qE9fx
df6H3r4UGf4evFwQGs8KAye+u1Lf+Su5Lf5zYJIdK/5TI2++4mlnK8/dKo6qcv1TSSPmq1iEEnzT
zbC/oLhrAZBevfdgTCC+V4+DAs+dD7sBIBdvNoCmzhDy6xS4p4sWcin9S7QG8v0DKFTIABCsNg==
```
### Response headers recorded for playback:

```
Server: Azurite-Blob/3.37.0
etag: "0x22378DA92A8E460"
last-modified: Thu, 12 Nov 2026 00:43:46 GMT
content-md5: UnMufS6oW713drRJBkI6iA==
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: b0e13070-60ef-4554-8d89-d8289f69c429
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (201: text/plain):

```
```

## Interaction 9: PUT /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d/foo/foo?comp=metadata

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
etag: "0x1FC24D07A024340"
last-modified: Thu, 12 Nov 2026 00:43:46 GMT
x-ms-client-request-id: {{request.header.x-ms-client-request-id}}
x-ms-request-id: c9b77a48-54e7-4288-9099-a22986b3e28a
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:46 GMT
x-ms-request-server-encrypted: true
Content-Length: 0
```
### Response body recorded for playback (200: text/plain):

```
```

## Interaction 10: GET /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d?restype=container&comp=list

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
x-ms-request-id: 2e5c32a2-1f29-450d-a300-bdb5b76cce52
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:46 GMT
```
### Response body recorded for playback (200: application/xml):

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><EnumerationResults ServiceEndpoint="http://127.0.0.1:10170/devstoreaccount1" ContainerName="test-container-ebdf8476-ef8c-91c8-e932-2427112b412d"><Prefix/><Marker/><MaxResults>5000</MaxResults><Blobs><Blob><Name>bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:46 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:46 GMT</Last-Modified><Etag>0x24E41752230ACA0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>UnMufS6oW713drRJBkI6iA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:46 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:46 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:46 GMT</Last-Modified><Etag>0x27579C09A9F4780</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>UnMufS6oW713drRJBkI6iA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:46 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/bar/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:46 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:46 GMT</Last-Modified><Etag>0x22378DA92A8E460</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>UnMufS6oW713drRJBkI6iA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:46 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:46 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:46 GMT</Last-Modified><Etag>0x24CF14201CD13A0</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>UnMufS6oW713drRJBkI6iA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:46 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>baz/foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:46 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:46 GMT</Last-Modified><Etag>0x26E2346F630C880</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>UnMufS6oW713drRJBkI6iA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:46 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:46 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:46 GMT</Last-Modified><Etag>0x21173156E648440</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>UnMufS6oW713drRJBkI6iA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:46 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/bar</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:46 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:46 GMT</Last-Modified><Etag>0x1E86CEC1C768010</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>UnMufS6oW713drRJBkI6iA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:46 GMT</AccessTierChangeTime></Properties></Blob><Blob><Name>foo/foo</Name><Properties><Creation-Time>Thu, 12 Nov 2026 00:43:46 GMT</Creation-Time><Last-Modified>Thu, 12 Nov 2026 00:43:46 GMT</Last-Modified><Etag>0x1FC24D07A024340</Etag><Content-Length>1024</Content-Length><Content-Type>application/octet-stream</Content-Type><Content-MD5>UnMufS6oW713drRJBkI6iA==</Content-MD5><BlobType>BlockBlob</BlobType><LeaseStatus>unlocked</LeaseStatus><LeaseState>available</LeaseState><ServerEncrypted>true</ServerEncrypted><AccessTier>Hot</AccessTier><AccessTierInferred>true</AccessTierInferred><AccessTierChangeTime>Thu, 12 Nov 2026 00:43:46 GMT</AccessTierChangeTime></Properties></Blob></Blobs><NextMarker/></EnumerationResults>
```

## Interaction 11: DELETE /devstoreaccount1/test-container-ebdf8476-ef8c-91c8-e932-2427112b412d?restype=container

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
x-ms-request-id: 12610d28-f534-44bb-b093-4fd11de0bcbe
x-ms-version: 2026-06-06
date: Thu, 12 Nov 2026 00:43:46 GMT
Content-Length: 0
```
### Response body recorded for playback (202: text/plain):

```
```

