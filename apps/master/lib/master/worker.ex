defmodule Master.Worker do
  @moduledoc false

  use GenServer

  alias Core.Slave.Interfaces

  def start_link(_) do
    GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end

  def init(_) do
    {:ok, nil}
  end

  def check() do
    IO.inspect(Interfaces.get_workers())
    IO.inspect(Interfaces.get_ids())
    :ok
  end
end
