defmodule Servirtium.Native do
  @moduledoc """
  Raw NIF surface over the Aether VCR core's C-ABI (the `aether_vcr_embed_*`
  symbols from `core/embed.ae`, linked from `core/native/libservirtium_vcr.so`).

  This is a 1:1 mapping, not the public API — use `Servirtium` for that.

  ## One shared NIF for the whole BEAM family

  Elixir does **not** compile its own copy of the C NIF. The canonical NIF is
  built once by the **Erlang** binding as the OTP app `servirtium_nif` (Erlang
  is the BEAM's lingua franca, so it owns the shared binding — exactly as the
  one Java jar backs the Kotlin/Scala/Clojure/Groovy bindings). This module
  just `defdelegate`s onto that shared `:servirtium_nif` module, which loads
  `priv/servirtium_nif.so` over the BEAM. In the monorepo the `servirtium_nif`
  app is put on the code path via `ERL_LIBS` (pointed at `erlang/_build`); as a
  published package it would be a Hex dependency.

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

  # `:servirtium_nif` is provided at runtime by the Erlang binding's shared OTP
  # app (on the code path via ERL_LIBS / Code.append_path), not at compile time.
  @compile {:no_warn_undefined, :servirtium_nif}

  # ---- lifecycle: open -> start -------------------------------------------

  defdelegate open_playback(label, tape_path, host, port), to: :servirtium_nif
  defdelegate open_record(label, tape_path, upstream_base, host, port), to: :servirtium_nif
  defdelegate start(handle), to: :servirtium_nif
  defdelegate stop(handle), to: :servirtium_nif
  defdelegate stop_and_flush(handle, tape_path), to: :servirtium_nif
  defdelegate stop_and_flush_fail_if_changed(handle, tape_path), to: :servirtium_nif

  # ---- introspection -------------------------------------------------------

  defdelegate port(handle), to: :servirtium_nif
  defdelegate base_url(handle, host), to: :servirtium_nif
  defdelegate tape_length(handle), to: :servirtium_nif
  defdelegate reset_cursor(handle), to: :servirtium_nif

  # ---- diagnostics ---------------------------------------------------------

  defdelegate last_error(handle), to: :servirtium_nif
  defdelegate last_kind(handle), to: :servirtium_nif
  defdelegate last_index(handle), to: :servirtium_nif
  defdelegate clear_last_error(handle), to: :servirtium_nif

  # ---- mutations / config --------------------------------------------------

  defdelegate redact(handle, field, pattern, replacement), to: :servirtium_nif
  defdelegate unredact(handle, field, pattern, replacement), to: :servirtium_nif
  defdelegate normalize_whole_tape(handle, pattern, name), to: :servirtium_nif
  defdelegate redact_whole_tape(handle, pattern, replacement), to: :servirtium_nif
  defdelegate remove_header(handle, field, name), to: :servirtium_nif
  defdelegate match_header(handle, name), to: :servirtium_nif
  defdelegate note(handle, title, body), to: :servirtium_nif
  defdelegate static_content(handle, mount_path, fs_dir), to: :servirtium_nif
  defdelegate untaped(handle, path), to: :servirtium_nif
  defdelegate set_strict_headers(handle, on), to: :servirtium_nif
  defdelegate set_match_json_body(handle, on), to: :servirtium_nif
  defdelegate set_match_multiple(handle, on), to: :servirtium_nif
  defdelegate indent_code_blocks(handle), to: :servirtium_nif
  defdelegate emphasize_http_verbs(handle), to: :servirtium_nif
  defdelegate clear_redactions(handle), to: :servirtium_nif
  defdelegate clear_unredactions(handle), to: :servirtium_nif
  defdelegate clear_header_removals(handle), to: :servirtium_nif
  defdelegate clear_match_headers(handle), to: :servirtium_nif
  defdelegate clear_static_content(handle), to: :servirtium_nif
  defdelegate clear_untaped(handle), to: :servirtium_nif
  defdelegate clear_format_options(handle), to: :servirtium_nif
end
