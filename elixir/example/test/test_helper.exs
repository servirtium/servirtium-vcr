# Put the shared servirtium_nif OTP app (built by the Erlang binding) on the
# code path — mix does not fold ERL_LIBS in, so a consumer does this explicitly
# (the local stand-in for a Hex {:servirtium_nif, "~> 2.0"} dep). code:priv_dir
# then resolves priv/servirtium_nif.so, whose $ORIGIN rpath finds the engine .so
# beside it. No SERVIRTIUM_VCR_LIB.
case System.get_env("SERVIRTIUM_NIF_EBIN") do
  nil -> :ok
  ebin -> Code.append_path(ebin)
end

ExUnit.start()
