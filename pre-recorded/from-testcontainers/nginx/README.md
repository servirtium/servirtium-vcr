# nginx

Recordings of the nginx (stock page and four configurations), from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_the_stock_page_and_a_copied_in_file.md`](serves_the_stock_page_and_a_copied_in_file.md) | GET / (200), GET /tcae.txt (a copied-in file, 200), GET /missing (404). | [test_nginx.ae#L80](test_nginx.ae#L80) |
| [`replaces_nginx_conf.md`](replaces_nginx_conf.md) | GET /whoami (200) from a replaced nginx.conf. | [test_nginx.ae#L118](test_nginx.ae#L118) |
| [`accepts_gos_testdata_nginx_conf_and_default_conf.md`](accepts_gos_testdata_nginx_conf_and_default_conf.md) | GET / (200) with testcontainers-go's testdata nginx.conf. | [test_nginx.ae#L147](test_nginx.ae#L147) |
| [`accepts_gos_testdata_nginx_conf_and_default_conf_default_conf.md`](accepts_gos_testdata_nginx_conf_and_default_conf_default_conf.md) | GET / (200) with testcontainers-go's testdata default.conf (second container, own tape). | [test_nginx.ae#L152](test_nginx.ae#L152) |
| [`replaces_conf_d_default_conf.md`](replaces_conf_d_default_conf.md) | GET /ping (200) and GET / (404) from a replaced conf.d/default.conf. | [test_nginx.ae#L171](test_nginx.ae#L171) |

## Replaying from another language

The test file's `PORTING` comments ([test_nginx.ae](test_nginx.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- What differs between tapes is the configuration the container started with, which is not on any tape; the tape name says which. The configs are in `testdata/`.
- `Last-Modified` and `ETag` are left out (they come from when a file was copied in).
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test nginx/test_nginx.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test nginx/test_nginx.ae   # live container, Servirtium in the middle, tapes written to nginx/
TCAE_VCR=check    ae test nginx/test_nginx.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test nginx/test_nginx.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: BSD-2-Clause (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
