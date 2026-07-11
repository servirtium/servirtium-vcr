defmodule ConsumerTest do
  use ExUnit.Case

  # Drives the INSTALLED servirtium Elixir package (path dep) to replay the
  # canonical tape. The engine .so loads via the shared servirtium_nif app's
  # $ORIGIN-linked NIF — no SERVIRTIUM_VCR_LIB.
  test "replays the canonical tape from the installed servirtium package" do
    tape = Path.join(File.cwd!(), "tapes/single_get.md")

    Servirtium.with_playback(tape, [port: 0], fn srv ->
      {body, 0} = System.cmd("curl", ["-s", Servirtium.base_url(srv) <> "/ok"])
      assert body == "ok-body"
      assert Servirtium.last_kind(srv) == :ok
    end)
  end
end
