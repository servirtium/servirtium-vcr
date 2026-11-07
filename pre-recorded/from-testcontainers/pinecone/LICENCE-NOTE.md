# Why there is no tape here

This suite's test and recorder are shipped; its tape is not. The service it
records, `ghcr.io/pinecone-io/pinecone-local:v0.7.0`, is under the Pinecone Local License Agreement (last updated 2024-09-23, https://pinecone.io/legal/24.09.23_Pinecone%20Local%20EULA.pdf).

Section 1 limits it to "Pinecone-authorized current or prospective customers" evaluating or using Pinecone's platform; section 3 forbids reverse engineering, accessing it "to build a similar or competitive product or service", and copying, republishing or transmitting any part of it by any means "including ... recording". A published tape that stands in for the emulator plausibly falls foul of that, so the tape is not shipped. See the `pinecone` row and the DECISION section of
[UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) for the clauses and where they
are. (Not legal advice; it is a cautious reading.)

## Record your own tape

With a container engine and the image's terms accepted for yourself, from
`pre-recorded/from-testcontainers`:

```sh
TCAE_VCR=record   ae test pinecone/test_pinecone.ae   # writes pinecone/serves_the_control_plane.md
TCAE_VCR=playback ae test pinecone/test_pinecone.ae   # replays it, no container
```

The tape you record stays on your machine (`.gitignore` here keeps it out of
git) and is subject to the vendor's terms above, as your use of the image
is: the test writes those terms at the top of the tape. Do not publish it
unless those terms allow you to.

In playback with no tape, the suite skips with a notice instead of failing.
