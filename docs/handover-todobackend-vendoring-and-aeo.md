# Handover: todobackend SUT vendored in-repo + the aeo-composition opportunity

_2026-09-07. Short note for whoever picks up the integration/todobackend line._

## What just changed (committed, NOT pushed)

Commit `6ad050b` on `main` (local): the http4k TodoBackend **SUT is now vendored
in-repo** at `integration/todobackend/sut/`, replacing the external-sibling
dependency the record leaves used to have.

- Was: the 12 `.<lang>_record.ae` leaves built `todobackend-sut:latest` from
  `${root}/../todobackend-for-compatibility-kit` — a clone that had to exist
  beside this repo, of a **now-archived** upstream (last change 2022-09-25).
- Now: `src = "${root}/integration/todobackend/sut"`. Self-contained.
- Copied verbatim minus standalone-repo cruft (`.github/` CI, `.travis.yml`,
  its `.gitignore`). Provenance in `sut/README.md`.
- `Containerfile.sut`, both integration READMEs, and `.gitignore` (SUT gradle
  build outputs) updated to match.

**Verified**: builds via `Containerfile.sut` (gradle 7.5/JDK 11 pinned in the
multi-stage Dockerfile — no host bit-rot), runs, serves (`GET /` → `[]`).
Nothing needed fixing; the fixture is intact.

**Action for you:** review + `git push` when you're happy (it's a local commit).

## The bigger opportunity this unblocks: record leaves → aeo compositions

The record leaves today hand-roll the SUT lifecycle: detect podman/docker, build
the image, `run -d -p 54321:8000 --entrypoint …`, poll a readiness loop, record,
then best-effort `rm -f`. That's ~45 lines of imperative container plumbing per
leaf, and teardown is best-effort (a crashed record run can leak the container).

**aeo** (the sibling orchestrator, now with a published-CLI story) does exactly
this as a first-class lifecycle: `aeo up` (health-gated bring-up), record, `aeo
down` (teardown *verified*, and guaranteed-on-failure via `aeo suite`). A spike
of this already exists at `integration/todobackend/go_aeo/` (composition + suite
spec + writeup). Converting the 24 record/playback leaves to `aeo suite`
compositions would give health-gated standup + guaranteed teardown for free.

### The blocker (on the aeo side, not here)

Two compose-DSL gaps stop a composition from expressing the real SUT invocation
(`podman run --entrypoint /app/bin/http4k-todo-backend IMAGE 8000 …`), tracked in
`aeo/asks/container-entrypoint-and-asymmetric-publish.md`:
1. `entrypoint()` isn't wired to podman `--entrypoint` (and the name collides
   with aeo's existing script-form `entrypoint()` — a naming decision is pending
   there).
2. `expose(N)` only does symmetric `N:N`; the SUT wants asymmetric `54321:8000`
   (needs `publish(ext, inn)` on a plain container).

Until those land in aeo, the leaves stay hand-rolled. When they do, the go_aeo
spike is the template to fan out from.

## Also (adjacent, aeo/aeb ecosystem)

The aeo CLI now installs via `curl …/aeo/main/get.sh | sh` (binary-first,
sha256-verified) — relevant if servirtium ever wants aeo in its CI to run these
compositions. Its make-less bundle install is fixed + verified on debian:13-slim.
The first `aeo v0.2.0` release (agent + CLI together, lockstep) hasn't been cut
yet — it's a gated maintainer action.
