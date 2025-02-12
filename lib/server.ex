defmodule Counter.Server do
  @moduledoc """
  This is the heart of Elixir, processes!
  This is not a process itself, but it demonstrates what a process does: it listens for messages and acts upon them.
  """
  def run(count) do
    new_count = listen(count)
    run(new_count)
  end

  def listen(count) do
    receive do
      {:tick, _pid} ->
        Counter.Core.inc(count)

      {:state, pid} ->
        send(pid, {:count, count})
        count

      x ->
        IO.inspect("Unknown message received: #{x}")
    end
  end
end
