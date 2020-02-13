defmodule Slave.Worker do
  @moduledoc false

  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, nil)
  end

  def init(_) do
    :pg2.create(:workers)
    :ok = :pg2.join(:workers, self())
    {:ok, make_ref()}
  end

  def handle_call(:get_id, _, state) do
    {:reply, state, state}
  end
end
