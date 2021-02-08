defmodule GsObserver do
  use GenServer
  def create(initial_state \\ 0) do
    cond do
      initial_state < 0 -> spawn(__MODULE__,  :listen, [[], initialState])
      true -> GenServer.start_link(__MODULE__, initial_state)
    end
  end


  def init(state), do: {:ok, state}


  def read(observer), do: GenServer.call(observer, {:increment, 0})
  def increment(observer, increment), do: GenServer.call(observer, {:increment, cont})
  def decrement(observer, decrement), do: GenServer.call(observer, {:decrement, cont})
  #def transfer(observer, amount), do: GenServer.cast(observer, {:transfer, amount})


  def handle_call({:increment, cont}, _from_id, state) do
    state = state + 1
    {:reply, state, state}
  end


  def handle_call({:decrement, cont}, _from_id, state) do
    state = state - 1
    {:reply, state, state}
  end


  #def handle_cast({:transfer, amount}, state), do: {:noreply, state + 1}

end
