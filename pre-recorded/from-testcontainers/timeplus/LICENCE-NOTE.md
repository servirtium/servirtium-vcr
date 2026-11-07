# Why there is no tape here

This suite's test and recorder are shipped; its tape is not. The service it
records, `timeplus/timeplusd:2.3.37`, is under no licence file in the image (the binary is closed-source Timeplus Enterprise, not the Apache-2.0 Proton); the likely terms are Timeplus's End User Subscription Agreement (https://www.timeplus.com/eusa).

That agreement limits use to internal use (or a 30-day internal evaluation), forbids reverse engineering, and treats the products themselves as confidential information. With no licence shipped and those terms the likely ones, publishing recordings of the server's responses is not clearly allowed, so the tape is not shipped. See the `timeplus` row and the DECISION section of
[UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) for the clauses and where they
are. (Not legal advice; it is a cautious reading.)

## Record your own tape

With a container engine and the image's terms accepted for yourself, from
`pre-recorded/from-testcontainers`:

```sh
TCAE_VCR=record   ae test timeplus/test_timeplus.ae   # writes timeplus/serves_http.md
TCAE_VCR=playback ae test timeplus/test_timeplus.ae   # replays it, no container
```

The tape you record stays on your machine (`.gitignore` here keeps it out of
git) and is subject to the vendor's terms above, as your use of the image
is: the test writes those terms at the top of the tape. Do not publish it
unless those terms allow you to.

In playback with no tape, the suite skips with a notice instead of failing.
