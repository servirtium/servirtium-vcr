defmodule TodoBackend.Browser do
  @moduledoc """
  Run the vendored TodoBackend Mocha spec in real headless Chrome against a
  Servirtium VCR, and report the result. Mirrors the Python `browser.py`, but
  drives Chrome with Elixir's own W3C WebDriver client (a thin `:httpc` + `:json`
  wrapper) against a chromedriver.

  Shared by both phases:

    * `TodoBackend.Record`        — VCR in record mode, forwarding to the live SUT
    * `Servirtium.TodobackendPlaybackTest` — VCR replaying the committed tape

  The suite is served *same-origin* from the VCR's own static-content mount
  (`/suite`), so the browser's API calls to the VCR root are same-origin — no
  CORS, no preflight OPTIONS cluttering the tape. `/favicon.ico` is marked
  untaped.

  Fixed port: the recorded responses embed absolute todo URLs
  (`http://127.0.0.1:<PORT>/<uuid>`) that the spec follows, and the VCR replays
  response bodies verbatim — so playback MUST bind the same port the tape was
  recorded against. Hence a fixed `vcr_port/0` for both phases.

  ## Why a hand-rolled WebDriver client

  `hound`/`wallaby` both pull `hackney`, whose transitive `parse_trans` does not
  compile on Erlang/OTP 27 (`erl_syntax:string/1` was removed). The W3C
  WebDriver protocol is just JSON over HTTP, so we drive chromedriver with the
  binding's own posture: `:httpc` (built-in) + the OTP-27 built-in `:json`. The
  client doesn't fetch a driver: we start the locally cached chromedriver on an
  ephemeral port, connect, and stop it on teardown.
  """

  # integration/todobackend — suite/ and tapes/ are shared one level up from
  # this elixir/ dir. This module lives in elixir/lib, so go up two: lib ->
  # elixir -> todobackend.
  @base Path.expand("../..", __DIR__)

  @doc "Absolute path to the shared suite directory."
  def suite_dir, do: Path.join(@base, "suite")

  @doc "Absolute path to the committed CRUD tape."
  def tape, do: Path.join([@base, "tapes", "todobackend_crud.md"])

  @doc "Fixed VCR bind port for both phases (see the moduledoc)."
  def vcr_port, do: 51_080

  @doc """
  Drive `runner.html?<api_root>` in headless Chrome until Mocha finishes.

  Returns `{passes, failures, fail_messages}`. `api_root` defaults to the VCR
  root (same origin as the served suite).
  """
  def run_suite(vcr_base_url, opts \\ []) do
    api_root = Keyword.get(opts, :api_root, vcr_base_url)
    timeout_ms = Keyword.get(opts, :timeout_ms, 120_000)
    url = "#{vcr_base_url}/suite/runner.html?#{api_root}"

    {:ok, _} = Application.ensure_all_started(:inets)
    {cd_port, cd} = start_chromedriver()

    try do
      unless wait_ready(cd_port, 100) do
        raise "chromedriver did not become ready on :#{cd_port}"
      end

      sid = new_session(cd_port)

      try do
        wd_post(cd_port, "/session/#{sid}/url", %{"url" => url})
        await_done(cd_port, sid, System.monotonic_time(:millisecond) + timeout_ms)

        passes = script(cd_port, sid, "return window.__mochaPasses")
        failures = script(cd_port, sid, "return window.__mochaFailures")
        msgs = script(cd_port, sid, "return window.__mochaFailMsgs") || []
        {trunc_int(passes), trunc_int(failures), msgs}
      after
        delete_session(cd_port, sid)
      end
    after
      stop_chromedriver(cd)
    end
  end

  # ---- chromedriver lifecycle ---------------------------------------------

  defp chromedriver_path do
    case System.get_env("CHROMEDRIVER") do
      bin when is_binary(bin) and bin != "" ->
        bin

      _ ->
        home = System.get_env("HOME") || ""
        root = Path.join([home, ".cache", "selenium", "chromedriver"])

        case Path.wildcard(Path.join([root, "**", "chromedriver"])) do
          [first | _] -> first
          [] -> "chromedriver"
        end
    end
  end

  defp free_port do
    {:ok, ls} = :gen_tcp.listen(0, [:binary, ip: {127, 0, 0, 1}])
    {:ok, p} = :inet.port(ls)
    :gen_tcp.close(ls)
    p
  end

  defp start_chromedriver do
    port = free_port()

    cd =
      Port.open({:spawn_executable, chromedriver_path()}, [
        :binary,
        :exit_status,
        args: ["--port=#{port}"]
      ])

    {port, cd}
  end

  defp stop_chromedriver(cd) do
    case Port.info(cd, :os_pid) do
      {:os_pid, pid} -> System.cmd("kill", ["-9", "#{pid}"], stderr_to_stdout: true)
      _ -> :ok
    end

    if is_port(cd) and Port.info(cd) != nil, do: Port.close(cd)
    :ok
  rescue
    _ -> :ok
  end

  defp wait_ready(_port, 0), do: false

  defp wait_ready(port, n) do
    case :httpc.request(:get, {~c"http://localhost:#{port}/status", []}, [], []) do
      {:ok, {{_, 200, _}, _, _}} ->
        true

      _ ->
        Process.sleep(100)
        wait_ready(port, n - 1)
    end
  end

  # ---- W3C WebDriver over :httpc + :json ----------------------------------

  defp new_session(port) do
    caps = %{
      "capabilities" => %{
        "alwaysMatch" => %{
          "browserName" => "chrome",
          "goog:chromeOptions" => %{
            "args" => [
              "--headless=new",
              "--no-sandbox",
              "--disable-dev-shm-usage",
              "--disable-gpu"
            ]
          }
        }
      }
    }

    %{"value" => %{"sessionId" => sid}} = wd_post(port, "/session", caps)
    sid
  end

  defp delete_session(port, sid) do
    :httpc.request(:delete, {~c"http://localhost:#{port}/session/#{sid}", []}, [], [])
    :ok
  rescue
    _ -> :ok
  end

  defp script(port, sid, js) do
    %{"value" => v} = wd_post(port, "/session/#{sid}/execute/sync", %{"script" => js, "args" => []})
    v
  end

  defp await_done(port, sid, deadline) do
    if script(port, sid, "return window.__mochaDone === true") == true do
      :ok
    else
      if System.monotonic_time(:millisecond) > deadline do
        raise "timed out waiting for the Mocha suite to finish"
      end

      Process.sleep(250)
      await_done(port, sid, deadline)
    end
  end

  defp wd_post(port, path, map) do
    body = :erlang.iolist_to_binary(:json.encode(map))
    url = String.to_charlist("http://localhost:#{port}" <> path)

    {:ok, {{_, _code, _}, _h, resp}} =
      :httpc.request(:post, {url, [], ~c"application/json", body}, [], [])

    :json.decode(:erlang.iolist_to_binary(resp))
  end

  defp trunc_int(n) when is_integer(n), do: n
  defp trunc_int(n) when is_float(n), do: trunc(n)
  defp trunc_int(_), do: -1
end
