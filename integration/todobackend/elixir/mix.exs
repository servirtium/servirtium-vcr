defmodule TodobackendElixirIntegration.MixProject do
  use Mix.Project

  # TodoBackend browser integration for the Servirtium VCR Elixir binding.
  # Drives real headless Chrome (a tiny W3C WebDriver client over :httpc + the
  # OTP-27 built-in :json, against a locally cached chromedriver) and runs the
  # vendored TodoBackend Mocha spec against an Elixir-hosted VCR.
  #
  # Why not hound/wallaby: both pull `hackney`, whose transitive `parse_trans`
  # fails to compile on Erlang/OTP 27 (`erl_syntax:string/1` was removed). The
  # binding already uses :httpc as its SUT client, so a zero-dep WebDriver
  # client keeps the same posture and sidesteps that breakage.

  def project do
    [
      app: :todobackend_elixir_integration,
      version: "0.0.0",
      elixir: "~> 1.15",
      start_permanent: false,
      deps: deps()
    ]
  end

  def application do
    [extra_applications: [:logger, :inets, :ssl]]
  end

  defp deps do
    [
      {:servirtium, path: "../../../elixir"}
    ]
  end
end
