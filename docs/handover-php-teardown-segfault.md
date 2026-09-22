# php consumer segfaults at teardown, after reporting PASS

**Status: open.** Found 2026-09-22 on CachyOS by the 0.706/v0.324 sweep. **Not a
toolchain regression** — reproduces identically on ae 0.699 and 0.706 with the
same aeb v0.324.

## Symptom

`php/.example.ae` fails intermittently, and when it does the log looks *green*:

```
ok: consuming installed package at …/vendor/servirtium/servirtium-php
ok: explicit ->nativeLib() playback (bundled .so …)
PASS[explicit]: consumer replayed the canonical tape from the installed package
php example: explicit-mode consumer run failed
```

The consumer prints `PASS`, having done all its work correctly, and *then* exits
non-zero. The leaf is right to fail it; the confusing part is that the output
says the opposite.

The exit status is **139 = 128 + 11 = SIGSEGV**, with a core dumped.

Which mode gets blamed is arbitrary — the leaf runs `explicit` and `discovery` as
two separate `os.system` calls and names whichever returned non-zero. The sweep
blamed `discovery`; a re-run blamed `explicit`. **Two failures of the same node
disagreeing is the signature of an environment/race problem rather than a code
defect**, which is what put me onto a crash rather than a logic error.

## Rates (measured, not estimated)

| | |
|---|---|
| bare consumer script, ae 0.706 | 10/20 runs SIGSEGV |
| bare consumer script, ae 0.699 | 11/20 runs SIGSEGV |
| the `.example.ae` leaf, ae 0.699 | 4/6 runs failed |

Roughly a coin flip per script invocation, and the leaf invokes it twice, so the
leaf fails most of the time. **Same rate on 0.699 and 0.706 rules out the
toolchain bump.**

## Cause

`coredumpctl` shows the crash is **not on the main thread** — the faulting LWP is
a secondary thread, with the two frames above it inside `libc.so.6`, and the
process has ~7 LWPs.

`core/embed.ae:15` says what those threads are:

> starts the accept loop on a **detached** background thread
> (`http_server_start_background_raw`)

A detached thread **cannot be joined**. `aether_vcr_embed_stop` can signal the
accept loop to stop, but it cannot wait for it to have finished. The consumer
*does* call `$vcr->stop()` (php/example/consumer_example.php:57), so this is not
a missing-cleanup bug in the example — the API gives it no way to wait.

So the shape is a teardown race: the script finishes, `stop()` returns while the
detached accept thread may still be unwinding, PHP's FFI then tears down and
unloads the shared library from under it, and the thread faults.

**Verified:** the crash, the rate, the same-on-both-versions result, the faulting
thread being secondary, the explicit `stop()` call, and the detached-thread
design. **Inferred, not proven:** that the faulting thread *is* the accept
thread, and that PHP's FFI unload is the specific trigger. Confirming that wants
a debuginfo build and a symbolised backtrace.

## Why PHP and not the other 28 bindings

Every binding rides the same engine and therefore the same detached thread, so
the race exists everywhere in principle. PHP is plausibly where it surfaces
because its FFI closes/unloads the library during shutdown, whereas most hosts
leak it to process exit and never touch the pages the dying thread is still in.
That is a hypothesis; it has not been tested against the other bindings.

## Honest note on the earlier sweeps

This repo's `bootstrap.sh` records four consecutive sweeps (0.696, 0.697, 0.698,
0.699) with **29/29 `.example.ae` green**, php included. At the rates measured
today the leaf fails ~2/3 of the time, so four clean runs in a row is about a 1%
outcome. Either something in the environment changed very recently — the box's
php went 8.5.9 → 8.5.10 on 2026-09-07 and glibc moved twice in August — or those
sweeps were far luckier than they read. **I cannot currently explain it, and the
green history should not be treated as evidence that this is new.**

The lesson worth keeping: a green leaf in a flaky suite is weaker evidence than a
green leaf in a deterministic one, and nothing in the sweep output distinguished
the two.

## Suggested fixes, in order of honesty

1. **Make the accept loop joinable** and have `vcr_embed_stop` join it. This
   removes the race rather than narrowing it, and fixes every binding at once.
   Needs an engine change (`http_server_start_background_raw` → a joinable
   handle).
2. **Failing that, document it** in `php/README.md` so a consumer whose CI goes
   intermittently red knows the work completed and why.

Do not "fix" this by making the leaf tolerate a non-zero exit. The exit status is
correct — the process really did crash.
