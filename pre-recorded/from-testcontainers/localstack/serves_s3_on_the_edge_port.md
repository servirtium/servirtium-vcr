## Interaction 0: GET /_localstack/health

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 Credential=test/20260101/us-east-1/s3/aws4_request, SignedHeaders=host, Signature=x
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/json
Content-Length: 888
server: hypercorn-h11
```
### Response body recorded for playback (200: application/json):

```
{"services": {"acm": "disabled", "apigateway": "disabled", "cloudformation": "disabled", "cloudwatch": "disabled", "config": "disabled", "dynamodb": "disabled", "dynamodbstreams": "disabled", "ec2": "disabled", "es": "disabled", "events": "disabled", "firehose": "disabled", "iam": "disabled", "kinesis": "disabled", "kms": "disabled", "lambda": "disabled", "logs": "disabled", "opensearch": "disabled", "redshift": "disabled", "resource-groups": "disabled", "resourcegroupstaggingapi": "disabled", "route53": "disabled", "route53resolver": "disabled", "s3": "available", "s3control": "disabled", "scheduler": "disabled", "secretsmanager": "disabled", "ses": "disabled", "sns": "disabled", "sqs": "disabled", "ssm": "disabled", "stepfunctions": "disabled", "sts": "disabled", "support": "disabled", "swf": "disabled", "transcribe": "disabled"}, "edition": "community", "version": "3.4.0"}
```

## Interaction 1: PUT /tcae-bucket

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 Credential=test/20260101/us-east-1/s3/aws4_request, SignedHeaders=host, Signature=x
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: application/xml
Location: /tcae-bucket
Content-Length: 0
server: hypercorn-h11
```
### Response body recorded for playback (200: application/xml):

```
```

## Interaction 2: PUT /tcae-bucket/hello.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 Credential=test/20260101/us-east-1/s3/aws4_request, SignedHeaders=host, Signature=x
Connection: keep-alive
Content-Length: 28
Content-Type: text/plain
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
hello from testcontainers-ae
```
### Response headers recorded for playback:

```
Content-Type: application/xml
ETag: "01dd298eaedf949ac89b3bcb58275dfb"
x-amz-server-side-encryption: AES256
Content-Length: 0
server: hypercorn-h11
```
### Response body recorded for playback (200: application/xml):

```
```

## Interaction 3: GET /tcae-bucket/hello.txt

### Request headers recorded for playback:

```
Authorization: AWS4-HMAC-SHA256 Credential=test/20260101/us-east-1/s3/aws4_request, SignedHeaders=host, Signature=x
Connection: keep-alive
Host: {{request.host}}
User-Agent: testcontainers-ae-tests (Aether std.http.client)
```
### Request body recorded for playback ():

```
```
### Response headers recorded for playback:

```
Content-Type: text/plain
accept-ranges: bytes
Content-Length: 28
ETag: "01dd298eaedf949ac89b3bcb58275dfb"
x-amz-server-side-encryption: AES256
server: hypercorn-h11
```
### Response body recorded for playback (200: text/plain):

```
hello from testcontainers-ae
```


## [Recording rules]

What the test asked Servirtium to leave out or rewrite when it wrote this recording; everything else is as sent. Playback does not read this section.

| Rule | Applies to | Matching | Written as | Interactions |
|---|---|---|---|---|
| removed | response headers | `Date` | (left out) | 0–3 |
| removed | response headers | `X-Request-Id` | (left out) | none |
| removed | response headers | `X-Correlation-Id` | (left out) | none |
| removed | response headers | `x-amz-request-id` | (left out) | 1–3 |
| removed | response headers | `x-amz-id-2` | (left out) | 1–3 |
| removed | response headers | `Last-Modified` | (left out) | 3 |
| collapsed | whole recording | *the container's mapped host:port* | `{{request.host}}` | none |
| collapsed | whole recording | *the recorder's own host:port* | `{{request.host}}` | 0–3 |
