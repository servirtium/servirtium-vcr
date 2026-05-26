defmodule Servirtium.TestUpstream do
  @moduledoc """
  A throwaway HTTP/1.1 upstream for record-mode tests, built on `:gen_tcp`
  (no deps). It returns a fixed body WITH a Content-Length header and captures
  the request line / body of the last request it served.

  Run on an OS-assigned port; `base_url/1` reports it. Stop with `stop/1`.
  """

  defstruct [:pid, :port, :owner]

  @doc "Start an upstream returning `body` (text/plain). Returns the struct."
  def start(body \\ "hello-from-upstream") do
    owner = self()
    {:ok, listen} = :gen_tcp.listen(0, [:binary, active: false, reuseaddr: true, packet: :raw])
    {:ok, port} = :inet.port(listen)
    pid = spawn_link(fn -> accept_loop(listen, body, owner) end)
    %__MODULE__{pid: pid, port: port, owner: owner}
  end

  def base_url(%__MODULE__{port: port}), do: "http://127.0.0.1:#{port}"

  @doc "Block until the upstream has served a request, returning its raw text."
  def last_request(timeout \\ 2_000) do
    receive do
      {:upstream_request, raw} -> raw
    after
      timeout -> nil
    end
  end

  def stop(%__MODULE__{pid: pid}) do
    Process.unlink(pid)
    Process.exit(pid, :kill)
    :ok
  end

  # ---- internals ----

  defp accept_loop(listen, body, owner) do
    case :gen_tcp.accept(listen) do
      {:ok, sock} ->
        serve(sock, body, owner)
        accept_loop(listen, body, owner)

      {:error, _} ->
        :ok
    end
  end

  defp serve(sock, body, owner) do
    raw = read_request(sock, "")
    send(owner, {:upstream_request, raw})

    response =
      "HTTP/1.1 200 OK\r\n" <>
        "Content-Type: text/plain\r\n" <>
        "Content-Length: #{byte_size(body)}\r\n" <>
        "Connection: close\r\n\r\n" <> body

    :gen_tcp.send(sock, response)
    :gen_tcp.close(sock)
  end

  # Read until end of headers (GET has no body); good enough for these tests.
  defp read_request(sock, acc) do
    if String.contains?(acc, "\r\n\r\n") do
      acc
    else
      case :gen_tcp.recv(sock, 0, 2_000) do
        {:ok, data} -> read_request(sock, acc <> data)
        {:error, _} -> acc
      end
    end
  end
end
