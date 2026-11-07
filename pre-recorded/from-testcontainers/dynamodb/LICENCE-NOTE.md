# Why there is no tape here

This suite's test and recorder are shipped; its tape is not. The service it
records, `amazon/dynamodb-local:2.2.1`, is under the DynamoDB Local licence agreement (`/home/dynamodblocal/LICENSE.txt` in the image) and the AWS Customer Agreement it builds on.

It licenses the software "solely (i) for your internal business purposes and (ii) in connection with the Services", to holders of an AWS account in good standing, and forbids you to "publicly communicate, transform, or sub-license the Software" or to reverse engineer it. Whether publishing recordings of its responses for others to replay as a stand-in is inside that is unclear, so the tape is not shipped. See the `dynamodb` row and the DECISION section of
[UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) for the clauses and where they
are. (Not legal advice; it is a cautious reading.)

## Record your own tape

With a container engine and the image's terms accepted for yourself, from
`pre-recorded/from-testcontainers`:

```sh
TCAE_VCR=record   ae test dynamodb/test_dynamodb.ae   # writes dynamodb/creates_a_table_stores_and_reads_an_item.md
TCAE_VCR=playback ae test dynamodb/test_dynamodb.ae   # replays it, no container
```

The tape you record stays on your machine (`.gitignore` here keeps it out of
git) and is subject to the vendor's terms above, as your use of the image
is: the test writes those terms at the top of the tape. Do not publish it
unless those terms allow you to.

In playback with no tape, the suite skips with a notice instead of failing.
