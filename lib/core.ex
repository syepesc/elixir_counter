defmodule Counter.Core do
  @moduledoc """
  Functional core, were the business logic is defined.
  """

  @spec inc(integer()) :: integer()
  def inc(value) do
    value + 1
  end
end
