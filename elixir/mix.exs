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
      compilers: [:elixir_make | Mix.compilers()],
      make_targets: ["all"],
      make_clean: ["clean"],
      deps: deps(),
      description:
        "Record/replay HTTP service tests in the Servirtium markdown tape format — " <>
          "a thin Elixir wrapper over the Aether VCR core via a C NIF.",
      package: package(),
      docs: [main: "readme", extras: ["README.md" | doc_extras()]]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:elixir_make, "~> 0.8", runtime: false},
      # :inets / :httpc (Erlang built-ins) are the test SUT client — no dep.
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      files:
        ~w(lib c_src native priv Makefile build-native.sh mix.exs README.md docs MIGRATION.md LICENSE),
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
