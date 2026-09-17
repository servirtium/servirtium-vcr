# Attestations — cross-built core-lib artifacts run on real target hardware

Each record: a SHA256-identified `libservirtium_vcr` artifact that was cross-built
on one Linux host (`release/build.sh`) and then verified on its actual target OS.
A verifier re-hashes the artifact they hold, matches `sha256`, and trusts the
recorded `result` for those exact bytes. Field format is in
[`README.md`](README.md#attestation-record-suggested-format).

Add one block per (artifact, target, run). Record only runs that actually
happened on the named host — an attestation is a claim about specific bytes on
specific hardware, so never pre-fill or copy one. Say what the suite exercised
(playback / record-http / record-https) and what it did **not**.

---

_No attestations yet._ The core lib cross-builds green for the core matrix
(`{aarch64,x86_64}-{linux,macos}`) from Linux — but a Linux host cannot *run* an
arm64-macOS or Windows artifact, so on-target results are recorded here as they
are produced. Template for the first entry:

```
sha256=<hex>  artifact=libservirtium_vcr-<tag>-<os>-<arch>.<ext>
target=<os>-<arch>  host=<box>  date=<YYYY-MM-DD>
built-on=<Linux dev box> via 'ae build --target=<triple>' (zig cc)
coverage=playback+record-http        # add +record-https only if TLS was exercised
result=PASS                           # PASS | FAIL
suite=<what ran, e.g. "go cgo + ruby Fiddle record/playback suites">
notes=<caveats, e.g. "no https upstream tested; ae TLS coverage on this target unknown">
```
