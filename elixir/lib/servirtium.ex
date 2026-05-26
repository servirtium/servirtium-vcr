defmodule Servirtium do
  @moduledoc ~S"""
  Record/replay HTTP service tests in the [Servirtium](https://servirtium.dev)
  markdown tape format — a thin Elixir wrapper over the **Aether VCR** core.

  You point your system-under-test at a local base URL. In **playback** it
  replays a recorded markdown tape (no network); in **record** it forwards to
  the real upstream, returns the live response, and writes the tape on stop.
  Same tape, both directions.

      {:ok, srv} = Servirtium.playback("tapes/my_api.md", port: 0)
      {:ok, {{_, 200, _}, _headers, body}} =
        :httpc.request(:get, {~c"#{Servirtium.base_url(srv)}/ok", []}, [], [])
      :ok = Servirtium.stop(srv)

  Or with auto-stop:

      Servirtium.with_playback("tapes/my_api.md", [port: 0], fn srv ->
        # ... drive the SUT against Servirtium.base_url(srv) ...
      end)

  ## What this is (and isn't)

  All record/replay machinery — markdown parse/emit, the HTTP server, request
  matching, redactions, notes, drift detection, static bypass, gzip/chunked
  handling — lives in and is maintained as the Aether standard library
  (`std/http/server/vcr`). This package drives a precompiled native build of
  that core through a C NIF; it does **not** reimplement Servirtium in Elixir.

  ## One server per process — run tests SERIALLY

  The Aether VCR is one active server per process in v1: its tape, replay
  cursor, mutation, static-mount, and diagnostic state are process-global (the
  BEAM is one OS process). You cannot run two servers simultaneously. Do **not**
  set `async: true` on ExUnit cases. `playback/2` and `record/3` reset all
  process-global mutation/strict/format state first, so a setting from a prior
  fixture never leaks forward.

  ## Options (`opts` keyword list)

  Shared:

    * `:port` — bind port; `0` (default) asks the OS for a free port
    * `:host` — bind host (default `"127.0.0.1"`)
    * `:label` — human-facing label for logs/diagnostics
    * `:remove_header` — list of `{field, name}` (case-insensitive name match)

  Playback only:

    * `:strict_headers` — `true` to compare request headers on every interaction
    * `:unredact` — list of `{field, pattern, replacement}`
    * `:static_content` — list of `{mount_path, fs_dir}`
    * `:untaped` — list of paths the VCR answers 404 without consuming the
      tape cursor (e.g. `"/favicon.ico"`)

  Record only:

    * `:redact` — list of `{field, pattern, replacement}`
    * `:note` — `{title, body}` attached to the first recorded interaction
    * `:indent_code_blocks` — `true` to emit 4-space-indented blocks
    * `:emphasize_http_verbs` — `true` to emit `*GET*` instead of `GET`
    * `:fail_if_changed` — `true` to raise on drift when flushing (still writes)

  A `field` is one of `:path`, `:response_body`, `:request_headers`,
  `:request_body`, `:response_headers`.
  """

  alias Servirtium.{Native, Server}

  # FIELD_* constants (mirror std/http/server/vcr/module.ae).
  @fields %{
    path: 1,
    response_body: 2,
    request_headers: 3,
    request_body: 4,
    response_headers: 5
  }

  # VCR_KIND_* constants.
  @kinds %{
    0 => :ok,
    1 => :path_or_method_diff,
    2 => :header_missing,
    3 => :header_value_diff,
    4 => :header_unexpected,
    5 => :tape_exhausted,
    6 => :body_diff,
    7 => :record_error
  }

  @doc "The integer field codes keyed by atom (`:path`, `:response_body`, …)."
  def fields, do: @fields

  @doc "The outcome atoms keyed by integer kind code."
  def outcomes, do: @kinds

  defp field!(atom) do
    Map.get(@fields, atom) ||
      raise ArgumentError, "unknown field #{inspect(atom)}; one of #{inspect(Map.keys(@fields))}"
  end

  # ---- public entry points ------------------------------------------------

  @doc """
  Replay a Servirtium markdown tape from disk. Returns `{:ok, %Servirtium.Server{}}`
  or raises `Servirtium.Error` if the server fails to start.
  """
  @spec playback(String.t(), keyword()) :: {:ok, Server.t()}
  def playback(tape_path, opts \\ []) do
    reset_global_state()
    host = Keyword.get(opts, :host, "127.0.0.1")
    apply_shared_config(opts)
    apply_playback_config(opts)

    handle =
      Native.start_playback(
        Keyword.get(opts, :label, ""),
        tape_path,
        host,
        Keyword.get(opts, :port, 0)
      )

    if handle == 0 do
      raise Server.error(
              "vcr playback failed to start for tape #{inspect(tape_path)}: #{drain_start_error()}"
            )
    end

    {:ok,
     %Server{
       handle: handle,
       host: host,
       tape_path: tape_path,
       mode: :playback,
       fail_if_changed: false
     }}
  end

  @doc """
  Record live interactions: forward each request to `upstream_base`, return the
  real response to the SUT, and capture the exchange. The tape is written to
  `tape_path` when the server is stopped. Returns `{:ok, %Servirtium.Server{}}`
  or raises `Servirtium.Error`.
  """
  @spec record(String.t(), String.t(), keyword()) :: {:ok, Server.t()}
  def record(tape_path, upstream_base, opts \\ []) do
    reset_global_state()
    host = Keyword.get(opts, :host, "127.0.0.1")
    apply_shared_config(opts)
    apply_record_config(opts)

    handle =
      Native.start_record(
        Keyword.get(opts, :label, ""),
        tape_path,
        upstream_base,
        host,
        Keyword.get(opts, :port, 0)
      )

    if handle == 0 do
      raise Server.error(
              "vcr record failed to start for tape #{inspect(tape_path)} " <>
                "(upstream #{inspect(upstream_base)}): #{drain_start_error()}"
            )
    end

    srv = %Server{
      handle: handle,
      host: host,
      tape_path: tape_path,
      mode: :record,
      fail_if_changed: Keyword.get(opts, :fail_if_changed, false)
    }

    # Stage the note AFTER start_record — load_record clears the tape (and the
    # pending note) as it binds, so a pre-start note would be wiped. It attaches
    # to the first interaction the SUT triggers.
    case Keyword.get(opts, :note) do
      {title, body} ->
        case note(srv, title, body) do
          :ok ->
            :ok

          {:error, msg} ->
            stop(srv)
            raise Server.error(msg)
        end

      nil ->
        :ok
    end

    {:ok, srv}
  end

  @doc """
  Run `fun.(server)` against a fresh playback server, auto-stopping afterwards
  (even on raise). Returns the value of `fun`.
  """
  @spec with_playback(String.t(), keyword(), (Server.t() -> any())) :: any()
  def with_playback(tape_path, opts \\ [], fun) when is_function(fun, 1) do
    {:ok, srv} = playback(tape_path, opts)

    try do
      fun.(srv)
    after
      stop(srv)
    end
  end

  @doc """
  Run `fun.(server)` against a fresh record server, auto-stopping (and flushing
  the tape) afterwards (even on raise). Returns the value of `fun`.
  """
  @spec with_record(String.t(), String.t(), keyword(), (Server.t() -> any())) :: any()
  def with_record(tape_path, upstream_base, opts \\ [], fun) when is_function(fun, 1) do
    {:ok, srv} = record(tape_path, upstream_base, opts)

    try do
      fun.(srv)
    after
      stop(srv)
    end
  end

  # ---- running-server members ---------------------------------------------

  @doc "Base URL the SUT should target, e.g. `http://127.0.0.1:54213`."
  @spec base_url(Server.t()) :: String.t()
  def base_url(%Server{handle: h, host: host}), do: Native.base_url(h, host)

  @doc "The OS-resolved port the server is listening on."
  @spec port(Server.t()) :: integer()
  def port(%Server{handle: h}), do: Native.port(h)

  @doc "Tape entry count (playback), or interactions captured so far (record)."
  @spec tape_length() :: integer()
  def tape_length, do: Native.tape_length()

  @doc "Most-recent dispatch diagnostic; empty string when none flagged."
  @spec last_error() :: String.t()
  def last_error, do: Native.last_error()

  @doc "Outcome atom of the most-recent dispatch (`:ok`, `:body_diff`, …)."
  @spec last_kind() :: atom()
  def last_kind, do: Map.get(@kinds, Native.last_kind(), :ok)

  @doc "Tape index of the most-recent matched interaction, or -1."
  @spec last_index() :: integer()
  def last_index, do: Native.last_index()

  @doc "Rewind the replay cursor to interaction 0 and clear the last-* slots."
  @spec reset_cursor() :: :ok
  def reset_cursor, do: Native.reset_cursor()

  @doc "Clear the last-error slot between sub-cases."
  @spec clear_last_error() :: :ok
  def clear_last_error, do: Native.clear_last_error()

  @doc """
  Stage a note (record mode) for the *next* interaction to be captured. Call
  between requests to annotate specific interactions. Returns `:ok` or
  `{:error, msg}`.
  """
  @spec note(Server.t(), String.t(), String.t()) :: :ok | {:error, String.t()}
  def note(%Server{}, title, body), do: check(Native.note(title, body))

  @doc """
  Stop the server. In record mode this also flushes the captured tape to disk
  (raising or returning `{:error, drift_msg}` on drift if `:fail_if_changed`
  was set). Returns `:ok` on success. Idempotent.
  """
  @spec stop(Server.t()) :: :ok | {:error, String.t()}
  def stop(%Server{handle: 0}), do: :ok

  def stop(%Server{mode: :playback, handle: h}) do
    Native.stop(h)
    :ok
  end

  def stop(%Server{mode: :record, handle: h, tape_path: tape, fail_if_changed: fail?}) do
    result =
      if fail? do
        Native.stop_and_flush_fail_if_changed(h, tape)
      else
        Native.stop_and_flush(h, tape)
      end

    check(result)
  end

  # ---- internals -----------------------------------------------------------

  # Wipe all process-global mutation/format/strict state so a previous fixture's
  # settings can't leak into this one (v1 one-server-per-process has no
  # per-handle state). A staged-but-unconsumed note is reset core-side when
  # start_* (re)loads the tape, so there's nothing to clear here.
  defp reset_global_state do
    Native.clear_redactions()
    Native.clear_unredactions()
    Native.clear_header_removals()
    Native.clear_static_content()
    Native.clear_untaped()
    Native.clear_format_options()
    Native.set_strict_headers(0)
    Native.clear_last_error()
  end

  defp apply_shared_config(opts) do
    for {field, name} <- Keyword.get(opts, :remove_header, []) do
      check!(Native.remove_header(field!(field), name), "remove_header")
    end
  end

  defp apply_playback_config(opts) do
    if Keyword.get(opts, :strict_headers, false), do: Native.set_strict_headers(1)

    for {field, pat, repl} <- Keyword.get(opts, :unredact, []) do
      check!(Native.unredact(field!(field), pat, repl), "unredact")
    end

    for {mount, dir} <- Keyword.get(opts, :static_content, []) do
      check!(Native.static_content(mount, dir), "static_content")
    end

    for path <- Keyword.get(opts, :untaped, []) do
      check!(Native.untaped(path), "untaped")
    end
  end

  defp apply_record_config(opts) do
    if Keyword.get(opts, :indent_code_blocks, false), do: Native.indent_code_blocks()
    if Keyword.get(opts, :emphasize_http_verbs, false), do: Native.emphasize_http_verbs()

    for {field, pat, repl} <- Keyword.get(opts, :redact, []) do
      check!(Native.redact(field!(field), pat, repl), "redact")
    end

    # NOTE staged after start_record — see record/3.
  end

  defp drain_start_error do
    case Native.last_error() do
      "" -> "(no detail; check tape path and port availability)"
      err -> err
    end
  end

  # "" means success; anything else is an error message.
  defp check(""), do: :ok
  defp check(msg) when is_binary(msg), do: {:error, msg}

  defp check!("", _op), do: :ok
  defp check!(msg, op) when is_binary(msg), do: raise(Server.error("vcr #{op} failed: #{msg}"))
end
