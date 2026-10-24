defmodule Servirtium.SecretsTest do
  use ExUnit.Case, async: false
  test "named secrets round trip on the calling process" do
    directory = Path.join(System.tmp_dir!(), "vcr-secrets-elixir-#{System.unique_integer([:positive])}")
    File.mkdir_p!(directory)
    tape = Path.join(directory, "tape.md")
    fixture = Path.expand("../../../target/test-tools/secret_fixture", __DIR__)
    run = fn args ->
      {output, code} = System.cmd(fixture, args, stderr_to_stdout: true)
      assert code == 0, output
      String.trim(output)
    end
    owner = self()
    try do
      {:ok, rec} = Servirtium.record(tape, run.(["start", directory]), secret_redactor: fn key, request ->
        assert self() == owner
        if key == "password" do
          send(owner, :redacted)
          String.upcase(Enum.at(String.split(request.path, "/"), 1)) <> "_PASSWORD"
        end
      end)
      run.(["drive", Servirtium.base_url(rec)]); refute_received :redacted
      :ok = Servirtium.stop(rec)
      for _ <- 1..20, do: assert_received(:redacted)
      refute_received :redacted
      run.(["check", tape])
      {:ok, replay} = Servirtium.playback(tape, secret_resolver: fn token ->
        assert self() == owner
        "pw-" <> String.downcase(String.replace_suffix(token, "_PASSWORD", "")) <> "&secret"
      end)
      try do
        run.(["drive", Servirtium.base_url(replay)]); Servirtium.assert_no_mismatches(replay)
      after
        Servirtium.stop(replay)
      end
      run.(["check", tape])
    after
      File.rm_rf!(directory)
    end
  end
end
