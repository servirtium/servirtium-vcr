defmodule Servirtium.MixProject do
  use Mix.Project

  @version "2.0.0"

  def project do
    [
      app: :servirtium,
      version: @version,
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps(),
      description:
        "Record/replay HTTP service tests in the Servirtium markdown tape format — " <>
          "a thin Elixir wrapper over the shared Aether VCR NIF (the Erlang " <>
          "`servirtium_nif` app) on the BEAM.",
      package: package(),
      docs: [main: "readme", extras: ["README.md" | doc_extras()]]
    ]
  end

  def application do
    [
      # :inets/:ssl are the test SUT's HTTP client (:httpc). Declaring them puts
      # their ebin on mix's code path (mix, unlike plain `erl`, doesn't surface
      # the whole OTP lib), so :httpc / :http_util resolve.
      extra_applications: [:logger, :inets, :ssl]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      # The C NIF is the Erlang binding's shared `servirtium_nif` app (no
      # Elixir-side compile). In the monorepo it's on the path via ERL_LIBS
      # (erlang/_build); as a published package this would be
      # `{:servirtium_nif, "~> 2.0"}` from Hex.
      # :inets / :httpc (Erlang built-ins) are the test SUT client — no dep.
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      files: ~w(lib mix.exs README.md docs MIGRATION.md LICENSE),
      licenses: ["Apache-2.0"],
      links: %{"Servirtium" => "https://servirtium.dev"}
    ]
  end

  defp doc_extras do
    [
      "docs/usage.md",
      "docs/architecture.md",
      "docs/features.md",
      "docs/building.md",
      "MIGRATION.md"
    ]
  end
end
