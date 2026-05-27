defmodule Servirtium.Native do
  @moduledoc """
  Raw NIF surface over the Aether VCR core's C-ABI (the `aether_vcr_embed_*`
  symbols from `std/http/server/vcr/embed.ae`, linked from
  `native/libservirtium_vcr.so` via the NIF in `c_src/servirtium_nif.c`).

  This is a 1:1 mapping, not the public API — use `Servirtium` for that.

  ## Per-listener contract (matching the Aether side)

  N independent VCR servers can run concurrently in one process, each keyed by
  its own handle; every config / diagnostic / lifecycle function takes the
  handle. Lifecycle is `open_* -> configure(handle) -> start`. The opaque
  server handle is a 64-bit integer (`uintptr_t`); a `0` from `open_*` means
  failure.

  String results follow the ABI ownership rule: every returned `char*` is
  caller-owned and NUL-terminated; the NIF copies it into a binary and frees the
  native pointer with `aether_vcr_embed_free_string`. Mutation functions return
  `""` on success or an error message.
  """

  @on_load :load_nif

  @doc false
  def load_nif do
    path = :filename.join(:code.priv_dir(:servirtium), ~c"servirtium_nif")
    :erlang.load_nif(path, 0)
  end

  @nif_not_loaded "servirtium NIF not loaded (priv/servirtium_nif.so) — did `mix compile` build it?"

  # ---- lifecycle: open -> start -------------------------------------------

  def open_playback(_label, _tape_path, _host, _port), do: :erlang.nif_error(@nif_not_loaded)

  def open_record(_label, _tape_path, _upstream_base, _host, _port),
    do: :erlang.nif_error(@nif_not_loaded)

  def start(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def stop(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def stop_and_flush(_handle, _tape_path), do: :erlang.nif_error(@nif_not_loaded)
  def stop_and_flush_fail_if_changed(_handle, _tape_path), do: :erlang.nif_error(@nif_not_loaded)

  # ---- introspection (handle-based) ---------------------------------------

  def port(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def base_url(_handle, _host), do: :erlang.nif_error(@nif_not_loaded)
  def tape_length(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def reset_cursor(_handle), do: :erlang.nif_error(@nif_not_loaded)

  # ---- diagnostics (handle-based) -----------------------------------------

  def last_error(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def last_kind(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def last_index(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def clear_last_error(_handle), do: :erlang.nif_error(@nif_not_loaded)

  # ---- mutations / config (handle 1st arg) --------------------------------

  def redact(_handle, _field, _pattern, _replacement), do: :erlang.nif_error(@nif_not_loaded)
  def unredact(_handle, _field, _pattern, _replacement), do: :erlang.nif_error(@nif_not_loaded)
  def remove_header(_handle, _field, _name), do: :erlang.nif_error(@nif_not_loaded)
  def note(_handle, _title, _body), do: :erlang.nif_error(@nif_not_loaded)
  def static_content(_handle, _mount_path, _fs_dir), do: :erlang.nif_error(@nif_not_loaded)
  def untaped(_handle, _path), do: :erlang.nif_error(@nif_not_loaded)
  def set_strict_headers(_handle, _on), do: :erlang.nif_error(@nif_not_loaded)
  def indent_code_blocks(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def emphasize_http_verbs(_handle), do: :erlang.nif_error(@nif_not_loaded)

  def clear_redactions(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def clear_unredactions(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def clear_header_removals(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def clear_static_content(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def clear_untaped(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def clear_format_options(_handle), do: :erlang.nif_error(@nif_not_loaded)
end
