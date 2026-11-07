# Why there is no tape here

This suite's test and recorder are shipped; its tapes are not. The service it
records is the Cloud Pub/Sub emulator in
`gcr.io/google.com/cloudsdktool/cloud-sdk:emulators`. It emulates a Google
Cloud service, and the Google Cloud Terms of Service (section 3.3) forbid
reverse engineering the Services. Publishing recordings of the emulator's
responses for others to replay in its place is too close to that, so the tapes
are not shipped. See the `gcloud_pubsub` row and the DECISION section of
[UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md). (Not legal advice; it is a
cautious reading.)

## Record your own tape

With a container engine, from `pre-recorded/from-testcontainers`:

```sh
TCAE_VCR=record   ae test gcloud_pubsub/test_gcloud_pubsub.ae   # writes gcloud_pubsub/starts_the_emulator.md
TCAE_VCR=playback ae test gcloud_pubsub/test_gcloud_pubsub.ae   # replays it, no container
```

The tape you record stays on your machine (`.gitignore` here keeps it out of
git) and is subject to Google's terms, as your use of the emulator is: the
test writes those terms at the top of the tape. Do not publish it.

In playback with no tape, the suite skips with a notice instead of failing.
