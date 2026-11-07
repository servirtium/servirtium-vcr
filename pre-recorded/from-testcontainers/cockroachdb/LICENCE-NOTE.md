# Why there is no tape here

This suite's test and recorder are shipped; its tapes are not. The service it
records, `cockroachdb/cockroach:v23.1.30`, is under the CockroachDB Software
License (`/licenses/LICENSE` in the image). It has no clause against reverse
engineering or publishing, and it allows free use for testing on a single
node, but it defines "Benchmark" broadly, as "any benchmark, comparative test
or evaluation of the Software", with duties to disclose results. Published
recordings of its API could be read as falling under that, so the tapes are
not shipped (Paul's decision, 2026-11-07). See the `cockroachdb` row and the
DECISION section of [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md). (Not legal
advice; it is a cautious reading.)

## Record your own tapes

With a container engine and the image's terms accepted for yourself, from
`pre-recorded/from-testcontainers`:

```sh
TCAE_VCR=record   ae test cockroachdb/test_cockroachdb.ae   # writes the 12 cockroachdb/*.md tapes
TCAE_VCR=playback ae test cockroachdb/test_cockroachdb.ae   # replays them, no container
```

The tapes you record stay on your machine (`.gitignore` here keeps them out
of git) and are subject to the licence above, as your use of the image is:
the test writes those terms at the top of each tape. Do not publish them, and
do not use them as an evaluation or comparison of CockroachDB.

In playback with no tape, the suite skips with a notice instead of failing.
