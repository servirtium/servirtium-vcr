# TODO

## Additional language bindings

Candidates retained for future work (2026-10-03). Keep bindings thin: all
recording, matching and tape logic belongs in `core/`.

Suggested priority:

- [ ] **Perl** — established scripting and HTTP-testing ecosystem. Use
  FFI::Platypus over the C ABI, following the Python/Ruby runtime-loader shape.
- [ ] **R** — reproducible tests for API-backed data workflows. Use a small C
  adapter through `.Call`.
- [ ] **PowerShell** — REST API automation tests. Reuse the existing .NET
  assembly through `Add-Type`; no second native binding needed.
- [ ] **OCaml** — extend coverage of functional-language ecosystems. Use
  `ctypes` over the C ABI.

Further candidates:

- [ ] **Common Lisp** — investigate CFFI over the C ABI.
- [ ] **Racket/Scheme** — investigate Racket's FFI first; other Scheme
  implementations would need their own interop and packaging choices.
- [ ] **Objective-C** — investigate a thin wrapper over the existing C client.
- [ ] **VB.NET** — reuse the existing .NET assembly, like F#.

Related runtime coverage:

- [ ] **Browser JavaScript** — assess a browser-oriented test-harness workflow;
  the current JavaScript/TypeScript binding targets Node. Browsers cannot load
  the native shared library directly.

Bash users can already run the CLI with `curl`; a native binding is low priority.
Perl is the suggested next addition, followed by R. PowerShell offers inexpensive
extra reach through an existing runtime family.
