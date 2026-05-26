defmodule Servirtium.Error do
  @moduledoc "Raised when the VCR fails to start, or a record-mode flush detects drift."
  defexception [:message]
end
