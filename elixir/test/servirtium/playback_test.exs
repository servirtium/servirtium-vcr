defmodule Servirtium.PlaybackTest do
  @moduledoc """
  Playback round-trip from a small tape, plus mismatch diagnostics and
  static-content bypass. SUT client is `:httpc` (Erlang built-in).

  NOT async — the VCR is one server per process (state is process-global).
  """
  use ExUnit.Case, async: false

  defp tape(name), do: Path.join([__DIR__, "..", "tapes", name])

  defp get(base, path) do
    {:ok, {{_, status, _}, _headers, body}} =
      :httpc.request(:get, {String.to_charlist(base <> path), []}, [], [])

    {status, to_string(body)}
  end

  test "replays a single GET from the tape (no network)" do
    {:ok, srv} = Servirtium.playback(tape("single_get.md"), port: 0)

    try do
      assert {200, "ok-body"} = get(Servirtium.base_url(srv), "/ok")
      assert Servirtium.last_kind() == :ok
      assert Servirtium.last_error() == ""
      assert Servirtium.tape_length() == 1
    after
      Servirtium.stop(srv)
    end
  end

  test "with_playback auto-stops" do
    body =
      Servirtium.with_playback(tape("single_get.md"), [port: 0], fn srv ->
        {200, body} = get(Servirtium.base_url(srv), "/ok")
        body
      end)

    assert body == "ok-body"
  end

  test "mismatch diagnostics: an unknown path surfaces a non-ok outcome" do
    Servirtium.with_playback(tape("single_get.md"), [port: 0], fn srv ->
      # /nope is not on the tape → the dispatcher flags a mismatch.
      {status, _body} = get(Servirtium.base_url(srv), "/nope")

      refute Servirtium.last_kind() == :ok
      refute Servirtium.last_error() == ""
      # The SUT gets a non-200 error status back from the VCR.
      assert status >= 400
    end)
  end

  test "port/0 reports the OS-assigned port and base_url embeds it" do
    Servirtium.with_playback(tape("single_get.md"), [port: 0], fn srv ->
      p = Servirtium.port(srv)
      assert p > 0
      assert Servirtium.base_url(srv) == "http://127.0.0.1:#{p}"
    end)
  end

  test "static content is served from disk, not the tape" do
    dir = Path.join(System.tmp_dir!(), "vcr_static_#{System.unique_integer([:positive])}")
    File.mkdir_p!(dir)
    File.write!(Path.join(dir, "asset.txt"), "static-asset")

    try do
      Servirtium.with_playback(
        tape("single_get.md"),
        [port: 0, static_content: [{"/files", dir}]],
        fn srv ->
          base = Servirtium.base_url(srv)
          assert {200, "static-asset"} = get(base, "/files/asset.txt")
          # The tape interaction is unaffected.
          assert {200, "ok-body"} = get(base, "/ok")
        end
      )
    after
      File.rm_rf!(dir)
    end
  end

  test "an untaped path returns 404 without consuming the tape cursor" do
    Servirtium.with_playback(
      tape("single_get.md"),
      [port: 0, untaped: ["/favicon.ico"]],
      fn srv ->
        base = Servirtium.base_url(srv)
        # Incidental path → 404, and does not advance the tape cursor.
        assert {404, _body} = get(base, "/favicon.ico")
        # The recorded interaction still replays afterwards.
        assert {200, "ok-body"} = get(base, "/ok")
        assert Servirtium.last_kind() == :ok
      end
    )
  end

  test "global state does not leak: strict_headers from a prior fixture is reset" do
    # First fixture turns strict headers on.
    Servirtium.with_playback(tape("single_get.md"), [port: 0, strict_headers: true], fn _ ->
      :ok
    end)

    # Second fixture omits it; a plain GET must still match cleanly (proving the
    # reset cleared the previous strict setting).
    Servirtium.with_playback(tape("single_get.md"), [port: 0], fn srv ->
      assert {200, "ok-body"} = get(Servirtium.base_url(srv), "/ok")
      assert Servirtium.last_kind() == :ok
    end)
  end
end
