defmodule TodoBackend.Record do
  @moduledoc """
  TodoBackend browser integration test — RECORD phase (manual, on-demand).

  VCR in record mode, forwarding to the live Kotlin/http4k SUT
  (`TODOBACKEND_UPSTREAM`). The Mocha spec runs in headless Chrome (Elixir W3C
  WebDriver client) against the VCR; every CRUD call is forwarded upstream and
  recorded, then flushed to the tape on stop. The suite must pass for the
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
        normalize_whole_tape: [
          {"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", "id"}
        ],
        redact_whole_tape: [{"Date: .+ GMT", "Date: <DATE>"}]
      )

    rc =
      try do
        {passes, failures, msgs} = Browser.run_suite(Servirtium.base_url(srv))
        IO.puts("mocha (record): #{passes} passed, #{failures} failed")
        for m <- msgs, do: IO.puts("  FAIL: #{m}")

        if failures != 0 or passes == 0 do
          IO.puts("record: suite did not pass against the live SUT; tape NOT trustworthy")
          1
        else
          0
        end
      after
        # flushes the tape to TAPE
        Servirtium.stop(srv)
      end

    if rc == 0, do: IO.puts("record: wrote #{Browser.tape()}")
    rc
  end
end
