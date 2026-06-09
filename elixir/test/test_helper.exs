# The Aether VCR is one server per port (handle-based: each server owns its
# tape/cursor/state). This suite binds several fixtures to the same fixed/ephemeral
# ports, so it runs serially — never set `async: true` on a case. Forcing
# max_cases: 1 makes that a hard guarantee.
ExUnit.start(max_cases: 1)

# :httpc / :inets are Erlang built-ins — the SUT client. No external dep.
{:ok, _} = Application.ensure_all_started(:inets)
