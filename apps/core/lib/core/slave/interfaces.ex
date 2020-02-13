defmodule Core.Slave.Interfaces do
  @moduledoc false

  def get_workers() do
    :pg2.get_members(:workers)
  end

  def get_ids() do
    get_workers()
    |> Enum.map(&get_id(&1))
  end

  def get_id(pid) do
    GenServer.call(pid, :get_id)
  end
end
