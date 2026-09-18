# Version-floor audit (2026-09-18, CachyOS)

Answering the sibling's ask: *"Audit every binding's declared minimum runtime/SDK
version against what the code actually needs — is the floor real, or just a high
default from the original bindings commit?"* Confirmed-spurious-and-already-fixed
before this pass: **php 8.4 → 8.2**, **dart 3.12 → 3.8**.

**Method, and its honest limit.** Where a lower runtime was installable I ran the
binding against it. Where it was not, the verdict rests on *code evidence* — which
APIs the binding actually calls, and what those APIs require — and says so. This
box has **no version manager for any runtime** (no rbenv/rvm/chruby, no
nvm/fnm/volta, one JDK, one Ruby, one Node), and no passwordless sudo to install
another. So for ruby, javascript and the JVM family I can confirm the floor is
*sufficient*, and reason about whether it is *necessary*, but I cannot execute the
disproof. Those rows are marked accordingly; a box with version managers closes
them in minutes.

## Verdicts

| binding | declared | evidence | verdict |
|---|---|---|---|
| **java** | `maven.compiler.release=22` | Uses the **finalized** `java.lang.foreign.*` — `Linker`, `Arena`, `MemorySegment`, `FunctionDescriptor`, `SymbolLookup`, `AddressLayout`, `ValueLayout`. FFM was finalized in **JDK 22** (JEP 454); before that it needed `--enable-preview`, and there is **no `--enable-preview` anywhere in the repo**. | **REAL.** Not a high default — remove it and pre-22 JVMs cannot run this code at all. |
| **kotlin** | `jvmTarget=21` (pom) | Depends on `servirtium-vcr` 2.0.0-alpha1, i.e. java's jar, compiled at release 22 → class-file major **66**, which a JDK 21 JVM cannot load. | **INCONSISTENT** (see below). README correctly says JDK 22+; only the pom is wrong. |
| **scala / groovy / clojure** | no explicit `release`/`jvmTarget` | Same java dependency, so same effective floor. READMEs say JDK 22+. | Consistent with reality. |
| **ruby** | `>= 3.3.0` | Gemspec declares **zero dependencies**. The binding calls only `Fiddle::Function`, `Fiddle::DLError`, `Fiddle::TYPE_*` — API that predates Ruby 3.0 by years. Nothing 3.3-specific (no `Data.define`, no `it` block param, no Ractor). | **LIKELY SPURIOUS.** Code evidence points far lower. Only Ruby 3.4.10 here, no version manager → could not execute the disproof. |
| **javascript** | `engines.node >= 22` | Sole runtime dependency is `koffi ^2.9.0`, which supports Node 16+. No Node-22-only API in the source (no `Array.fromAsync`, no `withResolvers`, no `structuredClone` reliance). README states no Node requirement at all, so `engines` is the only claim a user meets — and npm enforces it. | **LIKELY SPURIOUS.** Same shape as the php/dart finds. Only Node v26.8.1 here → could not execute the disproof. |
| **dotnet** (library) | `net8.0` | `Servirtium.Vcr` and `Servirtium.Vcr.Tests` both target net8.0. | Plausible floor. |
| **dotnet** (example) | `net10.0` | 42-line xunit test; **no net9/net10-only API** (no `System.Threading.Lock`, no `params Span`, no `field:`). It consumes a net8.0 package. | **HIGHER THAN THE LIBRARY NEEDS**, but see the caveat below — this one is not simply spurious. |
| **fsharp** | `net8.0` throughout | Library, tests and example all agree, and the README says net8.0 is "the shipped floor". | Consistent. |
| **python** | `>= 3.9` (`setup.py`) | The new `python/pyproject.toml` has only a `[build-system]` table and no `[project]`, so metadata still comes from `setup.py`. Works, but the floor now lives in exactly one place that a reader of pyproject.toml will not find. | Fine; worth a pointer comment. |
| **crystal** | `>= 1.0.0` | Permissive. | Fine. |
| **go** | `go 1.21` | Permissive. | Fine. |
| **haskell** | `base >= 4.11 && < 10` | Permissive. | Fine. |
| **gleam** | `gleam_stdlib >= 0.34.0` | Permissive. | Fine. |
| **elixir** | `~> 1.15` | Plausible. | Fine. |
| **zig** | `minimum_zig_version 0.16.0` | Zig moves fast and breaks FFI syntax between minors; a recent floor is justified. | Fine. |
| **php** | `>= 8.2` | Already lowered from 8.4. | Fixed. |
| **dart** | `^3.8.0` | Already lowered from 3.12. | Fixed. |

## kotlin's `jvmTarget=21` is the one outright inconsistency

`kotlin/pom.xml` sets `<jvmTarget>21</jvmTarget>`, so Kotlin emits class-file
major 65. But the module depends on java's jar built at `release=22` (major 66),
which a JDK 21 JVM refuses to load with `UnsupportedClassVersionError`. So the
module cannot actually run anywhere a JDK 21 is the ceiling, and targeting 21
buys nothing.

It is **not** a user-facing lie — `kotlin/README.md` says "JDK 22+" — so nobody is
being misled. It is a latent trap: the pom looks like a deliberate
lower-compatibility promise that the dependency graph cannot keep. Either raise it
to 22 to match reality, or leave it with a comment saying why the number is
inert. I have not changed it: it is a one-line judgment call in someone else's
pom, and the sibling asked for an audit here, not an edit.

## Why the dotnet example's net10.0 is not a clean "spurious"

The example targets net10.0 while consuming a net8.0 package, and contains no API
that needs it — which is exactly the php/dart smell. But lowering it is not free
on *this* box: only the **net10.0 SDK and net10.0 runtime** are installed
(`dotnet --list-runtimes` shows one `Microsoft.NETCore.App 10.0.11`). A net8.0
test project needs a net8.0 runtime to execute unless roll-forward is enabled —
and the repo already uses `env("DOTNET_ROLL_FORWARD")` elsewhere, which suggests
this exact problem was hit before.

So the honest statement is: the example's floor is higher than the library's, and
whether it can drop to net8.0 depends on roll-forward working rather than on the
source. That is a live experiment, not a documentation fix.

## What is left to close

1. **Execute the ruby and javascript disproofs** on a box with rbenv/nvm. Both
   look spurious on code evidence; neither is proven.
2. **Decide kotlin's `jvmTarget`** — raise to 22, or comment why 21 is inert.
3. **Try the dotnet example at net8.0** with roll-forward, and keep net10.0 only
   if roll-forward genuinely fails.
