defmodule ConsumerExample.MixProject do
  use Mix.Project

  # Third-party consumer example for the Elixir binding. Depends on the
  # servirtium Elixir package (path dep). The shared servirtium_nif OTP app
  # (which carries the NIF + the engine .so in priv/, $ORIGIN-linked) is put on
  # the code path in test_helper.exs via SERVIRTIUM_NIF_EBIN — the local
  # equivalent of the `{:servirtium_nif, "~> 2.0"}` Hex dep a real consumer
  # would use. No SERVIRTIUM_VCR_LIB.
  def project do
    [
      app: :consumer_example,
      version: "0.0.1",
      elixir: "~> 1.15",
      deps: deps()
    ]
  end

  def application, do: []

  defp deps do
    [{:servirtium, path: "../../elixir"}]
  end
end
