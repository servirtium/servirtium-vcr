defmodule Servirtium.TodobackendPlaybackTest do
  @moduledoc """
  TodoBackend browser integration test — PLAYBACK phase (the CI artifact).

  Replays the committed CRUD tape through a Servirtium VCR and runs the real
  TodoBackend Mocha spec against it in headless Chrome (Elixir W3C WebDriver
  client). No SUT, no network — the whole CRUD conversation comes off the tape.
  This is the offline test wired into aeb (.elixir_playback.ae);
  TodoBackend.Record regenerates the tape.

  NOT async — the VCR is one server per process (state is process-global).
  """
  use ExUnit.Case, async: false

  alias TodoBackend.Browser

  @tag timeout: 180_000
  test "replays the TodoBackend CRUD tape and passes the Mocha suite in Chrome" do
    {:ok, srv} =
      Servirtium.playback(Browser.tape(),
        port: Browser.vcr_port(),
        static_content: [{"/suite", Browser.suite_dir()}],
        untaped: ["/favicon.ico"]
      )

    try do
      {passes, failures, msgs} = Browser.run_suite(Servirtium.base_url(srv))
      IO.puts("mocha (playback): #{passes} passed, #{failures} failed")
      for m <- msgs, do: IO.puts("  FAIL: #{m}")

      assert failures == 0, Enum.join(msgs, "\n")
      assert passes > 0
    after
      Servirtium.stop(srv)
    end
  end
end
