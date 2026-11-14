# Servirtium 2.0.0-alpha.18

- Fix the Swift static bundle: include the QuickJS implementation required by
  Bruno conversion in all four variants. Alpha.16's Swift package could fail
  to link with unresolved `qjs_*` symbols.
- Link-check every static variant before publication, and exercise tape
  loading and Bruno conversion on the build host. The existing post-publication
  SwiftPM consumer check remains in place.
- **Volatile values** replace whole-tape normalization. Rules say where values
  that change on every run sit (message ids, timestamps, a `Date` header, the
  endpoint a test started on). Recording writes each as a token, `{{id-1}}`
  (`{{date}}` for a name used on one side only), so re-recording an unchanged
  conversation gives a byte-identical tape. Playback lets a request token match
  whatever the live request carries, remembers it, and puts it back wherever the
  token recurs in a response or later request. Drift detection compares
  tokenized tapes. Rules come from code (`volatile_rule(scope, kind, pattern)`),
  a profile file (`volatile_profile`), or a `## Volatile values` block on the
  tape itself; `volatile_bind` sets a response token's value from the test;
  `set_volatile_markers` picks `{{x}}`, `${x}` or `[[x]]`; `volatile_report`
  says what is in force. A literal token in a body is escaped with a backslash
  (`\{{x-1}}`). One implementation in the core, so every binding behaves the
  same. See [docs/volatile-values.md](../../docs/volatile-values.md).
- Pharo's binding has the volatile-values API, but its tests have not been run
  for this release.

## Breaking

- Removed `normalize_whole_tape`, `normalize_whole_tape_described` and
  `clear_normalizations` (and the C ABI calls behind them). Use
  `volatile_rule` with a `regex` kind and a named group (the group name is the
  placeholder), or a template rule with `{{name}}`. Re-record tapes made with the old calls to get
  volatile-value tokens and a rules block.
- `redact_whole_tape(pattern, constant)` is unchanged.
