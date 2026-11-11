# Pre-recorded

Servirtium recordings of real services' HTTP APIs, to reuse in any
language's tests: point a Servirtium playback server (any implementation,
or `servirtium serve <tape.md>` from this repository's CLI) at a tape and
test against it, with no container and no service.

| Directory | What made the recordings |
|---|---|
| [`from-testcontainers/`](from-testcontainers/README.md) | Aether tests that start each service with [testcontainers-ae](https://github.com/servirtium/testcontainers-ae) and put Servirtium in the middle |
| [`joomla-api/`](joomla-api/README.md) | An Aether test that starts Joomla 6.2.0 and MariaDB in containers (generic containers of [testcontainers-ae](https://github.com/servirtium/testcontainers-ae)) and puts Servirtium in the middle: CRUD on articles, categories, tags, banners and users, ids chained, requests cribbed from the Bruno collection below |
| [`converted/from.bru/renekreijveld_bruno-joomla-api/`](converted/from.bru/renekreijveld_bruno-joomla-api/README.md) | `servirtium convert bru` on René Kreijveld's Joomla 6 Web Services collection, as it is: the examples its author wrote, not recordings (189 of 194 have no response body, and say so). **GPL-3.0**, like the collection, kept apart from the MIT rest of this repository |

The recorded services' licences and terms bind anyone using their tapes: see
[`from-testcontainers/UPSTREAM-TERMS.md`](from-testcontainers/UPSTREAM-TERMS.md);
[`joomla-api/`](joomla-api/README.md#licence) says why its recordings of a GPL
server are MIT like the rest of the repository. A converted collection carries its source's licence in its own directory
(`converted/<kind>/<owner>_<repo>/LICENSE`); `converted/` holds only
conversions of collections whose licence permits redistribution, each with
its source repository and pinned commit in its README.

Each service directory has its own README with what its tapes cover, their fidelity (an emulator of a cloud service, or the real product at a pinned version: either way, record against your own target before trusting details), the cases, and how to run the recording test in record and playback modes.

Only services with an HTTP API can be here: Servirtium records HTTP
messages, so a binary protocol (Mongo, Postgres, Redis, Kafka) cannot be
recorded this way.
