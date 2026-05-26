defmodule Servirtium.Native do
  @moduledoc """
  Raw NIF surface over the Aether VCR core's C-ABI (the `aether_vcr_embed_*`
  symbols from `std/http/server/vcr/embed.ae`, linked from
  `native/libservirtium_vcr.so` via the NIF in `c_src/servirtium_nif.c`).

  This is a 1:1 mapping, not the public API — use `Servirtium` for that.

  ## v1 contract (matching the Aether side)

  ONE active VCR server per process. The tape / cursor / mutation / static-mount
  / diagnostic state is process-global, so the diagnostics, tape-length, and
  mutation functions take no handle. The opaque server handle is a 64-bit
  integer (`uintptr_t`); a `0` from `start_*` means failure.

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

  # ---- lifecycle ----------------------------------------------------------

  def start_playback(_label, _tape_path, _host, _port), do: :erlang.nif_error(@nif_not_loaded)

  def start_record(_label, _tape_path, _upstream_base, _host, _port),
    do: :erlang.nif_error(@nif_not_loaded)

  def stop(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def stop_and_flush(_handle, _tape_path), do: :erlang.nif_error(@nif_not_loaded)
  def stop_and_flush_fail_if_changed(_handle, _tape_path), do: :erlang.nif_error(@nif_not_loaded)

  # ---- introspection ------------------------------------------------------

  def port(_handle), do: :erlang.nif_error(@nif_not_loaded)
  def base_url(_handle, _host), do: :erlang.nif_error(@nif_not_loaded)
  def tape_length, do: :erlang.nif_error(@nif_not_loaded)
  def reset_cursor, do: :erlang.nif_error(@nif_not_loaded)

  # ---- diagnostics --------------------------------------------------------

  def last_error, do: :erlang.nif_error(@nif_not_loaded)
  def last_kind, do: :erlang.nif_error(@nif_not_loaded)
  def last_index, do: :erlang.nif_error(@nif_not_loaded)
  def clear_last_error, do: :erlang.nif_error(@nif_not_loaded)

  # ---- mutations / config -------------------------------------------------

  def redact(_field, _pattern, _replacement), do: :erlang.nif_error(@nif_not_loaded)
  def unredact(_field, _pattern, _replacement), do: :erlang.nif_error(@nif_not_loaded)
  def remove_header(_field, _name), do: :erlang.nif_error(@nif_not_loaded)
  def note(_title, _body), do: :erlang.nif_error(@nif_not_loaded)
  def static_content(_mount_path, _fs_dir), do: :erlang.nif_error(@nif_not_loaded)
  def set_strict_headers(_on), do: :erlang.nif_error(@nif_not_loaded)
  def indent_code_blocks, do: :erlang.nif_error(@nif_not_loaded)
  def emphasize_http_verbs, do: :erlang.nif_error(@nif_not_loaded)

  def clear_redactions, do: :erlang.nif_error(@nif_not_loaded)
  def clear_unredactions, do: :erlang.nif_error(@nif_not_loaded)
  def clear_header_removals, do: :erlang.nif_error(@nif_not_loaded)
  def clear_static_content, do: :erlang.nif_error(@nif_not_loaded)
  def clear_format_options, do: :erlang.nif_error(@nif_not_loaded)
end
