# servirtium

Not a service, and it has no tapes. This directory is the Aether module (`module.ae`, `import servirtium`) that every suite beside it uses to put Servirtium in the middle of its HTTP tests.

## What it does

A test that talks plain HTTP to a container asks for its base URL through `servirtium.recording(suite, case, upstream)`. What happens then depends on `TCAE_VCR` (see [`module.ae`](module.ae) and the parent [README](../README.md#modes-tcae_vcr)):

| `TCAE_VCR` | Behaviour |
|---|---|
| unset or `off` | the container's URL comes straight back; the test runs without Servirtium |
| `record` | a Servirtium recorder on a free loopback port forwards to the container and `end_recording` writes `<suite>/<case>.md` |
| `check` | record, and fail the case if the new tape differs from the committed one |
| `playback` | no container and no engine: a replay server answers from the tape, and `end_recording` fails the case if a request did not match or a recorded one was never made |

It also holds the rules the suites register (normalize, collapse, redact, remove header, licence notice, stable ordering) and the defaults: the `Date`, `X-Request-Id` and `X-Correlation-Id` response headers are dropped, and the container's mapped `host:port` becomes `{{request.host}}`. The parent README's [Normalizations in force](../README.md#normalizations-in-force) lists them per suite.

## Fidelity

Nothing here is recorded, so there is nothing to be faithful to. For how far each service's tapes can be trusted, see the README in that service's directory and [Fidelity: emulators vs the real service](../README.md#fidelity-emulators-vs-the-real-service).

## Licence and terms

Part of servirtium-vcr; see the repository's [LICENSE](../../../LICENSE).
