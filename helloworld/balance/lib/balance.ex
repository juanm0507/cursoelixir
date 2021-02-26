defmodule Balance do
  use GenServer

  def start_link(opts), do: GenServer.start_link(__MODULE__, 0 , opts)


  def init(state), do: {:ok, state}


  def read(balance), do: GenServer.call(balance, {:deposit, 0})
  def deposit(balance, amount), do: GenServer.call(balance, {:deposit, amount})
  def withdraw(balance, amount), do: GenServer.call(balance, {:withdraw, amount})
  def transfer(balance, amount), do: GenServer.cast(balance, {:transfer, amount})


  def handle_call({:deposit, amount}, _from_id, state) do
    state = state + amount
    {:reply, state, state}
  end


  def handle_call({:withdraw, amount}, _from_id, state) do
    state = state - amount
    raise "Error the amount"
    {:reply, state, state}
  end

  def handle_cast({:transfer, amount}, state), do: {:noreply, state + amount}
end
