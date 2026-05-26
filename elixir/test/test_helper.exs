# The Aether VCR is one active server per process (state is process-global on
# the BEAM, which is one OS process). Tests MUST run serially — never set
# `async: true` on a case. Forcing max_cases: 1 makes that a hard guarantee.
ExUnit.start(max_cases: 1)

# :httpc / :inets are Erlang built-ins — the SUT client. No external dep.
{:ok, _} = Application.ensure_all_started(:inets)
