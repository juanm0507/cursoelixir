defmodule Observer do
  use GenServer
  def create(initial_state \\ 0) do
    cond do
      initial_state < 0 -> spawn(__MODULE__,  :listen, [[], initialState])
      true -> GenServer.start_link(__MODULE__, initial_state)
    end
  end

  def listen(state) do
    receive do
      {:call, from_id, {cmd, cont}} ->
        {cmd, cont} |> handle_call(from_id, state) |> listen()
        {:cast, {cmd, cont}} ->
          {cmd, cont} |> handle_cast(state) |> listen()
    end
  end

  def read(observers), do: GenServer.call(observers, 0})
  def add_observer(observers, observer_pid), do: GenServer.call(observers, [observer_pid | observers])
  def remove_observer(observers, observer_pid), do: GenServer.call(observers, observers -- [observer_pid])

  def notify(observers, state) do
     observers |> Enum.each(&send(&1, state))
  end

  def attach(subject), do: GenServer.call(subject, {:attach, self()})
  def detach(subject), do: GenServer.call(subject, {:detach, self()})
  def increment(subject), do: GenServer.call(subject, {:increment, self()})
  def decrement(subject), do: GenServer.call(subject, {:decrement, self()})

  def read(subject) do
    send(subject, {:read, self()})
    await()
   end

  def await(millis \\ 1000) do
    receive do
      count -> count
    after
      millis -> :timeout
    end
  end

  def reply(from_id, reply, new_state) do
    send(from_id, reply)
    new_state
  end

  def no_reply(new_state), do: new_state

  def call(observer_pid, event) do
    send(observer_pid, {:call, self(), event})
    receive do
      amount -> amount
    end
  end


  def cast(observer_pid, event) do
    send(observer_pid, {:cast, event})
    :ok
  end

  def handle_call({:increment, increment}, _from_id, state) do
      state = state + 1
      notify(observers, state)
      listen(observers, state)
      {:reply, state, state}
  end


  def handle_call({:decrement, decrement}, _from_id, state) do
      state = state - 1
      notify(observers, state)
      listen(observers, state)
      {:reply, state, state}
  end

  def handle_call({:read, read}, _from_id, state) do
      send(from_id, state)
      listen(observers, state)
      {:reply, state, state}
  end

  def handle_call({:attach, attach}, _from_id, state) do
    observers |> add_observer(from_id) |> listen(state)
    {:reply, state, state}
  end

  def handle_call({:detach, detach}, _from_id, state) do
    observers |> remove_observer(from_id) |> listen(state)
    {:reply, state, state}
  end

  #def handle_cast({:transfer, transfer}, state) do
  #  no_reply(state + 1)
  #end
end
