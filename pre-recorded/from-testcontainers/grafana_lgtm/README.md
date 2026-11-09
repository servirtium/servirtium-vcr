# grafana_lgtm

Recordings of the Grafana, Prometheus, Loki, Tempo and OTLP HTTP endpoints of one grafana/otel-lgtm container, from the real software at the pinned image `?`.

## Who it is for

Anyone testing a client of this service who wants recorded responses to replay in any language with no container, or a stand-in for it in another test suite.

## Fidelity

These tapes are the real software, at one version and in its default configuration as the test starts it (`?`). Versions and configuration change responses, so re-record against the version and configuration you run before relying on details.

## Cases

Each row is one tape; its name is the second argument of the test's `servirtium.recording(...)`. The link in the last column goes to the line in the test that records the tape and, in playback, replays it (the same code in a different mode).

| Tape | What it does | Test |
|---|---|---|
| [`serves_every_endpoint.md`](serves_every_endpoint.md) | Grafana: GET /api/health, GET /api/user as admin (200), then with the default password (401). | [test_grafana_lgtm.ae#L139](test_grafana_lgtm.ae#L139) |
| [`serves_every_endpoint_prometheus.md`](serves_every_endpoint_prometheus.md) | Prometheus: GET /-/ready (200). | [test_grafana_lgtm.ae#L152](test_grafana_lgtm.ae#L152) |
| [`serves_every_endpoint_loki.md`](serves_every_endpoint_loki.md) | Loki: GET /ready (200). | [test_grafana_lgtm.ae#L158](test_grafana_lgtm.ae#L158) |
| [`serves_every_endpoint_tempo.md`](serves_every_endpoint_tempo.md) | Tempo: GET /ready (200). | [test_grafana_lgtm.ae#L164](test_grafana_lgtm.ae#L164) |
| [`serves_every_endpoint_otlp.md`](serves_every_endpoint_otlp.md) | OTLP/HTTP: POST /v1/traces with an empty export (200). | [test_grafana_lgtm.ae#L170](test_grafana_lgtm.ae#L170) |

## Replaying from another language

The test file's `PORTING` comments ([test_grafana_lgtm.ae](test_grafana_lgtm.ae)) say what each tape holds and what a port must do. The parent [README](../README.md#a-tape-is-a-test-scenario-you-can-keep) explains replay (any Servirtium implementation, or `servirtium serve <tape.md>`), the [normalizations](../README.md#normalizations-in-force) and what the requests carry.

- One container, five HTTP servers, so five tapes (the suffix names the service). The gRPC OTLP endpoint is not on a tape.
- Loki and Tempo answer 503 for a while after the stack is up; the test waits live before recording, so each tape holds the one 200.
- Grafana's Basic credentials are on its tape as `Basic REDACTED[<label>]`.
- Playback is strict: a request that differs from the recorded one (method, path, recorded headers, body) or a recorded request never made fails the case.

## Running the test

The test that records the tapes also plays them back; `TCAE_VCR` selects the mode ([parent README](../README.md#modes-tcae_vcr)). From `pre-recorded/from-testcontainers`, with the Aether toolchain (`ae`) installed:

```sh
ae test grafana_lgtm/test_grafana_lgtm.ae                         # default (off): live container, no Servirtium, no tapes
TCAE_VCR=record   ae test grafana_lgtm/test_grafana_lgtm.ae   # live container, Servirtium in the middle, tapes written to grafana_lgtm/
TCAE_VCR=check    ae test grafana_lgtm/test_grafana_lgtm.ae   # record, and fail if a tape changed (<case>.md.actual is left beside it)
TCAE_VCR=playback ae test grafana_lgtm/test_grafana_lgtm.ae   # no container, no engine: replay the tapes
```

Playback is not the default: with `TCAE_VCR` unset the test starts the container. Recording needs a container engine (Docker or Podman). `TCAE_VCR_DIR` puts the tapes somewhere other than this directory.

## Licence and terms

Upstream licence: Apache-2.0 (the image), bundling Grafana, Loki, Tempo (AGPL-3.0), Prometheus and the OpenTelemetry Collector (Apache-2.0) (class CLEAR). The recorded software's terms bind anyone who uses its tapes: see [UPSTREAM-TERMS.md](../UPSTREAM-TERMS.md) and [NOTICE](../NOTICE).
