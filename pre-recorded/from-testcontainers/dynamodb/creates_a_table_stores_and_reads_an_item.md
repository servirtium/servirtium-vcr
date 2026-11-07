## Interaction 0: POST /

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 Credential=fake/20260101/us-east-1/dynamodb/aws4_request, SignedHeaders=host;x-amz-date, Signature=fake
Connection: keep-alive
Content-Length: 174
Content-Type: application/x-amz-json-1.0
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Amz-Date: 20260101T000000Z
X-Amz-Target: DynamoDB_20120810.CreateTable
```
### Request body recorded for playback ():

```
{"TableName":"tcae","AttributeDefinitions":[{"AttributeName":"id","AttributeType":"S"}],"KeySchema":[{"AttributeName":"id","KeyType":"HASH"}],"BillingMode":"PAY_PER_REQUEST"}
```
### Response headers recorded for playback:

```
Content-Type: application/x-amz-json-1.0
Content-Length: 612
Server: Jetty(11.0.17)
```
### Response body recorded for playback (200: application/x-amz-json-1.0):

```
{"TableDescription":{"AttributeDefinitions":[{"AttributeName":"id","AttributeType":"S"}],"TableName":"tcae","KeySchema":[{"AttributeName":"id","KeyType":"HASH"}],"TableStatus":"ACTIVE","CreationDateTime":1700000000.000,"ProvisionedThroughput":{"LastIncreaseDateTime":0.000,"LastDecreaseDateTime":0.000,"NumberOfDecreasesToday":0,"ReadCapacityUnits":0,"WriteCapacityUnits":0},"TableSizeBytes":0,"ItemCount":0,"TableArn":"arn:aws:dynamodb:ddblocal:000000000000:table/tcae","BillingModeSummary":{"BillingMode":"PAY_PER_REQUEST","LastUpdateToPayPerRequestDateTime":1700000000.000},"DeletionProtectionEnabled":false}}
```

## Interaction 1: POST /

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 Credential=fake/20260101/us-east-1/dynamodb/aws4_request, SignedHeaders=host;x-amz-date, Signature=fake
Connection: keep-alive
Content-Length: 2
Content-Type: application/x-amz-json-1.0
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Amz-Date: 20260101T000000Z
X-Amz-Target: DynamoDB_20120810.ListTables
```
### Request body recorded for playback ():

```
{}
```
### Response headers recorded for playback:

```
Content-Type: application/x-amz-json-1.0
Content-Length: 23
Server: Jetty(11.0.17)
```
### Response body recorded for playback (200: application/x-amz-json-1.0):

```
{"TableNames":["tcae"]}
```

## Interaction 2: POST /

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 Credential=fake/20260101/us-east-1/dynamodb/aws4_request, SignedHeaders=host;x-amz-date, Signature=fake
Connection: keep-alive
Content-Length: 68
Content-Type: application/x-amz-json-1.0
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Amz-Date: 20260101T000000Z
X-Amz-Target: DynamoDB_20120810.PutItem
```
### Request body recorded for playback ():

```
{"TableName":"tcae","Item":{"id":{"S":"k1"},"v":{"S":"test_value"}}}
```
### Response headers recorded for playback:

```
Content-Type: application/x-amz-json-1.0
Content-Length: 2
Server: Jetty(11.0.17)
```
### Response body recorded for playback (200: application/x-amz-json-1.0):

```
{}
```

## Interaction 3: POST /

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 Credential=fake/20260101/us-east-1/dynamodb/aws4_request, SignedHeaders=host;x-amz-date, Signature=fake
Connection: keep-alive
Content-Length: 44
Content-Type: application/x-amz-json-1.0
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
X-Amz-Date: 20260101T000000Z
X-Amz-Target: DynamoDB_20120810.GetItem
```
### Request body recorded for playback ():

```
{"TableName":"tcae","Key":{"id":{"S":"k1"}}}
```
### Response headers recorded for playback:

```
Content-Type: application/x-amz-json-1.0
Content-Length: 49
Server: Jetty(11.0.17)
```
### Response body recorded for playback (200: application/x-amz-json-1.0):

```
{"Item":{"v":{"S":"test_value"},"id":{"S":"k1"}}}
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–3 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `x-amzn-RequestId` | (left out) | 0–3 |
| removed | response headers | `x-amz-crc32` | (left out) | 0–3 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
| collapsed | whole recording | `"CreationDateTime":[0-9.]+` | `"CreationDateTime":1700000000.000` | 0 |
| collapsed | whole recording | `"LastUpdateToPayPerRequestDateTime":[0-9.]+` | `"LastUpdateToPayPerRequestDateTime":1700000000.000` | 0 |
