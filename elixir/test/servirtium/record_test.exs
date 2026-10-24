defmodule Servirtium.RecordTest do
  @moduledoc """
  Record mode end-to-end: forward to a live `:gen_tcp` upstream, return the
  real response to the SUT, flush a Servirtium markdown tape on stop, then
  replay the same tape offline. Also covers redaction and notes asserted
  against the written tape content.

  NOT async — one VCR server per port.
  """
  use ExUnit.Case, async: false

  alias Servirtium.TestUpstream

  setup do
    tape = Path.join(System.tmp_dir!(), "vcr_rec_#{System.unique_integer([:positive])}.md")
    on_exit(fn -> File.rm_rf(tape) end)
    {:ok, tape: tape}
  end

  defp get(base, path) do
    {:ok, {{_, status, _}, _headers, body}} =
      :httpc.request(:get, {String.to_charlist(base <> path), []}, [], [])

    {status, to_string(body)}
  end


  test "structured helpers forward original credentials and scrub the tape" do
    directory = Path.join(System.tmp_dir!(), "vcr-helpers-#{System.unique_integer([:positive])}")
    fixture = Path.expand("../../../core_tests/redaction_fixture.py", __DIR__)
    run = fn args ->
      {output, status} = System.cmd("python3", [fixture | args], stderr_to_stdout: true)
      assert status == 0, output
      String.trim(output)
    end
    try do
      upstream = run.(["start", directory])
      Servirtium.with_record(Path.join(directory, "tape.md"), upstream,
        [redact_header: ["Authorization"], redact_query_param: ["password"], redact_json_field: ["secretKey"]], fn rec ->
          run.(["drive", directory, Servirtium.base_url(rec)])
          assert Servirtium.last_kind(rec) == :ok
        end)
      run.(["check", directory])
    after File.rm_rf!(directory) end
  end

  test "retained diagnostics distinguish observer reads" do
    Servirtium.with_playback("../core_tests/diagnostics/playback.md", [], fn server ->
      Servirtium.test_context(server, "Elixir scenario", "scenario.test", 123)
      {out, status} = System.cmd("python3", ["../core_tests/diagnostic_fixture.py", Servirtium.base_url(server)], stderr_to_stdout: true)
      assert status == 0, out
      assert Servirtium.last_error(server, false) =~ "owner"
      assert Servirtium.last_error(server, false) =~ "scenario.test:123"
      refute Servirtium.diagnostics_json(server) =~ "\"retrieved\":1"
      assert Servirtium.last_error(server) =~ "owner"
      assert Servirtium.diagnostics_json(server) =~ "\"retrieved\":0"
      assert_raise Servirtium.Error, ~r/admin/, fn -> Servirtium.assert_no_mismatches(server) end
      Servirtium.test_context(server, "next test")
      Servirtium.assert_no_mismatches(server)
      assert Servirtium.diagnostics_json(server) == "[]"
    end)
  end

  test "records then replays the same interaction", %{tape: tape} do
    up = TestUpstream.start("hello-from-upstream")

    try do
      # ---- record ----
      Servirtium.with_record(tape, TestUpstream.base_url(up), [port: 0], fn srv ->
        assert {200, "hello-from-upstream"} = get(Servirtium.base_url(srv), "/greeting")
      end)

      assert File.exists?(tape), "record-mode stop should write the tape"
      assert File.read!(tape) =~ "/greeting"
    after
      TestUpstream.stop(up)
    end

    # ---- replay (offline) ----
    Servirtium.with_playback(tape, [port: 0], fn srv ->
      assert {200, "hello-from-upstream"} = get(Servirtium.base_url(srv), "/greeting")
      assert Servirtium.last_kind(srv) == :ok
    end)
  end

  test "redaction scrubs the value out of the written tape", %{tape: tape} do
    up = TestUpstream.start("token=SECRET123 rest-of-body")

    try do
      Servirtium.with_record(
        tape,
        TestUpstream.base_url(up),
        [port: 0, redact: [{:response_body, "SECRET123", "REDACTED"}]],
        fn srv ->
          # The live SUT still sees the real bytes...
          assert {200, "token=SECRET123 rest-of-body"} =
                   get(Servirtium.base_url(srv), "/data")
        end
      )

      contents = File.read!(tape)
      # ...but the committed tape is scrubbed.
      refute contents =~ "SECRET123"
      assert contents =~ "REDACTED"
    after
      TestUpstream.stop(up)
    end
  end

  test "a builder note is written onto the first recorded interaction", %{tape: tape} do
    up = TestUpstream.start("body")

    try do
      Servirtium.with_record(
        tape,
        TestUpstream.base_url(up),
        [port: 0, note: {"Login", "Establishes the session"}],
        fn srv ->
          assert {200, "body"} = get(Servirtium.base_url(srv), "/login")
        end
      )

      contents = File.read!(tape)
      assert contents =~ "Login"
      assert contents =~ "Establishes the session"
    after
      TestUpstream.stop(up)
    end
  end
end
