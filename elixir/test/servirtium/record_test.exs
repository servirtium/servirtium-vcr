defmodule Servirtium.RecordTest do
  @moduledoc """
  Record mode end-to-end: forward to a live `:gen_tcp` upstream, return the
  real response to the SUT, write a Servirtium markdown tape on commit, then
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
    fixture = Path.expand("../../../target/test-tools/redaction_fixture", __DIR__)
    run = fn args ->
      {output, status} = System.cmd(fixture, args, stderr_to_stdout: true)
      assert status == 0, output
      String.trim(output)
    end
    try do
      upstream = run.(["start", directory])
      Servirtium.with_record(Path.join(directory, "tape.md"), upstream,
        [redact_header: ["Authorization"], redact_query_param: ["password"], redact_json_field: ["secretKey"]], fn rec ->
          run.(["drive", directory, Servirtium.base_url(rec)])
          assert Servirtium.last_kind(rec) == :ok
          :ok = Servirtium.commit(rec)
        end)
      run.(["check", directory])
    after File.rm_rf!(directory) end
  end

  test "rewrite_upstream_base keeps the client on the VCR and replays on another port" do
    directory = Path.join(System.tmp_dir!(), "vcr-origin-#{System.unique_integer([:positive])}")
    fixture = Path.expand("../../../target/test-tools/origin_fixture", __DIR__)
    run = fn args ->
      {output, status} = System.cmd(fixture, args, stderr_to_stdout: true)
      assert status == 0, output
      String.trim(output)
    end
    try do
      tape = Path.join(directory, "tape.md")
      upstream = run.(["start", directory])
      Servirtium.with_record(tape, upstream, [rewrite_upstream_base: true], fn rec ->
        run.(["drive", directory, Servirtium.base_url(rec)])
        assert Servirtium.last_kind(rec) == :ok
        :ok = Servirtium.commit(rec)
      end)
      run.(["check", directory])
      Servirtium.with_playback(tape, [], fn vcr ->
        run.(["replay", directory, Servirtium.base_url(vcr)])
        assert Servirtium.last_kind(vcr) == :ok
      end)
    after File.rm_rf!(directory) end
  end

  test "retained diagnostics distinguish observer reads" do
    Servirtium.with_playback("../core_tests/diagnostics/playback.md", [], fn server ->
      Servirtium.test_context(server, "Elixir scenario", "scenario.test", 123)
      {out, status} = System.cmd(Path.expand("../target/test-tools/diagnostic_fixture"), [Servirtium.base_url(server)], stderr_to_stdout: true)
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
        :ok = Servirtium.commit(srv)
      end)

      assert File.exists?(tape), "record-mode commit should write the tape"
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

          :ok = Servirtium.commit(srv)
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
          :ok = Servirtium.commit(srv)
        end
      )

      contents = File.read!(tape)
      assert contents =~ "Login"
      assert contents =~ "Establishes the session"
    after
      TestUpstream.stop(up)
    end
  end

  test "a license notice is written at the top of the tape", %{tape: tape} do
    up = TestUpstream.start("body")

    try do
      Servirtium.with_record(
        tape,
        TestUpstream.base_url(up),
        [port: 0, license_notice: "Recorded under the MIT licence"],
        fn srv ->
          assert {200, "body"} = get(Servirtium.base_url(srv), "/login")
          :ok = Servirtium.commit(srv)
        end
      )

      contents = File.read!(tape)
      assert contents =~ "## LICENSE NOTICE"
      assert contents =~ "Recorded under the MIT licence"
    after
      TestUpstream.stop(up)
    end
  end

  @json ~s({"b":1,"a":{"z":2,"y":3}})

  test "sort_json_keys with pretty_json writes sorted, pretty JSON", %{tape: tape} do
    up = TestUpstream.start(@json, "application/json")

    try do
      {:ok, srv} =
        Servirtium.record(tape, TestUpstream.base_url(up),
          port: 0,
          sort_json_keys: true,
          pretty_json: 2
        )

      assert {200, @json} = get(Servirtium.base_url(srv), "/data")
      assert :ok = Servirtium.commit(srv)

      assert File.read!(tape) =~ ~s("a": {\n    "y": 3,\n    "z": 2\n  },\n  "b": 1)
    after
      TestUpstream.stop(up)
    end
  end

  test "sort_json_keys without pretty_json is refused when the tape is written", %{tape: tape} do
    up = TestUpstream.start(@json, "application/json")

    try do
      {:ok, srv} = Servirtium.record(tape, TestUpstream.base_url(up), port: 0, sort_json_keys: true)
      assert {200, @json} = get(Servirtium.base_url(srv), "/data")
      assert {:error, msg} = Servirtium.commit(srv)
      assert msg =~ "sort_json_keys needs pretty_json"
    after
      TestUpstream.stop(up)
    end
  end

  test "a refused stable-order rule raises from record/3", %{tape: tape} do
    assert_raise Servirtium.Error, ~r/sort_header_value/, fn ->
      Servirtium.record(tape, "http://127.0.0.1:1", port: 0, sort_header_value: [""])
    end
  end

  test "a record server refuses a playback range", %{tape: tape} do
    {:ok, srv} = Servirtium.record(tape, "http://127.0.0.1:1", port: 0)

    try do
      assert_raise Servirtium.Error, ~r/set_playback_range/, fn ->
        Servirtium.set_playback_range(srv, 0, -1)
      end

      assert_raise Servirtium.Error, ~r/set_playback_range/, fn ->
        Servirtium.record(tape, "http://127.0.0.1:1", port: 0, playback_range: {0, -1})
      end
    after
      Servirtium.discard(srv)
    end
  end

  test "closing a recording without commit or discard writes nothing", %{tape: tape} do
    {:ok, srv} = Servirtium.record(tape, "http://127.0.0.1:1", port: 0)
    assert {:error, msg} = Servirtium.stop(srv)
    assert msg =~ "without commit or discard"
    refute File.exists?(tape)

    assert_raise Servirtium.Error, ~r/without commit or discard/, fn ->
      Servirtium.with_record(tape, "http://127.0.0.1:1", [port: 0], fn _ -> :ok end)
    end

    refute File.exists?(tape)
    Servirtium.with_record(tape, "http://127.0.0.1:1", [port: 0], &Servirtium.discard/1)
    refute File.exists?(tape)
  end
end
