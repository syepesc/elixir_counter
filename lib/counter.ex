defmodule Counter do
  @moduledoc """
  Counter API. Basic functionality to interact with the Counter server.
  """

  @spec start(integer()) :: pid()
  def start(initial_count) do
    spawn(fn -> Counter.Server.run(initial_count) end)
  end

  @spec tick(pid()) :: {:thick, pid()}
  def tick(pid) do
    send(pid, {:tick, self()})
  end

  @spec state(pid()) :: integer()
  def state(pid) do
    send(pid, {:state, self()})

    receive do
      {:count, value} -> value
    end
  end
end
