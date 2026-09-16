# ae 0.675/0.677 codegen bug: a closure's own locals get captured as cells

**Status:** open upstream (Aether). Locally worked around in aeb's dotnet SDK
(2-line rename, see below). Found by the CachyOS sweep that
[`handover-verify-0675-sweep-on-cachyos.md`](handover-verify-0675-sweep-on-cachyos.md)
asked for.

**Who needs this:** whoever maintains Aether codegen (the bug), and aeb (the
cheap rename that unblocks downstream without waiting for a compiler fix).

## Symptom

Every `.tests.ae` / `.package.ae` leaf that touches the **dotnet SDK** — and
therefore the whole `.packages.ae` aggregate — dies at orchestrator link time:

```
lib/dotnet/module.ae: In function 'dotnet_build_project':
lib/dotnet/module.ae:764:126: error: 'idx' undeclared (first use in this function)
lib/dotnet/module.ae:764:290: error: 'entry' undeclared (first use in this function)
aeb-link: FATAL — failed to link the fan-out orchestrator
```

The reported line/column is misleading: line 764 is `if string.length(line_r) > 0 {`
and has no column 290. The `#line` mapping back to the `.ae` source is off, so
don't chase line 764 — chase the generated C.

Affected leaves here: `dotnet/Servirtium.Vcr.Tests/.tests.ae`, `fsharp/.tests.ae`,
`.packages.ae`.

## It is the compiler, not aeb

`lib/dotnet/module.ae` is **byte-identical** between aeb v0.311 and v0.312
(`git diff v0.311 v0.312 -- lib/dotnet/module.ae` is empty), and the offending
shape is already there in v0.311. Bisecting the *compiler* against one fixed
aeb v0.312:

| ae | result |
|----|--------|
| 0.668.0 | no codegen bug |
| 0.675.0 | **`idx`/`entry` undeclared** |
| 0.677.0 | **`idx`/`entry` undeclared** |

So it is an Aether regression landing in **0.675**, still present in 0.677.
(On 0.668 the leaf fails for the unrelated, expected reason that aeb v0.312's
SDK wants 0.677 features — but the invalid C is gone.)

Worth noting against the `AE_FETCH` note's "I verified aeb v0.312 builds this
repo fine on ae 0.675": that verification could not have covered this, because
the box doing it had no .NET SDK, so the dotnet path never compiled.

## Root cause, from the generated C

In `target/_aeb/dotnet_*_D_Tests__D_build_D_ae.c`, inside `dotnet_build_project`:

```c
/* ~12739 — inside the EARLIER pkgrefs block (.ae ~724) */
int* idx = (int*)_aether_cell_new(sizeof(int));
const char** entry = (const char**)_aether_cell_new(sizeof(const char*));
...
/* ~12775 — that block ends, and the cells are released */
_aether_cell_release_str(entry);
_aether_cell_release(idx);
...
/* ~12827 — the closure-construction site, OUTSIDE that block */
_e->idx = (int*)_aether_cell_retain(idx);     /* 'idx' undeclared here */
_e->entry = (const char**)_aether_cell_retain(entry);
```

`dotnet_build_project` declares `idx`/`entry` **twice**: once in an earlier
nested block (the pkgrefs loop, `.ae` ~724) and once as the closure's *own*
locals (`.ae` ~766, inside `string.seq_each(…, |ln| { … })`). Codegen unifies
the two by name, decides the pair is captured-and-mutated, promotes the
*earlier* ones to heap cells — and then emits the capture at a construction
site that sits outside the C block where those cells were declared.

The closure's locals are not captures at all; they are declared in the closure
body. A name assigned inside a closure should not be unified with a same-named
local of the enclosing function, least of all one in an already-closed block.

**Not reproduced in isolation.** I tried four minimal cases — nested `if` in a
closure, tuple-destructuring assignment in a closure, closure inside a `while`,
and the same-name-in-earlier-block shape — and all four compile clean on 0.677
(scripts are in the session scratchpad, not committed). The trigger needs
something more than the shape alone, so the generated C above is the real
evidence. The whole-function context in `lib/dotnet/module.ae:698-893` is the
reproducer.

## The cheap fix for aeb (verified here)

Rename the closure's own locals so they cannot collide. In
`lib/dotnet/module.ae`, inside the `vendored_refs` `seq_each` closure only
(~762-776), `idx` → `vr_idx` and `entry` → `vr_entry`.

Verified on ae 0.677.0 + aeb v0.312 with exactly that edit applied to the
installed copy: `fsharp/.tests.ae` 1/1 PASS (22s), `dotnet/…/.tests.ae` rc=0
(19s), `.packages.ae` all 29 green (80s). Zero `undeclared` errors.

This is worth doing on its own merits — two same-named-but-unrelated locals in
one 200-line function is a latent trap regardless of the compiler bug — and it
unblocks every downstream consumer now rather than after an ae release.

**The local patch is not durable:** it lives in
`~/.local/share/aeb/lib/dotnet/module.ae` and the next `make install` will
overwrite it. The fix belongs in the aeb repo.
