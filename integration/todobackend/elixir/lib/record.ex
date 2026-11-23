defmodule TodoBackend.Record do
  @moduledoc """
  TodoBackend browser integration test — RECORD phase (manual, on-demand).

  VCR in record mode, forwarding to the live Kotlin/http4k SUT
  (`TODOBACKEND_UPSTREAM`). The Mocha spec runs in headless Chrome (Elixir W3C
  WebDriver client) against the VCR; every CRUD call is forwarded upstream and
  recorded, then written to the tape on commit. The suite must pass for the
  recording to be considered good.

  Driven by `.elixir_record.ae`, which brings the SUT up in a container (started
  with its baseUrl set to the VCR origin, so the todo URLs it returns point back
  at the VCR) and tears it down afterward. Not an aeb node — recording is
  on-demand and must never run during a normal build (it needs the container +
  sibling source).

  Run via the leaf, or directly:
      TODOBACKEND_UPSTREAM=http://127.0.0.1:54321 \
      mix run -e "System.halt(TodoBackend.Record.main())"
  """

  alias TodoBackend.Browser

  @spec main() :: non_neg_integer()
  def main do
    case System.get_env("TODOBACKEND_UPSTREAM") do
      upstream when is_binary(upstream) and upstream != "" ->
        run(upstream)

      _ ->
        IO.puts("record: set TODOBACKEND_UPSTREAM (e.g. http://127.0.0.1:54321)")
        2
    end
  end

  defp run(upstream) do
    {:ok, srv} =
      Servirtium.record(Browser.tape(), upstream,
        port: Browser.vcr_port(),
        static_content: [{"/suite", Browser.suite_dir()}],
        untaped: ["/favicon.ico"],
        redact_whole_tape: [{"Date: .+ GMT", "Date: <DATE>"}]
      )

    {passes, failures, msgs} =
      try do
        Browser.run_suite(Servirtium.base_url(srv))
      rescue
        e ->
          Servirtium.discard(srv)
          reraise e, __STACKTRACE__
      end

    IO.puts("mocha (record): #{passes} passed, #{failures} failed")
    for m <- msgs, do: IO.puts("  FAIL: #{m}")

    if failures != 0 or passes == 0 do
      Servirtium.discard(srv)
      IO.puts("record: suite did not pass against the live SUT; no tape written")
      1
    else
      # writes the tape to TAPE
      :ok = Servirtium.commit(srv)
      IO.puts("record: wrote #{Browser.tape()}")
      0
    end
  end
end
