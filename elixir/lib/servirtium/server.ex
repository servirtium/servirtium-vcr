defmodule Servirtium.Server do
  @moduledoc """
  A running VCR server handle. Opaque value returned by `Servirtium.playback/2`
  and `Servirtium.record/3`; pass it to `Servirtium.base_url/1`,
  `Servirtium.port/1`, `Servirtium.note/3`, `Servirtium.stop/1`, etc.

  `handle` is an opaque NIF resource reference to the VCR; `stop/1` frees it and
  a second `stop/1` is a no-op.
  """

  @enforce_keys [:handle, :host, :tape_path, :mode, :fail_if_changed]
  defstruct [:handle, :host, :tape_path, :mode, :fail_if_changed, :secret_redactor]

  @type t :: %__MODULE__{
          handle: reference(),
          host: String.t(),
          tape_path: String.t(),
          mode: :playback | :record,
          fail_if_changed: boolean()
        }

  @doc false
  def error(message), do: %Servirtium.Error{message: message}
end
