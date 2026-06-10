# The shared NIF lives in the Erlang binding's `servirtium_nif` OTP app
# (erlang/_build/servirtium_nif). mix does not fold ERL_LIBS into the code
# path, so put the app's ebin on the path explicitly here — `code:priv_dir`
# then resolves priv/servirtium_nif.so and the NIF loads. The .tests.ae leaf
# passes SERVIRTIUM_NIF_EBIN; a developer running `mix test` by hand can set it
# to ../erlang/_build/servirtium_nif/ebin.
case System.get_env("SERVIRTIUM_NIF_EBIN") do
  nil -> :ok
  ebin -> Code.append_path(ebin)
end

# The Aether VCR is one server per port (handle-based: each server owns its
# tape/cursor/state). This suite binds several fixtures to the same fixed/ephemeral
# ports, so it runs serially — never set `async: true` on a case. Forcing
# max_cases: 1 makes that a hard guarantee.
ExUnit.start(max_cases: 1)

# :httpc / :inets are Erlang built-ins — the SUT client. No external dep.
{:ok, _} = Application.ensure_all_started(:inets)
