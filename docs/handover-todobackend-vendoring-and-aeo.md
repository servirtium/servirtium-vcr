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

---

## UPDATE 2026-09-07 (later same day) — the blockers are GONE, aeo v0.2.0 is live

Everything the "blocker" and "not cut yet" notes above waited on has landed. The
path is now open end-to-end.

### 1. aeo v0.2.0 is PUBLISHED
https://github.com/aether-lang-dev/aeo/releases/tag/v0.2.0 (it's `releases/latest`).
One unified, lockstep release — agent binaries AND the aeo CLI bundles together.
So `curl -fsSL https://raw.githubusercontent.com/aether-lang-dev/aeo/main/get.sh | sh`
installs the aeo CLI now (binary-first, sha256-verified, copy-only install — works
on a bare debian-slim CI box, no `make`/compiler needed for the CLI itself; note
aeo shells `ae` at RUNTIME, which get.sh also installs).
- Linux x86_64 + aarch64 CLI bundles: PUBLISHED (the CI target — you're covered).
- FreeBSD CLI bundle: MISSING from v0.2.0 — a flaky upstream `zlib.net` download
  in aether-crossbuild (non-deterministic sha mismatch) skipped it; the release
  degraded gracefully rather than failing. Not needed for Linux-based integration
  CI; a later re-tag will likely include it.

### 2. Both DSL "blockers" are IMPLEMENTED (aeo main + shipped in v0.2.0)
The two gaps in "The blocker" section above — plus a third and a grammar upgrade:
- **exec_entrypoint("/app/bin/…")** → podman `--entrypoint`, command() as ARGS
  (not sh -c). (The naming collision noted above was resolved: `entrypoint()` is
  the script-form; the run-time flag verb is `exec_entrypoint()`.)
- **publish_map(ext, inn)** on a plain container → `-p ext:inn` (asymmetric). So
  the SUT's real `54321:8000` is now expressible (single-arg publish(p) == expose).
- **containerfile("path") + build_context("dir")** → aeo builds the real
  Containerfile against a source-tree context BEFORE boot. So a composition can
  own build→up→record→down with NO manual `podman build` pre-step — the SUT image
  builds from `integration/todobackend/Containerfile.sut` + `sut/` declaratively.
- **entrypoint(){ <lang>(<src>) }** block grammar for one-file SUTs (python /
  ruby / javascript / perl / php), if you ever want an inline SUT instead of a
  Containerfile. (Heredoc close marker must be alone on its line, `)` on the next.)

All proven live against the vendored SUT: a real `aeo up` gave
`Entrypoint=/app/bin/http4k-todo-backend`, `-p 54321:8000`, image built from the
Containerfile. aeo suite (fanning `spec_container_run_argv` etc.) is green.

### 3. So the go_aeo spike's two workarounds can be dropped
The spike (`integration/todobackend/go_aeo/todobackend_go.ae`) had NOTE 1 (used
symmetric 8000:8000 because publish was symmetric) and NOTE 2 (folded the binary
into command() because there was no --entrypoint). BOTH are now removable — the
composition can mirror the leaf's real invocation exactly. The go_aeo README's
"referenced a prebuilt tag" caveat is also gone: use containerfile()+build_context().

### Recommended next step for this line
Convert the 12 hand-rolled `.<lang>_record.ae` leaves to `aeo suite` compositions
using the go_aeo spike (now workaround-free) as the template — health-gated
bring-up + guaranteed teardown, ~45 lines of podman/poll/rm-f per leaf replaced by
a declaration. Pin aeo in CI via get.sh with AEO_REF=v0.2.0 for reproducibility.

Full aeo-side detail: aeo/asks/container-entrypoint-and-asymmetric-publish.md
(all 5 items marked implemented).
